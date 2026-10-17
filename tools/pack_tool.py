"""Minimal Total War: WARHAMMER III .pack reader/writer (PFH5).

Reading:  list and extract packed files (uncompressed or lzma1-compressed).
Writing:  build an uncompressed mod pack from a folder tree.

Usage:
  python pack_tool.py list    <pack> [substring]
  python pack_tool.py extract <pack> <out_dir> [prefix ...]
  python pack_tool.py build   <src_dir> <out.pack> [--like <reference_mod.pack>]
"""
import io
import lzma
import os
import struct
import sys

FLAG_EXTENDED_HEADER = 0x100
FLAG_ENCRYPTED_INDEX = 0x80
FLAG_INDEX_TIMESTAMPS = 0x40
FLAG_ENCRYPTED_DATA = 0x10
PACK_TYPE_MOD = 3


class PackEntry:
    __slots__ = ("path", "size", "offset", "compressed", "timestamp")

    def __init__(self, path, size, offset, compressed, timestamp):
        self.path = path
        self.size = size
        self.offset = offset
        self.compressed = compressed
        self.timestamp = timestamp


class Pack:
    def __init__(self, filename):
        self.filename = filename
        with open(filename, "rb") as f:
            head = f.read(28)
            self.magic = head[0:4]
            if self.magic not in (b"PFH5", b"PFH4"):
                raise ValueError("unsupported pack magic %r" % self.magic)
            (self.flags, self.dep_count, self.dep_index_size,
             self.file_count, self.file_index_size, self.timestamp) = struct.unpack("<6I", head[4:28])
            if self.flags & (FLAG_ENCRYPTED_INDEX | FLAG_ENCRYPTED_DATA):
                raise ValueError("encrypted packs are not supported")
            if self.flags & FLAG_EXTENDED_HEADER:
                f.read(20)
            deps_raw = f.read(self.dep_index_size)
            self.dependencies = [d.decode("latin-1") for d in deps_raw.split(b"\0") if d]
            index = f.read(self.file_index_size)
            data_start = f.tell()
        self.entries = []
        pos = 0
        offset = data_start
        has_ts = bool(self.flags & FLAG_INDEX_TIMESTAMPS)
        for _ in range(self.file_count):
            size = struct.unpack_from("<I", index, pos)[0]
            pos += 4
            ts = 0
            if has_ts:
                ts = struct.unpack_from("<I", index, pos)[0]
                pos += 4
            compressed = False
            if self.magic == b"PFH5":
                compressed = index[pos] != 0
                pos += 1
            end = index.index(b"\0", pos)
            path = index[pos:end].decode("utf-8", errors="replace").replace("\\", "/")
            pos = end + 1
            self.entries.append(PackEntry(path, size, offset, compressed, ts))
            offset += size

    @property
    def pack_type(self):
        return self.flags & 0xF

    def read(self, entry):
        with open(self.filename, "rb") as f:
            f.seek(entry.offset)
            raw = f.read(entry.size)
        if not entry.compressed:
            return raw
        return decompress(raw)

    def find(self, path):
        path = path.replace("\\", "/").lower()
        for e in self.entries:
            if e.path.lower() == path:
                return e
        return None


def decompress(raw):
    """CA wraps compressed files as: u32 uncompressed size + stream."""
    usize = struct.unpack_from("<I", raw, 0)[0]
    body = raw[4:]
    if body[:4] == b"\x28\xb5\x2f\xfd":
        try:
            from compression import zstd  # Python 3.14+ standard library
            return zstd.decompress(body)
        except ImportError:
            pass
        try:
            import zstandard  # type: ignore
        except ImportError:
            raise RuntimeError("zstd-compressed file: use Python 3.14+ or pip install zstandard")
        return zstandard.ZstdDecompressor().decompress(body, max_output_size=usize)
    if body[:4] == b"\x04\x22\x4d\x18":
        try:
            import lz4.frame  # type: ignore
        except ImportError:
            raise RuntimeError("lz4-compressed file; pip install lz4")
        return lz4.frame.decompress(body)
    # lzma1 ("alone") stream: 5 property bytes, then data. CA omits the 8-byte size field.
    props = body[:5]
    stream = props + struct.pack("<Q", usize) + body[5:]
    return lzma.decompress(stream, format=lzma.FORMAT_ALONE)[:usize]


def build_pack(src_dir, out_path, flags=PACK_TYPE_MOD):
    """Write an uncompressed PFH5 mod pack containing every file under src_dir."""
    files = []
    for root, _dirs, names in os.walk(src_dir):
        for n in names:
            full = os.path.join(root, n)
            rel = os.path.relpath(full, src_dir).replace(os.sep, "/")
            files.append((rel, full))
    # CA/RPFM order the index case-insensitively by path.
    files.sort(key=lambda t: t[0].lower())
    has_ts = bool(flags & FLAG_INDEX_TIMESTAMPS)
    index = io.BytesIO()
    blobs = []
    for rel, full in files:
        with open(full, "rb") as fh:
            data = fh.read()
        blobs.append(data)
        index.write(struct.pack("<I", len(data)))
        if has_ts:
            index.write(struct.pack("<I", int(os.path.getmtime(full))))
        index.write(b"\0")  # not compressed
        index.write(rel.replace("/", "\\").encode("utf-8") + b"\0")
    index_bytes = index.getvalue()
    import time
    header = b"PFH5" + struct.pack("<6I", flags, 0, 0, len(files), len(index_bytes), int(time.time()))
    with open(out_path, "wb") as out:
        out.write(header)
        out.write(index_bytes)
        for b in blobs:
            out.write(b)
    return len(files)


def main(argv):
    if len(argv) < 3:
        print(__doc__)
        return 1
    cmd = argv[1]
    if cmd == "list":
        p = Pack(argv[2])
        sub = argv[3].lower() if len(argv) > 3 else ""
        print("magic=%s flags=0x%X type=%d files=%d deps=%s" % (
            p.magic.decode(), p.flags, p.pack_type, p.file_count, p.dependencies))
        n_comp = 0
        for e in p.entries:
            n_comp += e.compressed
            if sub in e.path.lower():
                print("%9d %s %s" % (e.size, "C" if e.compressed else "-", e.path))
        print("compressed entries: %d" % n_comp)
    elif cmd == "extract":
        p = Pack(argv[2])
        out_dir = argv[3]
        prefixes = [x.lower() for x in argv[4:]]
        n = 0
        for e in p.entries:
            if prefixes and not any(e.path.lower().startswith(px) for px in prefixes):
                continue
            target = os.path.join(out_dir, *e.path.split("/"))
            os.makedirs(os.path.dirname(target), exist_ok=True)
            with open(target, "wb") as fh:
                fh.write(p.read(e))
            n += 1
        print("extracted %d files" % n)
    elif cmd == "build":
        src, out = argv[2], argv[3]
        flags = PACK_TYPE_MOD  # 0x3, same as RPFM-built Workshop mods
        if "--like" in argv:
            ref = Pack(argv[argv.index("--like") + 1])
            flags = ref.flags
        n = build_pack(src, out, flags)
        print("wrote %s with %d files (flags=0x%X)" % (out, n, flags))
    else:
        print(__doc__)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))

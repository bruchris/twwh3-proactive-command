"""Decode Total War: WARHAMMER III DB tables and .loc files using a compact schema.

Schema file (schema_subset_wh3.json) maps table -> version -> "field:type ..." where
type is one of: b=bool, i=i32, l=i64, f=f32, d=f64, s=StringU8, o=OptionalStringU8.
Generated from RPFM's schema_wh3.ron (github.com/Frodo45127/rpfm-schemas).
"""
import json
import os
import struct

GUID_MARKER = b"\xfd\xfe\xfc\xff"
VERSION_MARKER = b"\xfc\xfd\xfe\xff"

_HERE = os.path.dirname(os.path.abspath(__file__))


def load_schema(path=None):
    path = path or os.path.join(_HERE, "schema_subset_wh3.json")
    with open(path, encoding="utf-8") as fh:
        raw = json.load(fh)
    schema = {}
    for table, versions in raw.items():
        schema[table] = {}
        for ver, spec in versions.items():
            schema[table][int(ver)] = [tuple(p.split(":")) for p in spec.split()]
    return schema


class _Cursor:
    __slots__ = ("b", "p")

    def __init__(self, data):
        self.b = data
        self.p = 0

    def take(self, n):
        v = self.b[self.p:self.p + n]
        if len(v) != n:
            raise ValueError("unexpected end of data")
        self.p += n
        return v

    def u8(self):
        v = self.b[self.p]
        self.p += 1
        return v

    def u16(self):
        return struct.unpack("<H", self.take(2))[0]

    def u32(self):
        return struct.unpack("<I", self.take(4))[0]

    def str8(self):
        n = self.u16()
        return self.take(n).decode("utf-8", errors="replace")

    def str16(self):
        n = self.u16()
        return self.take(n * 2).decode("utf-16-le", errors="replace")


_READERS = {
    "b": lambda c: c.u8() != 0,
    "i": lambda c: struct.unpack("<i", c.take(4))[0],
    "l": lambda c: struct.unpack("<q", c.take(8))[0],
    "f": lambda c: round(struct.unpack("<f", c.take(4))[0], 4),
    "d": lambda c: struct.unpack("<d", c.take(8))[0],
    "s": lambda c: c.str8(),
    "o": lambda c: c.str8() if c.u8() else None,
}


def decode_table(data, table, schema):
    """Return (version, rows as list of dicts)."""
    c = _Cursor(data)
    if data[:4] == GUID_MARKER:
        c.p = 4
        c.str16()
    version = 0
    if c.b[c.p:c.p + 4] == VERSION_MARKER:
        c.p += 4
        version = c.u32()
    c.u8()  # always 1
    count = c.u32()
    fields = schema[table].get(version)
    if fields is None:
        raise KeyError("no schema for %s version %d (have %s)" % (table, version, sorted(schema[table])))
    readers = [(name, _READERS[t]) for name, t in fields]
    rows = []
    for _ in range(count):
        row = {}
        for name, rd in readers:
            row[name] = rd(c)
        rows.append(row)
    if c.p != len(data):
        raise ValueError("%s: %d trailing bytes after %d rows (schema mismatch?)" % (table, len(data) - c.p, count))
    return version, rows


def decode_loc(data):
    """Return {key: text} from a .loc file."""
    c = _Cursor(data)
    if c.take(2) != b"\xff\xfe":
        raise ValueError("not a loc file")
    if c.take(4) != b"LOC\x00":
        raise ValueError("not a loc file")
    c.u32()  # version
    count = c.u32()
    out = {}
    for _ in range(count):
        k = c.str16()
        v = c.str16()
        c.u8()  # tooltip flag
        out[k] = v
    return out


def read_tables_from_packs(packs, tables, schema):
    """Merge rows for each table across packs. Later packs override by first column key
    only when the same file name is present; otherwise rows are appended (the game loads
    all table fragments)."""
    result = {t: [] for t in tables}
    for pack in packs:
        for e in pack.entries:
            parts = e.path.split("/")
            if len(parts) == 3 and parts[0] == "db" and parts[1] in result:
                _ver, rows = decode_table(pack.read(e), parts[1], schema)
                result[parts[1]].extend(rows)
    return result


def encode_loc(entries):
    """Build a .loc file from {key: text}."""
    out = [b"\xff\xfe", b"LOC\x00", struct.pack("<II", 1, len(entries))]
    for k, v in entries.items():
        for s in (k, v):
            b = s.encode("utf-16-le")
            out.append(struct.pack("<H", len(b) // 2))
            out.append(b)
        out.append(b"\x01")
    return b"".join(out)

"""Build Proactive Command.

    python tools/build_mod.py                      pack from the committed sources (no game needed)
    python tools/build_mod.py --release            ...and the shareable zip in dist/
    python tools/build_mod.py <game_data_dir>      regenerate the ability catalog from the game first
    python tools/build_mod.py <game_data_dir> --install [extra.pack ...]
                                                   ...and copy the pack into the game's data folder
    python tools/build_mod.py --print-version      print the version from the script and exit

Options:
    --install       copy the pack (and thumbnail) into <game_data_dir>
    --no-catalog    with <game_data_dir>: skip regenerating the catalog (just build + install)
    --release       also write dist/ProactiveCommand-<version>.zip and dist/RELEASE_NOTES.md

Extra .pack files after the data dir (e.g. an overhaul such as SFO) are read on top of the
game's own data when the catalog is generated.

Output goes to dist/. The version comes from `local VERSION = "..."` in the battle script.
"""
import os
import re
import shutil
import sys
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, HERE)

from db_reader import encode_loc, decode_loc  # noqa: E402
from pack_tool import Pack, build_pack  # noqa: E402

PACK_NAME = "proactive_command.pack"
THUMB_NAME = "proactive_command.png"
SRC = os.path.join(ROOT, "mod_src")
SCRIPT = os.path.join(SRC, "script", "battle", "mod", "proactive_command.lua")
CATALOG = os.path.join(SRC, "script", "proactive_command", "pc_catalog.lua")
DIST = os.path.join(ROOT, "dist")

SHORTCUT_NAMES = {
    "shortcut_localisation_onscreen_camera_bookmark_save9": "Save camera bookmark 10 / Proactive: cycle mode of selected units",
    "shortcut_localisation_onscreen_camera_bookmark_save10": "Save camera bookmark 11 / Proactive: pause or resume",
    "shortcut_localisation_onscreen_camera_bookmark_save11": "Save camera bookmark 12 / Proactive: auto-cast on or off",
    "shortcut_localisation_onscreen_camera_bookmark_save8": "Save camera bookmark 9 / Proactive: auto-engage on or off",
}

# what goes into the shareable zip: (path in repo, name in zip, windows line endings?)
RELEASE_FILES = [
    ("installer/Install.bat", "Install.bat", True),
    ("installer/Uninstall.bat", "Uninstall.bat", True),
    ("installer/install.ps1", "install.ps1", True),
    ("README.md", "README.md", False),
    ("CHANGELOG.md", "CHANGELOG.md", False),
    ("proactive_command_config.example.lua", "proactive_command_config.example.lua", False),
]


def script_version():
    text = open(SCRIPT, encoding="utf-8").read()
    m = re.search(r'local VERSION = "([^"]+)"', text)
    if not m:
        raise SystemExit("no `local VERSION = \"...\"` line in " + SCRIPT)
    return m.group(1)


def changelog_section(version):
    path = os.path.join(ROOT, "CHANGELOG.md")
    if not os.path.exists(path):
        return ""
    text = open(path, encoding="utf-8").read().replace("\r\n", "\n")
    m = re.search(r"^## v?%s\b[^\n]*\n(.*?)(?=^## |\Z)" % re.escape(version), text, re.S | re.M)
    return m.group(1).strip() if m else ""


def write_loc():
    loc_dir = os.path.join(SRC, "text", "db")
    os.makedirs(loc_dir, exist_ok=True)
    loc_path = os.path.join(loc_dir, "proactive_command__.loc")
    data = encode_loc(SHORTCUT_NAMES)
    if not os.path.exists(loc_path) or open(loc_path, "rb").read() != data:
        with open(loc_path, "wb") as fh:
            fh.write(data)
    assert decode_loc(open(loc_path, "rb").read()) == SHORTCUT_NAMES


def build(version):
    for path in (SCRIPT, CATALOG):
        if not os.path.exists(path):
            raise SystemExit("missing " + path)
    os.makedirs(DIST, exist_ok=True)
    out = os.path.join(DIST, PACK_NAME)
    n = build_pack(SRC, out)
    p = Pack(out)
    names = sorted(e.path for e in p.entries)
    assert p.pack_type == 3 and len(names) == n
    for e in p.entries:
        rel = os.path.join(SRC, *e.path.split("/"))
        assert p.read(e) == open(rel, "rb").read(), e.path
    print("built %s v%s (%d files, %d bytes):" % (out, version, n, os.path.getsize(out)))
    for nm in names:
        print("   ", nm)
    return out


def release(version, pack_path):
    folder = "ProactiveCommand-%s" % version
    zpath = os.path.join(DIST, folder + ".zip")
    thumb = os.path.join(ROOT, "art", THUMB_NAME)
    with zipfile.ZipFile(zpath, "w", zipfile.ZIP_DEFLATED) as z:
        z.write(pack_path, folder + "/" + PACK_NAME)
        if os.path.exists(thumb):
            z.write(thumb, folder + "/" + THUMB_NAME)
        for src, name, crlf in RELEASE_FILES:
            data = open(os.path.join(ROOT, src), "rb").read().replace(b"\r\n", b"\n")
            if crlf:
                data = data.replace(b"\n", b"\r\n")
            z.writestr(folder + "/" + name, data)
    notes = changelog_section(version)
    with open(os.path.join(DIST, "RELEASE_NOTES.md"), "w", encoding="utf-8", newline="\n") as fh:
        fh.write(notes + "\n\n" if notes else "")
        fh.write("**Install:** download `%s.zip`, extract it and run `Install.bat`. "
                 "Then tick **proactive_command** in the game launcher's mod manager.\n" % folder)
        fh.write("In multiplayer, every player needs this same version (v%s).\n" % version)
    print("release  %s (%d bytes)" % (zpath, os.path.getsize(zpath)))
    return zpath


def install(data_dir, pack_path):
    if not os.path.isdir(data_dir):
        raise SystemExit("not a folder: " + data_dir)
    shutil.copyfile(pack_path, os.path.join(data_dir, PACK_NAME))
    thumb = os.path.join(ROOT, "art", THUMB_NAME)
    if os.path.exists(thumb):
        shutil.copyfile(thumb, os.path.join(data_dir, THUMB_NAME))
    print("installed to", os.path.join(data_dir, PACK_NAME))


def main(argv):
    args = argv[1:]
    if "-h" in args or "--help" in args:
        print(__doc__)
        return 0
    version = script_version()
    if "--print-version" in args:
        print(version)
        return 0
    flags = {a for a in args if a.startswith("--")}
    unknown = flags - {"--install", "--no-catalog", "--release"}
    if unknown:
        print("unknown option(s):", ", ".join(sorted(unknown)))
        print(__doc__)
        return 1
    positional = [a for a in args if not a.startswith("--")]
    data_dir = positional[0] if positional else None
    extra = positional[1:]
    if "--install" in flags and not data_dir:
        print("--install needs the game's data folder as the first argument")
        return 1

    if data_dir and "--no-catalog" not in flags:
        import gen_catalog  # needs Python 3.14+ (zstd) to read the game's packs
        rc = gen_catalog.main(["gen_catalog.py", data_dir, SRC] + extra)
        if rc:
            return rc

    write_loc()
    pack_path = build(version)
    if "--release" in flags:
        release(version, pack_path)
    if "--install" in flags:
        install(data_dir, pack_path)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))

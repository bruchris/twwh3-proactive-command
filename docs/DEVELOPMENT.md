# Developing Proactive Command

## Layout

| Path | What |
|---|---|
| `mod_src/script/battle/mod/proactive_command.lua` | the battle script (the version number lives here: `local VERSION = "..."`) |
| `mod_src/script/proactive_command/pc_catalog.lua` | generated ability, unit and AI-template data from the game's tables (committed) |
| `mod_src/text/db/proactive_command__.loc` | hotkey names (written by the build) |
| `tools/` | pack reader/writer, DB decoder, catalog generator, build script |
| `test/` | offline tests: a mock battle running the script in real Lua 5.1 |
| `installer/` | `Install.bat`, `Uninstall.bat` and `install.ps1` for the release zip |
| `art/proactive_command.png` | thumbnail shown in the game launcher's mod list |
| `.github/workflows/build.yml` | runs the tests on every push; publishes a release for every version tag |

Everything the game loads is under `mod_src/` and is packed into `proactive_command.pack`.

## Build

```
python tools/build_mod.py                 # dist/proactive_command.pack from the committed sources
python tools/build_mod.py --release       # ...plus dist/ProactiveCommand-<version>.zip
```

Building only needs Python 3 and nothing from the game.

To build and copy straight into your own game:

```
python tools/build_mod.py "D:\SteamLibrary\steamapps\common\Total War WARHAMMER III\data" --no-catalog --install
```

## Live editing (no repack, no game restart)

The game reads `.pack` files once at startup, but the battle script runs fresh at the start of
every battle. The packed script can hand over to a loose copy on disk, so you can edit the
script in this repo while the game is running:

1. In `proactive_command_config.lua` (next to `Warhammer3.exe`), add the path of the script in
   your checkout. Use forward slashes:

   ```lua
   dev_script_path = "C:/Users/Chris/twwh3-modding/proactive-command/mod_src/script/battle/mod/proactive_command.lua",
   ```

2. Start the game with **proactive_command** enabled as usual.
3. Edit the file, save, and restart the battle (in a custom battle: **Esc → Restart Battle**) or
   start a new one. The log's second line confirms `development mode: running the development copy ...`.
4. Watch the log live in a terminal while you play (it is written every second):

   ```
   Get-Content "D:\SteamLibrary\steamapps\common\Total War WARHAMMER III\proactive_command_log.txt" -Wait -Tail 30
   ```

If the loose copy has a syntax error, the log says so and the packed copy runs instead. Settings
in the config file are also re-read at every battle start. Remove `dev_script_path` (or
comment it out) to go back to the packed script.

Still needs a rebuild and a game restart: anything else in the pack, which is the hotkey names,
the ability catalog, and the hand-over code at the top of the script itself.

## Rules of the game's script environment (learned the hard way)

- **UI context objects (`cco(...)`, ability lists, `PerformAbilityForOwner`, the selection) only
  from the UI side**: real timers (`bm:repeat_real_callback`) and UI events (shortcuts, clicks).
- **The battle model (units, armies, alliances, `bm:time_elapsed_ms()`, unit controllers) only
  from the game-clock side**: `bm:repeat_callback`, `bm:register_repeating_timer`, phase
  changes, command handlers.
- Mixing them corrupts the game's state: after the mod read ability lists from a game-clock
  timer, the game's own `out()` started printing a function instead of the game time. The mock
  (`test/mock_battle.lua`) raises an error on any mix-up, so the tests catch it.
- WH3 runs Lua 5.1: no `goto`, no integer division operator.

## Diagnosing in-game problems

1. **Mod log:** `proactive_command_log.txt` in the game folder, rewritten every battle.
2. **The game's own script log:** create an empty file named `enable_console_logging` in
   `...\Total War WARHAMMER III\data\script\`. Every session then writes a
   `script_log_DDMMYY_HHMM.txt` in the game folder with all script output and script errors,
   each line prefixed with real time and game time. Delete the file to switch it off.
3. **`debug_bisect`** in `proactive_command_config.lua`: `true` (or a step number to start at)
   makes the mod run one kind of game call per second at battle start, logging each step
   before and after, followed by normal ticks. Two "canary" timers that only count, and a
   status line every 2 seconds written from the UI side, show whether the game's timers are
   still firing.

### Open issue (v0.4.0-beta.1)

In real battles, right after the mod's first *normal* tick, the game stops **all** game-clock
script timers, including the trivial canaries; UI-side timers keep running and the game itself
continues. With `debug_bisect`, all 33 read-only query kinds (steps 1-33, including a full
snapshot of 24 units) ran for 34 seconds without a problem. The first normal tick after that
stopped everything, without casting or ordering anything. That tick still called
`army:unique_id()` and `unit:is_ai_controlled()`; both are now gone from normal ticks and are
diagnosis steps 34 and 35, followed by `ordered_position/bearing/width` (36), creating a unit
controller (37), ability decisions (38) and engagement planning (39). The next test with
`debug_bisect = 33` should show which step stops the timers, or that the mod now works.

## Regenerate the ability catalog (after a game patch, or for an overhaul)

The catalog is read from the game's own packs, which are zstd-compressed, so this needs
Python 3.14 (it includes zstd):

```
py -3.14 tools\build_mod.py "D:\SteamLibrary\steamapps\common\Total War WARHAMMER III\data" --install
```

For an overhaul such as SFO, add its .pack file(s) at the end of the command so the catalog
uses the overhaul's ability data. Commit the regenerated `pc_catalog.lua`. An overhaul build
should be released as its own variant rather than replacing the vanilla one.

## Test

```
pip install lupa
python test/run_tests.py          # all scenarios
python test/run_tests.py -v       # also print the mod's log
python test/run_tests.py engage_matchups multiplayer_second_player   # just these
```

The tests run the real script against `test/mock_battle.lua` (a fake battle manager, units and
UI context objects) with a small test catalog. Set `PC_CATALOG=mod_src/script/proactive_command/pc_catalog.lua`
to run them against the full generated catalog instead.

## Release

1. Bump `local VERSION = "x.y.z"` in `mod_src/script/battle/mod/proactive_command.lua`.
2. Add a `## vX.Y.Z` section at the top of `CHANGELOG.md`.
3. Commit, then tag and push:

   ```
   git tag vX.Y.Z
   git push origin main vX.Y.Z
   ```

GitHub Actions runs the tests, checks that the tag matches the script version, builds the pack
and publishes a release with `ProactiveCommand-X.Y.Z.zip` attached. The release notes come from
the changelog section.

In multiplayer every player must run the same version, so tell friends to update together.

## Steam Workshop (later)

The pack and the thumbnail (`art/proactive_command.png`, 256×256) are already what the Workshop
needs. Upload with CA's Workshop uploader from the Assembly Kit (or the community tools that
wrap it), using `dist/proactive_command.pack` from a release build.

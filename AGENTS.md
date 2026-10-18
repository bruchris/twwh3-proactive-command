# AGENTS.md — Proactive Command (TWW3)

Guidance for AI agents and humans working on this mod. Upstream: [bruchris/twwh3-proactive-command](https://github.com/bruchris/twwh3-proactive-command). Fork/origin may be `edge-gaming/twwh3-proactive-command`.

## What this mod does

Battle automation for **Total War: WARHAMMER III**, split into two independent scripts:

1. **Idle units** (`proactive_command.lua`) — idle units (not in guard mode) are handed to the game's own battle AI (engine
   AI unit planner) for a while, then given back. Lords and heroes included. `engage_mode = "mod"` keeps the old own-scoring path.
2. **Auto-cast** (`proactive_command_cast.lua`) — when a unit has a ready ability/spell and an enemy is in reach, the unit is
   handed to the same game AI for a few seconds so the AI uses its own ability rules and Winds of Magic management, and is
   given back after it cast. No spell scoring lives in the mod any more (removed in v0.5.0).

The player stays in control: hotkeys cycle per-unit modes (`off` = leave the unit alone), guard mode holds, units that are moving,
fighting or aiming an ability are never touched.

## Repo layout

| Path | Role |
|---|---|
| `mod_src/script/battle/mod/proactive_command.lua` | Idle-unit script (`VERSION` lives here). Auto-loaded from `script/battle/mod/`. |
| `mod_src/script/battle/mod/proactive_command_cast.lua` | Auto-cast script (own timers/state/hotkey; loaded after the main one). |
| `mod_src/script/proactive_command/pc_catalog.lua` | Generated ability/unit/AI-template catalog (committed). |
| `mod_src/text/db/proactive_command__.loc` | Hotkey display names (build writes this). |
| `tools/` | Pack I/O, DB reader, catalog generator, `build_mod.py`. |
| `test/` | Offline Lua 5.1 tests via `lupa` + `mock_battle.lua`. |
| `docs/DEVELOPMENT.md` | Build, live-edit, diagnosis, release. |
| `installer/` | Release zip installer (Steam path discovery). |

Packed output: `dist/proactive_command.pack` → game `data/` folder. Thumbnail: `art/proactive_command.png`.

## Current design (v0.5.0-beta.1)

- **Two scripts, one pack.** They share only: the global `proactive_command` table (state with `last_snap`, `log`, `flush`, `toast`,
  `mode_for`), `PROACTIVE_COMMAND_HOLDS` (uid -> `"engage"` | `"cast"`, who currently holds a unit with the AI planner) and the log file.
  Each has its own timers, `guarded` error handling and config keys (same user config file). A failure in the cast script must never
  affect idle units: `cast_failure_does_not_stop_idle_units` tests it.
- **Never put scoring/ability code on the model tick of the main script again.** In real battles, running ability scoring/reading code on
  the model tick made `bm:time_elapsed_ms()` return a function and killed both game-clock timers (cause never pinned down; not GC, not
  the `owned_*`/`can_perform_*` calls alone). Idle units and the AI planner run fine on the model tick.
- **Idle units:** `ai_hand_over` / `ai_manage` / `ai_release` in the main script (`planner:add_units`, 1 s later `release_control` +
  `defend_position`, give back after `ai_hold_seconds` or `ai_release_after_melee` seconds of melee). `is_free` only accepts idle,
  non-moving, non-melee, non-guard units idle for `idle_delay`; `start_grace_seconds` delays it at battle start.
- **Auto-cast:** the cast script reads ability states through `cco` on its own UI timer (`BattleAbilityList`, `CanCurrentlyPerform`, ...),
  decides on its own game-clock timer from `proactive_command.state.last_snap`, and uses the same planner calls. `watch_use` logs every
  ability that goes from ready to not-ready (`[cast] USED ...`, with whether the unit was with the AI) — this is how we find out if the
  game AI really casts for held units. Not run in multiplayer.
- **Toggles:** `S.engage_on` (main) / `C.on` (cast) flipped by `hotkey_toggle_engage` / `hotkey_toggle_casting`; independent.
- **Unit controllers take units away from the player** until `release_control()` (`schedule_release` / `release_due` in the main script).
- **Diagnostics:** `chk(label)` logs `TRACE:` when `bm:time_elapsed_ms()` stops returning a number; `track_units` warns about
  units still script-controlled after release.
- Game scripts for reference are extracted at `g:\Modding\TWW 3\game_scripts` (`python tools/pack_tool.py extract
  <data_script.pack> <out> script/_lib script/battle`; needs `pip install zstandard`). Useful: `_lib/lib_timer_manager.lua`,
  `_lib/lib_battle_script_unit.lua`, `_lib/lib_battle_manager.lua`, `_lib/lib_battle_script_ai_planner.lua`. Known engine fact: an error
  thrown inside a `bm:callback/repeat_callback` callback aborts the shared timer loop and nothing is re-armed, so keep callbacks guarded.
- Known: `engage_matchups` fails against the full generated catalog (also on the original commit); the default test catalog passes.
- Backup of the last all-in-one version (beta.7, with the old scoring code): `g:\Modding\TWW 3\_backups\proactive_command_beta7_all_in_one.lua`.

## Critical: UI side vs model side

The game **corrupts script state** if these are mixed:

| Side | Allowed | Timers / entry points |
|---|---|---|
| **UI** | `cco(...)`, ability lists, `PerformAbilityForOwner`, selection | `bm:repeat_real_callback`, ShortcutTriggered, clicks |
| **Model** | units, armies, alliances, `bm:time_elapsed_ms()`, unit controllers, orders | `bm:repeat_callback`, `bm:register_repeating_timer`, phase changes, command handlers |

The cast script reads ability states on the UI side into `C.ab`; its model tick only reads that cache and only does planner calls (`create_ai_unit_planner`, `add_units`, `defend_position`, `remove_units`, `release_control`). The mock battle errors on any mix-up — keep that invariant.

WH3 Lua is **5.1** (no `goto`, no `//`).

## Sandbox rules learned

- `math.huge` is nil in the WH3 Lua sandbox (use `1e9`); do not call `debug.*` (`debug.traceback` corrupts the script log clock).
  `test/run_tests.py` nils both so tests fail on them. When adding any new stdlib call, check it exists in the game.
- `script_log_*.txt` (enable with an empty `data/script/enable_console_logging`) shows script errors and also game-clock stamps; the
  mod's own log is `proactive_command_log.txt` next to `Warhammer3.exe`.

## Build / install / test

```bat
python tools/build_mod.py
python tools/build_mod.py "C:\Program Files (x86)\Steam\steamapps\common\Total War WARHAMMER III\data" --no-catalog --install
pip install lupa
python test/run_tests.py
```

Catalog regen from game packs needs **Python 3.14+** (zstd). Use `--no-catalog` for day-to-day pack/install from committed `pc_catalog.lua`.

Live edit without repack: set `dev_script_path` / `dev_cast_script_path` in the user config to the checkout's script files (forward slashes). Restart the battle to pick up edits. The packed pack must contain both script files (install it once after adding a script).

After install: enable **proactive_command** in the launcher mod list. Disable **Just Good Babysitter** if present (both command idle units).

## Architecture map

Main script (`proactive_command.lua`):
- `take_snapshot` — friends/enemies, positions, melee/missile state (model); stored as `S.last_snap` with `snap.now`.
- `ai_hand_over` / `ai_manage` / `ai_release` / `run_ai_engagement` — idle units through the game AI.
- `run_engagement` (+ `engage_score`) — own target scoring when `engage_mode = "mod"`.
- `tick` — model loop (engine + shared timers); `ui_step` — watchdog only.

Cast script (`proactive_command_cast.lua`):
- `ui_read_abilities` / `watch_use` (UI timer) — ability states and "used" detection.
- `wants_ai` / `allowed` / `trigger_range` — when a unit is worth handing to the AI.
- `hand_over` / `manage_holds` / `release` — planner calls; `tick` — model timer.

## TWW3 modding notes (this project)

- Battle scripts under `script/battle/mod/*.lua` are loaded for normal battles (this mod relies on that path).
- Orders go through **unit controllers**, not unit objects directly.
- Prefer `battle_manager` APIs (`repeat_callback`, phase callbacks) over raw `empire_battle` where possible.
- Packs: RPFM is the common community tool; this repo builds packs with `tools/pack_tool.py` (type 3 mod pack).
- Docs: [ChadVandy WH3 battle docs](https://chadvandy.github.io/tw_modding_resources/WH3/battle/battle_index.html), [RPFM](https://frodo45127.github.io/rpfm/).
- User config and log live next to `Warhammer3.exe`, not inside the pack.

## Working with upstream

- Prefer small, testable changes; run `python test/run_tests.py` before claiming a fix.
- Timer-stall fixes belong in the model tick path and should be validated in a real battle (check the `TRACE:` / stall lines in the log), not only the mock.
- Version bump = `VERSION` in the main script + `CHANGELOG.md` section; tags trigger GitHub release builds.
- Multiplayer: each client only commands its own army; versions must match; still experimental.

## Local game paths (this machine)

- Game: `C:\Program Files (x86)\Steam\steamapps\common\Total War WARHAMMER III`
- Pack install: `...\data\proactive_command.pack` (+ `.png`)
- Config / log: `...\proactive_command_config.lua`, `...\proactive_command_log.txt`
- Checkout: `g:\Modding\TWW 3\twwh3-proactive-command`

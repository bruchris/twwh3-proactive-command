# Changelog

## v0.5.0

The first version confirmed working in a real battle. In a live co-op multiplayer battle the
game's own AI cast 74 abilities and spells for the player's lords and heroes, idle units
engaged 222 times, and there were no errors or timer stops.

- **Idle units and casting are played by the game's own battle AI** (the AI unit planner that
  enemy armies use): idle units, and casters with a ready ability, are handed to it for a short
  while and then given back. Your orders always win: moving, aiming, guard mode and Off are
  left alone. (Lillemats90, v0.5.0-beta.1 and beta.2)
- **Auto-cast is its own script** with its own timers and hotkey, so a casting problem can never
  stop idle units. New hotkeys: *Save camera bookmark 9* (auto-engage on/off) and
  *Save camera bookmark 12* (auto-cast on/off).
- **Multiplayer**: each player's copy only acts on that player's own army, for both idle units
  and casting. Every player needs the same version.
- **Fixes for the script environment**: no `math.huge` (it does not exist in the game) and no
  `debug.traceback` (it corrupts the game's script clock); UI context objects are only used from
  the UI side and the battle model only from the game-clock side.
- Includes everything from v0.4.0-beta.1: unlimited reach after first contact, the one-click
  installer improvements, live editing (`dev_script_path`, `dev_cast_script_path`).

## v0.5.0-beta.2

- **Auto-cast in multiplayer** (experimental), same rule as idle units: each player's copy only
  acts on that player's own army. Uses the shared `allow_in_multiplayer` setting. Every player
  still needs the same version. Watch for desyncs; set `allow_in_multiplayer = false` if you hit one.

## v0.5.0-beta.1

Auto-cast is now its own script, and the game's own AI does the casting.

- **Two scripts.** `proactive_command.lua` handles idle units, `proactive_command_cast.lua`
  handles spells and abilities. Each has its own timers, state and hotkey; an error or a stalled
  timer in one cannot stop the other. They share only the battlefield snapshot, a registry of
  which unit is with the AI (so they never fight over a unit) and the log.
- **Idle units go through the game's AI** (`engage_mode = "ai"`, now the default): the engine's AI
  unit planner plays the unit for `ai_hold_seconds`, then it is given back. Lords and heroes are
  included. `engage_mode = "mod"` keeps the old own-scoring behaviour.
- **Auto-cast hands casters to the same AI** when an ability is ready and an enemy is in reach,
  and takes them back as soon as the unit has cast (or after `cast_hold_seconds`). The log shows
  every ability use and whether the AI was in control.
- **Removed from the main script:** all spell scoring (CA ability templates, `best_target`), the
  Winds of Magic coordinator, UI/unit-controller casting, the debug bisect and canary code. These
  settings no longer exist: `min_score`, `score_bias`, `reserve_*`, `mana_pressure`,
  `min_seconds_between_spells`, `cast_targeted`, `allow_friendly_fire`, `friendly_fire_margin`,
  `restore_orders`, `min_score_override`, `debug_bisect`, `debug_canary`.
- New settings: `cast_start_grace_seconds`, `cast_hold_seconds`, `cast_release_after_cast`,
  `cast_cooldown`, `cast_cooldown_no_cast`, `cast_enemy_range`, `cast_self_range`,
  `cast_defend_radius`, `cast_max_holds`, `cast_while_moving`, `cast_watch`, `dev_cast_script_path`.
- Auto-cast does not run in multiplayer.
- The hotkey toggles behave as before (casting and engaging are independent).

## v0.4.0-beta.3

Reworked how the mod talks to the game, to stop the "mod goes quiet after a second or two"
problem for good.

- **No more HUD context objects for abilities.** Ability lists used to be read through `cco(...)`.
  In real battles that corrupted the engine's script state a moment later (the game-clock timers
  stopped and `battle:time_elapsed_ms()` returned a function). Abilities are now read with the
  battle scripting API (`unit:owned_non_passive_special_abilities()`,
  `unit:can_perform_special_ability()`) and used through the unit controller
  (`perform_special_ability`), the same way CA's own battle scripts do it. The mock used by the
  tests now refuses any ability read through `cco`.
- **Units are handed back to the player.** A unit controller takes a unit away from the player
  (its card is greyed out) until control is released. The mod now calls `release_control()` shortly
  after each order or cast, so you can always command your units. `release_control = false` restores
  the old behaviour.
- **Player orders are never overridden.** Only units that are idle (no order at all, not moving, not
  fighting, not in guard mode) get automatic targets. A unit must have been idle for `idle_delay`
  seconds (default 5) first, or `idle_delay_under_attack` (1.5) if it is being shot at or charged.
- **Start grace period:** no automatic orders for `start_grace_seconds` (default 15) after the battle
  starts. Abilities and spells are not delayed.
- **Every unit with abilities** can auto-cast, not only lords and heroes (`default_mode_units`
  is now `"full"`). The Winds of Magic budget rules are unchanged.
- **Hotkeys:** auto-cast on/off (`camera_bookmark_save11`, "bookmark 12") and auto-engage on/off
  (`camera_bookmark_save8`, "bookmark 9"). The shortcut ids are settings in the config file
  (`hotkey_toggle_casting`, `hotkey_toggle_engage`, ...). `auto_cast = false` starts a battle with
  casting off.
- **Trace log:** if the engine's clock ever breaks again, the log names the exact step
  (`TRACE: bm:time_elapsed_ms() stopped returning a number after step '...'`). The log also warns
  if a unit is still script-controlled after being handed back, or lost its order.
- The UI timer is now only a watchdog (no ability reading, no game queries); the counting "canary"
  timers are off unless `debug_canary` or `debug_bisect` is set.

## v0.4.0-beta.2

- **Fixed the crash that stopped the mod right after the first contact.** The engagement code
  used `math.huge` for "unlimited reach", but that value does not exist (it is `nil`) in the
  game's Lua environment, so the first tick after the fighting started failed with
  `attempt to compare nil with number` and the mod went quiet. It now uses a large number.
- The error handler no longer calls `debug.traceback()`, which in the game corrupted the
  script log's clock and added nothing useful.
- Offline tests now run with `math.huge` and `debug.traceback` removed, like the real game,
  so this kind of mistake is caught before a release.

## v0.4.0-beta.1

Beta for testing. **Known issue:** in real battles the mod still stops after its first second
or two (details and how to help below). Single-player custom battles are the best place to test.

- Unlimited reach after first contact: once the fighting has started, every unit above 25%
  health looks for targets anywhere on the field (e.g. cavalry goes straight for the next
  target after a chase). `engage_unlimited = false` restores the engage radius;
  `engage_unlimited_from_start = true` applies it from the moment deployment ends.
- Multiplayer: the local player's army is now identified by its position in the alliance
  (comparing army objects was unreliable in the real game).
- The game's UI context objects (ability states, ability buttons, the selection) are now only
  used from the UI side, and the battle model only from the game-clock side. Mixing them
  corrupted the game's battle state. The offline tests fail on any mix-up between the two.
- Normal ticks no longer call `army:unique_id()` or `unit:is_ai_controlled()` (suspects for
  the known issue). AI General and AI Army Control are still detected through their API.
- The 1-second loop runs on two game-clock timers (an engine timer and the shared script
  timer); a UI-side step reads ability states every 0.5 s and presses queued ability buttons.
- Diagnosis tools: `debug_bisect` (one kind of game call per second at battle start, logged),
  trivial "canary" timers, and a status line every 2 seconds. See docs/DEVELOPMENT.md.
- Log: shows how many of your units the mod controls in the first seconds of a battle, logs
  pausing and resuming right away, and writes the first summary after 10 seconds.
- Live editing (`dev_script_path`): run a loose copy of the script so edits apply at the next
  battle without repacking.

**Known issue / how to help.** Right after the mod's first normal tick, the game stops all
game-clock script timers (even trivial counters), so the mod goes quiet. All 33 read-only
kinds of game query were verified safe in-game. This beta removes the two remaining suspects
from normal ticks and tests them, and the rest of a normal tick, as diagnosis steps 34 to 39.
To help: add `debug_bisect = 33,` to `proactive_command_config.lua`, play 30 seconds of a
single-player custom battle, and share `proactive_command_log.txt`. The last `bisect` step
before the timers stop names the culprit; if all steps pass, the mod should just work.

## v0.3.1

- Installer: fixed the error at the end of installing ("The given path's format is not
  supported"). The mod itself was installed, but the example config was not copied and the
  next steps were not shown.

## v0.3.0

- Multiplayer support (experimental): in multiplayer battles each player's copy only commands
  that player's own army, including the second player in co-op. Switch it off per player with
  `allow_in_multiplayer = false`.
- Reinforcement units are now included, for both your side and the enemy.
- Release zip with a one-click installer that finds the game through Steam, and an uninstaller.
- Thumbnail in the game launcher's mod list.
- Development mode (`dev_script_path`): run a loose copy of the script so edits apply at the
  next battle without repacking or restarting the game.

## v0.2.0

- Coordinated engagement: idle units that aren't in guard mode pick their own targets. Targets
  are planned for the whole army (matchups, support, interception, commitment and caution
  rules).

## v0.1.0

- Lords, heroes and units use their abilities and spells on their own, scored with the game's
  own AI usage templates.
- One Winds of Magic coordinator per army.
- Hotkeys to cycle unit modes and to pause the mod, a config file and a battle log.

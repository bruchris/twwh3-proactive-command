# Changelog

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

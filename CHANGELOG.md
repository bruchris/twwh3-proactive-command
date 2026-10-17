# Changelog

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

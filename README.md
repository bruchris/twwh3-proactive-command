# Proactive Command (Total War: WARHAMMER III)

Idle units never stand around, and your lords, heroes and casters use their spells and
abilities on their own. Both jobs are done by the game's own battle AI, not by rules of this
mod, and they live in two small scripts that can't break each other. You can still give any
order at any time.

## What it does

The mod is two scripts in one pack:

- **`proactive_command.lua` (idle units).** A unit that has been idle for a few seconds (and is
  not in guard mode) is handed to the engine's AI unit planner, the same system the game uses
  to play enemy armies. The AI picks and fights its own target, and the unit is given back to you
  after `ai_hold_seconds` (15), or a few seconds after it is locked in melee. Lords and heroes
  are included. Nothing happens for the first 15 seconds of a battle, and anything you are
  commanding (moving, fighting, aiming a spell) is left alone.
  (`engage_mode = "mod"` switches to the mod's own target scoring instead.)
- **`proactive_command_cast.lua` (auto-cast).** When one of your units has an ability or spell
  ready and an enemy is within reach, the unit is handed to the same game AI for a few seconds
  (`cast_hold_seconds`, 8). The AI uses its own ability rules and its own Winds of Magic
  management, and the unit comes back to you as soon as it has cast. The script only hands a
  unit over when it makes sense:
  - the ability is ready, is not overcast / miscast-prone / a transformation / self-rooting,
    and (for spells) there are enough Winds of Magic in the pool;
  - an enemy is close enough for it (`cast_enemy_range`, `cast_self_range`);
  - you are not moving the unit or aiming one of its abilities;
  - the unit is not set to **Off**, and not already with the AI for the other script.
  - at most `cast_max_holds` (2) units are with the AI for casting at a time, and a unit is not
    taken again for a while after a hold (`cast_cooldown`, `cast_cooldown_no_cast`).

Because the scripts only share a small table (the battlefield snapshot, a "who holds which unit"
registry and the log), an error in one never stops the other. The log tags auto-cast lines with
`[cast]`.

**Disable Just Good Babysitter.** Both mods give orders to idle units, so only use one of them.
If both are active, the log and a message at the start of the battle remind you.

## Install

1. Download `ProactiveCommand-<version>.zip` from the [latest release](https://github.com/bruchris/twwh3-proactive-command/releases/latest).
2. Extract the zip and double-click **`Install.bat`**. It finds the game through Steam (it asks
   for the folder if it can't) and copies the mod into the game's `data` folder.
3. Open the game launcher (or your mod manager), go to **Mods**, and tick **proactive_command**.
   Untick Just Good Babysitter if you use it.

To update, download the new zip and run `Install.bat` again; it tells you which version you had
and which you have now. `Uninstall.bat` removes the mod (your config file and log are kept).

If Windows shows "Windows protected your PC" for `Install.bat`, click **More info → Run anyway**,
or right-click the zip, choose **Properties → Unblock**, and extract it again.

**Manual install:** copy `proactive_command.pack` and `proactive_command.png` into
`...\steamapps\common\Total War WARHAMMER III\data`.

## Multiplayer (experimental)

Both scripts run in multiplayer battles (co-op and head-to-head), with one rule:
**each player's copy only commands that player's own army**. Your friend's army and the enemy
are never touched. Auto-cast uses the same own-army snapshot as idle-unit handling.

- Every player should have the same version of the pack enabled. A player who doesn't want the
  automation can keep it enabled and set `allow_in_multiplayer = false` in their own config file.
- **Experimental.** Idle movement and casting both use script AI planners; if you get a desync,
  set `allow_in_multiplayer = false` and share both players' `proactive_command_log.txt`.
- Avoid fast-forward in multiplayer battles with the mod active.

## Hotkeys (bind them once)

In **Options → Controls → Battle**, four camera-bookmark slots are renamed (the shortcut ids are
settings in the config file, so you can point them at other slots):

| Slot | What it does |
|---|---|
| *Save camera bookmark 10 / Proactive: cycle mode of selected units* | cycles the selected units through **Off → Abilities only → Abilities + spells**. **Off** means the mod leaves the unit completely alone. In the other two modes the unit also engages on its own, and guard mode makes it hold |
| *Save camera bookmark 11 / Proactive: pause or resume* | pauses or resumes the mod for the whole battle |
| *Save camera bookmark 12 / Proactive: auto-cast on or off* | switches the auto-cast script on or off (units it holds are given back at once) |
| *Save camera bookmark 9 / Proactive: auto-engage on or off* | switches idle-unit handling on or off. Independent from auto-cast |

A short text at the bottom of the screen confirms each change. **Off** means both scripts leave
the unit completely alone; **Abilities only** keeps auto-cast away from spells that cost Winds of
Magic. Both modes default to **Abilities + spells**.
(AI Army Control uses bookmark slots 1–7, so these slots don't clash with it.)

## Configuration (optional)

The installer puts `proactive_command_config.example.lua` in the game folder (next to
`Warhammer3.exe`). Copy it to `proactive_command_config.lua` in the same folder and change what
you like. It is read at the start
of every battle, so you don't need to repack anything.

## Log

`proactive_command_log.txt` in the game folder is rewritten every battle. It records:

- idle units: `AI HANDOVER` / `AI RELEASE` lines with the reason
- auto-cast: `[cast] CAST HOLD`, `[cast] USED <ability> (while with the game AI: cast)`,
  `[cast] RELEASE` and a summary every 30 seconds (how many abilities were used while a unit was
  with the AI)
- a summary every 30 seconds and any `ERROR` lines

Set `log_level = 2` to also see why units were skipped.

## Known limits

- **Auto-cast relies on the game AI actually using the unit's spells while it holds the unit.**
  The `[cast] USED` lines show whether it did. A unit that is held for casting is briefly
  controlled by the AI (its card is greyed out) and is told to stay around its position.
- The earlier built-in spell scoring (CA's `battle_ai_abilities_usage_*` templates, evaluated by the
  mod itself) was removed in v0.5.0: calling those APIs from the mod's timers corrupted the game's
  script clock. If the log ever shows a `TRACE:` line, that names the step that broke it.
- Army abilities (bombardments, faction powers) are left to you.
- Settings are only in the config file. There is no Mod Configuration Tool menu yet.
- Multiplayer support is experimental: confirmed in one live co-op battle so far (see above).

## For developers

Building, testing, regenerating the ability catalog for a game patch or an overhaul, and making
a release are described in [docs/DEVELOPMENT.md](docs/DEVELOPMENT.md).

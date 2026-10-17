# Proactive Command (Total War: WARHAMMER III)

Your lords, heroes and units use their abilities and spells on their own, and idle units
(not in guard mode) find their own targets. A coordinator plans those targets for the whole
army. You can still give any order at any time.

- **Decisions use the game's own AI logic.** Every ability's `ai_usage` template from CA's
  `battle_ai_abilities_usage_*` tables is scored with live battlefield data, using CA's
  `min_score_for_activation` as the threshold. Example: Plague of Rust is cast on armoured
  enemies in melee, Comet of Casandora on a standing blob, and a melee buff when the unit is
  fighting.
- **One Winds of Magic coordinator per army.** It casts at most one spell every 4 seconds and
  picks the best one across all your casters. It keeps a reserve of winds unless a cast is
  near-perfect, and raises the bar as the pool empties.
- **Safety checks:**
  - No damaging areas (vortex paths, bombardments, breaths, winds, explosive missiles) where
    your own units would be hit.
  - No overcast (`_upgraded`) or miscast-risk spells.
  - No transformations, stances or self-rooting abilities.
  - Nothing on units handed to AI General or AI Army Control.
  - It never acts on a unit while you are aiming one of its abilities.
- **Non-targeted abilities** are fired exactly as if you had clicked the button. **Targeted
  ones** are cast through a unit controller, and the unit's previous move or attack order is
  re-issued if the cast stopped it.
- **Coordinated engagement.** Every second, the mod plans targets for idle units across
  the whole army:
  - **Matchups:** spears take cavalry and monsters. Cavalry avoids fresh spears and hunts
    archers, artillery and casters. Cavalry and monsters also hit enemies that are already
    pinned in melee with your units.
  - **Support and interception:** your units help friends who are losing a fight, and
    intercept enemies running at your archers and casters. Both are weighted by whether the
    help can arrive in time.
  - **Commitment:** it tracks how much force is already on each enemy. Units spread out instead
    of piling onto one enemy, and double up only where needed.
  - **Caution:**
    - Units won't leave the army for a lonely charge or dive into a crowd of fresh enemies.
    - Spellcasters keep their distance, and badly hurt or wavering units stay out.
    - Infantry doesn't chase routing units, but cavalry does.
  - **How it plans:** the best pairs are assigned first. The plan is then improved by swapping
    and rebalancing targets when that helps the army as a whole.
  - **You stay in charge:**
    - Units in guard mode hold.
    - A unit you just gave an order to is left alone for 8 seconds.
    - Until the fighting starts, units only react to enemies within their engage radius, so
      nobody charges across the map when deployment ends.
  - **Unlimited reach after first contact:** once the first units clash or shots are fired,
    every unit above 25% health looks for targets anywhere on the field. For example, cavalry
    that has run down a routing unit goes straight for the next target. Nearer targets are
    still preferred, and missile units still only shoot what is in range. Set
    `engage_unlimited = false` to keep the engage radius for the whole battle.
  - **Disable Just Good Babysitter.** Both mods give orders to idle units, so only use one of
    them. If both are active, the log and a message at the start of the battle remind you.

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

The mod runs in multiplayer battles (co-op and head-to-head, custom and campaign), with one rule:
**each player's copy only commands that player's own army**. Your friend's army and the enemy
are never touched. This is the same approach AI General uses in multiplayer.

- Every player should have the same version of the pack enabled. A player who doesn't want the
  automation can keep it enabled and set `allow_in_multiplayer = false` (or set their default
  modes to `"off"`) in their own config file.
- Hotkeys, modes and the config file are per player. Your settings only affect your own army.
- Abilities fired through the ability button go through the game's normal player-command path.
  Targeted casts and engagement orders use script unit controllers, the same mechanism AI
  General uses in multiplayer.
- **Not yet tested in a real multiplayer battle.** Lockstep battles can desync if a client does
  something the others don't see. If you get a desync, set `allow_in_multiplayer = false` and
  share both players' `proactive_command_log.txt` (in a GitHub issue, for example).
- Avoid fast-forward in multiplayer battles with the mod active (AI General users reported
  desyncs with it).

## Hotkeys (bind them once)

In **Options → Controls → Battle**, two camera-bookmark slots are renamed:

| Slot | What it does |
|---|---|
| *Save camera bookmark 10 / Proactive: cycle mode of selected units* | cycles the selected units through **Off → Abilities only → Abilities + spells**. **Off** means the mod leaves the unit completely alone. In the other two modes the unit also engages on its own, and guard mode makes it hold |
| *Save camera bookmark 11 / Proactive: pause or resume* | pauses or resumes the mod for the whole battle |

A short text at the bottom of the screen confirms each change. Defaults when a battle starts:
lords and heroes use **Abilities + spells**, and regular units use **Abilities only**.
(AI Army Control uses bookmark slots 1–7, so these two slots don't clash with it.)

## Configuration (optional)

The installer puts `proactive_command_config.example.lua` in the game folder (next to
`Warhammer3.exe`). Copy it to `proactive_command_config.lua` in the same folder and change what
you like. It is read at the start
of every battle, so you don't need to repack anything.

## Log

`proactive_command_log.txt` in the game folder is rewritten every battle. It records:

- every cast, with the ability, caster, target, score and method
- every engagement (`ENGAGE`), with the unit, target, score and reasons (`anti-large`, `support`, `intercept` and so on)
- casts that had no effect
- a summary every 30 seconds

Set `log_level = 2` to also see why spells were held back, or `log_level = 3` to also see why
units didn't engage.

## Known limits

- **v0.4.0-beta.1 known issue:** in real battles the mod stops after its first second or two,
  because the game stops its script timers right after the mod's first normal tick. The cause
  is being narrowed down; see the release notes and docs/DEVELOPMENT.md for how to help test.
- The decisions have only been tested in a simulated battle. The first in-game battles are the
  real test, so watch the log.
- Targeted casts go through `unitcontroller:perform_special_ability`, which CA's own scripts
  use. If a particular ability doesn't fire this way, the log shows `NO EFFECT`, and the mod
  stops trying that ability on that unit after 3 failures.
- Army abilities (bombardments, faction powers) are left to you.
- Engagement uses simple tactical rules on top of the game's pathfinding and combat. It doesn't
  plan formations or movement routes; it decides who fights whom.
- Settings are only in the config file. There is no Mod Configuration Tool menu yet.
- Multiplayer support is experimental and untested in a live match (see above).

## For developers

Building, testing, regenerating the ability catalog for a game patch or an overhaul, and making
a release are described in [docs/DEVELOPMENT.md](docs/DEVELOPMENT.md).

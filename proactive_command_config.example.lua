-- Proactive Command user config.
-- Copy this file next to Warhammer3.exe as "proactive_command_config.lua".
-- Only the settings you list here override the defaults. Read at the start of every battle.
-- One file for both scripts: idle units (proactive_command.lua) and auto-cast (proactive_command_cast.lua).
return {
    -- Hotkeys. The values are the game's shortcut ids (Options -> Controls -> Battle). The
    -- slots below are the camera-bookmark "save" shortcuts; rebind them in the game's controls
    -- menu, or point these settings at another slot id (camera_bookmark_save0 .. save11).
    -- Set one to "" to switch that hotkey off.
    hotkey_cycle_selected = "camera_bookmark_save9",   -- bookmark 10: cycle mode of selected units
    hotkey_toggle_all     = "camera_bookmark_save10",  -- bookmark 11: pause / resume the idle-unit script
    hotkey_toggle_casting = "camera_bookmark_save11",  -- bookmark 12: auto-cast on / off
    hotkey_toggle_engage  = "camera_bookmark_save8",   -- bookmark 9:  idle units on / off

    -- Start a battle with these on (the hotkeys switch them during the battle)
    auto_cast = true,
    auto_engage = true,

    -- ===== Idle units =====
    start_grace_seconds = 15,             -- no automatic orders for this long after the battle starts
    idle_delay = 5,                       -- a unit must be idle this long before it is handed to the AI
    idle_delay_under_attack = 1.5,        -- ...or this long when it is being shot at / charged
    engage_mode = "ai",                   -- "ai" = the game's own AI plays idle units; "mod" = own scoring
    ai_order = "defend",                  -- "defend" (hold around the unit, retaliate) or "attack" (nearest enemy)
    ai_defend_radius = 120,               -- metres
    ai_hold_seconds = 15,                 -- give the unit back after this long without a fight
    ai_release_after_melee = 3,           -- ...or this long after it is locked in melee
    ai_include_casters = true,            -- lords/heroes too
    default_mode_characters = "full",     -- "off" | "abilities" | "full" (off = leave the unit alone)
    default_mode_units = "full",

    -- ===== Auto-cast =====
    cast_start_grace_seconds = 15,        -- no automatic casting for this long after the battle starts
    cast_hold_seconds = 8,                -- longest a unit stays with the game AI
    cast_release_after_cast = 2,          -- hand it back this long after it used an ability
    cast_cooldown = 10,                   -- before the same unit may be taken again
    cast_cooldown_no_cast = 20,           -- ...if the AI cast nothing
    cast_enemy_range = 150,               -- enemy must be this close (m) for a ranged spell
    cast_self_range = 70,                 -- ...or this close for buffs / abilities without a target
    cast_max_holds = 2,                   -- units with the AI for casting at the same time
    cast_while_moving = false,            -- also take units that have a move order
    allow_overcast = false,
    allow_miscast = false,
    allow_summons = true,
    never_use = {
        -- wh_main_spell_heavens_comet_of_casandora = true,   -- never trigger on this ability
    },

    -- Multiplayer (experimental): both scripts only ever command your own army.
    -- Every player needs the same version. Set false if you hit a desync.
    allow_in_multiplayer = true,

    log_level = 1,                        -- 2 = also log why units were skipped

    -- Development only: run loose copies of the scripts instead of the packed ones, so edits
    -- take effect at the next battle (re)start. Use forward slashes.
    -- dev_script_path = "C:/path/to/mod_src/script/battle/mod/proactive_command.lua",
    -- dev_cast_script_path = "C:/path/to/mod_src/script/battle/mod/proactive_command_cast.lua",
}

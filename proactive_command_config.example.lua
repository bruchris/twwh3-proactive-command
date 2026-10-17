-- Proactive Command user config.
-- Copy this file next to Warhammer3.exe as "proactive_command_config.lua".
-- Only the settings you list here override the defaults. Read at the start of every battle.
return {
    -- Who acts on their own when a battle starts: "off" | "abilities" | "full"
    default_mode_characters = "full",     -- lords and heroes: abilities + spells
    default_mode_units = "abilities",     -- regular units: abilities only

    -- Winds of Magic budget (per army)
    reserve_winds = 8,                    -- keep at least this much in the pool...
    reserve_bypass_score = 0.95,          -- ...unless a cast is this good (0..1)
    min_seconds_between_spells = 4,       -- spacing between spells of the same army
    mana_pressure = 0.2,                  -- be pickier as the pool empties

    -- How eager: positive = more conservative, negative = more trigger-happy
    score_bias = 0.0,

    -- Safety
    allow_friendly_fire = false,
    friendly_fire_margin = 12,            -- metres of clearance around damage areas
    allow_overcast = false,
    allow_summons = true,

    -- Engagement: idle units (not in guard mode) pick their own targets
    auto_engage = true,
    engage_min_score = 0.35,              -- higher = more cautious
    engage_radius = { infantry = 110, anti_large = 110, cavalry = 180, monster = 140, character = 130, missile = 0 },
    engage_characters = true,             -- melee lords/heroes join fights
    engage_casters = false,               -- spellcasters keep their distance
    player_order_grace = 8,               -- seconds after your order before a unit acts on its own
    chase_routing_with_cavalry = true,
    max_melee_attackers = 3,

    -- Specific abilities
    never_use = {
        -- wh_main_spell_heavens_comet_of_casandora = true,
    },
    min_score_override = {
        -- wh_main_spell_fire_fireball = 0.7,
    },

    -- Multiplayer (experimental): your copy only ever commands your own army
    allow_in_multiplayer = true,

    log_level = 1,                        -- 2 = also log why spells were held back

    -- Development only: run a loose copy of the script instead of the packed one, so edits
    -- take effect at the next battle (re)start. Use forward slashes.
    -- dev_script_path = "C:/path/to/mod_src/script/battle/mod/proactive_command.lua",
}

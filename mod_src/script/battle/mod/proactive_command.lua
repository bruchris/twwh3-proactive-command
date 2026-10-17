--------------------------------------------------------------------------------
-- Proactive Command (Total War: WARHAMMER III battle mod)
--
-- Your lords, heroes and units use their abilities and spells on their own, and idle
-- units (not in guard mode) pick their own targets, coordinated across the army.
-- Ability decisions use Creative Assembly's own AI ability-usage templates
-- (battle_ai_abilities_usage_* tables); one coordinator per army spends the Winds of
-- Magic; one engagement coordinator assigns targets to idle units by matchup, threat,
-- support and how much force is already committed to each enemy.
--
-- Files:
--   script/battle/mod/proactive_command.lua       (this file)
--   script/proactive_command/pc_catalog.lua       (generated from the game DB)
-- Optional user config (plain Lua, next to Warhammer3.exe):
--   proactive_command_config.lua   ->  return { reserve_winds = 10, ... }
-- Log (overwritten each battle, next to Warhammer3.exe):
--   proactive_command_log.txt
--------------------------------------------------------------------------------

local VERSION = "0.3.0"

if proactive_command_loaded then return end

-- Development mode: if the user config sets dev_script_path, run that file (a loose copy
-- of this script, e.g. in the git checkout) instead of the packed one. Edit it, restart
-- the battle, and the new code runs; no repacking or game restart needed.
if not PROACTIVE_COMMAND_DEV_CHILD and loadfile then
    local dev_path
    local cfg_chunk = loadfile("proactive_command_config.lua")
    if cfg_chunk then
        if setfenv then setfenv(cfg_chunk, {}) end
        local ok, t = pcall(cfg_chunk)
        if ok and type(t) == "table" and type(t.dev_script_path) == "string" and t.dev_script_path ~= "" then
            dev_path = t.dev_script_path
        end
    end
    if dev_path then
        local chunk, err = loadfile(dev_path)
        if chunk then
            if setfenv and getfenv then setfenv(chunk, getfenv(1)) end
            PROACTIVE_COMMAND_DEV_STATUS = "running the development copy " .. dev_path
            PROACTIVE_COMMAND_DEV_CHILD = true
            local ok, e = pcall(chunk)
            PROACTIVE_COMMAND_DEV_CHILD = nil
            if not ok then
                PROACTIVE_COMMAND_DEV_STATUS = "the development copy " .. dev_path .. " stopped with an error: " .. tostring(e)
                if out then pcall(out, "Proactive Command: " .. PROACTIVE_COMMAND_DEV_STATUS) end
            end
            if proactive_command_loaded then return end   -- the development copy took over
        else
            PROACTIVE_COMMAND_DEV_STATUS = "could not load the development copy (" .. tostring(err) .. "), using the packed copy"
        end
    end
end
proactive_command_loaded = true

--------------------------------------------------------------------------------
-- Configuration
--------------------------------------------------------------------------------

local DEFAULTS = {
    enabled = true,
    allow_in_multiplayer = true,      -- experimental: in multiplayer each player's copy only commands
                                      -- that player's own army (like AI General does)
    tick_seconds = 1.0,               -- how often decisions are made (battle time)

    -- Who acts on their own at battle start: "off" | "abilities" | "full"
    --   abilities = abilities, items and bound spells (no Winds of Magic)
    --   full      = abilities + spells that cost Winds of Magic
    default_mode_characters = "full",
    default_mode_units = "abilities",

    -- Decision thresholds (CA's own default min score is 0.5)
    min_score = nil,                  -- nil = use the game's min_score_for_activation
    score_bias = 0.0,                 -- added to every threshold; positive = more conservative
    limited_use_extra_score = 0.1,    -- extra score needed for abilities with limited uses
    summon_requires_threat = true,    -- only summon when enemies are close to the caster

    -- Winds of Magic budget (per army)
    min_seconds_between_spells = 4,   -- coordinator spacing between spells of one army
    reserve_winds = 8,                -- try to keep this much in the pool...
    reserve_bypass_score = 0.95,      -- ...unless a cast scores at least this (scores are 0..1)
    mana_pressure = 0.2,              -- threshold rises by up to this as the pool empties
    allow_overcast = false,           -- use "_upgraded" (overcast) versions
    allow_miscast = false,            -- use abilities that can miscast

    -- Safety
    allow_friendly_fire = false,      -- damaging areas may not overlap your units
    friendly_fire_margin = 12,        -- extra metres of clearance around damage areas
    allow_targeted_while_moving = false, -- don't interrupt a moving unit with a targeted cast
    restore_orders = true,            -- re-issue a move/attack order if a cast stopped the unit
    skip_ai_controlled = true,        -- leave units handed to AI General / AI Army Control alone
    allow_self_rooting = false,       -- abilities that stop the caster from moving
    allow_transformations = false,
    allow_summons = true,
    stop_on_victory = true,           -- stop when victory countdown starts

    -- Engagement: idle units that are not in guard mode find their own targets
    auto_engage = true,
    engage_min_score = 0.35,          -- how good an engagement must be (higher = more cautious)
    engage_radius = {                 -- max distance (m) a unit will go to find a target
        infantry = 110, anti_large = 110, cavalry = 180, monster = 140, character = 130, missile = 0,
    },                                -- missile = 0 means "within its own missile range"
    engage_characters = true,         -- melee lords/heroes join fights on their own
    engage_casters = false,           -- spellcasters keep their distance
    engage_artillery = false,         -- artillery already fires at will
    player_order_grace = 8,           -- seconds after you order a unit before it acts on its own
    min_hp_to_engage = 0.25,          -- badly hurt units stay out
    chase_routing_with_cavalry = true,
    ranged_melee_when_empty = false,  -- missile units without ammo stay out of melee
    max_melee_attackers = 3,          -- how many of your melee units pile onto one enemy unit

    -- UI / logging
    hotkey_cycle_selected = "camera_bookmark_save9",   -- "Save camera bookmark 10"
    hotkey_toggle_all = "camera_bookmark_save10",      -- "Save camera bookmark 11"
    show_toasts = true,
    log_level = 1,                    -- 0 off, 1 casts + summary, 2 decisions, 3 debug
    log_file = "proactive_command_log.txt",
    user_config_file = "proactive_command_config.lua",
    dev_script_path = false,          -- development: run this loose copy of the script instead
                                      -- of the packed one (read at the top of the file)

    -- Per-ability overrides: never use / only use when the score is at least X
    never_use = {},                   -- e.g. { wh_main_spell_heavens_comet_of_casandora = true }
    min_score_override = {},          -- e.g. { wh_main_spell_fire_fireball = 0.7 }
}

local cfg = {}
for k, v in pairs(DEFAULTS) do cfg[k] = v end

--------------------------------------------------------------------------------
-- State
--------------------------------------------------------------------------------

local S = {
    now = 0,            -- seconds of battle time since the battle started
    running = false,
    paused = false,
    catalog = nil,
    units = {},         -- per unit uid: { mode, uc, next_issue, fail = {key = n}, blocked = {key = true}, statics }
    effects = {},       -- effects[target_uid][key] = expires
    areas = {},         -- list of { key, x, z, r, expires }
    armies = {},        -- per army id: { last_spell, start_total, casts }
    pending = {},       -- casts waiting for verification
    stats = { casts = 0, spells = 0, failed = 0, restored = 0, engages = 0 },
    issuing = false,    -- true while the mod itself gives orders (ignore those in the command handler)
    log_buf = {},
    log_path = nil,
    next_summary = 30,
}

--------------------------------------------------------------------------------
-- Logging
--------------------------------------------------------------------------------

local function log(level, fmt, ...)
    if level > (cfg.log_level or 0) then return end
    local ok, msg = pcall(string.format, fmt, ...)
    if not ok then msg = tostring(fmt) end
    local line = string.format("[%7.1f] %s", S.now or 0, msg)
    S.log_buf[#S.log_buf + 1] = line
    if out then pcall(out, "[ProactiveCommand] " .. line) end
end

local function flush_log()
    if #S.log_buf == 0 then return end
    if S.log_path and io and io.open then
        local ok, f = pcall(io.open, S.log_path, "a")
        if ok and f then
            f:write(table.concat(S.log_buf, "\n"), "\n")
            f:close()
        end
    end
    S.log_buf = {}
end

local function start_log()
    if not cfg.log_file or cfg.log_file == "" or (cfg.log_level or 0) <= 0 then return end
    S.log_path = cfg.log_file
    if io and io.open then
        local ok, f = pcall(io.open, S.log_path, "w")
        if ok and f then f:close() end
    end
end

-- Run fn and log (not crash) on error; repeated identical errors are only logged a few times
local seen_errors = {}
local function guarded(name, fn)
    return function(...)
        local ok, err = pcall(fn, ...)
        if not ok then
            local msg = tostring(err)
            local n = (seen_errors[msg] or 0) + 1
            seen_errors[msg] = n
            if n <= 3 then
                log(0, "ERROR in %s: %s%s", name, msg, n == 3 and " (further repeats hidden)" or "")
                if n == 1 and debug and debug.traceback then log(0, "%s", debug.traceback()) end
            end
            flush_log()
        end
    end
end

--------------------------------------------------------------------------------
-- Config / catalog loading
--------------------------------------------------------------------------------

local function load_user_config()
    if not loadfile or not cfg.user_config_file then return end
    local chunk = loadfile(cfg.user_config_file)
    if not chunk then return end
    if setfenv then setfenv(chunk, {}) end
    local ok, t = pcall(chunk)
    if ok and type(t) == "table" then
        for k, v in pairs(t) do
            if DEFAULTS[k] ~= nil then cfg[k] = v end
        end
        S.user_config = true
    end
end

local function load_catalog()
    local original = package.path
    package.path = "data/script/proactive_command/?.lua;script/proactive_command/?.lua;" .. (original or "")
    local ok, cat = pcall(require, "pc_catalog")
    package.path = original
    if ok and type(cat) == "table" and cat.abilities then
        return cat
    end
    return nil, cat
end

--------------------------------------------------------------------------------
-- Helpers
--------------------------------------------------------------------------------

local function clamp01(x)
    if x < 0 then return 0 end
    if x > 1 then return 1 end
    return x
end

local function dist(a, b)
    local dx, dz = a.x - b.x, a.z - b.z
    return math.sqrt(dx * dx + dz * dz)
end

local function dist_xz(ax, az, bx, bz)
    local dx, dz = ax - bx, az - bz
    return math.sqrt(dx * dx + dz * dz)
end

-- distance from point p to the segment a->b, and the position along it (0..1)
local function seg_dist(px, pz, ax, az, bx, bz)
    local vx, vz = bx - ax, bz - az
    local len2 = vx * vx + vz * vz
    if len2 < 1e-6 then return dist_xz(px, pz, ax, az), 0 end
    local t = ((px - ax) * vx + (pz - az) * vz) / len2
    local tc = t
    if tc < 0 then tc = 0 elseif tc > 1 then tc = 1 end
    return dist_xz(px, pz, ax + vx * tc, az + vz * tc), t
end

local function vec(x, y, z)
    if type(v) == "function" then return v(x, y, z) end
    return battle_vector:new(x, y, z)
end

local function try(fn, ...)
    local ok, r = pcall(fn, ...)
    if ok then return r end
    return nil
end

local function cco_call(obj, expr)
    if not obj then return nil end
    local ok, r = pcall(function() return obj:Call(expr) end)
    if ok then return r end
    return nil
end

local MODES = { "off", "abilities", "full" }
local MODE_NAMES = { off = "Off", abilities = "Abilities only", full = "Abilities + spells" }

--------------------------------------------------------------------------------
-- Battlefield snapshot (taken once per tick)
--------------------------------------------------------------------------------

local function snapshot_unit(unit, side, player_alliance, catalog)
    if not unit then return nil end
    local men = try(unit.number_of_men_alive, unit) or 0
    if men <= 0 then return nil end
    if try(unit.is_leaving_battle, unit) then return nil end
    if try(unit.is_valid_target, unit) == false then return nil end
    local pos = unit:position()
    local u = {
        unit = unit,
        uid = tonumber(unit:unique_ui_id()) or unit:unique_ui_id(),
        side = side,
        x = pos:get_x(),
        z = pos:get_z(),
        men = men,
        hp_frac = try(unit.unary_hitpoints, unit) or 1,
        melee = try(unit.is_in_melee, unit) or false,
        moving = try(unit.is_moving, unit) or false,
        moving_fast = try(unit.is_moving_fast, unit) or false,
        idle = try(unit.is_idle, unit) or false,
        routing = (try(unit.is_routing, unit) or false) or (try(unit.is_crumbling, unit) or false)
            or (try(unit.is_unstable, unit) or false),
        shattered = try(unit.is_shattered, unit) or false,
        wavering = try(unit.is_wavering, unit) or false,
        flying = try(unit.is_currently_flying, unit) or false,
        can_fly = try(unit.can_fly, unit) or false,
        under_fire = try(unit.is_under_missile_attack, unit) or false,
        fast_speed = try(unit.fast_speed, unit) or 0,
        slow_speed = try(unit.slow_speed, unit) or 0,
        type = try(unit.type, unit) or "",
        can_use_magic = try(unit.can_use_magic, unit) or false,
        guard = try(unit.is_behaviour_active, unit, "defend") or false,
    }
    local ammo = try(unit.ammo_left, unit) or 0
    local start_ammo = try(unit.starting_ammo, unit) or 0
    local mrange = try(unit.missile_range, unit) or 0
    u.missile_unit = mrange > 0 and start_ammo > 0
    u.ammo_ratio = start_ammo > 0 and ammo / start_ammo or 0
    u.has_ammo = ammo > 0
    u.missile_range = mrange
    local tgt = try(unit.current_target, unit)
    u.target_uid = tgt and tonumber(try(tgt.unique_ui_id, tgt)) or nil
    u.stats = catalog.units[u.type] or {}
    if side == "enemy" then
        u.visible = try(unit.is_visible_to_alliance, unit, player_alliance)
        if u.visible == nil then u.visible = true end
    else
        u.visible = true
    end
    return u
end

-- In multiplayer only the local player's own army is ours to command; other human
-- players' armies (and their copy of this mod) are left alone.
local function is_commandable_army(army)
    if not S.mp then return try(army.is_player_controlled, army) end
    local own = S.own_army
    if not own then return false end
    local a, b = try(army.unique_id, army), try(own.unique_id, own)
    if a ~= nil and b ~= nil then return a == b end
    return army == own
end

-- An army's own units plus any reinforcement units that have arrived on the field.
local function for_each_army_unit(army, fn)
    local units = army:units()
    for j = 1, units:count() do fn(units:item(j)) end
    for k = 1, (try(army.num_reinforcement_units, army) or 0) do
        local r = try(army.get_reinforcement_units, army, k)
        if r then
            for j = 1, r:count() do fn(r:item(j)) end
        end
    end
end

local function take_snapshot()
    local catalog = S.catalog
    local pa = bm:get_player_alliance()
    local ea = bm:get_non_player_alliance()
    local snap = { friends = {}, enemies = {}, by_uid = {}, player_armies = {} }
    local armies = pa:armies()
    for i = 1, armies:count() do
        local army = armies:item(i)
        local is_player = is_commandable_army(army)
        local list = {}
        for_each_army_unit(army, function(unit)
            local u = snapshot_unit(unit, "friend", pa, catalog)
            if u and not snap.by_uid[u.uid] then
                u.army = army
                u.player = is_player and true or false
                snap.friends[#snap.friends + 1] = u
                snap.by_uid[u.uid] = u
                if u.player then list[#list + 1] = u end
            end
        end)
        if is_player then
            snap.player_armies[#snap.player_armies + 1] = { army = army, units = list }
        end
    end
    local earmies = ea:armies()
    for i = 1, earmies:count() do
        for_each_army_unit(earmies:item(i), function(unit)
            local u = snapshot_unit(unit, "enemy", pa, catalog)
            if u and u.visible and not snap.by_uid[u.uid] then
                snap.enemies[#snap.enemies + 1] = u
                snap.by_uid[u.uid] = u
            end
        end)
    end
    -- who is charging / shooting at whom
    for _, e in ipairs(snap.enemies) do
        local t = e.target_uid and snap.by_uid[e.target_uid]
        if t then
            if e.moving_fast and not e.melee and dist(e, t) < 70 then t.charged_at = true end
            if e.missile_unit and e.has_ammo and not e.melee then t.shot_at = true end
        end
    end
    for _, f in ipairs(snap.friends) do
        local t = f.target_uid and snap.by_uid[f.target_uid]
        if t then
            if f.moving_fast and not f.melee and dist(f, t) < 70 then
                f.charging = true
                t.charged_at = true
            end
            if f.missile_unit and f.has_ammo and not f.melee and dist(f, t) <= (f.missile_range + 10) then
                f.shooting = true
            end
        end
    end
    return snap
end

--------------------------------------------------------------------------------
-- Scoring (CA's battle AI ability-usage templates)
--------------------------------------------------------------------------------

local function count_in_area(list, x, z, r, exclude_uid)
    local n = 0
    for _, u in ipairs(list) do
        if u.uid ~= exclude_uid and not u.shattered and dist_xz(u.x, u.z, x, z) <= r then
            n = n + 1
        end
    end
    return n
end

local function count_in_corridor(list, ax, az, bx, bz, width, extend)
    local n = 0
    for _, u in ipairs(list) do
        if not u.shattered then
            local d, t = seg_dist(u.x, u.z, ax, az, bx, bz)
            if d <= width and t >= 0 and t <= extend then n = n + 1 end
        end
    end
    return n
end

-- Value of one template parameter for a candidate cast (raw, before multiplier)
local function param_value(p, ctx)
    local T, A = ctx.target, ctx.ability
    local st = T.stats or {}
    if p == "bool_in_melee" then
        if A.sum then return ctx.threatened or false end   -- summons: enemies close to the caster
        return T.melee
    end
    if p == "bool_out_of_melee" then return not T.melee end
    if p == "bool_charging" then return T.charging or false end
    if p == "bool_charged_at" or p == "bool_charging_at_me" then return T.charged_at or false end
    if p == "bool_threatened" or p == "bool_threatening_me" then return ctx.threatened or false end
    if p == "bool_shooting" then return T.shooting or false end
    if p == "bool_shooting_at_me" then return T.shot_at or false end
    if p == "bool_under_fire" then return T.under_fire end
    if p == "bool_flying_currently" then return T.flying end
    if p == "bool_flying_unit" then return T.can_fly end
    if p == "bool_missile_unit" then return T.missile_unit end
    if p == "bool_standing_still" then return not T.moving end
    if p == "bool_ammo_under_threshold" then return T.missile_unit and T.ammo_ratio < 0.5 end
    if p == "bool_has_abilities_costing_mana" then return T.can_use_magic end
    if p == "bool_ability_active" then return ctx.already_active or false end
    if p == "bool_ability_final_use" then return ctx.final_use or false end
    if p == "bool_contesting_victory_point" or p == "bool_on_wall_near_siege_attack_focus" then return false end
    local hp = (st.hp or 0)
    if p == "value_armour" then return st.a or 0 end
    if p == "value_melee_attack" then return st.ma or 0 end
    if p == "value_melee_cp" then return (st.mcp or 0) * T.hp_frac end
    if p == "value_missle_cp" then return (st.rcp or 0) * T.hp_frac end
    if p == "value_total_cp" then return ((st.mcp or 0) + (st.rcp or 0)) * T.hp_frac end
    if p == "value_num_men" then return T.men end
    if p == "value_hitpoint_total" then return hp * T.hp_frac end
    if p == "value_hitpoint_damage_taken" then return hp * (1 - T.hp_frac) end
    if p == "value_morale_score" then
        if T.routing then return 10 elseif T.wavering then return 40 end
        return 100
    end
    if p == "value_speed_current" then
        if T.moving_fast then return T.fast_speed elseif T.moving then return T.slow_speed end
        return 0
    end
    if p == "value_speed_max" then return T.fast_speed end
    if p == "value_enemy_units_in_area" then return ctx.enemies_in_area end
    if p == "value_friendly_units_in_area" then return ctx.friends_in_area end
    if p == "value_enemy_units_in_cone" then return ctx.enemies_in_cone end
    if p == "value_enemy_to_friendly_ratio" then
        return ctx.enemies_in_area / math.max(1, ctx.friends_in_area)
    end
    if p == "value_friendly_to_enemy_ratio" then
        return ctx.friends_in_area / math.max(1, ctx.enemies_in_area)
    end
    if p == "value_winds_of_magic_amount" then return ctx.winds or 0 end
    if p == "value_winds_of_magic_recharge" then return ctx.winds_recharge or 0 end
    return nil -- unknown / unsupported parameter (ignored)
end

-- Weighted average of normalised parameters in [0, 1]; a bool weighted 0 is a veto.
local function template_score(template, ctx, catalog)
    local total_w, sum = 0, 0
    for p, w in pairs(template.w) do
        local base, inverse = p, false
        if string.sub(p, -8) == "_inverse" then
            base = string.sub(p, 1, -9)
            inverse = true
        end
        local raw = param_value(base, ctx)
        if raw ~= nil then
            local norm
            if type(raw) == "boolean" then
                if inverse then raw = not raw end
                if w == 0 then
                    if raw then return nil, "veto:" .. p end
                else
                    norm = raw and 1 or 0
                end
            else
                local mult = catalog.params[p] or catalog.params[base] or 1
                norm = clamp01(raw * mult)
                if inverse then norm = 1 - norm end
            end
            if norm then
                total_w = total_w + w
                sum = sum + w * norm
            end
        end
    end
    if total_w <= 0 then return 0 end
    return (sum / total_w) * (template.b or 1)
end

--------------------------------------------------------------------------------
-- Ability classification helpers
--------------------------------------------------------------------------------

local DAMAGE_TYPES = {
    vortex = true, bombardment = true, explosion = true, wind = true, breath = true,
    area_of_direct_damage = true, chain_direct_damage = true,
}

local function is_damaging_area(A)
    return (A.ff and (A.rad or 0) >= 3) or DAMAGE_TYPES[A.ty] or false
end

local function is_cone(A)
    return A.ty == "breath" or A.ty == "wind" or (A.ai and (string.find(A.ai, "breath", 1, true)
        or string.find(A.ai, "wind", 1, true))) and true or false
end

local function area_radius(A)
    if (A.er or 0) > 0 then return A.er end
    if (A.rad or 0) > 0 then return A.rad end
    return 20
end

-- Range the caster can reach
local function cast_range(A)
    local r = A.rng or 0
    if r < 0 then return 300 end
    return r
end

local function self_only(A)
    return (not A.te and not A.tf and not A.tg) or cast_range(A) <= 0
end

--------------------------------------------------------------------------------
-- Candidate evaluation
--------------------------------------------------------------------------------

local function friendly_fire_blocked(A, caster, tx, tz, snap)
    if cfg.allow_friendly_fire or not A.ff or not is_damaging_area(A) then return false end
    local margin = cfg.friendly_fire_margin or 12
    local r = area_radius(A) + margin
    if is_cone(A) then
        -- corridor from the caster through the target, as long as the ability travels
        local d = dist_xz(caster.x, caster.z, tx, tz)
        local reach = math.max(d, cast_range(A)) + (A.vlen or 0) * 0.5
        local ex, ez = caster.x + (tx - caster.x) / math.max(d, 1) * reach, caster.z + (tz - caster.z) / math.max(d, 1) * reach
        for _, f in ipairs(snap.friends) do
            if f.uid ~= caster.uid then
                local sd, t = seg_dist(f.x, f.z, caster.x, caster.z, ex, ez)
                if t > 0 and sd <= (A.rad or 8) + margin then return true end
            end
        end
        return false
    end
    local px, pz -- end of a moving vortex's path (it travels away from the caster)
    if (A.vlen or 0) > 0 then
        local d = math.max(dist_xz(caster.x, caster.z, tx, tz), 1)
        local len = math.min(A.vlen, 80)
        px, pz = tx + (tx - caster.x) / d * len, tz + (tz - caster.z) / d * len
        r = r + 5
    end
    for _, f in ipairs(snap.friends) do
        if f.uid ~= caster.uid then
            if dist_xz(f.x, f.z, tx, tz) <= r then return true end
            if px and seg_dist(f.x, f.z, tx, tz, px, pz) <= r then return true end
        end
    end
    return false
end

local function area_already_covered(key, x, z, r)
    for _, a in ipairs(S.areas) do
        if a.key == key and a.expires > S.now and dist_xz(a.x, a.z, x, z) < math.max(r, a.r) * 0.6 then
            return true
        end
    end
    return false
end

local function effect_active(target_uid, key)
    local e = S.effects[target_uid]
    return e and e[key] and e[key] > S.now
end

local function threatened(caster, snap)
    for _, e in ipairs(snap.enemies) do
        if not e.routing and dist(caster, e) < 60 then return true end
    end
    return false
end

-- Returns best { score, target, x, z, reason } for one ability on one caster
local function best_target(caster, A, key, info, army_ctx, snap)
    local catalog = S.catalog
    local template = catalog.templates[A.ai or ""]
    if not template then return nil, "no AI template" end
    local range = cast_range(A)
    local candidates = {}

    if self_only(A) or A.sum or (A.ts and not A.te and not A.tf) then
        candidates[1] = caster
    else
        if A.te then
            for _, e in ipairs(snap.enemies) do
                if not e.routing and not e.shattered then
                    local d = dist(caster, e)
                    if d <= range and d >= (A.minr or 0) then candidates[#candidates + 1] = e end
                end
            end
        end
        if A.tf or A.ts then
            for _, f in ipairs(snap.friends) do
                if f.uid == caster.uid then
                    if A.ts or A.sa then candidates[#candidates + 1] = f end
                elseif A.tf and not f.routing and dist(caster, f) <= range then
                    candidates[#candidates + 1] = f
                end
            end
        end
        if #candidates == 0 and A.tg and not A.te and not A.tf then
            -- pure ground abilities (e.g. some area damage): aim at enemies in range
            for _, e in ipairs(snap.enemies) do
                if not e.routing and dist(caster, e) <= range then candidates[#candidates + 1] = e end
            end
        end
    end
    if #candidates == 0 then return nil, "no target in range" end

    local radius = area_radius(A)
    local cone = is_cone(A)
    local best, best_reason
    for _, T in ipairs(candidates) do
        local ok_target = true
        local reason
        -- don't stack the same effect on the same target
        if effect_active(T.uid, key) then ok_target = false; reason = "already affected" end
        if ok_target and (A.er or 0) > 0 and area_already_covered(key, T.x, T.z, A.er) then
            ok_target = false; reason = "area already covered"
        end
        if ok_target and friendly_fire_blocked(A, caster, T.x, T.z, snap) then
            ok_target = false; reason = "friendly fire risk"
        end
        if ok_target then
            local ctx = {
                target = T, caster = caster, ability = A,
                enemies_in_area = count_in_area(snap.enemies, T.x, T.z, radius),
                friends_in_area = count_in_area(snap.friends, T.x, T.z, radius),
                enemies_in_cone = 0,
                winds = army_ctx.winds, winds_recharge = army_ctx.recharge,
                threatened = threatened(caster, snap),
                final_use = info.remaining == 1,
                already_active = effect_active(T.uid, key),
            }
            if cone then
                local d = math.max(dist(caster, T), 1)
                local reach = math.max(d, range)
                local ex = caster.x + (T.x - caster.x) / d * reach
                local ez = caster.z + (T.z - caster.z) / d * reach
                ctx.enemies_in_cone = count_in_corridor(snap.enemies, caster.x, caster.z, ex, ez, (A.rad or 10) + 4, 1.0)
            end
            if A.sum then
                if cfg.summon_requires_threat and not ctx.threatened then
                    ok_target = false; reason = "no threat for summon"
                end
            end
            if ok_target then
                local score, why = template_score(template, ctx, catalog)
                if score and (not best or score > best.score) then
                    best = { score = score, target = T, x = T.x, z = T.z }
                    if A.sum then
                        -- place the summon between the caster and the closest enemy
                        local near, nd
                        for _, e in ipairs(snap.enemies) do
                            local d = dist(caster, e)
                            if not nd or d < nd then near, nd = e, d end
                        end
                        local reach = math.min(math.max(range, 10), 25)
                        if near and nd > 1 then
                            best.x = caster.x + (near.x - caster.x) / nd * math.min(reach, nd * 0.5)
                            best.z = caster.z + (near.z - caster.z) / nd * math.min(reach, nd * 0.5)
                        end
                        best.ground = true
                    end
                elseif not score then
                    reason = why
                end
            end
        end
        best_reason = best_reason or reason
    end
    if not best then return nil, best_reason or "no valid target" end
    return best
end

--------------------------------------------------------------------------------
-- Live ability state via the UI context objects (same data the HUD uses)
--------------------------------------------------------------------------------

local function unit_state(uid)
    local st = S.units[uid]
    if not st then
        st = { mode = nil, fail = {}, blocked = {}, next_issue = 0, idle_until = 0 }
        S.units[uid] = st
    end
    return st
end

local function read_abilities(u, st)
    local root = cco("CcoBattleRoot", "")
    if not root then return {} end
    local uc = cco_call(root, "UnitList.FirstContext(UniqueUiId == " .. tostring(u.uid) .. ")")
    if not uc then return {} end
    u.cco = uc
    if st.is_character == nil then st.is_character = cco_call(uc, "IsCharacter") and true or false end
    u.is_character = st.is_character
    local list = {}
    local n = tonumber(cco_call(uc, "BattleAbilityList.Size")) or 0
    for k = 0, n - 1 do
        local ab = cco_call(uc, "BattleAbilityList.At(" .. k .. ")")
        if ab then
            local key = cco_call(ab, "SetupAbilityContext.RecordKey")
            if key and not cco_call(ab, "SetupAbilityContext.IsPassive") then
                local info = {
                    key = key, cco = ab,
                    can = cco_call(ab, "CanCurrentlyPerform") and true or false,
                    active = cco_call(ab, "IsActive") and true or false,
                    aiming = cco_call(ab, "IsCurrentlyTargetting") and true or false,
                    targeted = cco_call(ab, "IsTargettedAbility") and true or false,
                }
                if cco_call(ab, "HasLimitedUses") then
                    info.remaining = tonumber(cco_call(ab, "RemainingUses"))
                end
                list[#list + 1] = info
            end
        end
    end
    return list
end

--------------------------------------------------------------------------------
-- Modes
--------------------------------------------------------------------------------

local function default_mode(u)
    local st = S.units[u.uid]
    local is_char = u.is_character
    if is_char == nil and st then is_char = st.is_character end
    if is_char or (u.stats and u.stats.men == 1) or u.men == 1 then return cfg.default_mode_characters end
    return cfg.default_mode_units
end

local function unit_mode(u, st)
    if st.mode then return st.mode end
    return default_mode(u)
end

local function claimed_by_other_mod(u)
    if not cfg.skip_ai_controlled then return false end
    if try(u.unit.is_ai_controlled, u.unit) then return true end
    if modder_API_uc_manager and type(modder_API_uc_manager.is_unit_claimed) == "function" then
        local ok, owner = pcall(modder_API_uc_manager.is_unit_claimed, modder_API_uc_manager, tostring(u.uid))
        if ok and owner then return true end
    end
    return false
end

--------------------------------------------------------------------------------
-- Casting
--------------------------------------------------------------------------------

local function get_uc(u, st)
    if st.uc then return st.uc end
    local army = u.unit:army()
    local uc = army:create_unit_controller()
    uc:add_units(u.unit)
    st.uc = uc
    return uc
end

local function record_effect(A, key, cand)
    local dur = (A.dur or 0) > 0 and A.dur or 10
    local T = cand.target
    S.effects[T.uid] = S.effects[T.uid] or {}
    S.effects[T.uid][key] = S.now + dur
    local r = area_radius(A)
    S.areas[#S.areas + 1] = { key = key, x = cand.x, z = cand.z, r = r, expires = S.now + dur }
end

local function issue(u, st, info, A, cand)
    local key = info.key
    local T = cand.target
    local before = {
        moving = u.moving, moving_fast = u.moving_fast,
        target = u.target_uid and try(u.unit.current_target, u.unit) or nil,
        pos = try(u.unit.ordered_position, u.unit),
        bearing = try(u.unit.ordered_bearing, u.unit),
        width = try(u.unit.ordered_width, u.unit),
    }
    local method
    local ok, err
    if not info.targeted then
        method = "cco"
        ok, err = pcall(function() info.cco:Call("PerformAbilityForOwner") end)
    else
        local uc = get_uc(u, st)
        local unit_target = not cand.ground and T.unit and (
            (T.side == "enemy" and A.te) or
            (T.side == "friend" and T.uid ~= u.uid and A.tf) or
            (T.uid == u.uid and (A.ts or A.tf)))
        S.issuing = true
        if unit_target then
            method = "uc"
            ok, err = pcall(function() uc:perform_special_ability(key, T.unit) end)
        else
            method = "uc_ground"
            ok, err = pcall(function()
                local y = T.unit and T.unit:position():get_y() or 0
                uc:perform_special_ability_ground(key, vec(cand.x, y, cand.z))
            end)
        end
        S.issuing = false
    end
    if not ok then
        st.fail[key] = (st.fail[key] or 0) + 1
        log(1, "FAILED %s (%s) by %s via %s: %s", A.n or key, key, u.type, method, tostring(err))
        S.stats.failed = S.stats.failed + 1
        return false
    end
    record_effect(A, key, cand)
    S.stats.casts = S.stats.casts + 1
    if (A.mana or 0) > 0 then S.stats.spells = S.stats.spells + 1 end
    st.next_issue = S.now + math.max(1.5, (A.wu or 0) + 0.5)
    S.pending[#S.pending + 1] = {
        uid = u.uid, key = key, at = S.now, check_at = S.now + (A.wu or 0) + 1.5,
        before = before, method = method, name = A.n or key,
    }
    log(1, "CAST %-28s by %-36s -> %s %s score=%.2f mana=%s via %s",
        A.n ~= "" and A.n or key, u.type, T.side == "enemy" and "enemy" or (T.uid == u.uid and "self" or "ally"),
        T.type or "", cand.score or 0, tostring(A.mana or 0), method)
    return true
end

local function verify_pending(snap)
    local keep = {}
    for _, p in ipairs(S.pending) do
        if S.now < p.check_at then
            keep[#keep + 1] = p
        else
            local u = snap.by_uid[p.uid]
            local st = S.units[p.uid]
            if u and st then
                local abilities = read_abilities(u, st)
                local fired = false
                for _, info in ipairs(abilities) do
                    if info.key == p.key then
                        fired = info.active or not info.can
                    end
                end
                if not fired then
                    st.fail[p.key] = (st.fail[p.key] or 0) + 1
                    log(1, "NO EFFECT %s by %s via %s (attempt %d)", p.name, u.type, p.method, st.fail[p.key])
                    if st.fail[p.key] >= 3 then
                        st.blocked[p.key] = true
                        log(1, "  -> disabling %s for this unit for the rest of the battle", p.key)
                    end
                else
                    st.fail[p.key] = 0
                end
                -- give the player's last order back if the cast stopped the unit
                if cfg.restore_orders and p.method ~= "cco" and u.idle and not u.melee then
                    S.issuing = true
                    local b = p.before
                    local uc = st.uc
                    if uc and b.target and (try(b.target.number_of_men_alive, b.target) or 0) > 0 then
                        if pcall(function() uc:attack_unit(b.target, true, b.moving_fast) end) then
                            S.stats.restored = S.stats.restored + 1
                            log(2, "  restored attack order for %s", u.type)
                        end
                    elseif uc and b.moving and b.pos and dist_xz(b.pos:get_x(), b.pos:get_z(), u.x, u.z) > 8 then
                        if pcall(function() uc:goto_location_angle_width(b.pos, b.bearing or 0, b.width or 20, b.moving_fast) end) then
                            S.stats.restored = S.stats.restored + 1
                            log(2, "  restored move order for %s", u.type)
                        end
                    end
                    S.issuing = false
                end
            end
        end
    end
    S.pending = keep
end

--------------------------------------------------------------------------------
-- Per-army decision making
--------------------------------------------------------------------------------

local function base_threshold(A, key)
    local t = cfg.min_score or (S.catalog.kv.min_score_for_activation or 0.5)
    t = t + (cfg.score_bias or 0)
    if A.uses then t = t + (cfg.limited_use_extra_score or 0) end
    local o = cfg.min_score_override and cfg.min_score_override[key]
    if o then t = o end
    return t
end

local function allowed(A, key, mode, st)
    if mode == "off" then return false, "mode off" end
    if (A.mana or 0) > 0 and mode ~= "full" then return false, "spells disabled" end
    if st.blocked[key] then return false, "blocked after failures" end
    if cfg.never_use and cfg.never_use[key] then return false, "never_use" end
    if A.upg and not cfg.allow_overcast then return false, "overcast" end
    if (A.mc or 0) > 0 and not cfg.allow_miscast then return false, "miscast risk" end
    if A.tr and not cfg.allow_transformations then return false, "transformation" end
    if A.fm then return false, "formation/stance" end
    if A.sum and not cfg.allow_summons then return false, "summons disabled" end
    if A.cm and not cfg.allow_self_rooting then return false, "roots caster" end
    if A.src == "cataclysm" then return false, "cataclysm" end
    return true
end

local function process_army(pa, snap)
    local army = pa.army
    local aid = try(army.unique_id, army) or tostring(army)
    local actx = S.armies[aid]
    if not actx then
        actx = { last_spell = -100, max_pool = 0, casts = 0 }
        S.armies[aid] = actx
    end
    actx.winds = try(army.winds_of_magic_current, army) or 0
    actx.reserve = try(army.winds_of_magic_reserve, army) or 0
    actx.recharge = try(army.winds_of_magic_remaining_recharge_rate, army) or 0
    if actx.winds > actx.max_pool then actx.max_pool = actx.winds end

    local spell_candidates = {}
    for _, u in ipairs(pa.units) do
        local st = unit_state(u.uid)
        local mode = unit_mode(u, st)
        if mode ~= "off" and not u.routing and not u.shattered and S.now >= st.next_issue
            and S.now >= st.idle_until and not claimed_by_other_mod(u) then
            local abilities = read_abilities(u, st)
            local known = false
            for _, info in ipairs(abilities) do
                if S.catalog.abilities[info.key] then known = true end
            end
            if not known then st.idle_until = S.now + 10 end  -- nothing to do; look again later
            local player_aiming = false
            for _, info in ipairs(abilities) do
                if info.aiming then player_aiming = true end
            end
            if mode ~= "off" and not player_aiming then
                local issued = false
                for _, info in ipairs(abilities) do
                    local A = S.catalog.abilities[info.key]
                    if A and info.can and not info.active and not issued then
                        local ok_use, why = allowed(A, info.key, mode, st)
                        if ok_use and info.targeted and u.moving and not u.melee
                            and not cfg.allow_targeted_while_moving and (A.wu or 0) > 0 then
                            ok_use, why = false, "unit is moving"
                        end
                        if ok_use then
                            local cand, why2 = best_target(u, A, info.key, info, actx, snap)
                            local thr = base_threshold(A, info.key)
                            if cand then
                                if (A.mana or 0) > 0 then
                                    cand.u, cand.st, cand.info, cand.A, cand.thr = u, st, info, A, thr
                                    spell_candidates[#spell_candidates + 1] = cand
                                elseif cand.score >= thr then
                                    issued = issue(u, st, info, A, cand)
                                else
                                    log(3, "skip %s (%s): score %.2f < %.2f", info.key, u.type, cand.score, thr)
                                end
                            else
                                log(3, "skip %s (%s): %s", info.key, u.type, tostring(why2))
                            end
                        else
                            log(3, "skip %s (%s): %s", info.key, u.type, tostring(why))
                        end
                    end
                end
            end
        end
    end

    -- One spell per army per window: pick the best, respecting the Winds of Magic budget
    if #spell_candidates > 0 and S.now - actx.last_spell >= (cfg.min_seconds_between_spells or 0) then
        local cap = math.max(actx.max_pool, 1)
        local fill = clamp01(actx.winds / cap)
        local kv = S.catalog.kv
        local pressure = (cfg.mana_pressure or 0) * (1 - fill)
        if fill < (kv.mana_saving_threshold or 0.1) then
            pressure = pressure + (kv.mana_saving_max_added_amount or 0.15)
        end
        table.sort(spell_candidates, function(a, b)
            local ma, mb = a.score - a.thr, b.score - b.thr
            if math.abs(ma - mb) > 0.03 then return ma > mb end
            return (a.A.mana or 0) < (b.A.mana or 0)
        end)
        for _, c in ipairs(spell_candidates) do
            local need = c.thr + pressure
            local after = actx.winds - (c.A.mana or 0)
            local reserve_ok = after >= (cfg.reserve_winds or 0) or c.score >= (cfg.reserve_bypass_score or 1)
            if c.score >= need and reserve_ok and after >= 0 then
                if issue(c.u, c.st, c.info, c.A, c) then
                    actx.last_spell = S.now
                    actx.casts = actx.casts + 1
                    log(2, "  winds %.1f -> ~%.1f (reserve pool %.1f), threshold %.2f", actx.winds, after, actx.reserve, need)
                    break
                end
            else
                log(2, "hold %s (%s): score %.2f need %.2f, winds %.1f-%.1f, reserve_ok=%s",
                    c.A.n or c.info.key, c.u.type, c.score, need, actx.winds, c.A.mana or 0, tostring(reserve_ok))
            end
        end
    end
end


--------------------------------------------------------------------------------
-- Engagement: coordinated target assignment for idle units
--
-- Every tick, units that are idle (no current order), not in guard mode, healthy and
-- not recently ordered by the player are "free". The coordinator scores every
-- (free unit, visible enemy) pair by matchup, threat, support for friends in trouble,
-- risk and travel time, and how much of your force is already committed to that
-- enemy. It then assigns greedily: best pair first, updating commitments after each
-- assignment, so units spread over threats instead of all piling onto one target.
--------------------------------------------------------------------------------

local function power(u)
    local st = u.stats or {}
    return math.max(st.mcp or 0, (st.rcp or 0) * 0.5, 50) * (u.hp_frac or 1)
end

local function role(u)
    local st = u.stats or {}
    local c, cat = st.c or "", st.cat or ""
    if c == "art_fld" or cat == "artillery" then return "artillery" end
    local is_char = u.is_character or c == "com" or u.men == 1 and (st.men or 1) == 1
    if is_char then
        if (u.can_use_magic and (st.ma or 0) < 40) or ((st.ma or 0) < 30 and (st.mcp or 0) < 400) then return "caster" end
        return "character"
    end
    if c == "inf_mis" or c == "cav_mis" or (u.missile_unit and (st.rcp or 0) > (st.mcp or 0)) then return "missile" end
    if c == "cav_shk" or c == "cav_mel" or c == "chariot" or cat == "cavalry" then return "cavalry" end
    if st.lg and (st.men or 100) <= 24 then return "monster" end
    if (st.al or 0) >= 8 or c == "inf_spr" then return "anti_large" end
    return "infantry"
end

local function is_large(u)
    return (u.stats and u.stats.lg) or false
end

local function anti_large(u)
    return u.stats and ((u.stats.al or 0) >= 8 or u.stats.c == "inf_spr") or false
end

local function engage_radius(u, r)
    local radii = cfg.engage_radius or {}
    if r == "missile" then
        local m = radii.missile or 0
        if m <= 0 then return (u.missile_range or 0) + 5 end
        return m
    end
    return radii[r] or 110
end

-- enemies engaged in melee with our units, how hard our friends are pressed, and threats to our soft units
local function battle_context(snap)
    local ctx = { pinned = {}, pressing = {}, threat = {}, committed = {}, attackers = {} }
    -- centre of our army (player units that are still fighting)
    local sx, sz, n = 0, 0, 0
    for _, f in ipairs(snap.friends) do
        if f.player and not f.routing then sx, sz, n = sx + f.x, sz + f.z, n + 1 end
    end
    if n > 0 then ctx.cx, ctx.cz, ctx.cn = sx / n, sz / n, n end
    for _, f in ipairs(snap.friends) do
        local t = f.target_uid and snap.by_uid[f.target_uid]
        if t and t.side == "enemy" then
            ctx.committed[t.uid] = (ctx.committed[t.uid] or 0) + power(f)
            if role(f) ~= "missile" and role(f) ~= "artillery" then
                ctx.attackers[t.uid] = (ctx.attackers[t.uid] or 0) + 1
            end
            if f.melee then
                ctx.pinned[t.uid] = true
                -- the friend is in trouble: losing hitpoints or wavering
                local trouble = (f.wavering and 1 or 0) + clamp01((0.6 - f.hp_frac) * 2)
                if trouble > (ctx.pressing[t.uid] or 0) then ctx.pressing[t.uid] = trouble end
            end
        end
    end
    -- our recent assignments that the game hasn't turned into a current target yet
    for uid, st in pairs(S.units) do
        if st.engaged_target and S.now - (st.engaged_at or -100) < 4 then
            local f, t = snap.by_uid[uid], snap.by_uid[st.engaged_target]
            if f and t and f.target_uid ~= t.uid then
                ctx.committed[t.uid] = (ctx.committed[t.uid] or 0) + power(f)
                ctx.attackers[t.uid] = (ctx.attackers[t.uid] or 0) + 1
            end
        end
    end
    for _, e in ipairs(snap.enemies) do
        local t = e.target_uid and snap.by_uid[e.target_uid]
        if t and t.side == "friend" then
            local r = role(t)
            if (r == "missile" or r == "artillery" or r == "caster") and dist(e, t) < 60 then
                -- seconds until it reaches our soft unit
                local eta = dist(e, t) / math.max(e.fast_speed or 0, (e.stats and e.stats.spd) or 0, 2)
                ctx.threat[e.uid] = math.min(ctx.threat[e.uid] or 999, eta)
            elseif e.melee then
                ctx.pinned[e.uid] = true
            end
        end
    end
    return ctx
end

local function enemies_near(snap, x, z, r, exclude_uid)
    local n = 0
    for _, e in ipairs(snap.enemies) do
        if e.uid ~= exclude_uid and not e.routing and not e.melee and dist_xz(e.x, e.z, x, z) <= r then n = n + 1 end
    end
    return n
end

local function friends_near(snap, x, z, r)
    for _, f in ipairs(snap.friends) do
        if dist_xz(f.x, f.z, x, z) <= r then return true end
    end
    return false
end

-- Score one (free unit, enemy) pair. Returns score and a short reason string, or nil.
local function engage_score(f, fr, e, ctx, snap)
    local er = role(e)
    local d = dist(f, e)
    if d > engage_radius(f, fr) then return nil end
    if e.shattered then return nil end
    if e.flying and not f.can_fly and fr ~= "missile" then return nil end
    if e.routing then
        if fr ~= "cavalry" or not cfg.chase_routing_with_cavalry then return nil end
    end
    local tags = {}
    local score = 1.0
    local speed = math.max((f.stats and f.stats.spd) or 0, f.fast_speed or 0, 2)
    local ttr = d / speed                       -- seconds to reach the target

    if fr == "missile" then
        -- shoot what is in range and not wrapped up in melee with our own units
        if e.melee and friends_near(snap, e.x, e.z, 18) then return nil end
        local st = e.stats or {}
        score = 0.6 + 0.4 * clamp01(power(e) / 1200) + 0.3 * (1 - clamp01((st.a or 0) / 120))
        if er == "missile" or er == "artillery" then score = score + 0.25; tags[#tags + 1] = "counter-fire" end
        if ctx.threat[e.uid] then score = score + 0.6; tags[#tags + 1] = "threat" end
        if e.routing then score = score * 0.3 end
    else
        local big_f, big_e = is_large(f), is_large(e)
        -- matchups
        if anti_large(f) and big_e then score = score + 0.8; tags[#tags + 1] = "anti-large" end
        if big_f and anti_large(e) and not ctx.pinned[e.uid] then score = score - 0.7; tags[#tags + 1] = "spears!" end
        if (fr == "cavalry" or fr == "monster" or fr == "character") and (er == "missile" or er == "artillery" or er == "caster") then
            score = score + 0.7; tags[#tags + 1] = "hunt soft"
        end
        if (fr == "cavalry" or fr == "monster") and ctx.pinned[e.uid] then
            score = score + 0.6 * clamp01(25 / math.max(ttr, 1)); tags[#tags + 1] = "flank pinned"
        end
        if fr == "monster" and not big_e and not anti_large(e) then score = score + 0.3 end
        if fr == "cavalry" and er == "monster" then score = score - 0.3 end
        if (fr == "infantry" or fr == "anti_large") and er == "cavalry" and not anti_large(f) then score = score - 0.3 end
        if fr == "character" and e.men == 1 then
            if power(f) >= power(e) * 0.9 then score = score + 0.5; tags[#tags + 1] = "duel"
            else score = score - 0.8 end
        end
        -- prefer fights we win
        local ratio = power(f) / math.max(power(e) - (ctx.committed[e.uid] or 0) * 0.5, 50)
        score = score + 0.2 * math.max(-1, math.min(1, math.log(ratio) / math.log(2)))
        -- friends in trouble and threats to our soft units come first
        -- (time matters: help that arrives too late is worth little)
        if ctx.pressing[e.uid] then
            score = score + 0.8 * ctx.pressing[e.uid] * clamp01(20 / math.max(ttr, 1)); tags[#tags + 1] = "support"
        end
        if ctx.threat[e.uid] then
            local in_time = clamp01((ctx.threat[e.uid] + 3) / math.max(ttr, 1))
            score = score + 1.2 * in_time * in_time; tags[#tags + 1] = "intercept"
        end
        if e.routing then score = score * 0.6; tags[#tags + 1] = "chase" end
        -- don't leave the army: going much further from the rest of our units is a lonely charge
        if ctx.cx then
            local n = ctx.cn - 1
            if n > 0 then
                local cx = (ctx.cx * ctx.cn - f.x) / n
                local cz = (ctx.cz * ctx.cn - f.z) / n
                local de, df = dist_xz(e.x, e.z, cx, cz), dist_xz(f.x, f.z, cx, cz)
                if de > 120 and de > df + 80 then
                    local soft = (er == "missile" or er == "artillery" or er == "caster")
                    score = score - ((soft and fr == "cavalry") and 0.15 or 0.45); tags[#tags + 1] = "far from army"
                end
            end
        end
        -- don't dive into a crowd of fresh enemies
        local crowd = enemies_near(snap, e.x, e.z, 35, e.uid)
        score = score - crowd * ((fr == "character" or f.hp_frac < 0.5) and 0.2 or 0.1)
        -- no room for more attackers
        if (ctx.attackers[e.uid] or 0) >= (cfg.max_melee_attackers or 3) then score = score - 0.8 end
    end

    -- enough force already committed to this enemy: look elsewhere
    local need = power(e) * 1.0
    if (ctx.committed[e.uid] or 0) >= need then score = score * 0.35; tags[#tags + 1] = "covered" end
    -- travel time (steep for the first 15 s, then flatter so distant but needed fights still happen)
    score = score - 0.02 * math.min(ttr, 15) - 0.005 * math.max(0, ttr - 15)
    return score, table.concat(tags, ",")
end

local function is_free(u, st)
    if not u.idle or u.melee or u.routing or u.shattered or u.wavering or u.guard then return false end
    if u.hp_frac < (cfg.min_hp_to_engage or 0.25) then return false end
    if S.now < (st.next_issue or 0) then return false end
    if S.now - (st.player_order_at or -100) < (cfg.player_order_grace or 8) then return false end
    if S.now - (st.engaged_at or -100) < 3 then return false end
    return true
end

local function run_engagement(snap)
    if not cfg.auto_engage then return end
    local free = {}
    for _, pa in ipairs(snap.player_armies) do
        for _, u in ipairs(pa.units) do
            local st = unit_state(u.uid)
            if unit_mode(u, st) ~= "off" and is_free(u, st) and not claimed_by_other_mod(u) then
                local r = role(u)
                local ok = true
                if r == "artillery" and not cfg.engage_artillery then ok = false end
                if r == "caster" and not cfg.engage_casters then ok = false end
                if r == "character" and not cfg.engage_characters then ok = false end
                if r == "missile" and not u.has_ammo and not cfg.ranged_melee_when_empty then ok = false end
                if r == "missile" and not u.has_ammo and cfg.ranged_melee_when_empty then r = "infantry" end
                if ok then free[#free + 1] = { u = u, st = st, role = r } end
            end
        end
    end
    if #free == 0 or #snap.enemies == 0 then return end
    log(3, "engage: %d free unit(s), %d visible enemies", #free, #snap.enemies)

    local ctx = battle_context(snap)       -- updated as units are assigned
    local base_ctx = battle_context(snap)  -- untouched, for comparing alternative plans
    local min_score = cfg.engage_min_score or 0.35

    -- 1) greedy: best pair first, commit force to that enemy, re-score, repeat
    local plan = {}
    local remaining = free
    while #remaining > 0 do
        local best, best_i, top
        for i, fu in ipairs(remaining) do
            for _, e in ipairs(snap.enemies) do
                local sc, why = engage_score(fu.u, fu.role, e, ctx, snap)
                if sc and (not top or sc > top.score) then top = { score = sc, f = fu, e = e } end
                if sc and sc >= min_score and (not best or sc > best.score) then
                    best = { fu = fu, e = e, score = sc, why = why }
                    best_i = i
                end
            end
        end
        if not best then
            if top then log(3, "engage: nothing above %.2f (best %s -> %s %.2f)", min_score, top.f.u.type, top.e.type, top.score) end
            break
        end
        best.base = engage_score(best.fu.u, best.fu.role, best.e, base_ctx, snap) or best.score
        plan[#plan + 1] = best
        ctx.committed[best.e.uid] = (ctx.committed[best.e.uid] or 0) + power(best.fu.u)
        if best.fu.role ~= "missile" then ctx.attackers[best.e.uid] = (ctx.attackers[best.e.uid] or 0) + 1 end
        table.remove(remaining, best_i)
    end

    -- 2) improve the plan: swap targets between two units when that is better overall
    for _ = 1, 3 do
        local improved = false
        for i = 1, #plan do
            for j = i + 1, #plan do
                local a, b = plan[i], plan[j]
                if a.e ~= b.e then
                    local s1, w1 = engage_score(a.fu.u, a.fu.role, b.e, base_ctx, snap)
                    local s2, w2 = engage_score(b.fu.u, b.fu.role, a.e, base_ctx, snap)
                    if s1 and s2 and s1 >= min_score and s2 >= min_score and s1 + s2 > a.base + b.base + 0.05 then
                        a.e, b.e = b.e, a.e
                        a.base, b.base, a.score, b.score = s1, s2, s1, s2
                        a.why, b.why = w1 .. ",swapped", w2 .. ",swapped"
                        improved = true
                    end
                end
            end
        end
        if not improved then break end
    end

    -- 2b) bring in units that got nothing: one of them takes an assigned target and the
    --     unit that had it moves to its next-best target, when the army gains from it
    for _, fu in ipairs(remaining) do
        local done = false
        for _, a in ipairs(plan) do
            if not done then
                local s_new, w_new = engage_score(fu.u, fu.role, a.e, base_ctx, snap)
                if s_new and s_new >= min_score then
                    local alt, alt_s, alt_w
                    for _, y in ipairs(snap.enemies) do
                        if y ~= a.e then
                            local sy, wy = engage_score(a.fu.u, a.fu.role, y, base_ctx, snap)
                            if sy and sy >= min_score and (not alt_s or sy > alt_s) then alt, alt_s, alt_w = y, sy, wy end
                        end
                    end
                    if alt and s_new + alt_s > a.base + 0.05 then
                        plan[#plan + 1] = { fu = fu, e = a.e, score = s_new, base = s_new, why = w_new .. ",rebalanced" }
                        a.e, a.score, a.base, a.why = alt, alt_s, alt_s, alt_w .. ",rebalanced"
                        done = true
                    end
                end
            end
        end
    end

    -- 3) give the orders
    for _, p in ipairs(plan) do
        local f, e = p.fu.u, p.e
        local uc = get_uc(f, p.fu.st)
        local fast = p.fu.role == "cavalry" or p.fu.role == "monster" or dist(f, e) > 40
        if p.fu.role == "missile" then fast = false end
        S.issuing = true
        local ok, err = pcall(function() uc:attack_unit(e.unit, true, fast) end)
        S.issuing = false
        if ok then
            p.fu.st.engaged_target = e.uid
            p.fu.st.engaged_at = S.now
            S.stats.engages = S.stats.engages + 1
            log(1, "ENGAGE %-34s -> %-34s score=%.2f %s", f.type, e.type, p.score, p.why ~= "" and ("(" .. p.why .. ")") or "")
        else
            log(1, "ENGAGE FAILED %s -> %s: %s", f.type, e.type, tostring(err))
            p.fu.st.engaged_at = S.now  -- don't retry immediately
        end
    end
end

-- Player orders: give the player's units a grace period before acting on their own
local PLAYER_COMMANDS = { "Move", "Move Orientation Width", "Move Rotation Angle", "Halt", "Withdraw",
    "Attack", "Attack Unit", "Attack Building", "Attack Position", "Melee Mode", "Skirmish", "Fire At Will" }

local function on_player_command()
    if S.issuing then return end
    local root = cco("CcoBattleRoot", "")
    local sel = cco_call(root, "SelectionContext")
    local n = tonumber(cco_call(sel, "NumUnits")) or 0
    for i = 0, n - 1 do
        local bu = cco_call(sel, "UnitList.At(" .. i .. ")")
        local id = bu and cco_call(bu, "UniqueUiId")
        if id then
            local st = unit_state(tonumber(id) or id)
            st.player_order_at = S.now
            st.engaged_target = nil
        end
    end
end

local function register_command_watch()
    for _, c in ipairs(PLAYER_COMMANDS) do
        pcall(function()
            bm:unregister_command_handler_callback(c, "proactive_command_orders")
        end)
        pcall(function()
            bm:register_command_handler_callback(c, guarded("player_command", on_player_command), "proactive_command_orders")
        end)
    end
end

--------------------------------------------------------------------------------
-- Main loop
--------------------------------------------------------------------------------

local function prune()
    local keep = {}
    for _, a in ipairs(S.areas) do
        if a.expires > S.now then keep[#keep + 1] = a end
    end
    S.areas = keep
end

local function tick()
    S.now = S.now + cfg.tick_seconds
    if not S.running or S.paused then return end
    local snap = take_snapshot()
    verify_pending(snap)
    for _, pa in ipairs(snap.player_armies) do
        process_army(pa, snap)
    end
    run_engagement(snap)
    prune()
    if S.now >= S.next_summary then
        S.next_summary = S.now + 30
        local w = {}
        for _, a in pairs(S.armies) do w[#w + 1] = string.format("%.0f/%.0f", a.winds or 0, a.reserve or 0) end
        log(1, "summary: casts=%d spells=%d failed=%d restored=%d engages=%d winds(pool/reserve)=%s",
            S.stats.casts, S.stats.spells, S.stats.failed, S.stats.restored, S.stats.engages, table.concat(w, " "))
    end
    flush_log()
end

--------------------------------------------------------------------------------
-- UI: toast + hotkeys
--------------------------------------------------------------------------------

local function toast(text)
    log(1, "%s", text)
    if not cfg.show_toasts then return end
    pcall(function()
        local root = core:get_ui_root()
        local holder = find_uicomponent(root, "proactive_command_toast")
        if not holder then
            root:CreateComponent("proactive_command_toast", "UI/Common UI/scripted_subtitles.twui.xml")
            holder = find_uicomponent(root, "proactive_command_toast")
        end
        local txt = holder and find_uicomponent(holder, "text_child")
        if txt then
            txt:SetStateText(text, "")
            txt:SetVisible(true)
            txt:RegisterTopMost()
        end
    end)
    pcall(function()
        bm:remove_real_callback("proactive_command_toast_hide")
        bm:real_callback(function()
            pcall(function()
                local holder = find_uicomponent(core:get_ui_root(), "proactive_command_toast")
                local txt = holder and find_uicomponent(holder, "text_child")
                if txt then
                    txt:RemoveTopMost()
                    txt:SetVisible(false)
                end
            end)
        end, 2500, "proactive_command_toast_hide")
    end)
end

local function selected_uids()
    local out_list = {}
    local root = cco("CcoBattleRoot", "")
    local sel = cco_call(root, "SelectionContext")
    local n = tonumber(cco_call(sel, "NumUnits")) or 0
    for i = 0, n - 1 do
        local bu = cco_call(sel, "UnitList.At(" .. i .. ")")
        local id = bu and cco_call(bu, "UniqueUiId")
        if id then out_list[#out_list + 1] = tonumber(id) or id end
    end
    return out_list
end

local function cycle_selected()
    local ids = selected_uids()
    if #ids == 0 then
        toast("Proactive Command: select units first (or use the toggle-all key)")
        return
    end
    -- next mode is decided from the first selected unit
    local first = S.units[ids[1]]
    local current = (first and first.mode) or nil
    if not current then
        local snap_u
        for _, f in ipairs(take_snapshot().friends) do if f.uid == ids[1] then snap_u = f end end
        current = snap_u and default_mode(snap_u) or "off"
    end
    local idx = 1
    for i, m in ipairs(MODES) do if m == current then idx = i end end
    local nextm = MODES[idx % #MODES + 1]
    for _, id in ipairs(ids) do unit_state(id).mode = nextm end
    toast(string.format("Proactive Command: %s (%d unit%s)", MODE_NAMES[nextm], #ids, #ids == 1 and "" or "s"))
end

local function toggle_all()
    S.paused = not S.paused
    toast(S.paused and "Proactive Command: paused" or "Proactive Command: active")
end

local function register_hotkeys()
    core:remove_listener("proactive_command_hotkeys")
    core:add_listener("proactive_command_hotkeys", "ShortcutTriggered",
        function(context) return context.string == cfg.hotkey_cycle_selected end,
        guarded("cycle_selected", cycle_selected), true)
    core:add_listener("proactive_command_hotkeys", "ShortcutTriggered",
        function(context) return context.string == cfg.hotkey_toggle_all end,
        guarded("toggle_all", toggle_all), true)
end

--------------------------------------------------------------------------------
-- Startup
--------------------------------------------------------------------------------

local function start_battle()
    if S.running then return end
    S.running = true
    S.now = 0
    log(1, "battle started: ticking every %.1fs (auto engage: %s)", cfg.tick_seconds, tostring(cfg.auto_engage))
    if S.babysitter_warning then toast("Proactive Command: disable Just Good Babysitter - both mods command idle units") end
    bm:repeat_callback(guarded("tick", tick), math.floor(cfg.tick_seconds * 1000), "proactive_command_tick")
end

local function stop_battle(reason)
    if not S.running then return end
    S.running = false
    pcall(function() bm:remove_process("proactive_command_tick") end)
    log(1, "stopped (%s). casts=%d spells=%d failed=%d restored=%d engages=%d",
        reason, S.stats.casts, S.stats.spells, S.stats.failed, S.stats.restored, S.stats.engages)
    flush_log()
end

local function init()
    load_user_config()
    start_log()
    log(1, "Proactive Command %s loading (user config: %s)", VERSION, S.user_config and "yes" or "no")
    if PROACTIVE_COMMAND_DEV_STATUS then log(1, "development mode: %s", PROACTIVE_COMMAND_DEV_STATUS) end
    if not cfg.enabled then log(1, "disabled in config"); flush_log(); return end
    if try(bm.is_tutorial, bm) or try(bm.is_replay, bm) then
        log(1, "tutorial/replay battle: not running"); flush_log(); return
    end
    if try(bm.is_multiplayer, bm) then
        if not cfg.allow_in_multiplayer then
            log(1, "multiplayer battle: not running (allow_in_multiplayer = false)"); flush_log(); return
        end
        S.mp = true
        -- bm:get_player_army() is always army 1 of the alliance; in co-op the local
        -- player can be army 2+, so look the army up by the engine's local index.
        local idx = try(bm.local_army, bm)
        local pa = try(bm.get_player_alliance, bm)
        S.own_army = (idx and pa and try(function() return pa:armies():item(idx) end)) or try(bm.get_player_army, bm)
        if not S.own_army then
            log(1, "multiplayer battle: could not identify this player's army, not running"); flush_log(); return
        end
        log(1, "multiplayer battle: commanding only this player's own army (experimental)")
    end
    local cat, err = load_catalog()
    if not cat then
        log(0, "ERROR: could not load ability catalog: %s", tostring(err)); flush_log(); return
    end
    S.catalog = cat
    local n = 0
    for _ in pairs(cat.abilities) do n = n + 1 end
    log(1, "catalog: %d abilities, generated %s %s", n, tostring(cat.meta and cat.meta.generated),
        cat.meta and cat.meta.extra_packs and ("+" .. cat.meta.extra_packs) or "")
    register_hotkeys()
    register_command_watch()
    if cfg.auto_engage and type(jg77_babysitter_common) == "function" then
        log(1, "NOTE: Just Good Babysitter is also active. Both mods give orders to idle units; disable one of them.")
        S.babysitter_warning = true
    end
    bm:register_phase_change_callback("Deployed", guarded("start", start_battle))
    bm:register_phase_change_callback("VictoryCountdown", guarded("victory", function()
        if cfg.stop_on_victory then stop_battle("victory countdown") end
    end))
    bm:register_phase_change_callback("Complete", guarded("complete", function() stop_battle("battle complete") end))
    if try(bm.is_conflict_phase, bm) then start_battle() end  -- loaded after deployment already ended
    flush_log()
end

local ok, err = pcall(init)
if not ok then
    log(0, "ERROR during init: %s", tostring(err))
    flush_log()
end

-- exposed for debugging from the console / other mods
proactive_command = { state = S, config = cfg, version = VERSION, toggle = toggle_all }

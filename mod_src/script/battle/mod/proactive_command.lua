--------------------------------------------------------------------------------
-- Proactive Command (Total War: WARHAMMER III battle mod)
--
-- Idle units (not in guard mode) pick their own fights through the game's own battle AI, so
-- they never stand around. Auto-casting is a separate script (proactive_command_cast.lua)
-- that has its own timers and settings; if it fails, this script is not affected.
--
-- Files:
--   script/battle/mod/proactive_command.lua       (this file: idle units)
--   script/battle/mod/proactive_command_cast.lua  (auto-cast)
--   script/proactive_command/pc_catalog.lua       (generated from the game DB)
-- Optional user config (plain Lua, next to Warhammer3.exe):
--   proactive_command_config.lua   ->  return { reserve_winds = 10, ... }
-- Log (overwritten each battle, next to Warhammer3.exe):
--   proactive_command_log.txt
--------------------------------------------------------------------------------

local VERSION = "0.5.0"

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

    -- Per-unit mode (hotkey cycles it for the selected units): "off" | "abilities" | "full".
    -- "off" = both scripts leave the unit alone. The other two only matter to auto-cast.
    default_mode_characters = "full",
    default_mode_units = "full",

    stop_on_victory = true,           -- stop when victory countdown starts

    -- Engagement: idle units that are not in guard mode find their own targets
    auto_engage = true,
    start_grace_seconds = 15,         -- no automatic orders for this long after the battle starts
    idle_delay = 5,                   -- a unit must have been idle this long before it picks a target
    idle_delay_under_attack = 1.5,    -- ...or this long if it is being shot at / charged
    release_control = true,           -- hand units back to the player after the mod's orders
    release_delay = 1.5,              -- seconds after an order before control is handed back
    check_script_control = true,      -- leave units alone that another script controls
    gc_mode = "stop",                 -- "stop" = no automatic garbage collection during the battle (works around
                                      -- the engine's script state being corrupted a moment after the first
                                      -- tick); "default" = leave the garbage collector alone
    gc_limit_mb = 300,                -- with gc_mode = "stop": run one full collection when memory passes this
    -- Who chooses the targets of idle units:
    --   "ai"  = the game's own battle AI. Idle units are handed to the engine's AI unit planner
    --           (the system CA's scripts use for scripted enemies, and the old "delegate to AI"
    --           button) and the AI picks and fights its own targets. Updates to CA's AI apply.
    --   "mod" = this mod's own target scoring (the engage_* settings below)
    engage_mode = "ai",
    ai_order = "defend",              -- "defend": the AI holds around the unit's position and deals
                                      -- with threats near it (retaliation)
                                      -- "attack": the AI attacks the nearest visible enemy
    ai_defend_radius = 120,           -- metres, for ai_order = "defend"
    ai_hold_seconds = 15,             -- hand the unit back to you after this long without a fight
    ai_release_after_melee = 3,       -- ...or this many seconds after it is locked in melee (it keeps fighting;
                                      -- the AI has done its job and you can command the unit again)
    ai_include_casters = true,        -- lords/heroes/casters too: the AI also uses their spells
    ai_max_handovers_per_tick = 4,
    engage_min_score = 0.35,          -- how good an engagement must be (higher = more cautious)
    engage_retaliate_bonus = 1.2,     -- extra score for an enemy that is attacking / charging this unit
    engage_near_bonus = 1.0,          -- extra score for close targets (fades to 0 at engage_near_range)
    engage_near_range = 130,          -- metres
    engage_defend_first_range = 60,   -- while something is attacking this unit, targets further
                                      -- away than this are not considered at all
    engage_radius = {                 -- max distance (m) a unit will go to find a target
        infantry = 110, anti_large = 110, cavalry = 180, monster = 140, character = 130, missile = 0,
    },                                -- missile = 0 means "within its own missile range"
    engage_unlimited = true,          -- once the fighting has started, healthy units (above
                                      -- min_hp_to_engage) look for targets anywhere on the field
                                      -- instead of only within engage_radius; missile units still
                                      -- only shoot what is in range
    engage_unlimited_from_start = false, -- also before the first contact (the army may then march
                                      -- off on its own as soon as deployment ends)
    engage_characters = true,         -- melee lords/heroes join fights on their own
    engage_casters = true,            -- spellcaster lords/heroes also pick melee targets when idle
    engage_artillery = false,         -- artillery already fires at will
    min_hp_to_engage = 0.25,          -- badly hurt units stay out
    chase_routing_with_cavalry = true,
    ranged_melee_when_empty = false,  -- missile units without ammo stay out of melee
    max_melee_attackers = 3,          -- how many of your melee units pile onto one enemy unit

    -- UI / logging
    hotkey_cycle_selected = "camera_bookmark_save9",   -- "Save camera bookmark 10"
    hotkey_toggle_all = "camera_bookmark_save10",      -- "Save camera bookmark 11"
    hotkey_toggle_engage = "camera_bookmark_save8",    -- "Save camera bookmark 9": auto-engage on/off
    show_toasts = true,
    log_level = 1,                    -- 0 off, 1 casts + summary, 2 decisions, 3 debug
    log_file = "proactive_command_log.txt",
    user_config_file = "proactive_command_config.lua",
    dev_script_path = false,          -- development: run this loose copy of the script instead
                                      -- of the packed one (read at the top of the file)

}

local cfg = {}

-- units handed to the game's AI, by either script: uid -> "engage" | "cast"
-- (shared with proactive_command_cast.lua so the two never fight over a unit)
PROACTIVE_COMMAND_HOLDS = PROACTIVE_COMMAND_HOLDS or {}
local HOLDS = PROACTIVE_COMMAND_HOLDS
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
    issuing = false,    -- true while the mod itself gives orders (ignore those in the command handler)
    stats = { engages = 0 },
    log_buf = {},
    log_path = nil,
    next_summary = 10,
    ticks = 0,
    last_driver_ms = {},
    driver_calls = {},
    engage_on = true,   -- auto-engage switch (hotkey)
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
                -- (no debug.traceback here: in the game it corrupts the script log clock and
                -- the traceback only showed this wrapper anyway)
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

local function clock()
    return (os and os.clock and os.clock()) or 0
end

-- Trace: the game's own log showed battle:time_elapsed_ms() returning a function after some
-- engine call went wrong. This logs the first step after which that happens.
local function chk(label)
    if S.clock_broken then return end
    local ms = try(bm.time_elapsed_ms, bm)
    if type(ms) ~= "number" then
        S.clock_broken = true
        log(1, "TRACE: bm:time_elapsed_ms() stopped returning a number after step '%s' (got %s)", label, type(ms))
        flush_log()
    end
end

local function mem_mb()
    local ok, kb = pcall(collectgarbage, "count")
    if ok and type(kb) == "number" then return kb / 1024 end
    return 0
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
        script_ctrl = (cfg.check_script_control and try(unit.is_script_controlled, unit)) or false,
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
local function is_commandable_army(army, index)
    if not S.mp then return try(army.is_player_controlled, army) end
    -- army objects can't be compared reliably (each lookup may return a new wrapper),
    -- so the local player's army is identified by its index in the alliance
    return index == S.own_army_idx
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
        local is_player = is_commandable_army(army, i)
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
            snap.player_armies[#snap.player_armies + 1] = { army = army, units = list, key = "army" .. i }
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
    -- enemies that are coming for one of our units (not archers shooting from afar)
    for _, e in ipairs(snap.enemies) do
        local t = e.target_uid and snap.by_uid[e.target_uid]
        if t and t.side == "friend" and not e.routing and not e.shattered
            and not (e.missile_unit and e.has_ammo and not e.melee) and dist(e, t) < 80 then
            t.attackers_near = (t.attackers_near or 0) + 1
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
local function unit_state(uid)
    local st = S.units[uid]
    if not st then
        st = { mode = nil, fail = {}, blocked = {}, next_issue = 0, idle_until = 0 }
        S.units[uid] = st
    end
    return st
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
    if HOLDS[u.uid] == "cast" then return true end   -- held by the auto-cast script
    if not cfg.skip_ai_controlled then return false end
    if modder_API_uc_manager and type(modder_API_uc_manager.is_unit_claimed) == "function" then
        local ok, owner = pcall(modder_API_uc_manager.is_unit_claimed, modder_API_uc_manager, tostring(u.uid))
        if ok and owner then return true end
    end
    -- under script control that is not ours (we hand units back shortly after our own orders)
    if u.script_ctrl and not (S.units[u.uid] and S.units[u.uid].ai) then
        local st = S.units[u.uid]
        if not st or not st.uc or S.now - (st.last_order_at or -100) > 6 then
            if st and not st.skip_logged then
                st.skip_logged = true
                log(1, "leaving %s alone: it is under script control that is not ours", u.type)
            end
            return true
        end
    end
    return false
end

--------------------------------------------------------------------------------
-- Unit control: orders and handing units back
--------------------------------------------------------------------------------

local function get_uc(u, st)
    if st.uc then return st.uc end
    local army = u.unit:army()
    local uc = army:create_unit_controller()
    uc:add_units(u.unit)
    st.uc = uc
    return uc
end

-- A unit controller takes the unit away from the player while it holds control (the card is
-- greyed out). So every order the mod gives is followed, a moment later, by handing the unit back.
local function schedule_release(st, delay)
    st.last_order_at = S.now
    if not cfg.release_control then return end
    local at = S.now + (delay or cfg.release_delay or 1.5)
    if not st.release_at or at > st.release_at then st.release_at = at end
end

local function release_due()
    for _, st in pairs(S.units) do
        if st.release_at and S.now >= st.release_at then
            st.release_at = nil
            if st.uc then
                local ok, err = pcall(function() st.uc:release_control() end)
                st.released_at = S.now
                st.release_check = S.now + 2
                if not ok then log(1, "release_control failed: %s", tostring(err)) end
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

-- Unlimited reach: after first contact (or from the start, if configured) units look for
-- targets anywhere on the field. Before that, engage_radius keeps the army in place.
local function unlimited_reach()
    return cfg.engage_unlimited and (S.contact or cfg.engage_unlimited_from_start) or false
end

local function engage_radius(u, r)
    local radii = cfg.engage_radius or {}
    if r == "missile" then
        local m = radii.missile or 0
        if m <= 0 then return (u.missile_range or 0) + 5 end
        return m
    end
    -- NOTE: math.huge does not exist in the game's Lua sandbox (it is nil there), so use a big number
    if unlimited_reach() then return 1e9 end
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
        -- Retaliate first: an enemy that is attacking / charging this unit is the target, and
        -- while one is on its way nothing far away is worth running off to.
        local attacking_me = e.target_uid == f.uid and not e.routing
            and not (e.missile_unit and e.has_ammo and not e.melee)
        if attacking_me then
            score = score + (cfg.engage_retaliate_bonus or 1.2); tags[#tags + 1] = "retaliate"
        elseif (f.attackers_near or 0) > 0 and d > (cfg.engage_defend_first_range or 60) then
            return nil
        end
        -- spellcaster lords/heroes never go hunting: they only hit back at what attacks them,
        -- or at something right next to them
        if fr == "caster" and not attacking_me and d > 30 then return nil end
        -- closer targets are better, always (also with unlimited reach)
        local near_range = cfg.engage_near_range or 130
        if d < near_range then
            score = score + (cfg.engage_near_bonus or 1.0) * (1 - d / near_range)
        end
        -- matchups
        if anti_large(f) and big_e then score = score + 0.8; tags[#tags + 1] = "anti-large" end
        if big_f and anti_large(e) and not ctx.pinned[e.uid] then score = score - 0.7; tags[#tags + 1] = "spears!" end
        if (fr == "cavalry" or fr == "monster" or fr == "character") and (er == "missile" or er == "artillery" or er == "caster") then
            -- (worth less the longer it takes to get there)
            score = score + 0.7 * clamp01(25 / math.max(ttr, 1)); tags[#tags + 1] = "hunt soft"
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
                    -- with unlimited reach this is only a preference for targets near the army
                    local pen = ((soft and fr == "cavalry") or unlimited_reach()) and 0.15 or 0.45
                    score = score - pen; tags[#tags + 1] = "far from army"
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
    local travel = 0.02 * math.min(ttr, 15) + 0.005 * math.max(0, ttr - 15)
    -- with unlimited reach, nearer targets are still preferred, but distance alone never rules one out
    if unlimited_reach() then travel = math.min(travel, 0.5) end
    score = score - travel
    return score, table.concat(tags, ",")
end

local function is_free(u, st)
    if st.ai or HOLDS[u.uid] then return false end
    -- Only units that are idle (no order at all) ever get an automatic order. A unit that is
    -- moving, fighting or carrying out any order is never touched.
    if not u.idle or u.melee or u.moving or u.routing or u.shattered or u.wavering or u.guard then return false end
    if u.hp_frac < (cfg.min_hp_to_engage or 0.25) then return false end
    if S.now < (st.next_issue or 0) then return false end
    if S.now - (st.engaged_at or -100) < 3 then return false end
    -- it must have been idle for a while (the player may have just stopped it on purpose);
    -- units that are being shot at or charged don't wait as long
    local need = (u.under_fire or u.charged_at) and (cfg.idle_delay_under_attack or 1.5) or (cfg.idle_delay or 5)
    if S.now - (st.idle_since or S.now) < need then return false end
    return true
end
--------------------------------------------------------------------------------
-- Engagement through the game's own AI (engage_mode = "ai")
--
-- The engine's AI unit planner is the system CA's scripts use to play units "under AI control"
-- (see script/_lib/lib_battle_script_ai_planner.lua). A unit given to it is played by the
-- battle AI: it chooses and fights its own targets and, like enemy AI units, uses its spells
-- and abilities. We hand idle units over, wait, and give them back to the player.
--------------------------------------------------------------------------------

local function ai_position(u)
    local pos = try(u.unit.position, u.unit)
    return pos or vec(u.x, 0, u.z)
end

local function ai_hand_over(u, st)
    local ok, err = pcall(function()
        local alliance = u.unit:army():alliance()
        local planner = alliance:create_ai_unit_planner()
        planner:add_units(u.unit)
        st.ai = { planner = planner, state = "added", at = S.now }
        HOLDS[u.uid] = "engage"
    end)
    st.engaged_at = S.now
    if not ok then
        st.ai = nil
        HOLDS[u.uid] = nil
        st.ai_failed = (st.ai_failed or 0) + 1
        log(1, "AI HANDOVER FAILED %s: %s", u.type, tostring(err))
        if st.ai_failed >= 2 then st.mode = "off"; log(1, "  -> leaving %s alone", u.type) end
        return false
    end
    S.stats.engages = S.stats.engages + 1
    log(1, "AI HANDOVER %s -> game AI (%s)", u.type, cfg.ai_order or "defend")
    return true
end

local function ai_release(u, st, why)
    local ai = st.ai
    if not ai then return end
    HOLDS[u.uid] = nil
    pcall(function() ai.planner:remove_units(u.unit) end)
    pcall(function()
        local uc = get_uc(u, st)
        uc:release_control()
    end)
    st.ai = nil
    st.engaged_at = S.now
    st.next_issue = S.now + 1
    log(1, "AI RELEASE %s back to you (%s)", u.type, why)
end

-- every tick: give pending orders (CA waits a moment after adding a unit), hand units back
local function ai_manage(snap)
    for uid, st in pairs(S.units) do
        local ai = st.ai
        if ai then
            local u = snap.by_uid[uid]
            if not u then
                st.ai = nil   -- unit is gone
                HOLDS[uid] = nil
            elseif ai.state == "added" and S.now - ai.at >= 1 then
                local ok, err = pcall(function()
                    pcall(function() get_uc(u, st):release_control() end)
                    if (cfg.ai_order or "defend") == "attack" then
                        local best, bd
                        for _, e in ipairs(snap.enemies) do
                            if not e.routing and not e.shattered then
                                local d = dist(u, e)
                                if not bd or d < bd then best, bd = e, d end
                            end
                        end
                        if best then ai.planner:attack_unit(best.unit)
                        else ai.planner:defend_position(ai_position(u), cfg.ai_defend_radius or 120) end
                    else
                        ai.planner:defend_position(ai_position(u), cfg.ai_defend_radius or 120)
                    end
                end)
                ai.state = "active"
                ai.ordered_at = S.now
                if not ok then
                    log(1, "AI ORDER FAILED %s: %s", u.type, tostring(err))
                    ai_release(u, st, "order failed")
                end
            elseif ai.state == "active" then
                S.ai_status_logged = (S.ai_status_logged or 0) + 1
                if S.ai_status_logged <= 6 then
                    log(1, "AI status: %s script_ctrl=%s idle=%s moving=%s melee=%s", u.type,
                        tostring(u.script_ctrl), tostring(u.idle), tostring(u.moving), tostring(u.melee))
                end
                if u.melee then ai.melee_since = ai.melee_since or S.now else ai.melee_since = nil end
                if u.routing or u.shattered then
                    ai_release(u, st, "unit is routing")
                elseif ai.melee_since and S.now - ai.melee_since >= (cfg.ai_release_after_melee or 3) then
                    ai_release(u, st, "it is fighting now")
                elseif not u.melee and S.now - (ai.ordered_at or ai.at) >= (cfg.ai_hold_seconds or 15) then
                    ai_release(u, st, "hold time over")
                end
            end
        end
    end
end

local function run_ai_engagement(snap)
    local n = 0
    for _, pa in ipairs(snap.player_armies) do
        for _, u in ipairs(pa.units) do
            local st = unit_state(u.uid)
            local r = role(u)
            local why
            if unit_mode(u, st) == "off" then why = "mode off"
            elseif claimed_by_other_mod(u) then why = "script/AI controlled"
            elseif st.ai then why = "with the game AI"
            elseif not is_free(u, st) then
                if not u.idle then why = "not idle"
                elseif u.melee then why = "in melee"
                elseif u.moving then why = "moving"
                elseif u.guard then why = "guard mode"
                elseif (u.hp_frac or 1) < (cfg.min_hp_to_engage or 0) then why = "too hurt"
                elseif st.idle_since and (S.now - st.idle_since) < (cfg.idle_delay or 0) then why = "idle delay"
                else why = "not free"
                end
            elseif r == "artillery" and not cfg.engage_artillery then why = "artillery left alone"
            elseif (r == "caster" or r == "character") and cfg.ai_include_casters == false then why = "lords/heroes left alone"
            elseif r == "missile" and not u.has_ammo and not cfg.ranged_melee_when_empty then why = "no ammo"
            end
            if why ~= st.skip_reason then
                st.skip_reason = why
                if why and why ~= "with the game AI" then log(1, "engage skip %s (%s): %s", u.type, r, why) end
            end
            if not why and n < (cfg.ai_max_handovers_per_tick or 4) and #snap.enemies > 0 then
                if ai_hand_over(u, st) then n = n + 1 end
            end
        end
    end
end

local function run_engagement(snap)
    if not cfg.auto_engage or not S.engage_on then
        -- switched off (hotkey): give every unit the game AI is playing back to the player
        for uid, st in pairs(S.units) do
            local u = st.ai and snap.by_uid[uid]
            if u then ai_release(u, st, "auto-engage switched off") end
        end
        return
    end
    if S.now < (cfg.start_grace_seconds or 0) then return end   -- grace period after the battle starts
    if cfg.engage_mode == "ai" then
        ai_manage(snap)
        run_ai_engagement(snap)
        return
    end
    local free = {}
    local explain = not S.engage_explain_logged and S.now >= (cfg.start_grace_seconds or 0)
    for _, pa in ipairs(snap.player_armies) do
        for _, u in ipairs(pa.units) do
            local st = unit_state(u.uid)
            local r = role(u)
            local why
            if unit_mode(u, st) == "off" then why = "mode off"
            elseif claimed_by_other_mod(u) then why = "script/AI controlled"
            elseif not is_free(u, st) then
                if not u.idle then why = "not idle"
                elseif u.melee then why = "in melee"
                elseif u.moving then why = "moving"
                elseif u.guard then why = "guard mode"
                elseif (u.hp_frac or 1) < (cfg.min_hp_to_engage or 0) then why = "too hurt"
                elseif st.idle_since and (S.now - st.idle_since) < (cfg.idle_delay or 0) then why = "idle delay"
                else why = "not free"
                end
            else
                local ok = true
                if r == "artillery" and not cfg.engage_artillery then ok, why = false, "artillery left alone" end
                if r == "caster" and not cfg.engage_casters then ok, why = false, "caster (engage_casters off)" end
                if r == "character" and not cfg.engage_characters then ok, why = false, "character (engage_characters off)" end
                if r == "missile" and not u.has_ammo and not cfg.ranged_melee_when_empty then ok, why = false, "no ammo" end
                if r == "missile" and not u.has_ammo and cfg.ranged_melee_when_empty then r = "infantry" end
                if ok then free[#free + 1] = { u = u, st = st, role = r } end
            end
            if why ~= st.skip_reason and S.now >= (cfg.start_grace_seconds or 0) then
                st.skip_reason = why
                if why then log(1, "engage skip %s (%s): %s", u.type, r, why) end
            end
        end
    end
    if explain then S.engage_explain_logged = true end
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

    -- units that were free but found nothing worth doing: say so now and then
    for _, fu in ipairs(remaining) do
        local assigned = false
        for _, p in ipairs(plan) do if p.fu == fu then assigned = true end end
        if not assigned and S.now - (fu.st.noassign_logged or -100) >= 15 then
            fu.st.noassign_logged = S.now
            local top_s, top_e
            for _, e in ipairs(snap.enemies) do
                local sc = engage_score(fu.u, fu.role, e, base_ctx, snap)
                if sc and (not top_s or sc > top_s) then top_s, top_e = sc, e end
            end
            if top_s then
                log(1, "engage: %s (%s) is idle but nothing is good enough (best %s %.2f < %.2f)",
                    fu.u.type, fu.role, top_e.type, top_s, min_score)
            else
                log(1, "engage: %s (%s) is idle but has no valid target (none in reach / allowed)", fu.u.type, fu.role)
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
            schedule_release(p.fu.st, cfg.release_delay)
            chk("engage order")
            log(1, "ENGAGE %-34s -> %-34s score=%.2f %s", f.type, e.type, p.score, p.why ~= "" and ("(" .. p.why .. ")") or "")
        else
            log(1, "ENGAGE FAILED %s -> %s: %s", f.type, e.type, tostring(err))
            p.fu.st.engaged_at = S.now  -- don't retry immediately
        end
    end
end

-- Player orders are never overridden: the mod only gives orders to units that are idle (no
-- order at all, see is_free) and it hands every unit back to the player after its own orders.

--------------------------------------------------------------------------------
-- Main loop
--------------------------------------------------------------------------------

-- Per tick bookkeeping for the player's units: how long each has been idle, and a check that
-- units we handed back are really back (and kept the order we gave them).
local function track_units(snap)
    for _, pa in ipairs(snap.player_armies) do
        for _, u in ipairs(pa.units) do
            local st = unit_state(u.uid)
            if u.idle and not u.melee and not u.moving then
                st.idle_since = st.idle_since or S.now
            else
                st.idle_since = nil
            end
            if st.release_check and S.now >= st.release_check then
                st.release_check = nil
                if u.script_ctrl then
                    S.warn_release = (S.warn_release or 0) + 1
                    if S.warn_release <= 3 then
                        log(1, "WARNING: %s is still script-controlled 2 s after release_control; the player may not be able to command it", u.type)
                    end
                elseif u.idle and not u.melee and st.engaged_at and S.now - st.engaged_at < 7 then
                    S.warn_lost = (S.warn_lost or 0) + 1
                    if S.warn_lost <= 3 then
                        log(1, "NOTE: %s went idle right after its unit was handed back (was the order lost?)", u.type)
                    end
                end
            end
        end
    end
end

local function tick(driver)
    -- Several timers drive the tick (see start_battle); it runs once per interval, whichever
    -- fires first. The two game-clock timers are preferred: they stop while the game is
    -- paused, and the game can be queried safely from them. The UI timer only takes over
    -- when neither game-clock timer has fired for a while (CA: the game "may not be in a
    -- suitable state to be queried" from a UI timer, so it never reads the game time).
    -- model side only: two game-clock timers drive this; run once per interval
    local now = clock()
    S.last_model_clock = now
    local ms = try(bm.time_elapsed_ms, bm)
    if type(ms) ~= "number" then ms = nil end
    if ms then
        if S.last_tick_ms and ms - S.last_tick_ms < cfg.tick_seconds * 600 then return end
        S.last_tick_ms = ms
    else
        if S.last_tick_clock and now - S.last_tick_clock < cfg.tick_seconds * 0.6 then return end
    end
    S.last_tick_clock = now
    if S.stall_logged then
        S.stall_logged = false
        log(1, "note: game-clock ticks are running again")
    end
    S.now = S.now + cfg.tick_seconds
    if not S.running then
        if not S.not_running_logged then S.not_running_logged = true; log(1, "tick skipped: not running"); flush_log() end
        return
    end
    if S.paused then
        if not S.pause_logged then
            S.pause_logged = true
            log(1, "paused: doing nothing until the pause key is pressed again")
            flush_log()
        end
        return
    end
    S.pause_logged = false
    S.ticks = (S.ticks or 0) + 1
    local snap = take_snapshot()
    snap.now = S.now
    S.last_snap = snap   -- the auto-cast script reads this
    chk("snapshot")
    track_units(snap)
    release_due()
    if not S.contact then
        for _, u in ipairs(snap.friends) do
            if u.melee or u.under_fire or u.shooting then S.contact = true; break end
        end
        if not S.contact then
            for _, e in ipairs(snap.enemies) do
                if e.melee then S.contact = true; break end
            end
        end
        if S.contact then
            log(1, "contact: the fighting has started%s", unlimited_reach()
                and "; healthy units now look for targets anywhere on the field" or "")
        end
    end
    if S.ticks <= 3 then
        local mine, off = 0, 0
        for _, pa in ipairs(snap.player_armies) do
            for _, u in ipairs(pa.units) do
                mine = mine + 1
                if unit_mode(u, unit_state(u.uid)) == "off" then off = off + 1 end
            end
        end
        log(1, "tick %d: %d of your units under the mod (%d set to off) in %d army(ies); %d friendly and %d visible enemy units",
            S.ticks, mine, off, #snap.player_armies, #snap.friends, #snap.enemies)
    end
    chk("bookkeeping")
    if S.ticks <= 3 then
        log(1, "memory: %.1f MB%s", mem_mb(), S.gc_stopped and " (garbage collector stopped)" or "")
    end
    if not S.grace_logged and S.now >= (cfg.start_grace_seconds or 0) then
        S.grace_logged = true
        if (cfg.start_grace_seconds or 0) > 0 then
            log(1, "start grace over (%d s): idle units may now pick targets", cfg.start_grace_seconds)
        end
    end
    run_engagement(snap)
    chk("engagement")
    if S.now >= S.next_summary then
        S.next_summary = S.now + 30
        log(1, "summary: engages=%d", S.stats.engages)
    end
    flush_log()
end

--------------------------------------------------------------------------------
-- UI: toast + hotkeys
--------------------------------------------------------------------------------

local function toast(text)
    log(1, "%s", text)
    flush_log()
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
        snap_u = S.last_snap and S.last_snap.by_uid[ids[1]]
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

local function toggle_engage()
    S.engage_on = not S.engage_on
    toast(S.engage_on and "Proactive Command: auto-engage ON" or "Proactive Command: auto-engage OFF")
end

-- UI timer: only a watchdog. (The auto-cast script has its own UI timer.)
local function ui_step()
    if not S.running then return end
    local now = clock()
    if S.last_model_clock and now - S.last_model_clock > 4 and not S.stall_logged and not S.paused then
        S.stall_logged = true
        log(1, "note: no game-clock tick for 4 s (the game is paused, or the game-clock timers stopped)")
    end
    flush_log()
end

local function register_hotkeys()
    core:remove_listener("proactive_command_hotkeys")
    core:add_listener("proactive_command_hotkeys", "ShortcutTriggered",
        function(context) return context.string == cfg.hotkey_cycle_selected end,
        guarded("cycle_selected", cycle_selected), true)
    core:add_listener("proactive_command_hotkeys", "ShortcutTriggered",
        function(context) return context.string == cfg.hotkey_toggle_all end,
        guarded("toggle_all", toggle_all), true)
    if cfg.hotkey_toggle_engage and cfg.hotkey_toggle_engage ~= "" then
        core:add_listener("proactive_command_hotkeys", "ShortcutTriggered",
            function(context) return context.string == cfg.hotkey_toggle_engage end,
            guarded("toggle_engage", toggle_engage), true)
    end
end

--------------------------------------------------------------------------------
-- Startup
--------------------------------------------------------------------------------

local function start_battle()
    if S.running then return end
    S.running = true
    S.now = 0
    log(1, "battle started: ticking every %.1fs (auto engage: %s, mode: %s)",
        cfg.tick_seconds, tostring(cfg.auto_engage), tostring(cfg.engage_mode))
    if cfg.gc_mode == "stop" and pcall(collectgarbage, "stop") then
        S.gc_stopped = true
        log(1, "garbage collector stopped for this battle (gc_mode = stop), memory %.1f MB", mem_mb())
    end
    if S.babysitter_warning then toast("Proactive Command: disable Just Good Babysitter - both mods command idle units") end
    local ms = math.floor(cfg.tick_seconds * 1000)
    -- Three independent timers call the tick; it runs once per interval (see tick). The first
    -- calls of each are logged so a stalled timer shows up in the log.
    local function drive(driver)
        local n = (S.driver_calls[driver] or 0) + 1
        S.driver_calls[driver] = n
        if n <= 5 then
            local ms = try(bm.time_elapsed_ms, bm)
            log(1, "timer %s call %d: clock=%.2f game ms=%s", driver, n, clock(),
                type(ms) == "number" and tostring(ms) or "-")
            flush_log()
        end
        tick(driver)
    end
    -- 1) a native engine timer that calls a global function by name
    local engine_tick = guarded("tick", function() drive("engine") end)
    proactive_command_tick_timer = engine_tick
    if _G then _G.proactive_command_tick_timer = engine_tick end
    local ok_engine = pcall(function() bm:register_repeating_timer("proactive_command_tick_timer", ms) end)
    -- 2) the game's shared script timer
    local ok_shared = pcall(function() bm:repeat_callback(guarded("tick", function() drive("shared") end), ms, "proactive_command_tick") end)
    -- 3) the UI side (abilities, ability buttons, player orders) on a UI timer
    local ui_calls = 0
    local ok_real = pcall(function()
        bm:repeat_real_callback(guarded("ui_step", function()
            ui_calls = ui_calls + 1
            if ui_calls <= 3 then log(1, "ui step %d: clock=%.2f", ui_calls, clock()) end
            ui_step()
        end), 500, "proactive_command_ui")
    end)
    log(1, "timers: game-clock engine %s, game-clock shared %s, ui %s", ok_engine and "on" or "unavailable",
        ok_shared and "on" or "unavailable", ok_real and "on" or "unavailable")
end

local function stop_battle(reason)
    if not S.running then return end
    S.running = false
    if S.last_snap then
        for uid, st in pairs(S.units) do
            if st.ai then
                local u = S.last_snap.by_uid[uid]
                if u then pcall(ai_release, u, st, "battle over") end
            end
        end
    end
    if S.gc_stopped then
        S.gc_stopped = false
        pcall(collectgarbage, "restart")
    end
    pcall(function() bm:remove_process("proactive_command_tick") end)
    pcall(function() bm:unregister_timer("proactive_command_tick_timer") end)
    pcall(function() bm:remove_real_callback("proactive_command_ui") end)
    log(1, "stopped (%s). engages=%d", reason, S.stats.engages)
    flush_log()
end

local function init()
    load_user_config()
    S.engage_on = cfg.auto_engage ~= false
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
        local idx = tonumber(try(bm.local_army, bm))
        local pa = try(bm.get_player_alliance, bm)
        local count = pa and try(function() return pa:armies():count() end) or 0
        if not idx or idx < 1 or idx > count then
            log(1, "multiplayer battle: could not identify this player's army (local army %s of %s), not running",
                tostring(idx), tostring(count)); flush_log(); return
        end
        S.own_army_idx = idx
        log(1, "multiplayer battle: commanding only this player's own army (army %d of %d in the alliance, experimental)", idx, count)
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
proactive_command = {
    state = S, config = cfg, version = VERSION,
    toggle = toggle_all, toggle_engage = toggle_engage,
    -- for proactive_command_cast.lua
    log = log, flush = flush_log, toast = toast,
    mode_for = function(uid)
        local st = S.units[uid]
        if st and st.mode then return st.mode end
        local u = S.last_snap and S.last_snap.by_uid[uid]
        return u and default_mode(u) or cfg.default_mode_units
    end,
}

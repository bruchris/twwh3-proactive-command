--------------------------------------------------------------------------------
-- Proactive Command: auto-cast (Total War: WARHAMMER III battle mod)
--
-- A small script of its own, next to proactive_command.lua (idle units). It only reads what
-- that script publishes (the battlefield snapshot, the "off" modes) and has its own timers,
-- config keys, hotkey and state, so an error here can never stop idle units from moving.
--
-- How it casts: it does NOT score spells itself. When one of your units has an ability or
-- spell ready and an enemy is within reach, the unit is handed to the game's own battle AI
-- (the engine's AI unit planner, the same thing that plays enemy lords) for a few seconds.
-- The AI uses its own ability rules (CA's battle_ai_abilities_usage tables) and its own
-- Winds of Magic management. As soon as the unit has cast (or the hold time is over) it is
-- handed straight back to you. Your own commands are never overridden: units that are
-- moving, that you are aiming a spell with, or that you have set to "off" are left alone.
--
-- Optional user config (same file as the main script, next to Warhammer3.exe):
--   proactive_command_config.lua   ->  return { auto_cast = true, cast_hold_seconds = 8, ... }
-- Log lines go into proactive_command_log.txt through the main script, tagged [cast].
--------------------------------------------------------------------------------

local VERSION = "0.1.1"

if proactive_command_cast_loaded then return end

-- Development mode (see proactive_command.lua): run a loose copy of this script instead.
if not PROACTIVE_COMMAND_CAST_DEV_CHILD and loadfile then
    local dev_path
    local cfg_chunk = loadfile("proactive_command_config.lua")
    if cfg_chunk then
        if setfenv then setfenv(cfg_chunk, {}) end
        local ok, t = pcall(cfg_chunk)
        if ok and type(t) == "table" and type(t.dev_cast_script_path) == "string" and t.dev_cast_script_path ~= "" then
            dev_path = t.dev_cast_script_path
        end
    end
    if dev_path then
        local chunk, err = loadfile(dev_path)
        if chunk then
            if setfenv and getfenv then setfenv(chunk, getfenv(1)) end
            PROACTIVE_COMMAND_CAST_DEV_STATUS = "running the development copy " .. dev_path
            PROACTIVE_COMMAND_CAST_DEV_CHILD = true
            local ok, e = pcall(chunk)
            PROACTIVE_COMMAND_CAST_DEV_CHILD = nil
            if not ok then
                PROACTIVE_COMMAND_CAST_DEV_STATUS = "the development copy " .. dev_path .. " stopped with an error: " .. tostring(e)
                if out then pcall(out, "Proactive Command cast: " .. PROACTIVE_COMMAND_CAST_DEV_STATUS) end
            end
            if proactive_command_cast_loaded then return end
        else
            PROACTIVE_COMMAND_CAST_DEV_STATUS = "could not load the development copy (" .. tostring(err) .. "), using the packed copy"
        end
    end
end
proactive_command_cast_loaded = true

--------------------------------------------------------------------------------
-- Configuration
--------------------------------------------------------------------------------

local DEFAULTS = {
    auto_cast = true,                 -- start each battle with auto-cast on (hotkey toggles it)
    allow_in_multiplayer = true,      -- same setting as the idle-unit script: each player's copy
                                      -- only acts on that player's own army (from the shared snapshot)
    cast_start_grace_seconds = 15,    -- no automatic casting for this long after the battle starts
    cast_hold_seconds = 8,            -- longest a unit stays with the game AI
    cast_release_after_cast = 2,      -- hand the unit back this long after it used an ability
    cast_cooldown = 10,               -- seconds before the same unit may be handed over again
    cast_cooldown_no_cast = 20,       -- ...if the AI did not cast anything during the hold
    cast_enemy_range = 150,           -- an enemy must be this close (m) for a ranged spell
    cast_self_range = 70,             -- ...or this close for buffs and abilities without a target
    cast_defend_radius = 40,          -- while held, the AI holds around the unit's position
    cast_max_holds = 2,               -- units held by the AI for casting at the same time
    cast_while_moving = false,        -- also take units that are moving (you gave them a move order)
    cast_watch = true,                -- log every ability use (needed to see what the AI does)
    allow_overcast = false,           -- count "_upgraded" (overcast) spells as ready
    allow_miscast = false,            -- count spells that can miscast as ready
    allow_transformations = false,
    allow_summons = true,
    allow_self_rooting = false,
    never_use = {},                   -- { wh_main_spell_fire_fireball = true }: never trigger on these
    hotkey_toggle_casting = "camera_bookmark_save11",
    user_config_file = "proactive_command_config.lua",
    log_level = 1,                    -- only used if the main script is not running
    dev_cast_script_path = false,     -- development: run this loose copy of the script
}

local cfg = {}
for k, v in pairs(DEFAULTS) do cfg[k] = v end

local C = {
    now = 0,              -- seconds of battle time (counted by this script's own timer)
    running = false,
    on = true,
    holds = {},           -- uid -> { planner, state, at, ordered_at, cast_at }
    cool = {},            -- uid -> time before which the unit is not handed over again
    ab = {},              -- uid -> ability states read on the UI side
    seen = {},            -- uid -> key -> last 'can' state (to notice ability use)
    stats = { holds = 0, used = 0, used_by_ai = 0, failed = 0 },
    ui_watch = {},
    next_summary = 30,
}

-- units held by the AI, by either script: uid -> "cast" | "engage"
PROACTIVE_COMMAND_HOLDS = PROACTIVE_COMMAND_HOLDS or {}
local HOLDS = PROACTIVE_COMMAND_HOLDS

--------------------------------------------------------------------------------
-- Helpers
--------------------------------------------------------------------------------

local function main() return proactive_command end

local function log(level, fmt, ...)
    local ok, msg = pcall(string.format, fmt, ...)
    if not ok then msg = tostring(fmt) end
    local M = main()
    if M and M.log then
        pcall(M.log, level, "[cast] " .. msg)
    elseif level <= (cfg.log_level or 0) and out then
        pcall(out, string.format("[ProactiveCommand cast] [%7.1f] %s", C.now, msg))
    end
end

local function flush()
    local M = main()
    if M and M.flush then pcall(M.flush) end
end

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
            end
            flush()
        end
    end
end

local function try(fn, ...)
    local ok, r = pcall(fn, ...)
    if ok then return r end
    return nil
end

local function clock() return (os and os.clock and os.clock()) or 0 end

local function cco_call(obj, expr)
    if not obj then return nil end
    local ok, r = pcall(function() return obj:Call(expr) end)
    if ok then return r end
    return nil
end

local function dist(a, b)
    local dx, dz = a.x - b.x, a.z - b.z
    return math.sqrt(dx * dx + dz * dz)
end

local function vec(x, y, z)
    if type(v) == "function" then return v(x, y, z) end
    return battle_vector:new(x, y, z)
end

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
    end
end

local function load_catalog()
    local original = package.path
    package.path = "data/script/proactive_command/?.lua;script/proactive_command/?.lua;" .. (original or "")
    local ok, cat = pcall(require, "pc_catalog")
    package.path = original
    if ok and type(cat) == "table" and cat.abilities then return cat end
    return nil
end

--------------------------------------------------------------------------------
-- Ability states (UI side: the same data the HUD uses)
--------------------------------------------------------------------------------

local function ui_read_abilities(root, uid)
    local uc = cco_call(root, "UnitList.FirstContext(UniqueUiId == " .. tostring(uid) .. ")")
    if not uc then return nil end
    local entry = { at = clock(), list = {} }
    local n = tonumber(cco_call(uc, "BattleAbilityList.Size")) or 0
    for k = 0, n - 1 do
        local ab = cco_call(uc, "BattleAbilityList.At(" .. k .. ")")
        if ab then
            local key = cco_call(ab, "SetupAbilityContext.RecordKey")
            if key and not cco_call(ab, "SetupAbilityContext.IsPassive") then
                local info = {
                    key = key,
                    can = cco_call(ab, "CanCurrentlyPerform") and true or false,
                    active = cco_call(ab, "IsActive") and true or false,
                    aiming = cco_call(ab, "IsCurrentlyTargetting") and true or false,
                }
                if cco_call(ab, "HasLimitedUses") then
                    info.remaining = tonumber(cco_call(ab, "RemainingUses"))
                end
                entry.list[#entry.list + 1] = info
            end
        end
    end
    return entry
end

-- notice abilities that were ready a moment ago and are not now: they were used
local function watch_use(uid, entry, type_name)
    local seen = C.seen[uid]
    if not seen then seen = {}; C.seen[uid] = seen end
    for _, info in ipairs(entry.list) do
        local A = C.catalog and C.catalog.abilities[info.key]
        if A then
            local was = seen[info.key]
            seen[info.key] = info.can
            if was == true and not info.can and not info.aiming then
                C.stats.used = C.stats.used + 1
                local h = C.holds[uid]
                local owner = HOLDS[uid]
                if h then h.cast_at = h.cast_at or C.now end
                if owner then C.stats.used_by_ai = C.stats.used_by_ai + 1 end
                if cfg.cast_watch then
                    log(1, "USED %s: %s%s", type_name or "unit", info.key,
                        owner and (" (while with the game AI: " .. owner .. ")") or " (under your control)")
                end
            end
        end
    end
end

local function ui_step()
    if not C.running then return end
    local root = cco("CcoBattleRoot", "")
    if not root then return end
    local M = main()
    local snap = M and M.state and M.state.last_snap
    for uid in pairs(C.ui_watch) do
        local entry = ui_read_abilities(root, uid)
        if entry then
            C.ab[uid] = entry
            local u = snap and snap.by_uid[uid]
            watch_use(uid, entry, u and u.type)
        end
    end
end

--------------------------------------------------------------------------------
-- Which abilities count as "ready" (rules carried over from the old in-script casting)
--------------------------------------------------------------------------------

local function allowed(A, key, mode)
    if mode == "off" then return false end
    if (A.mana or 0) > 0 and mode ~= "full" then return false end
    if cfg.never_use and cfg.never_use[key] then return false end
    if A.upg and not cfg.allow_overcast then return false end
    if (A.mc or 0) > 0 and not cfg.allow_miscast then return false end
    if A.tr and not cfg.allow_transformations then return false end
    if A.fm then return false end
    if A.sum and not cfg.allow_summons then return false end
    if A.cm and not cfg.allow_self_rooting then return false end
    if A.src == "cataclysm" then return false end
    return true
end

local function self_only(A)
    local r = A.rng or 0
    return (not A.te and not A.tf and not A.tg) or r == 0
end

-- reach (m) at which an enemy makes this ability worth letting the AI loose
local function trigger_range(A)
    if self_only(A) then return cfg.cast_self_range end
    local r = A.rng or 0
    if r < 0 then r = 300 end
    return math.min(math.max(r, cfg.cast_self_range), cfg.cast_enemy_range + 50)
end

-- returns the closest enemy distance, or nil
local function nearest_enemy(u, snap)
    local best
    for _, e in ipairs(snap.enemies) do
        if not e.routing and not e.shattered then
            local d = dist(u, e)
            if not best or d < best then best = d end
        end
    end
    return best
end

-- is there something this unit could cast now that the AI would want to use?
local function wants_ai(u, snap, winds, mode)
    local c = C.ab[u.uid]
    if not c or clock() - c.at > 3 then return false end
    local d = nearest_enemy(u, snap)
    if not d then return false end
    local why
    for _, info in ipairs(c.list) do
        if info.aiming then return false end   -- the player is aiming something right now
    end
    for _, info in ipairs(c.list) do
        local A = C.catalog.abilities[info.key]
        if A and info.can and not info.active and (info.remaining == nil or info.remaining > 0)
            and allowed(A, info.key, mode) then
            local cost = A.mana or 0
            if cost == 0 or not winds or winds >= cost then
                if d <= trigger_range(A) then return true, info.key end
            end
        end
    end
    return false
end

--------------------------------------------------------------------------------
-- Handing units to the game AI and back
--------------------------------------------------------------------------------

local function hand_over(u)
    local ok, err = pcall(function()
        local planner = u.unit:army():alliance():create_ai_unit_planner()
        planner:add_units(u.unit)
        C.holds[u.uid] = { planner = planner, state = "added", at = C.now, unit = u.unit, type = u.type }
    end)
    if not ok then
        C.holds[u.uid] = nil
        C.stats.failed = C.stats.failed + 1
        C.cool[u.uid] = C.now + 30
        log(1, "HANDOVER FAILED %s: %s", u.type, tostring(err))
        return false
    end
    HOLDS[u.uid] = "cast"
    C.stats.holds = C.stats.holds + 1
    return true
end

local function release(uid, h, why)
    pcall(function() h.planner:remove_units(h.unit) end)
    pcall(function()
        local uc = h.unit:army():create_unit_controller()
        uc:add_units(h.unit)
        uc:release_control()
    end)
    C.holds[uid] = nil
    if HOLDS[uid] == "cast" then HOLDS[uid] = nil end
    local cd = h.cast_at and cfg.cast_cooldown or cfg.cast_cooldown_no_cast
    C.cool[uid] = C.now + cd
    log(1, "RELEASE %s back to you (%s)", h.type or "unit", why)
end

local function manage_holds(snap)
    for uid, h in pairs(C.holds) do
        local u = snap.by_uid[uid]
        if not u then
            C.holds[uid] = nil
            if HOLDS[uid] == "cast" then HOLDS[uid] = nil end
        elseif h.state == "added" and C.now - h.at >= 1 then
            local ok, err = pcall(function()
                pcall(function()
                    local uc = u.unit:army():create_unit_controller()
                    uc:add_units(u.unit)
                    uc:release_control()
                end)
                local pos = try(u.unit.position, u.unit) or vec(u.x, 0, u.z)
                h.planner:defend_position(pos, cfg.cast_defend_radius)
            end)
            h.state = "active"
            h.ordered_at = C.now
            if not ok then
                log(1, "ORDER FAILED %s: %s", u.type, tostring(err))
                release(uid, h, "order failed")
            else
                log(1, "CAST HOLD %s -> game AI (%s)", u.type, tostring(h.why))
            end
        elseif h.state == "active" then
            if u.routing or u.shattered then
                release(uid, h, "unit is routing")
            elseif h.cast_at and C.now - h.cast_at >= cfg.cast_release_after_cast then
                release(uid, h, "it cast")
            elseif C.now - (h.ordered_at or h.at) >= cfg.cast_hold_seconds then
                release(uid, h, h.cast_at and "hold time over" or "the AI cast nothing")
            end
        end
    end
end

--------------------------------------------------------------------------------
-- Model-side tick (a game-clock timer of its own)
--------------------------------------------------------------------------------

local function mode_of(uid)
    local M = main()
    if M and M.mode_for then
        local m = try(M.mode_for, uid)
        if m then return m end
    end
    return "full"
end

local function tick()
    local M = main()
    local ms = M and M.state
    if not C.running or not ms or not ms.running then return end
    -- dedupe the two timers that call this
    local now = clock()
    if C.last_clock and now - C.last_clock < 0.6 then return end
    C.last_clock = now
    C.now = C.now + 1
    if ms.paused then return end
    local snap = ms.last_snap
    if not snap or (ms.now or 0) - (snap.now or -99) > 3 then return end

    -- the units we watch on the UI side
    local watch = {}
    for _, pa in ipairs(snap.player_armies) do
        for _, u in ipairs(pa.units) do watch[u.uid] = true end
    end
    C.ui_watch = watch

    manage_holds(snap)

    if C.now >= C.next_summary then
        C.next_summary = C.now + 30
        local n = 0
        for _ in pairs(C.holds) do n = n + 1 end
        log(1, "cast summary: on=%s holds=%d (now %d) abilities used=%d (while with the game AI: %d) failed=%d",
            tostring(C.on), C.stats.holds, n, C.stats.used, C.stats.used_by_ai, C.stats.failed)
    end

    if not C.on or C.now < cfg.cast_start_grace_seconds then flush(); return end

    local held = 0
    for _ in pairs(C.holds) do held = held + 1 end
    if held >= cfg.cast_max_holds then flush(); return end

    for _, pa in ipairs(snap.player_armies) do
        local winds
        local need_winds = false
        local list = {}
        for _, u in ipairs(pa.units) do
            local mode = mode_of(u.uid)
            if mode ~= "off" and not HOLDS[u.uid] and not C.holds[u.uid]
                and not u.routing and not u.shattered and not u.script_ctrl
                and (C.cool[u.uid] or 0) <= C.now
                and (cfg.cast_while_moving or not u.moving or u.melee) then
                list[#list + 1] = { u = u, mode = mode }
            end
        end
        if #list > 0 then
            winds = try(pa.army.winds_of_magic_current, pa.army)
            if type(winds) ~= "number" then winds = nil end
        end
        for _, item in ipairs(list) do
            if held >= cfg.cast_max_holds then break end
            local want, key = wants_ai(item.u, snap, winds, item.mode)
            if want then
                local h_ok = hand_over(item.u)
                if h_ok then
                    held = held + 1
                    C.holds[item.u.uid].why = key
                end
            end
        end
    end
    flush()
end

--------------------------------------------------------------------------------
-- Hotkey, start and stop
--------------------------------------------------------------------------------

local function toggle()
    C.on = not C.on
    local M = main()
    local text = C.on and "Proactive Command: auto-cast ON" or "Proactive Command: auto-cast OFF"
    if M and M.toast then pcall(M.toast, text) else log(1, "%s", text) end
    if not C.on then
        -- give units back right away
        for uid, h in pairs(C.holds) do release(uid, h, "auto-cast switched off") end
    end
end

local function start_battle()
    if C.running then return end
    C.running = true
    C.now = 0
    log(1, "auto-cast %s loaded: %s, hold up to %d s, at most %d unit(s) at a time",
        VERSION, C.on and "on" or "off", cfg.cast_hold_seconds, cfg.cast_max_holds)
    local ms = 1000
    local engine_tick = guarded("cast tick", tick)
    proactive_command_cast_timer = engine_tick
    if _G then _G.proactive_command_cast_timer = engine_tick end
    local ok_engine = pcall(function() bm:register_repeating_timer("proactive_command_cast_timer", ms) end)
    local ok_shared = pcall(function() bm:repeat_callback(engine_tick, ms, "proactive_command_cast_tick") end)
    local ok_ui = pcall(function()
        bm:repeat_real_callback(guarded("cast ui", ui_step), 500, "proactive_command_cast_ui")
    end)
    log(1, "cast timers: game-clock engine %s, shared %s, ui %s", ok_engine and "on" or "unavailable",
        ok_shared and "on" or "unavailable", ok_ui and "on" or "unavailable")
    flush()
end

local function stop_battle(reason)
    if not C.running then return end
    C.running = false
    for uid, h in pairs(C.holds) do pcall(release, uid, h, "battle over") end
    pcall(function() bm:remove_process("proactive_command_cast_tick") end)
    pcall(function() bm:unregister_timer("proactive_command_cast_timer") end)
    pcall(function() bm:remove_real_callback("proactive_command_cast_ui") end)
    log(1, "cast stopped (%s): holds=%d abilities used=%d (while with the game AI: %d) failed=%d",
        reason, C.stats.holds, C.stats.used, C.stats.used_by_ai, C.stats.failed)
    flush()
end

local function init()
    load_user_config()
    C.on = cfg.auto_cast ~= false
    if try(bm.is_tutorial, bm) or try(bm.is_replay, bm) then return end
    if try(bm.is_multiplayer, bm) then
        if not cfg.allow_in_multiplayer then
            log(1, "multiplayer battle: auto-cast not running (allow_in_multiplayer = false)")
            flush()
            return
        end
        -- Own-army filtering is done by the idle-unit script's snapshot (S.last_snap.player_armies).
        -- This script never looks at any other army, so co-op and head-to-head are safe as long as
        -- every player runs the same version.
        C.mp = true
        log(1, "multiplayer battle: auto-cast on (only this player's own army, experimental)")
    end
    C.catalog = load_catalog()
    if not C.catalog then
        log(0, "ERROR: could not load ability catalog; auto-cast is off")
        return
    end
    if PROACTIVE_COMMAND_CAST_DEV_STATUS then log(1, "cast development mode: %s", PROACTIVE_COMMAND_CAST_DEV_STATUS) end
    core:remove_listener("proactive_command_cast_hotkeys")
    if cfg.hotkey_toggle_casting and cfg.hotkey_toggle_casting ~= "" then
        core:add_listener("proactive_command_cast_hotkeys", "ShortcutTriggered",
            function(context) return context.string == cfg.hotkey_toggle_casting end,
            guarded("toggle", toggle), true)
    end
    bm:register_phase_change_callback("Deployed", guarded("cast start", start_battle))
    bm:register_phase_change_callback("VictoryCountdown", guarded("cast victory", function() stop_battle("victory countdown") end))
    bm:register_phase_change_callback("Complete", guarded("cast complete", function() stop_battle("battle complete") end))
    if try(bm.is_conflict_phase, bm) then start_battle() end
end

local ok, err = pcall(init)
if not ok then log(0, "ERROR during init: %s", tostring(err)); flush() end

proactive_command_cast = { state = C, config = cfg, version = VERSION, toggle = toggle }

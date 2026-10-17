-- Minimal mock of the WH3 battle scripting environment used by proactive_command.lua.
-- Implements just enough of bm/core/cco/unit/army/unitcontroller to run decisions offline.

local M = { time = 0, events = {}, repeat_cbs = {}, real_cbs = {}, phase_cbs = {}, listeners = {},
            alliances = {}, uid_seq = 100, selection = {}, log = {} }
MOCK = M

-- vectors -----------------------------------------------------------------------
local VecMT = {}
VecMT.__index = VecMT
function VecMT:get_x() return self.x end
function VecMT:get_y() return self.y end
function VecMT:get_z() return self.z end
function VecMT:distance_xz(o) return math.sqrt((self.x - o.x) ^ 2 + (self.z - o.z) ^ 2) end
local function newvec(x, y, z) return setmetatable({ x = x or 0, y = y or 0, z = z or 0 }, VecMT) end
battle_vector = { new = function(_, x, y, z) return newvec(x, y, z) end }
v = function(x, y, z) return newvec(x, y, z) end

-- collections ---------------------------------------------------------------------
local function collection(list)
    return { list = list, count = function(self) return #self.list end, item = function(self, i) return self.list[i] end }
end

-- abilities -----------------------------------------------------------------------
local AbilityMT = {}
AbilityMT.__index = AbilityMT
function M.new_ability(def)
    local a = setmetatable({
        key = def.key, mana = def.mana or 0, cd = def.cd or 30, dur = def.dur or 10, uses = def.uses,
        targeted = def.targeted or false, cooldown_left = def.cooldown_left or 0, active_left = 0,
        aiming = false, owner = nil,
    }, AbilityMT)
    return a
end
function AbilityMT:can()
    if self.cooldown_left > 0 or self.active_left > 0 then return false end
    if self.uses and self.uses <= 0 then return false end
    if self.mana > 0 and self.owner._army.winds < self.mana then return false end
    return true
end
function AbilityMT:perform(target_desc, how)
    if not self:can() then
        M.events[#M.events + 1] = { t = M.time, kind = "rejected", key = self.key, by = self.owner.name, how = how }
        return
    end
    self.active_left = self.dur > 0 and self.dur or 0.5
    self.cooldown_left = self.cd
    if self.uses then self.uses = self.uses - 1 end
    if self.mana > 0 then self.owner._army.winds = self.owner._army.winds - self.mana end
    M.events[#M.events + 1] = { t = M.time, kind = "cast", key = self.key, by = self.owner.name, target = target_desc, how = how }
    if self.stops_caster then self.owner.idle = true; self.owner.moving = false end
end

-- units ---------------------------------------------------------------------------
local UnitMT = {}
UnitMT.__index = UnitMT
function M.add_unit(army, def)
    M.uid_seq = M.uid_seq + 1
    local u = setmetatable({
        uid = M.uid_seq, name = def.name or def.type, type_key = def.type, _army = army,
        x = def.x or 0, z = def.z or 0, y = 0, men = def.men or 100, hp = def.hp or 1,
        melee = def.melee or false, moving = def.moving or false, moving_fast = def.moving_fast or false,
        idle = def.idle ~= false, routing = false, shattered = false, wavering = false,
        flying = false, fly = false, under_fire = def.under_fire or false,
        _mrange = def.missile_range or 0, ammo = def.ammo or 0, start_ammo = def.ammo or 0,
        target = nil, is_character = def.is_character or false, abilities = {}, ai = false,
        guard = def.guard or false, magic = def.magic or false, speed = def.speed,
    }, UnitMT)
    for _, ad in ipairs(def.abilities or {}) do
        local a = M.new_ability(ad)
        a.owner = u
        a.stops_caster = ad.stops_caster
        u.abilities[#u.abilities + 1] = a
    end
    army.unit_list[#army.unit_list + 1] = u
    return u
end
function UnitMT:unique_ui_id() return self.uid end
function UnitMT:number_of_men_alive() return self.men end
function UnitMT:is_leaving_battle() return false end
function UnitMT:is_valid_target() return self.men > 0 end
function UnitMT:position() return newvec(self.x, self.y, self.z) end
function UnitMT:unary_hitpoints() return self.hp end
function UnitMT:is_in_melee() return self.melee end
function UnitMT:is_moving() return self.moving end
function UnitMT:is_moving_fast() return self.moving_fast end
function UnitMT:is_idle() return self.idle end
function UnitMT:is_routing() return self.routing end
function UnitMT:is_crumbling() return false end
function UnitMT:is_unstable() return false end
function UnitMT:is_shattered() return self.shattered end
function UnitMT:is_wavering() return self.wavering end
function UnitMT:is_currently_flying() return self.flying end
function UnitMT:can_fly() return self.fly end
function UnitMT:is_under_missile_attack() return self.under_fire end
function UnitMT:fast_speed() return self.speed or 4 end
function UnitMT:slow_speed() return 3 end
function UnitMT:type() return self.type_key end
function UnitMT:can_use_magic() return self.magic end
function UnitMT:is_behaviour_active(b) return b == "defend" and self.guard end
function UnitMT:ammo_left() return self.ammo end
function UnitMT:starting_ammo() return self.start_ammo end
function UnitMT:missile_range() return self._mrange end
function UnitMT:current_target() return self.target end
function UnitMT:is_visible_to_alliance() return true end
function UnitMT:is_ai_controlled() return self.ai end
function UnitMT:army() return self._army end
function UnitMT:ordered_position() return newvec(self.order_x or self.x, 0, self.order_z or self.z) end
function UnitMT:ordered_bearing() return 0 end
function UnitMT:ordered_width() return 30 end

-- unit controllers ----------------------------------------------------------------
local UCMT = {}
UCMT.__index = UCMT
function UCMT:add_units(u) self.units[#self.units + 1] = u end
local function find_ability(u, key)
    for _, a in ipairs(u.abilities) do if a.key == key then return a end end
end
function UCMT:perform_special_ability(key, target)
    local u = self.units[1]
    local a = find_ability(u, key)
    if not a then error("unit does not own " .. key) end
    a:perform(target and target.name or "nil", "uc")
end
function UCMT:perform_special_ability_ground(key, pos)
    local u = self.units[1]
    local a = find_ability(u, key)
    if not a then error("unit does not own " .. key) end
    a:perform(string.format("ground(%.0f,%.0f)", pos.x, pos.z), "ground")
end
function UCMT:attack_unit(target, primary, fast)
    local u = self.units[1]
    M.events[#M.events + 1] = { t = M.time, kind = "attack", by = u.name, target = target.name, fast = fast }
    u.target = target; u.idle = false
end
function UCMT:goto_location_angle_width(pos) M.events[#M.events + 1] = { t = M.time, kind = "restore_move", by = self.units[1].name } end

-- armies / alliances ----------------------------------------------------------------
local ArmyMT = {}
ArmyMT.__index = ArmyMT
function M.add_army(alliance, def)
    local a = setmetatable({ unit_list = {}, player = def.player or false, winds = def.winds or 0,
        reserve = def.reserve or 0, id = #M.alliances * 10 + #alliance.army_list + 1 }, ArmyMT)
    alliance.army_list[#alliance.army_list + 1] = a
    return a
end
local function filter_units(list, reinf)
    local r = {}
    for _, u in ipairs(list) do if (u.reinforcement or false) == reinf then r[#r + 1] = u end end
    return r
end
function ArmyMT:units() return collection(filter_units(self.unit_list, false)) end
function ArmyMT:num_reinforcement_units() return #filter_units(self.unit_list, true) > 0 and 1 or 0 end
function ArmyMT:get_reinforcement_units(k) return collection(filter_units(self.unit_list, true)) end
function ArmyMT:is_player_controlled() return self.player end
function ArmyMT:unique_id() return self.id end
function ArmyMT:winds_of_magic_current() return self.winds end
function ArmyMT:winds_of_magic_reserve() return self.reserve end
function ArmyMT:winds_of_magic_remaining_recharge_rate() return 0.5 end
function ArmyMT:create_unit_controller() return setmetatable({ units = {} }, UCMT) end

function M.add_alliance()
    local al = { army_list = {} }
    al.armies = function(self) return collection(self.army_list) end
    M.alliances[#M.alliances + 1] = al
    return al
end

-- CCO --------------------------------------------------------------------------------
local function unit_by_uid(uid)
    for _, al in ipairs(M.alliances) do
        for _, ar in ipairs(al.army_list) do
            for _, u in ipairs(ar.unit_list) do if u.uid == uid then return u end end
        end
    end
end

local function ability_cco(a)
    return { Call = function(_, expr)
        if expr == "SetupAbilityContext.RecordKey" then return a.key end
        if expr == "SetupAbilityContext.IsPassive" then return false end
        if expr == "CanCurrentlyPerform" then return a:can() end
        if expr == "IsActive" then return a.active_left > 0 end
        if expr == "IsCurrentlyTargetting" then return a.aiming end
        if expr == "IsTargettedAbility" then return a.targeted end
        if expr == "HasLimitedUses" then return a.uses ~= nil end
        if expr == "RemainingUses" then return a.uses end
        if expr == "PerformAbilityForOwner" then
            if a.targeted then error("PerformAbilityForOwner on targeted ability") end
            return a:perform("self", "cco")
        end
        error("unknown ability expr " .. expr)
    end }
end

local function unit_cco(u)
    return { Call = function(_, expr)
        if expr == "IsCharacter" then return u.is_character end
        if expr == "UniqueUiId" then return u.uid end
        if expr == "BattleAbilityList.Size" then return #u.abilities end
        local k = string.match(expr, "^BattleAbilityList%.At%((%d+)%)$")
        if k then return ability_cco(u.abilities[tonumber(k) + 1]) end
        error("unknown unit expr " .. expr)
    end }
end

function cco(name, id)
    if M.ctx == "model" then error("UI context object (cco) used from a game-clock callback", 2) end
    if name ~= "CcoBattleRoot" then return nil end
    return { Call = function(_, expr)
        local uid = string.match(expr, "^UnitList%.FirstContext%(UniqueUiId == (%d+)%)$")
        if uid then
            local u = unit_by_uid(tonumber(uid))
            return u and unit_cco(u)
        end
        if expr == "SelectionContext" then
            return { Call = function(_, e)
                if e == "NumUnits" then return #M.selection end
                local i = string.match(e, "^UnitList%.At%((%d+)%)$")
                if i then return unit_cco(M.selection[tonumber(i) + 1]) end
            end }
        end
        error("unknown root expr " .. expr)
    end }
end

-- bm / core / ui ---------------------------------------------------------------------------
bm = {}
function bm:get_player_alliance() return M.alliances[1] end
function bm:get_non_player_alliance() return M.alliances[2] end
function bm:get_player_army() return M.alliances[1].army_list[1] end
function bm:local_army() return M.local_army or 1 end
function bm:local_alliance() return 1 end
function bm:repeat_callback(fn, ms, name)
    if M.shared_timer_dead then return end
    M.repeat_cbs[name or tostring(fn)] = { fn = fn, every = ms / 1000, next = M.time + ms / 1000, shared = true }
end
function bm:register_repeating_timer(fname, ms)
    M.repeat_cbs["engine:" .. fname] = { fn = function() _G[fname]() end, every = ms / 1000, next = M.time + ms / 1000 }
end
function bm:unregister_timer(fname) M.repeat_cbs["engine:" .. fname] = nil end
function bm:time_elapsed_ms() return math.floor(M.time * 1000 + 0.5) end
-- the mod uses os.clock() as its real-time clock; follow the mock's time
os.clock = function() return M.time end
-- simulate another script's error killing the game's shared timer chain
function M.kill_shared_timer()
    M.shared_timer_dead = true
    for name, cb in pairs(M.repeat_cbs) do if cb.shared then M.repeat_cbs[name] = nil end end
end
function bm:callback(fn, ms, name) M.repeat_cbs[name or tostring(fn)] = { fn = fn, once = true, next = M.time + ms / 1000 } end
function bm:real_callback(fn, ms, name) M.real_cbs[name or tostring(fn)] = { fn = fn, next = M.time + ms / 1000 } end
function bm:remove_real_callback(name) M.real_cbs[name] = nil end
function bm:repeat_real_callback(fn, ms, name)
    M.real_cbs[name or tostring(fn)] = { fn = fn, next = M.time + ms / 1000, every = ms / 1000 }
end
-- simulate every game-model timer stopping (only UI timers keep running)
function M.kill_model_timers()
    M.shared_timer_dead = true
    for name in pairs(M.repeat_cbs) do M.repeat_cbs[name] = nil end
end
function bm:remove_process(name) M.repeat_cbs[name] = nil end
function bm:register_phase_change_callback(phase, fn) M.phase_cbs[phase] = M.phase_cbs[phase] or {}; table.insert(M.phase_cbs[phase], fn) end
function bm:is_tutorial() return false end
function bm:is_replay() return false end
function bm:is_multiplayer() return M.multiplayer or false end
M.commands = {}
function bm:register_command_handler_callback(name, fn, cbname) M.commands[name] = M.commands[name] or {}; table.insert(M.commands[name], fn) end
function bm:unregister_command_handler_callback(name, cbname) M.commands[name] = nil end
function M.player_command(name, units)
    M.selection = units
    for _, fn in ipairs(M.commands[name] or {}) do M.in_ctx("model", fn, { get_name = function() return name end }) end
end

core = {}
function core:add_listener(name, event, cond, cb, persistent)
    M.listeners[#M.listeners + 1] = { name = name, event = event, cond = cond, cb = cb }
end
function core:remove_listener(name)
    local keep = {}
    for _, l in ipairs(M.listeners) do if l.name ~= name then keep[#keep + 1] = l end end
    M.listeners = keep
end
local UI = {}
UI.__index = UI
local function newui(name) return setmetatable({ name = name, children = {} }, UI) end
function UI:CreateComponent(name) self.children[name] = newui(name); return self.children[name] end
function UI:SetStateText(t) M.last_toast = t end
function UI:SetVisible() end
function UI:RegisterTopMost() end
function UI:RemoveTopMost() end
local ui_root = newui("root")
function core:get_ui_root() return ui_root end
function find_uicomponent(parent, name)
    if parent.children[name] then return parent.children[name] end
    if name == "text_child" then parent.children[name] = newui(name); return parent.children[name] end
    return nil
end
function out(s) M.log[#M.log + 1] = s end

-- driving -------------------------------------------------------------------------------
-- Which kind of callback is running: "model" (game-clock timers, phase changes, commands)
-- or "ui" (real timers, UI events such as shortcuts). The real game only allows UI context
-- objects (cco) from the UI side and game-model queries from the model side; the mock
-- raises an error on a violation so the tests catch it.
M.ctx = nil
local function in_ctx(ctx, fn, ...)
    local prev = M.ctx
    M.ctx = ctx
    local ok, err = pcall(fn, ...)
    M.ctx = prev
    if not ok then error(err, 0) end
end
M.in_ctx = in_ctx

function M.phase(name)
    for _, fn in ipairs(M.phase_cbs[name] or {}) do in_ctx("model", fn) end
end

function M.shortcut(str)
    for _, l in ipairs(M.listeners) do
        if l.event == "ShortcutTriggered" and l.cond({ string = str }) then in_ctx("ui", l.cb, { string = str }) end
    end
end

function M.advance(seconds, dt)
    dt = dt or 0.25
    local stop = M.time + seconds
    while M.time < stop - 1e-9 do
        M.time = M.time + dt
        for _, al in ipairs(M.alliances) do
            for _, ar in ipairs(al.army_list) do
                if ar.reserve > 0 and ar.winds < 50 then
                    local add = math.min(0.5 * dt, ar.reserve)
                    ar.winds = ar.winds + add
                    ar.reserve = ar.reserve - add
                end
                for _, u in ipairs(ar.unit_list) do
                    for _, a in ipairs(u.abilities) do
                        if a.active_left > 0 then a.active_left = math.max(0, a.active_left - dt) end
                        if a.cooldown_left > 0 then a.cooldown_left = math.max(0, a.cooldown_left - dt) end
                    end
                end
            end
        end
        if M.simulate then M.sim_step(dt) end
        for name, cb in pairs(M.repeat_cbs) do
            if M.time + 1e-9 >= cb.next then
                if cb.once then M.repeat_cbs[name] = nil else cb.next = cb.next + cb.every end
                in_ctx("model", cb.fn)
            end
        end
        for name, cb in pairs(M.real_cbs) do
            if M.time + 1e-9 >= cb.next then
                if cb.every then cb.next = cb.next + cb.every else M.real_cbs[name] = nil end
                in_ctx("ui", cb.fn)
            end
        end
    end
end

-- very small battle simulation: move to targets, fight, rout
local function all_units()
    local r = {}
    for ai, al in ipairs(M.alliances) do
        for _, ar in ipairs(al.army_list) do
            for _, u in ipairs(ar.unit_list) do u.side_i = ai; r[#r + 1] = u end
        end
    end
    return r
end
local function udist(a, b) return math.sqrt((a.x - b.x) ^ 2 + (a.z - b.z) ^ 2) end
function M.sim_step(dt)
    local units = all_units()
    for _, u in ipairs(units) do
        if u.men > 0 then
            if u.routing then
                u.z = u.z + (u.side_i == 1 and -1 or 1) * 4 * dt; u.melee = false; u.target = nil; u.idle = false
            else
                local t = u.target
                if t and (t.men <= 0 or t.routing) then u.target = nil; u.melee = false; u.idle = true; u.moving = false; t = nil end
                if t then
                    local d = udist(u, t)
                    if d > 6 then
                        local sp = (u.speed or 4) * dt
                        u.x = u.x + (t.x - u.x) / d * math.min(sp, d - 5)
                        u.z = u.z + (t.z - u.z) / d * math.min(sp, d - 5)
                        u.moving = true; u.melee = false
                    else
                        u.moving = false; u.melee = true
                        if not t.target then t.target = u; t.idle = false end
                        t.melee = true
                    end
                end
            end
        end
    end
    for _, u in ipairs(units) do
        if u.melee and u.target and u.target.men > 0 then
            local cat = (MOCK.catalog and MOCK.catalog.units[u.type_key]) or {}
            local dmg = ((cat.mcp or 400) / 1000) * 0.02 * dt
            local t = u.target
            t.hp = math.max(0, t.hp - dmg)
            if t.hp < 0.25 and not t.routing then t.routing = true; t.melee = false; t.target = nil end
        end
    end
    -- enemy AI: idle enemies attack the nearest player unit within 150 m
    for _, u in ipairs(units) do
        if u.side_i == 2 and u.men > 0 and not u.routing and not u.target then
            local best, bd
            for _, f in ipairs(units) do
                if f.side_i == 1 and f.men > 0 and not f.routing then
                    local d = udist(u, f)
                    if d < 150 and (not bd or d < bd) then best, bd = f, d end
                end
            end
            if best then u.target = best; u.idle = false end
        end
    end
end

function M.casts(filter)
    local r = {}
    for _, e in ipairs(M.events) do
        if e.kind == "cast" and (not filter or string.find(e.key, filter, 1, true)) then r[#r + 1] = e end
    end
    return r
end

function M.reset_events() M.events = {} end

function M.attacks(by)
    local r = {}
    for _, e in ipairs(M.events) do
        if e.kind == "attack" and (not by or e.by == by) then r[#r + 1] = e end
    end
    return r
end

-- game-model queries are not allowed from UI callbacks
local function guard_model(tbl, label)
    for k, fn in pairs(tbl) do
        if type(fn) == "function" and k:sub(1, 2) ~= "__" then
            tbl[k] = function(...)
                if M.ctx == "ui" then error("game-model call " .. label .. ":" .. k .. " from a UI callback", 2) end
                return fn(...)
            end
        end
    end
end
guard_model(UnitMT, "unit")
guard_model(ArmyMT, "army")
for _, k in ipairs({ "time_elapsed_ms", "get_player_alliance", "get_non_player_alliance", "get_player_army", "local_army", "local_alliance" }) do
    local fn = bm[k]
    bm[k] = function(...)
        if M.ctx == "ui" then error("game-model call bm:" .. k .. " from a UI callback", 2) end
        return fn(...)
    end
end

return M

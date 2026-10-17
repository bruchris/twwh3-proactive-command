"""Run proactive_command.lua against the mock battle with real Lua 5.1 (lupa).

    python run_tests.py            # all scenarios
    python run_tests.py -v         # also print the mod's log
"""
import os
import sys
import tempfile

from lupa import lua51

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
MOD = os.path.join(ROOT, "mod_src", "script", "battle", "mod", "proactive_command.lua")
CATALOG = os.environ.get("PC_CATALOG", os.path.join(HERE, "test_catalog.lua"))

COMMON = r"""
M = MOCK
player = M.add_alliance()
enemy = M.add_alliance()
P = M.add_army(player, { player = true, winds = 30, reserve = 40 })
E = M.add_army(enemy, {})
function setup_done()
    dofile_mod()
    M.phase("Deployed")
end
function names(list)
    local t = {}
    for _, e in ipairs(list) do t[#t + 1] = string.format("%.1f:%s>%s(%s)", e.t, e.key:gsub("^wh%d?_[%w]+_", ""), e.target or "?", e.how) end
    return table.concat(t, " ")
end
function expect(cond, msg) if not cond then error("EXPECTATION FAILED: " .. msg, 2) end end
"""

SCENARIOS = {}


def scenario(fn):
    SCENARIOS[fn.__name__] = fn.__doc__
    return fn


@scenario
def melee_self_buff():
    """
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 0, z = 0,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 },
                      { key = "wh_main_item_abilities_potion_of_strength", cd = 60, dur = 33, uses = 1 },
                      { key = "wh2_dlc14_lord_abilities_tzarkan_spite_mp", cd = 0, dur = 0 } } })
    local en = M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 40 })
    setup_done()
    M.advance(5)
    expect(#M.casts() == 0, "no casts out of melee, got " .. names(M.casts()))
    kf.melee = true; en.melee = true
    M.advance(4)
    expect(#M.casts("sword_of_anti_heroes") == 1, "sword in melee: " .. names(M.casts()))
    expect(#M.casts("potion_of_strength") == 1, "potion in melee: " .. names(M.casts()))
    expect(#M.casts("tzarkan") == 0, "never transforms")
    expect(M.casts("sword")[1].how == "cco", "self buff uses PerformAbilityForOwner")
    M.advance(30)
    expect(#M.casts("sword_of_anti_heroes") == 1, "no recast while active/cooldown")
    """


@scenario
def charge_buff():
    """
    local cav = M.add_unit(P, { name = "daemon", type = "wh_main_emp_cav_reiksguard", x = 0, z = 0,
        abilities = { { key = "wh3_main_daemon_legs_abilities_daemonic_onslaught", cd = 90, dur = 34 } } })
    local en = M.add_unit(E, { name = "furies", type = "wh3_main_kho_inf_chaos_furies_0", x = 0, z = 50 })
    setup_done()
    M.advance(3)
    expect(#M.casts() == 0, "not charging yet")
    cav.moving = true; cav.moving_fast = true; cav.target = en
    M.advance(2)
    expect(#M.casts("daemonic_onslaught") == 1, "charge buff while charging: " .. names(M.casts()))
    """


@scenario
def fire_wizard_targets():
    """
    local wiz = M.add_unit(P, { name = "fire_wizard", type = "wh_main_emp_cha_wizard_fire_0", men = 1, is_character = true, x = 0, z = 0,
        abilities = { { key = "wh_main_spell_fire_fireball", mana = 5, cd = 29, dur = 0, targeted = true },
                      { key = "wh_main_spell_fire_fireball_upgraded", mana = 9, cd = 29, dur = 0, targeted = true },
                      { key = "wh_main_spell_fire_the_burning_head", mana = 10, cd = 37, dur = 20, targeted = true } } })
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 60, melee = true })
    local en1 = M.add_unit(E, { name = "warriors_in_melee", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 70, melee = true })
    local en2 = M.add_unit(E, { name = "bloodletters_far", type = "wh3_main_kho_inf_bloodletters_0", x = 120, z = 150 })
    setup_done()
    M.advance(10)
    local c = M.casts()
    expect(#M.casts("upgraded") == 0, "never overcasts by default")
    for _, e in ipairs(M.casts("burning_head")) do
        expect(e.target ~= "warriors_in_melee", "burning head must not hit the melee next to own swordsmen")
    end
    for _, e in ipairs(M.casts("fireball")) do
        expect(e.target ~= "warriors_in_melee", "fireball must avoid the engaged target (friendly fire): " .. names(c))
    end
    expect(#c >= 1, "wizard should cast something at the free target: " .. names(c))
    """


@scenario
def comet_friendly_fire():
    """
    local wiz = M.add_unit(P, { name = "heavens_wizard", type = "wh_main_emp_cha_wizard_heavens_0", men = 1, is_character = true, x = 0, z = 0,
        abilities = { { key = "wh_main_spell_heavens_comet_of_casandora", mana = 13, cd = 49, dur = 7, targeted = true } } })
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 100, melee = true })
    local blob = {}
    for i = 1, 3 do blob[i] = M.add_unit(E, { name = "blob" .. i, type = "wh3_main_kho_inf_chaos_warriors_0", x = (i - 2) * 15, z = 110, melee = true }) end
    setup_done()
    M.advance(8)
    expect(#M.casts("comet") == 0, "comet must not be dropped on the engaged blob: " .. names(M.casts()))
    -- a second, standing enemy blob far from own units
    for i = 1, 3 do M.add_unit(E, { name = "far" .. i, type = "wh3_main_kho_inf_bloodletters_0", x = 150 + (i - 2) * 12, z = 120 }) end
    M.advance(6)
    local c = M.casts("comet")
    expect(#c == 1 and string.find(c[1].target, "far", 1, true), "comet on the free standing blob: " .. names(M.casts()))
    """


@scenario
def winds_budget():
    """
    P.winds = 20; P.reserve = 0
    local w1 = M.add_unit(P, { name = "wiz1", type = "wh_main_emp_cha_wizard_fire_0", men = 1, is_character = true, x = 0, z = 0,
        abilities = { { key = "wh_main_spell_fire_fireball", mana = 5, cd = 10, dur = 0, targeted = true } } })
    local w2 = M.add_unit(P, { name = "wiz2", type = "wh_main_emp_cha_wizard_heavens_0", men = 1, is_character = true, x = 10, z = 0,
        abilities = { { key = "wh_main_spell_death_spirit_leech", mana = 8, cd = 10, dur = 13, targeted = true } } })
    local lord = M.add_unit(E, { name = "enemy_lord", type = "wh_main_emp_cha_karl_franz_0", men = 1, x = 0, z = 90 })
    for i = 1, 3 do M.add_unit(E, { name = "inf" .. i, type = "wh3_main_kho_inf_chaos_warriors_0", x = i * 30, z = 140 }) end
    setup_done()
    M.advance(60)
    local c = M.casts()
    local last = -100
    for _, e in ipairs(c) do
        expect(e.t - last >= 3.9, "spells must be spaced: " .. names(c))
        last = e.t
    end
    expect(#c >= 2, "should still cast: " .. names(c))
    expect(P.winds >= 0, "never negative")
    print("   winds left: " .. string.format("%.1f", P.winds) .. "  casts: " .. names(c))
    expect(P.winds >= 3, "keeps a reserve of winds (got " .. P.winds .. ")")
    """


@scenario
def area_buff_and_hex():
    """
    local wiz = M.add_unit(P, { name = "wizard", type = "wh_main_emp_cha_wizard_fire_0", men = 1, is_character = true, x = 0, z = 0,
        abilities = { { key = "wh_main_spell_fire_flaming_sword_of_rhuin", mana = 7, cd = 44, dur = 28, targeted = true },
                      { key = "wh_main_spell_metal_plague_of_rust", mana = 4, cd = 28, dur = 44, targeted = true } } })
    local a = M.add_unit(P, { name = "sw1", type = "wh_main_emp_inf_swordsmen", x = 0, z = 60, melee = true })
    local b = M.add_unit(P, { name = "sw2", type = "wh_main_emp_inf_swordsmen", x = 20, z = 60, melee = true })
    local e1 = M.add_unit(E, { name = "armoured", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 70, melee = true })
    local e2 = M.add_unit(E, { name = "unarmoured", type = "wh3_main_kho_inf_chaos_furies_0", x = 20, z = 70, melee = true })
    setup_done()
    M.advance(12)
    local c = M.casts()
    expect(#M.casts("flaming_sword") == 1, "area buff on the melee: " .. names(c))
    local rust = M.casts("plague_of_rust")
    expect(#rust == 1 and rust[1].target == "armoured", "plague of rust on the armoured enemy: " .. names(c))
    """


@scenario
def player_aiming_and_modes():
    """
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 0, z = 0, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    local en = M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    kf.abilities[1].aiming = true
    setup_done()
    M.advance(3)
    expect(#M.casts() == 0, "never acts while the player is aiming an ability of that unit")
    kf.abilities[1].aiming = false
    -- cycle the unit to "off" (full -> off)
    M.selection = { kf }
    M.shortcut("camera_bookmark_save9")
    expect(M.last_toast and string.find(M.last_toast, "Off", 1, true), "toast shows new mode: " .. tostring(M.last_toast))
    M.advance(3)
    expect(#M.casts() == 0, "mode off respected")
    M.shortcut("camera_bookmark_save9") -- abilities
    M.advance(2)
    expect(#M.casts("sword") == 1, "mode abilities casts again: " .. names(M.casts()))
    M.shortcut("camera_bookmark_save10")
    expect(string.find(M.last_toast, "paused", 1, true), "toggle all pauses")
    """


@scenario
def summon_when_threatened():
    """
    local vamp = M.add_unit(P, { name = "necromancer", type = "wh_main_emp_cha_wizard_fire_0", men = 1, is_character = true, x = 0, z = 0,
        abilities = { { key = "wh_main_spell_vampires_raise_dead", mana = 5, cd = 39, dur = 1, uses = 7, targeted = true } } })
    local en = M.add_unit(E, { name = "furies", type = "wh3_main_kho_inf_chaos_furies_0", x = 0, z = 200 })
    setup_done()
    M.advance(5)
    expect(#M.casts() == 0, "no summon without threat")
    en.z = 30; vamp.melee = true; en.melee = true
    M.advance(5)
    local c = M.casts("raise_dead")
    expect(#c == 1 and c[1].how == "ground", "summons on the ground near the caster: " .. names(M.casts()))
    """


@scenario
def restore_orders():
    """
    local wiz = M.add_unit(P, { name = "wizard", type = "wh_main_emp_cha_wizard_fire_0", men = 1, is_character = true, x = 0, z = 0,
        abilities = { { key = "wh_main_spell_death_spirit_leech", mana = 8, cd = 30, dur = 13, targeted = true, stops_caster = true } } })
    local lord = M.add_unit(E, { name = "enemy_lord", type = "wh_main_emp_cha_karl_franz_0", men = 1, x = 0, z = 60 })
    wiz.target = lord; wiz.idle = false
    setup_done()
    M.advance(6)
    expect(#M.casts("spirit_leech") == 1, "spirit leech on the lord: " .. names(M.casts()))
    expect(#M.attacks("wizard") == 1, "re-issued the attack order after the cast stopped the caster")
    """


@scenario
def multiplayer_own_army_only():
    """
    M.multiplayer = true
    local friend_army = M.add_army(player, { player = true, winds = 30, reserve = 0 })  -- the other human's army
    M.local_army = 1
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    local mine = M.add_unit(P, { name = "my_swordsmen", type = "wh_main_emp_inf_swordsmen", x = 40, z = 0 })
    local fk = M.add_unit(friend_army, { name = "friends_karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    local theirs = M.add_unit(friend_army, { name = "friends_swordsmen", type = "wh_main_emp_inf_swordsmen", x = -40, z = 0 })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    M.add_unit(E, { name = "warriors2", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 80 })
    setup_done()
    M.advance(5)
    for _, e in ipairs(M.casts()) do expect(e.by == "karl", "only my own units cast, got " .. e.by) end
    expect(#M.casts() == 1, "my lord still uses his ability")
    expect(#M.attacks("friends_swordsmen") == 0 and #M.attacks("friends_karl") == 0, "never commands the other player's army")
    expect(#M.attacks("my_swordsmen") == 1, "my own units still engage")
    """


@scenario
def multiplayer_second_player():
    """
    M.multiplayer = true
    local host_army = P                                   -- army 1 belongs to the other human
    local my_army = M.add_army(player, { player = true, winds = 30, reserve = 0 })
    M.local_army = 2
    M.add_unit(host_army, { name = "host_karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(host_army, { name = "host_swordsmen", type = "wh_main_emp_inf_swordsmen", x = -40, z = 0 })
    M.add_unit(my_army, { name = "my_karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(my_army, { name = "my_swordsmen", type = "wh_main_emp_inf_swordsmen", x = 40, z = 0 })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    M.add_unit(E, { name = "warriors2", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 80 })
    setup_done()
    M.advance(5)
    expect(#M.casts() == 1 and M.casts()[1].by == "my_karl", "the second player's copy casts only for its own lord")
    expect(#M.attacks("host_swordsmen") == 0 and #M.attacks("host_karl") == 0, "leaves the host's army alone")
    expect(#M.attacks("my_swordsmen") == 1, "the second player's units engage")
    """


@scenario
def multiplayer_switched_off():
    """
    M.multiplayer = true
    local f = io.open("proactive_command_config.lua", "w"); f:write("return { allow_in_multiplayer = false }"); f:close()
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(5)
    expect(#M.casts() == 0 and #M.attacks() == 0, "does nothing in multiplayer when switched off")
    """


@scenario
def reinforcements_included():
    """
    local hero = M.add_unit(P, { name = "reinf_karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    hero.reinforcement = true
    local sw = M.add_unit(P, { name = "reinf_swordsmen", type = "wh_main_emp_inf_swordsmen", x = 40, z = 0 })
    sw.reinforcement = true
    local foe = M.add_unit(E, { name = "reinf_marauders", type = "wh_main_chs_inf_chaos_marauders_0", x = 60, z = 60 })
    foe.reinforcement = true
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(5)
    expect(#M.casts() == 1 and M.casts()[1].by == "reinf_karl", "a reinforcing lord uses his ability")
    expect(#M.attacks("reinf_swordsmen") == 1, "reinforcing units engage")
    """


@scenario
def dev_mode_loose_copy():
    """
    local src = io.open(MOD_PATH):read("*a")
    local dev = src:gsub('local VERSION = "[^"]+"', 'local VERSION = "9.9.9-dev"', 1)
    local f = io.open("pc_dev_copy.lua", "w"); f:write(dev); f:close()
    f = io.open("proactive_command_config.lua", "w"); f:write('return { dev_script_path = "pc_dev_copy.lua" }'); f:close()
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(5)
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("9.9.9-dev", 1, true), "the development copy ran")
    expect(log:find("running the development copy", 1, true), "the log says so")
    expect(#M.casts() == 1, "it works normally, once")
    """


@scenario
def dev_mode_broken_copy_falls_back():
    """
    local f = io.open("pc_dev_copy.lua", "w"); f:write("this is not lua ("); f:close()
    f = io.open("proactive_command_config.lua", "w"); f:write('return { dev_script_path = "pc_dev_copy.lua" }'); f:close()
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(5)
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("using the packed copy", 1, true), "a syntax error falls back to the packed copy")
    expect(#M.casts() == 1, "the packed copy works")
    """


@scenario
def heartbeat_and_pause_logged():
    """
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 200 })
    setup_done()
    M.advance(2)
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("tick 1: 1 of your units under the mod", 1, true), "heartbeat shows how many units the mod controls")
    proactive_command.toggle()
    M.advance(3)
    log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("paused: doing nothing", 1, true), "pausing shows up in the log right away")
    M.advance(10)
    log = io.open("proactive_command_log.txt"):read("*a")
    expect(not log:find("summary", 1, true), "no summaries while paused")
    proactive_command.toggle()
    M.advance(12)
    log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("summary", 1, true), "summaries resume")
    """


@scenario
def survives_shared_timer_dying():
    """
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 20, dur = 5 } } })
    local en = M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(1.5)
    M.kill_shared_timer()                 -- another mod's callback errors at 1.5 s
    M.advance(60)
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("timers: game-clock engine on, game-clock shared on, ui on", 1, true), "all three timers are started")
    expect(log:find("tick 3:", 1, true), "ticks keep coming on the engine timer")
    expect(#M.casts() >= 2, "the lord keeps casting after the shared timer died (" .. #M.casts() .. ")")
    local n = 0
    for _ in log:gmatch("summary:") do n = n + 1 end
    expect(n >= 2, "summaries keep coming")
    """


@scenario
def model_timers_dying_is_reported():
    """
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 20, dur = 5 } } })
    local en = M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(1.5)
    M.kill_model_timers()                 -- both game-clock timers stop
    M.advance(10)                         -- the UI side keeps running but never queries the game model
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("no game-clock tick for 4 s", 1, true), "a stall is reported in the log")
    """


@scenario
def ui_and_model_sides_stay_separate():
    """
    -- the mock raises an error if a UI context object is used from a game-clock callback or the
    -- game model is queried from a UI callback; a full battle with casts, engagements, hotkeys
    -- and player orders must run without a single such error
    M.simulate = true
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true, x = 0, z = 0,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 30, dur = 10 } } })
    local wiz = M.add_unit(P, { name = "wizard", type = "wh_main_emp_cha_wizard_fire_0", men = 1, is_character = true, x = -30, z = -20,
        abilities = { { key = "wh_main_spell_fire_fireball", targeted = true, mana = 6, cd = 15 } } })
    local cav = M.add_unit(P, { name = "reiksguard", type = "wh_main_emp_cav_reiksguard", x = 60, z = 0 })
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 20, z = 0 })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 60 })
    M.add_unit(E, { name = "warriors2", type = "wh3_main_kho_inf_chaos_warriors_0", x = 50, z = 80 })
    M.add_unit(E, { name = "archers", type = "wh3_main_kho_inf_marauder_archers", x = 90, z = 140 })
    setup_done()
    M.advance(5)
    M.selection = { sw }
    M.shortcut("camera_bookmark_save9")   -- cycle mode of the selected unit (UI event)
    M.player_command("Move", { sw })      -- player order (model-side command handler)
    M.advance(30)
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(not log:find("ERROR", 1, true), "no errors at all: " .. log)
    expect(#M.casts() >= 1, "abilities are cast (" .. #M.casts() .. ")")
    expect(#M.attacks() >= 1, "units engage (" .. #M.attacks() .. ")")
    """


@scenario
def debug_bisect_steps():
    """
    local f = io.open("proactive_command_config.lua", "w"); f:write("return { debug_bisect = true }"); f:close()
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 20, dur = 5 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(45)
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("bisect 1/", 1, true), "bisect starts")
    expect(log:find("bisect finished", 1, true), "bisect runs through all steps")
    expect(log:find("status: ticks=", 1, true), "status lines from the UI side")
    expect(#M.casts() >= 1, "normal ticks afterwards (casts " .. #M.casts() .. ")")
    """


@scenario
def no_double_ticks():
    """
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 300 })
    setup_done()
    M.advance(30)
    expect(math.abs(proactive_command.state.now - 30) <= 1.5, "one tick per second with two timers, now=" .. tostring(proactive_command.state.now))
    """


@scenario
def vortex_path_safety():
    """
    local wiz = M.add_unit(P, { name = "death_wizard", type = "wh_main_emp_cha_wizard_fire_0", men = 1, is_character = true, x = 0, z = 0,
        abilities = { { key = "wh_main_spell_death_the_purple_sun_of_xereus", mana = 18, cd = 54, dur = 11, targeted = true } } })
    local blob = {}
    for i = 1, 3 do blob[i] = M.add_unit(E, { name = "blob" .. i, type = "wh3_main_kho_inf_chaos_warriors_0", x = (i - 2) * 12, z = 100 }) end
    -- own cavalry flanking just behind the enemy blob, on the vortex's path
    local cav = M.add_unit(P, { name = "reiksguard", type = "wh_main_emp_cav_reiksguard", x = 0, z = 130 })
    setup_done()
    M.advance(6)
    expect(#M.casts("purple_sun") == 0, "no vortex when own cavalry is on its path: " .. names(M.casts()))
    cav.x = 200; cav.z = 0
    M.advance(3)
    expect(#M.casts("purple_sun") == 1, "vortex once the path is clear: " .. names(M.casts()))
    """


@scenario
def user_config_file():
    """
    local f = io.open("proactive_command_config.lua", "w")
    f:write("return { default_mode_characters = 'off', log_level = 2 }")
    f:close()
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(4)
    expect(#M.casts() == 0, "characters off via user config")
    expect(proactive_command.config.log_level == 2, "config applied")
    """


@scenario
def engage_guard_and_leash():
    """
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 0 })
    local gd = M.add_unit(P, { name = "guarded", type = "wh_main_emp_inf_swordsmen", x = 40, z = 0, guard = true })
    local en = M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 400 })
    setup_done()
    M.advance(5)
    expect(#M.attacks() == 0, "no charge across the map at battle start: " .. #M.attacks())
    en.z = 90
    M.advance(2)
    expect(#M.attacks("swordsmen") == 1, "idle unit engages an enemy that comes within range")
    expect(#M.attacks("guarded") == 0, "guard mode holds position")
    """


@scenario
def engage_unlimited_reach_after_contact():
    """
    -- a fight far to the left starts the battle; our cavalry far to the right has nothing nearby
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = -300, z = 0, melee = true })
    local cav = M.add_unit(P, { name = "reiksguard", type = "wh_main_emp_cav_reiksguard", x = 300, z = 0 })
    local hurt = M.add_unit(P, { name = "hurt_cav", type = "wh_main_emp_cav_reiksguard", x = 320, z = 0, hp = 0.2 })
    local foe = M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = -300, z = 10, melee = true })
    local far = M.add_unit(E, { name = "archers", type = "wh3_main_kho_inf_marauder_archers", x = 300, z = 650 })
    setup_done()
    M.advance(3)
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("contact: the fighting has started", 1, true), "first contact is detected")
    local a = M.attacks("reiksguard")
    expect(#a >= 1, "healthy cavalry goes for a target far outside its old 180 m reach")
    expect(#M.attacks("hurt_cav") == 0, "a unit below 25% health stays out")
    """


@scenario
def engage_unlimited_off():
    """
    local f = io.open("proactive_command_config.lua", "w"); f:write("return { engage_unlimited = false }"); f:close()
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = -300, z = 0, melee = true })
    local cav = M.add_unit(P, { name = "reiksguard", type = "wh_main_emp_cav_reiksguard", x = 300, z = 0 })
    local foe = M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = -300, z = 10, melee = true })
    local far = M.add_unit(E, { name = "archers", type = "wh3_main_kho_inf_marauder_archers", x = 300, z = 650 })
    setup_done()
    M.advance(3)
    expect(#M.attacks("reiksguard") == 0, "with engage_unlimited = false the 180 m reach applies")
    """


@scenario
def engage_matchups():
    """
    local sp = M.add_unit(P, { name = "spearmen", type = "wh_main_emp_inf_spearmen_0", x = 0, z = 0 })
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 30, z = 0 })
    local cav = M.add_unit(P, { name = "reiksguard", type = "wh_main_emp_cav_reiksguard", x = -80, z = 0 })
    local ek = M.add_unit(E, { name = "chaos_knights", type = "wh3_main_kho_cav_chaos_knights_0", x = 0, z = 80 })
    local ei = M.add_unit(E, { name = "bloodletters", type = "wh3_main_kho_inf_bloodletters_0", x = 30, z = 80 })
    local es = M.add_unit(E, { name = "enemy_spears", type = "wh3_main_kho_inf_chaos_warriors_spears", x = -60, z = 90 })
    local ea = M.add_unit(E, { name = "archers", type = "wh3_main_kho_inf_marauder_archers", x = 60, z = 150 })
    setup_done()
    M.advance(2)
    local function target_of(n) local a = M.attacks(n); return a[1] and a[1].target end
    expect(target_of("spearmen") == "chaos_knights", "spears take the cavalry, got " .. tostring(target_of("spearmen")))
    expect(target_of("swordsmen") == "bloodletters", "swordsmen take the infantry, got " .. tostring(target_of("swordsmen")))
    expect(target_of("reiksguard") ~= "enemy_spears", "cavalry avoids fresh spears, got " .. tostring(target_of("reiksguard")))
    print("   reiksguard -> " .. tostring(target_of("reiksguard")))
    """


@scenario
def engage_spread_and_focus():
    """
    local a = {}
    for i = 1, 4 do a[i] = M.add_unit(P, { name = "sw" .. i, type = "wh_main_emp_inf_swordsmen", x = (i - 2.5) * 30, z = 0 }) end
    local e1 = M.add_unit(E, { name = "furies1", type = "wh3_main_kho_inf_chaos_furies_0", x = -30, z = 70 })
    local e2 = M.add_unit(E, { name = "furies2", type = "wh3_main_kho_inf_chaos_furies_0", x = 30, z = 70 })
    setup_done()
    M.advance(2)
    local count = {}
    for _, e in ipairs(M.attacks()) do count[e.target] = (count[e.target] or 0) + 1 end
    print("   furies1=" .. tostring(count.furies1) .. " furies2=" .. tostring(count.furies2))
    expect((count.furies1 or 0) >= 1 and (count.furies2 or 0) >= 1, "splits over both enemies")
    expect((count.furies1 or 0) <= 3 and (count.furies2 or 0) <= 3, "no pile-up")
    """


@scenario
def engage_support_and_intercept():
    """
    local hurt = M.add_unit(P, { name = "hurt_swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 0, melee = true, idle = false })
    hurt.hp = 0.3; hurt.wavering = true
    local xb = M.add_unit(P, { name = "crossbows", type = "wh_main_emp_inf_crossbowmen", x = 120, z = -40, guard = true })
    local helper = M.add_unit(P, { name = "helper", type = "wh_main_emp_inf_swordsmen", x = 60, z = 0 })
    local cav = M.add_unit(P, { name = "reiksguard", type = "wh_main_emp_cav_reiksguard", x = 140, z = 40, speed = 8 })
    local presser = M.add_unit(E, { name = "presser", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 10, melee = true })
    hurt.target = presser; presser.target = hurt
    local fresh = M.add_unit(E, { name = "fresh", type = "wh3_main_kho_inf_chaos_warriors_0", x = 60, z = 80 })
    local raider = M.add_unit(E, { name = "raider", type = "wh3_main_kho_inf_chaos_furies_0", x = 140, z = 0, moving = true, moving_fast = true })
    raider.target = xb
    setup_done()
    M.advance(2)
    local function target_of(n) local a = M.attacks(n); return a[1] and a[1].target end
    expect(target_of("helper") == "presser", "helper supports the friend in trouble, got " .. tostring(target_of("helper")))
    expect(target_of("reiksguard") == "raider", "cavalry intercepts the unit running at the crossbows, got " .. tostring(target_of("reiksguard")))
    """


@scenario
def engage_casters_and_hurt_stay():
    """
    local wiz = M.add_unit(P, { name = "wizard", type = "wh_main_emp_cha_wizard_fire_0", men = 1, is_character = true, magic = true, x = 0, z = 0 })
    local hurt = M.add_unit(P, { name = "hurt", type = "wh_main_emp_inf_swordsmen", x = 30, z = 0 })
    hurt.hp = 0.15
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = -30, z = 0 })
    local en = M.add_unit(E, { name = "furies", type = "wh3_main_kho_inf_chaos_furies_0", x = 0, z = 50 })
    setup_done()
    M.advance(2)
    expect(#M.attacks("wizard") == 0, "casters keep their distance")
    expect(#M.attacks("hurt") == 0, "badly hurt units stay out")
    expect(#M.attacks("karl") == 1, "melee lord joins the fight")
    """


@scenario
def engage_player_grace():
    """
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 0 })
    local en = M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 400 })
    setup_done()
    M.advance(3)
    M.player_command("Move", { sw })   -- player moves the unit forward; it arrives idle
    en.z = 80
    M.advance(5)
    expect(#M.attacks("swordsmen") == 0, "respects the grace period after a player order")
    M.advance(5)
    expect(#M.attacks("swordsmen") == 1, "acts on its own after the grace period")
    """


@scenario
def engage_ranged_no_friendly_fire():
    """
    local xb = M.add_unit(P, { name = "crossbows", type = "wh_main_emp_inf_crossbowmen", x = 0, z = 0, missile_range = 160, ammo = 20 })
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 100, melee = true, idle = false })
    local e1 = M.add_unit(E, { name = "in_melee", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 108, melee = true })
    local e2 = M.add_unit(E, { name = "free", type = "wh3_main_kho_inf_bloodletters_0", x = 70, z = 120 })
    local e3 = M.add_unit(E, { name = "too_far", type = "wh3_main_kho_inf_bloodletters_0", x = 0, z = 300 })
    setup_done()
    M.advance(2)
    local a = M.attacks("crossbows")
    expect(#a == 1 and a[1].target == "free", "shoots the free target in range: " .. tostring(a[1] and a[1].target))
    expect(a[1].fast == false, "missile units don't run")
    """


@scenario
def engage_no_infantry_chase():
    """
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 0 })
    local cav = M.add_unit(P, { name = "reiksguard", type = "wh_main_emp_cav_reiksguard", x = 40, z = 0 })
    local r = M.add_unit(E, { name = "routing", type = "wh3_main_kho_inf_bloodletters_0", x = 0, z = 60 })
    r.routing = true
    setup_done()
    M.advance(2)
    expect(#M.attacks("swordsmen") == 0, "infantry doesn't chase routers")
    expect(#M.attacks("reiksguard") == 1, "cavalry rides them down")
    """


@scenario
def engage_full_battle_sim():
    """
    MOCK.catalog = dofile(CATALOG_PATH)
    M.simulate = true
    local mine = {
        { "sw1", "wh_main_emp_inf_swordsmen", -60, 0 }, { "sw2", "wh_main_emp_inf_swordsmen", -20, 0 },
        { "sp1", "wh_main_emp_inf_spearmen_0", 20, 0 }, { "sp2", "wh_main_emp_inf_spearmen_0", 60, 0 },
        { "xb1", "wh_main_emp_inf_crossbowmen", -20, -40 }, { "xb2", "wh_main_emp_inf_crossbowmen", 20, -40 },
        { "rg1", "wh_main_emp_cav_reiksguard", -120, -20 }, { "kf", "wh_main_emp_cha_karl_franz_0", 0, -20 },
    }
    for _, d in ipairs(mine) do
        local def = { name = d[1], type = d[2], x = d[3], z = d[4] }
        if d[1]:sub(1, 2) == "xb" then def.missile_range = 160; def.ammo = 20 end
        if d[1] == "rg1" then def.speed = 8 end
        if d[1] == "kf" then def.men = 1; def.is_character = true end
        M.add_unit(P, def)
    end
    local theirs = {
        { "cw1", "wh3_main_kho_inf_chaos_warriors_0", -40, 260 }, { "cw2", "wh3_main_kho_inf_chaos_warriors_0", 0, 260 },
        { "bl1", "wh3_main_kho_inf_bloodletters_0", 40, 260 }, { "ck1", "wh3_main_kho_cav_chaos_knights_0", 120, 240 },
        { "ma1", "wh3_main_kho_inf_marauder_archers", 0, 300 }, { "sk1", "wh3_main_kho_mon_spawn_of_khorne_0", -100, 250 },
    }
    for _, d in ipairs(theirs) do
        local def = { name = d[1], type = d[2], x = d[3], z = d[4] }
        if d[1] == "ck1" then def.speed = 8 end
        local u = M.add_unit(E, def)
        u.target_point = true
    end
    setup_done()
    -- enemy advances
    for step = 1, 20 do
        for _, u in ipairs(E.unit_list) do if not u.target then u.z = u.z - 8 end end
        M.advance(1)
    end
    M.advance(90)
    local per_unit = {}
    for _, e in ipairs(M.attacks()) do per_unit[e.by] = (per_unit[e.by] or 0) + 1 end
    local parts = {}
    for k, v in pairs(per_unit) do parts[#parts + 1] = k .. "=" .. v end
    table.sort(parts)
    print("   orders per unit: " .. table.concat(parts, " "))
    local first = {}
    for _, e in ipairs(M.attacks()) do if not first[e.by] then first[e.by] = e.target end end
    print("   first targets: sp1->" .. tostring(first.sp1) .. " sp2->" .. tostring(first.sp2) .. " rg1->" .. tostring(first.rg1) .. " kf->" .. tostring(first.kf))
    for k, v in pairs(per_unit) do expect(v <= 12, "no order thrashing for " .. k .. " (" .. v .. ")") end
    local routed = 0
    for _, u in ipairs(E.unit_list) do if u.routing then routed = routed + 1 end end
    print("   enemy units routed: " .. routed .. "/" .. #E.unit_list)
    """


def run(name, body, verbose):
    lua = lua51.LuaRuntime(unpack_returned_tuples=True)
    workdir = tempfile.mkdtemp(prefix="pc_")
    os.chdir(workdir)  # the mod writes its log relative to the working directory
    lua.execute('package.preload["pc_catalog"] = function() return dofile(%r) end' % CATALOG)
    lua.execute("dofile(%r)" % os.path.join(HERE, "mock_battle.lua"))
    lua.execute("function dofile_mod() dofile(%r) end" % MOD)
    lua.execute("CATALOG_PATH = %r" % CATALOG)
    lua.execute("MOD_PATH = %r" % MOD)
    lua.execute(COMMON)
    try:
        lua.execute(body)
        status = "PASS"
        err = None
    except Exception as ex:  # lupa.LuaError
        status = "FAIL"
        err = str(ex)
    logf = os.path.join(workdir, "proactive_command_log.txt")
    log = open(logf).read() if os.path.exists(logf) else ""
    print("%-26s %s" % (name, status))
    if err:
        print("   " + err.replace("\n", "\n   "))
    if verbose or err:
        print("   --- log ---")
        print("   " + log.strip().replace("\n", "\n   "))
    return status == "PASS"


def main():
    verbose = "-v" in sys.argv
    only = [a for a in sys.argv[1:] if not a.startswith("-")]
    ok = True
    for name, body in SCENARIOS.items():
        if only and name not in only:
            continue
        ok = run(name, body, verbose) and ok
    print("ALL PASSED" if ok else "SOME FAILED")
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())

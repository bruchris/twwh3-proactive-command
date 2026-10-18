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
CAST = os.path.join(ROOT, "mod_src", "script", "battle", "mod", "proactive_command_cast.lua")
CATALOG = os.environ.get("PC_CATALOG", os.path.join(HERE, "test_catalog.lua"))

COMMON = r"""
M = MOCK
player = M.add_alliance()
enemy = M.add_alliance()
P = M.add_army(player, { player = true, winds = 30, reserve = 40 })
E = M.add_army(enemy, {})
function setup_done()
    dofile_mod()
    dofile_cast()
    M.phase("Deployed")
end
function names(list)
    local t = {}
    for _, e in ipairs(list) do t[#t + 1] = string.format("%.1f:%s>%s(%s)", e.t, e.key:gsub("^wh%d?_[%w]+_", ""), e.target or "?", e.how) end
    return table.concat(t, " ")
end
function write_config(extra)
    local f = io.open("proactive_command_config.lua", "w")
    f:write("return { start_grace_seconds = 0, idle_delay = 0, idle_delay_under_attack = 0, cast_start_grace_seconds = 0, auto_cast = true, engage_mode = \"mod\", " .. (extra or "") .. " }")
    f:close()
end
function expect(cond, msg) if not cond then error("EXPECTATION FAILED: " .. msg, 2) end end
"""

SCENARIOS = {}


def scenario(fn):
    SCENARIOS[fn.__name__] = fn.__doc__
    return fn


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
    expect(#M.attacks("host_swordsmen") == 0 and #M.attacks("host_karl") == 0, "leaves the host's army alone")
    expect(#M.attacks("my_swordsmen") == 1, "the second player's units engage")
    """


@scenario
def multiplayer_switched_off():
    """
    M.multiplayer = true
    write_config("allow_in_multiplayer = false")
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(5)
    expect(#M.attacks() == 0 and #M.ai_events("ai_add") == 0, "does nothing in multiplayer when switched off")
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
    expect(#M.attacks("reinf_swordsmen") == 1, "reinforcing units engage")
    """


@scenario
def dev_mode_loose_copy():
    """
    local src = io.open(MOD_PATH):read("*a")
    local dev = src:gsub('local VERSION = "[^"]+"', 'local VERSION = "9.9.9-dev"', 1)
    local f = io.open("pc_dev_copy.lua", "w"); f:write(dev); f:close()
    write_config('dev_script_path = "pc_dev_copy.lua"')
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 40, z = 0 })
    setup_done()
    M.advance(5)
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("9.9.9-dev", 1, true), "the development copy ran")
    expect(log:find("running the development copy", 1, true), "the log says so")
    expect(#M.attacks("swordsmen") == 1, "it works normally, once")
    """


@scenario
def dev_mode_broken_copy_falls_back():
    """
    local f = io.open("pc_dev_copy.lua", "w"); f:write("this is not lua ("); f:close()
    write_config('dev_script_path = "pc_dev_copy.lua"')
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 40, z = 0 })
    setup_done()
    M.advance(5)
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("using the packed copy", 1, true), "a syntax error falls back to the packed copy")
    expect(#M.attacks("swordsmen") == 1, "the packed copy works")
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
def no_double_ticks():
    """
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, melee = true })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 300 })
    setup_done()
    M.advance(30)
    expect(math.abs(proactive_command.state.now - 30) <= 1.5, "one tick per second with two timers, now=" .. tostring(proactive_command.state.now))
    """


@scenario
def user_config_file():
    """
    write_config("default_mode_characters = 'off', log_level = 2")
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
    write_config("engage_unlimited = false")
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
def engage_only_idle_units_after_delay():
    """
    write_config("idle_delay = 6, idle_delay_under_attack = 1.5")
    local idle = M.add_unit(P, { name = "idle_unit", type = "wh_main_emp_inf_swordsmen", x = 0, z = 0 })
    -- carrying out an order of the player (walking somewhere): must never be touched
    local busy = M.add_unit(P, { name = "busy_unit", type = "wh_main_emp_inf_swordsmen", x = 40, z = 0, idle = false, moving = true })
    local shot = M.add_unit(P, { name = "shot_unit", type = "wh_main_emp_inf_swordsmen", x = -40, z = 0, under_fire = true })
    local en = M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 70 })
    setup_done()
    M.advance(4)
    expect(#M.attacks("idle_unit") == 0, "a unit waits for idle_delay before choosing a target")
    expect(#M.attacks("shot_unit") == 1, "a unit that is being shot at reacts after the short delay")
    M.advance(8)
    expect(#M.attacks("idle_unit") == 1, "an idle unit chooses a target after the delay")
    expect(#M.attacks("busy_unit") == 0, "a unit carrying out an order is never given another one")
    """


@scenario
def start_grace_period():
    """
    write_config("start_grace_seconds = 15")
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 0 })
    local en = M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 60 })
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 40, z = 0, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    setup_done()
    M.advance(14)
    expect(#M.attacks() == 0, "no automatic orders during the start grace period: " .. #M.attacks())
    M.advance(4)
    expect(#M.attacks("swordsmen") == 1, "idle units get their orders once the grace period is over")
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("start grace over", 1, true), "the log says when the grace period ends")
    """


@scenario
def units_are_handed_back_to_the_player():
    """
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 0 })
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 40, z = 0, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    local en = M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 60 })
    setup_done()
    M.advance(1.2)
    expect(#M.attacks("swordsmen") == 1, "the unit got an order")
    expect(sw.script_ctrl, "the mod holds the unit right after its order")
    M.advance(5)
    expect(not sw.script_ctrl, "the unit is back under the player's control a moment later")
    expect(#M.releases("swordsmen") >= 1, "release_control was called for the engaging unit")
    expect(not kf.script_ctrl or #M.ai_events("ai_add", "karl") == 0, "lord stays under the player's control")
    """


@scenario
def release_can_be_switched_off():
    """
    write_config("release_control = false")
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 0 })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 60 })
    setup_done()
    M.advance(6)
    expect(#M.attacks("swordsmen") == 1 and #M.releases() == 0, "no release when release_control = false")
    """


@scenario
def engage_retaliates_against_attackers_first():
    """
    -- two cavalry units are charging this unit from 10 m away; a soft target sits far behind them
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 0 })
    local c1 = M.add_unit(E, { name = "charging1", type = "wh_main_emp_cav_reiksguard", x = 0, z = 12, moving = true, moving_fast = true })
    local c2 = M.add_unit(E, { name = "charging2", type = "wh_main_emp_cav_reiksguard", x = 8, z = 14, moving = true, moving_fast = true })
    c1.target = sw; c2.target = sw
    M.add_unit(E, { name = "far_archers", type = "wh_main_emp_inf_crossbowmen", x = 0, z = 330, missile_range = 160, ammo = 20 })
    setup_done()
    M.advance(2)
    local a = M.attacks("swordsmen")
    expect(#a == 1, "the unit picks a target")
    expect(a[1].target == "charging1" or a[1].target == "charging2", "it hits back at what is charging it, got " .. tostring(a[1] and a[1].target))
    """


@scenario
def engage_prefers_near_targets():
    """
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 0 })
    M.add_unit(E, { name = "near", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 45 })
    M.add_unit(E, { name = "far", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 260 })
    setup_done()
    M.advance(2)
    local a = M.attacks("swordsmen")
    expect(#a == 1 and a[1].target == "near", "the nearer equal target wins, got " .. tostring(a[1] and a[1].target))
    """


@scenario
def ai_mode_hands_idle_units_to_the_game_ai():
    """
    write_config('engage_mode = "ai", ai_hold_seconds = 10')
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 0 })
    local busy = M.add_unit(P, { name = "busy", type = "wh_main_emp_inf_swordsmen", x = 40, z = 0, idle = false, moving = true })
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = -40, z = 0 })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 80 })
    setup_done()
    M.advance(3)
    expect(#M.ai_events("ai_add", "swordsmen") == 1, "an idle unit is handed to the game AI")
    expect(#M.ai_events("ai_add", "karl") == 1, "so is an idle lord (the AI also casts for him)")
    expect(#M.ai_events("ai_add", "busy") == 0, "a unit that is moving is never touched")
    expect(#M.ai_events("ai_defend", "swordsmen") == 1, "the AI is told to defend / respond to threats")
    expect(#M.attacks() == 0, "the mod gives no target of its own")
    expect(sw.script_ctrl, "the unit is under AI control")
    M.advance(14)
    expect(#M.ai_events("ai_remove", "swordsmen") == 1, "the unit is taken from the AI after the hold time")
    expect(#M.releases("swordsmen") >= 1, "and control is released")
    expect(not sw.script_ctrl, "the player has it back")
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("AI HANDOVER", 1, true) and log:find("AI RELEASE", 1, true), "the log shows hand-over and release")
    expect(not log:find("ERROR", 1, true), "no errors: " .. log)
    """


@scenario
def ai_mode_attack_order_and_melee_hold():
    """
    write_config('engage_mode = "ai", ai_order = "attack", ai_hold_seconds = 5')
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 0, z = 0 })
    M.add_unit(E, { name = "near", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 60 })
    M.add_unit(E, { name = "far", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 300 })
    setup_done()
    M.advance(3)
    local a = M.ai_events("ai_attack", "swordsmen")
    expect(#a == 1 and a[1].target == "near", "attack order goes to the nearest visible enemy, got " .. tostring(a[1] and a[1].target))
    sw.melee = true
    M.advance(1.5)
    expect(#M.ai_events("ai_remove", "swordsmen") == 0, "not released the moment a fight starts")
    M.advance(3)
    expect(#M.ai_events("ai_remove", "swordsmen") == 1, "released a few seconds into the melee: it keeps fighting, the player has it back")
    expect(not sw.script_ctrl, "and the player can command it again")
    """


@scenario
def ai_mode_player_units_in_guard_or_off_are_left_alone():
    """
    write_config('engage_mode = "ai"')
    local guard = M.add_unit(P, { name = "guard", type = "wh_main_emp_inf_swordsmen", x = 0, z = 0, guard = true })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 60 })
    setup_done()
    M.advance(4)
    expect(#M.ai_events("ai_add") == 0, "guard mode units are never handed to the AI")
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

@scenario
def cast_hands_a_ready_caster_to_the_game_ai():
    """
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 0, z = 0, idle = false, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(3.2)
    expect(#M.ai_events("ai_add", "karl") == 1, "the caster is handed to the game AI")
    M.advance(2)
    expect(#M.ai_events("ai_defend", "karl") == 1, "and told to hold its position")
    expect(#M.casts() == 0, "the mod casts nothing itself")
    expect(kf.script_ctrl, "the unit is with the AI")
    kf.abilities[1]:perform(nil, "ai")             -- what the game AI would do
    M.advance(5)
    expect(#M.ai_events("ai_remove", "karl") == 1, "taken back from the AI after it cast")
    expect(not kf.script_ctrl, "the player has the unit again")
    M.advance(8)
    expect(#M.ai_events("ai_add", "karl") == 1, "not handed over again while the ability is on cooldown")
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("[cast] USED", 1, true) and log:find("while with the game AI", 1, true), "the log shows the use: " .. log)
    expect(log:find("[cast] CAST HOLD", 1, true) and log:find("[cast] RELEASE", 1, true), "hold and release are logged")
    expect(not log:find("ERROR", 1, true), "no errors")
    """


@scenario
def cast_waits_for_a_reason():
    """
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 0, z = 0, idle = false,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    local en = M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 400 })
    setup_done()
    M.advance(5)
    expect(#M.ai_events("ai_add", "karl") == 0, "no enemy near, no hand-over")
    en.z = 20
    kf.moving = true
    M.advance(3)
    expect(#M.ai_events("ai_add", "karl") == 0, "a unit with a move order is left alone")
    kf.moving = false
    kf.abilities[1].aiming = true
    M.advance(3)
    expect(#M.ai_events("ai_add", "karl") == 0, "never while the player is aiming an ability")
    kf.abilities[1].aiming = false
    M.advance(3)
    expect(#M.ai_events("ai_add", "karl") == 1, "handed over once there is a reason")
    """


@scenario
def cast_respects_winds_and_modes():
    """
    local wiz = M.add_unit(P, { name = "wizard", type = "wh_main_emp_cha_wizard_fire_0", men = 1, is_character = true, x = 0, z = 0, idle = false,
        abilities = { { key = "wh_main_spell_fire_fireball", targeted = true, mana = 6, cd = 15 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 60 })
    P.winds = 3
    setup_done()
    M.advance(4)
    expect(#M.ai_events("ai_add", "wizard") == 0, "not enough Winds of Magic for the spell")
    P.winds = 30
    M.selection = { wiz }
    M.shortcut("camera_bookmark_save9")             -- full -> off
    M.advance(3)
    expect(#M.ai_events("ai_add", "wizard") == 0, "a unit set to off is left alone")
    M.shortcut("camera_bookmark_save9")             -- off -> abilities (no spells)
    M.advance(3)
    expect(#M.ai_events("ai_add", "wizard") == 0, "mode 'abilities' does not trigger on spells")
    M.shortcut("camera_bookmark_save9")             -- abilities -> full
    M.advance(3)
    expect(#M.ai_events("ai_add", "wizard") == 1, "full mode: the wizard goes to the game AI")
    """


@scenario
def cast_hold_ends_without_a_cast():
    """
    write_config('cast_hold_seconds = 5')
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 0, z = 0, idle = false, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(3)
    expect(#M.ai_events("ai_add", "karl") == 1, "handed over")
    M.advance(8)
    expect(#M.ai_events("ai_remove", "karl") == 1 and not kf.script_ctrl, "given back when the AI cast nothing")
    M.advance(15)
    expect(#M.ai_events("ai_add", "karl") == 1, "and not taken again straight away")
    M.advance(15)
    expect(#M.ai_events("ai_add", "karl") == 2, "but again after the cool-down")
    """


@scenario
def cast_hotkey_and_pause():
    """
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 0, z = 0, idle = false, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 40, z = 0 })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.shortcut("camera_bookmark_save11")           -- auto-cast off before anything happens
    expect(string.find(M.last_toast, "auto-cast OFF", 1, true), "toast: " .. tostring(M.last_toast))
    M.advance(10)
    expect(#M.ai_events("ai_add", "karl") == 0, "no hand-over while auto-cast is off")
    expect(#M.attacks("swordsmen") + #M.ai_events("ai_add", "swordsmen") >= 1, "idle units still move with auto-cast off")
    M.shortcut("camera_bookmark_save11")
    M.advance(3)
    expect(#M.ai_events("ai_add", "karl") == 1, "hand-over once auto-cast is back on")
    M.shortcut("camera_bookmark_save11")           -- switching off gives the unit back at once
    expect(not kf.script_ctrl, "and switching it off gives the unit back")
    M.shortcut("camera_bookmark_save8")             -- the engage key is a different switch
    expect(string.find(M.last_toast, "auto-engage OFF", 1, true), "toast: " .. tostring(M.last_toast))
    """


@scenario
def cast_and_engage_share_units_politely():
    """
    write_config('engage_mode = "ai"')
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 0, z = 0,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 40 })
    setup_done()
    M.advance(4)
    expect(#M.ai_events("ai_add", "karl") == 1, "an idle lord near an enemy is handed over exactly once (by one script)")
    expect(PROACTIVE_COMMAND_HOLDS[kf.uid] ~= nil, "the hold is registered")
    """


@scenario
def cast_failure_does_not_stop_idle_units():
    """
    local kf = M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 0, z = 0, idle = false,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 40 })
    local sw = M.add_unit(P, { name = "swordsmen", type = "wh_main_emp_inf_swordsmen", x = 40, z = 0 })
    setup_done()
    M.advance(1)
    proactive_command_cast.state.catalog = nil     -- break the casting script on purpose
    proactive_command_cast.state.ab = nil
    M.advance(8)
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("ERROR in cast", 1, true), "the casting script reports its error")
    expect(#M.attacks("swordsmen") + #M.ai_events("ai_add", "swordsmen") >= 1, "idle units keep moving")
    expect(not log:find("ERROR in tick", 1, true), "the main script is not affected")
    """


@scenario
def cast_dev_mode_loose_copy():
    """
    local src = io.open(CAST_PATH):read("*a")
    local dev = src:gsub('local VERSION = "[^"]+"', 'local VERSION = "9.9.9-cast-dev"', 1)
    local f = io.open("pc_cast_dev_copy.lua", "w"); f:write(dev); f:close()
    write_config('dev_cast_script_path = "pc_cast_dev_copy.lua"')
    M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 0, z = 0, idle = false, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(4)
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("9.9.9-cast-dev", 1, true), "the development copy of the casting script ran")
    expect(#M.ai_events("ai_add", "karl") == 1, "and works")
    """


@scenario
def cast_in_multiplayer_own_army_only():
    """
    M.multiplayer = true
    local friend_army = M.add_army(player, { player = true, winds = 30, reserve = 0 })
    M.local_army = 1
    M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 0, z = 0, idle = false, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(friend_army, { name = "friends_karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = -40, z = 0, idle = false, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(4)
    expect(#M.ai_events("ai_add", "karl") == 1, "auto-cast hands my own lord to the game AI in multiplayer")
    expect(#M.ai_events("ai_add", "friends_karl") == 0, "never hands the other player's lord over")
    local log = io.open("proactive_command_log.txt"):read("*a")
    expect(log:find("multiplayer battle: auto-cast on", 1, true), "the log says multiplayer auto-cast is on")
    """


@scenario
def cast_multiplayer_second_player():
    """
    M.multiplayer = true
    local host_army = P
    local my_army = M.add_army(player, { player = true, winds = 30, reserve = 0 })
    M.local_army = 2
    M.add_unit(host_army, { name = "host_karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = -40, z = 0, idle = false, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(my_army, { name = "my_karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 0, z = 0, idle = false, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(4)
    expect(#M.ai_events("ai_add", "my_karl") == 1, "the second player's copy casts for its own lord")
    expect(#M.ai_events("ai_add", "host_karl") == 0, "and leaves the host's lord alone")
    """


@scenario
def cast_multiplayer_switched_off():
    """
    M.multiplayer = true
    write_config("allow_in_multiplayer = false")
    M.add_unit(P, { name = "karl", type = "wh_main_emp_cha_karl_franz_0", men = 1, is_character = true, x = 0, z = 0, idle = false, melee = true,
        abilities = { { key = "wh_main_weapon_abilities_sword_of_anti_heroes", cd = 90, dur = 40 } } })
    M.add_unit(E, { name = "warriors", type = "wh3_main_kho_inf_chaos_warriors_0", x = 0, z = 5, melee = true })
    setup_done()
    M.advance(5)
    expect(#M.ai_events("ai_add", "karl") == 0, "auto-cast stays off when allow_in_multiplayer = false")
    """


def run(name, body, verbose):
    lua = lua51.LuaRuntime(unpack_returned_tuples=True)
    workdir = tempfile.mkdtemp(prefix="pc_")
    os.chdir(workdir)  # the mod writes its log relative to the working directory
    lua.execute('package.preload["pc_catalog"] = function() return dofile(%r) end' % CATALOG)
    lua.execute("dofile(%r)" % os.path.join(HERE, "mock_battle.lua"))
    # The game's Lua sandbox lacks some standard pieces; make the mock match so the tests
    # catch scripts that rely on them (math.huge was nil in the real game and crashed the
    # first tick after contact; debug.traceback corrupted the game's script log clock).
    lua.execute("math.huge = nil; if debug then debug.traceback = nil end")
    lua.execute("function dofile_mod() dofile(%r) end" % MOD)
    lua.execute("function dofile_cast() dofile(%r) end" % CAST)
    lua.execute("CATALOG_PATH = %r" % CATALOG)
    lua.execute("MOD_PATH = %r" % MOD)
    lua.execute("CAST_PATH = %r" % CAST)
    lua.execute(COMMON)
    lua.execute("write_config()")
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

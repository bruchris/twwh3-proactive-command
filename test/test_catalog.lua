-- Subset of the real generated catalog (copied from pc_catalog.lua) for offline tests.
local C = {abilities = {}, units = {}, templates = {}, params = {}, kv = {}}
C.meta = {generated="test"}
C.kv["mana_saving_max_added_amount"] = 0.15
C.kv["mana_saving_threshold"] = 0.1
C.kv["min_score_for_activation"] = 0.5
local P = {
 bool_ability_active=1, bool_ability_active_inverse=1, bool_ability_final_use=1, bool_ammo_under_threshold=0.1,
 bool_charged_at=1, bool_charging=1, bool_charging_at_me=1, bool_contesting_victory_point=1, bool_flying_currently=1,
 bool_flying_currently_inverse=1, bool_flying_unit=1, bool_flying_unit_inverse=1, bool_has_abilities_costing_mana=1,
 bool_in_melee=1, bool_missile_unit=1, bool_missile_unit_inverse=1, bool_out_of_melee=1, bool_shooting=1,
 bool_shooting_at_me=1, bool_standing_still=1, bool_threatened=1, bool_threatening_me=1, bool_under_fire=1,
 value_armour=0.01, value_armour_inverse=0.01, value_enemy_to_friendly_ratio=1, value_enemy_units_in_area=0.25,
 value_enemy_units_in_area_inverse=0.25, value_enemy_units_in_cone=1, value_friendly_to_enemy_ratio=1,
 value_friendly_units_in_area=0.25, value_friendly_units_in_area_inverse=0.25, value_hitpoint_damage_taken=0.0001,
 value_hitpoint_total=0.0001, value_homing_projectile_ratio=1, value_melee_attack=0.01, value_melee_attack_inverse=0.01,
 value_melee_cp=0.001, value_melee_cp_inverse=0.001, value_missle_cp=0.001, value_missle_cp_inverse=0.001,
 value_morale_score=0.01, value_morale_score_inverse=0.01, value_num_men=0.0055, value_num_men_inverse=0.0055,
 value_speed_current=0.1, value_speed_current_inverse=0.1, value_speed_max=0.1, value_total_cp=0.001,
 value_total_cp_inverse=0.001, value_winds_of_magic_amount=0.03, value_winds_of_magic_recharge=5,
 value_winds_of_magic_recharge_inverse=5,
}
for k, v in pairs(P) do C.params[k] = v end
C.templates["aoe_bombardment"] = {b=1,w={["bool_flying_currently"]=0,["bool_standing_still"]=1,["value_enemy_units_in_area"]=2,["value_num_men"]=2,["value_total_cp"]=3}}
C.templates["augment_melee"] = {b=1,w={["bool_in_melee"]=1,["value_melee_attack"]=1,["value_melee_cp"]=2}}
C.templates["augment_melee_area"] = {b=1,w={["bool_in_melee"]=1,["value_friendly_units_in_area"]=2,["value_melee_attack"]=1,["value_melee_cp"]=1}}
C.templates["augment_melee_self"] = {b=1,w={["bool_in_melee"]=1}}
C.templates["augment_charge_self"] = {b=1,w={["bool_charging"]=1}}
C.templates["direct_damage_single_entity"] = {b=1,w={["value_num_men_inverse"]=3,["value_total_cp"]=1.5}}
C.templates["healing"] = {b=1,w={["value_hitpoint_damage_taken"]=6,["value_melee_attack"]=2,["value_morale_score"]=2,["value_total_cp"]=1}}
C.templates["healing_single_use"] = {b=1,w={["bool_ability_final_use"]=0.6,["value_hitpoint_damage_taken"]=10,["value_total_cp"]=1}}
C.templates["hex_armour"] = {b=1,w={["bool_in_melee"]=1,["value_armour"]=30}}
C.templates["hex_melee_area"] = {b=1,w={["bool_in_melee"]=1,["value_enemy_units_in_area"]=2,["value_melee_attack"]=1.2,["value_total_cp"]=1}}
C.templates["projectile_homing_single"] = {b=1,w={["bool_out_of_melee"]=1,["value_armour_inverse"]=1,["value_homing_projectile_ratio"]=1,["value_num_men_inverse"]=2,["value_total_cp"]=2}}
C.templates["threatened"] = {b=1,w={["bool_in_melee"]=1.5}}
C.templates["vortex_ap"] = {b=1,w={["bool_flying_currently"]=0,["value_armour"]=1,["value_enemy_units_in_area"]=4,["value_num_men"]=2,["value_total_cp"]=1}}
C.templates["vortex_wind"] = {b=1,w={["bool_flying_currently"]=0,["value_armour_inverse"]=1.5,["value_enemy_units_in_cone"]=4,["value_num_men"]=1}}

C.abilities["wh_main_spell_fire_fireball"] = {ai="projectile_homing_single",cd=29,dur=0,er=0,ff=true,mana=5,mc=0,minr=0,n="Fireball",rad=5,rng=300,src="spell",te=true,ty="magic_missile",wu=1}
C.abilities["wh_main_spell_fire_fireball_upgraded"] = {ai="projectile_homing_single",cd=29,dur=0,er=0,ff=true,mana=9,mc=0.5,minr=0,n="Fireball Upgraded",rad=5,rng=300,src="spell",te=true,ty="magic_missile",upg=true,wu=1}
C.abilities["wh_main_spell_fire_flaming_sword_of_rhuin"] = {ai="augment_melee_area",cd=44,dur=28,er=35,mana=7,mc=0,minr=0,n="Flaming Sword of Rhuin",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",wu=3}
C.abilities["wh_main_spell_fire_the_burning_head"] = {ai="vortex_wind",cd=37,dmg=20,dur=20,er=0,ff=true,mana=10,mc=0,minr=0,n="The Burning Head",rad=7,rng=150,src="spell",te=true,tg=true,ty="wind",vlen=180,wu=3}
C.abilities["wh_main_spell_heavens_comet_of_casandora"] = {ai="aoe_bombardment",cd=49,dur=7,er=0,ff=true,mana=13,mc=0,minr=0,n="Comet of Casandora",rad=28,rng=200,src="spell",te=true,tg=true,ty="bombardment",wu=5}
C.abilities["wh_main_spell_death_the_purple_sun_of_xereus"] = {ai="vortex_ap",cd=54,dmg=15,dur=11,er=0,ff=true,mana=18,mc=0,minr=0,n="The Purple Sun of Xereus",rad=12,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=22,wu=5}
C.abilities["wh_main_spell_death_spirit_leech"] = {ai="direct_damage_single_entity",cd=32,dur=13,er=0,mana=8,mc=0,minr=0,n="Spirit Leech",ne=1,rng=100,src="spell",te=true,ty="direct_damage",wu=1}
C.abilities["wh_main_spell_metal_plague_of_rust"] = {ai="hex_armour",cd=28,dur=44,er=0,mana=4,mc=0,minr=0,n="Plague of Rust",ne=1,rng=200,src="spell",te=true,ty="hex",wu=1}
C.abilities["wh_main_spell_vampires_invocation_of_nehek"] = {ai="healing",cd=30,dur=18,er=0,heal=true,mana=7,mc=0,minr=0,n="Invocation of Nehek",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="regeneration",wu=1}
C.abilities["wh_main_spell_vampires_raise_dead"] = {ai="threatened",cd=39,dur=1,er=0,mana=5,mc=0,minr=0,n="Raise Dead",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=7,wu=3}
C.abilities["wh_main_spell_heavens_curse_of_the_midnight_wind"] = {ai="hex_melee_area",cd=38,dur=25,er=35,mana=8,mc=0,minr=0,n="Curse of the Midnight Wind",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",wu=3}
C.abilities["wh_main_weapon_abilities_sword_of_anti_heroes"] = {ai="augment_melee_self",cd=90,dur=40,er=0,mana=0,mc=0,minr=0,n="Sword of Anti-Heroes",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_daemon_legs_abilities_daemonic_onslaught"] = {ai="augment_charge_self",cd=90,dur=34,er=0,mana=0,mc=0,minr=0,n="Daemonic Onslaught",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_item_abilities_potion_of_strength"] = {ai="augment_melee_self",cd=60,dur=33,er=0,mana=0,mc=0,minr=0,n="Potion of Strength",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh2_dlc14_lord_abilities_tzarkan_spite_mp"] = {ai="tzarkan",cd=0,dur=0,er=0,mana=0,mc=0,minr=0,n="Tz'arkan",nf=1,rng=0,sa=true,src="active",tr=true,ty="transform",wu=3}

C.units["wh_main_emp_cha_wizard_fire_0"] = {a=20,c="com",cat="inf_melee",cb=15,hp=3420,ma=25,mcp=250,md=30,men=1,rcp=0,spd=3.5}
C.units["wh_main_emp_cha_wizard_heavens_0"] = {a=20,c="com",cat="inf_melee",cb=15,hp=3420,ma=25,mcp=250,md=30,men=1,rcp=0,spd=3.5}
C.units["wh_main_emp_cha_karl_franz_0"] = {a=100,c="com",cat="inf_melee",cb=30,hp=4288,ma=65,mcp=1100,md=45,men=1,rcp=0,spd=4}
C.units["wh_main_emp_cha_karl_franz_1"] = {a=100,c="com",cat="war_beast",cb=90,hp=6828,lg=true,ma=56,mcp=1900,md=38,men=1,rcp=0,spd=7}
C.units["wh_main_emp_inf_swordsmen"] = {a=30,c="inf_mel",cat="inf_melee",cb=8,hp=8280,ma=32,mcp=400,md=32,men=120,rcp=0,spd=3.2}
C.units["wh_main_emp_inf_spearmen_0"] = {a=30,al=15,c="inf_mel",cat="inf_melee",cb=4,hp=8280,ma=20,mcp=325,md=34,men=120,rcp=0,spd=3}
C.units["wh_main_emp_inf_crossbowmen"] = {a=20,c="inf_mis",cat="inf_ranged",cb=4,hp=6210,ma=14,mcp=100,md=17,men=90,rcp=400,spd=3.3}
C.units["wh_main_emp_inf_handgunners"] = {a=30,c="inf_mis",cat="inf_ranged",cb=4,hp=6000,ma=20,mcp=150,md=12,men=120,rcp=600,spd=3.3}
C.units["wh_main_emp_cav_reiksguard"] = {a=120,c="cav_shk",cat="cavalry",cb=62,hp=6480,lg=true,ma=34,mcp=1150,md=31,men=60,rcp=0,spd=7.8}
C.units["wh3_main_kho_inf_chaos_warriors_0"] = {a=110,c="inf_mel",cat="inf_melee",cb=10,hp=9000,ma=36,mcp=800,md=39,men=100,rcp=0,spd=3.2}
C.units["wh3_main_kho_inf_chaos_warriors_spears"] = {a=110,al=12,c="inf_mel",cat="inf_melee",cb=10,hp=9000,ma=30,mcp=750,md=42,men=100,rcp=0,spd=3.2}
C.units["wh3_main_kho_inf_bloodletters_0"] = {a=35,c="inf_mel",cat="inf_melee",cb=12,hp=8000,ma=34,mcp=800,md=26,men=100,rcp=0,spd=3.6}
C.units["wh3_main_kho_inf_chaos_furies_0"] = {a=25,c="inf_mel",cat="inf_melee",cb=12,hp=5280,ma=36,mcp=650,md=18,men=60,rcp=0,spd=4}
C.units["wh3_main_kho_cav_chaos_knights_0"] = {a=130,c="cav_shk",cat="cavalry",cb=60,hp=6000,lg=true,ma=40,mcp=1300,md=35,men=60,rcp=0,spd=7.5}
C.units["wh3_main_kho_inf_marauder_horsemen_mis"] = {a=25,c="cav_mis",cat="cavalry",cb=20,hp=3600,lg=true,ma=20,mcp=200,md=15,men=60,rcp=450,spd=8}
C.units["wh3_main_kho_mon_spawn_of_khorne_0"] = {a=30,c="inf_mel",cat="inf_melee",cb=35,hp=8768,lg=true,ma=36,mcp=1050,md=23,men=16,rcp=0,spd=4.2}
C.units["wh3_main_kho_inf_marauder_archers"] = {a=15,c="inf_mis",cat="inf_ranged",cb=4,hp=5000,ma=15,mcp=120,md=10,men=90,rcp=350,spd=3.5}
return C

-- Proactive Command ability catalog. GENERATED FILE - do not edit by hand.
-- Regenerate with tools/gen_catalog.py after game patches or when using overhaul mods.
local C = {abilities = {}, units = {}, templates = {}, params = {}, kv = {}}
C.meta = {generated="2026-10-17",n_abilities=1650,n_units=2675}
C.kv["battle_currency_saving_max_added_amount"] = 1
C.kv["battle_currency_saving_threshold"] = 1
C.kv["mana_saving_max_added_amount"] = 0.15
C.kv["mana_saving_threshold"] = 0.1
C.kv["min_score_for_activation"] = 0.5
C.params["bool_ability_active"] = 1
C.params["bool_ability_active_inverse"] = 1
C.params["bool_ability_final_use"] = 1
C.params["bool_ammo_under_threshold"] = 0.1
C.params["bool_charged_at"] = 1
C.params["bool_charging"] = 1
C.params["bool_charging_at_me"] = 1
C.params["bool_contesting_victory_point"] = 1
C.params["bool_flying_currently"] = 1
C.params["bool_flying_currently_inverse"] = 1
C.params["bool_flying_unit"] = 1
C.params["bool_flying_unit_inverse"] = 1
C.params["bool_has_abilities_costing_mana"] = 1
C.params["bool_in_melee"] = 1
C.params["bool_missile_unit"] = 1
C.params["bool_missile_unit_inverse"] = 1
C.params["bool_on_wall_near_siege_attack_focus"] = 1
C.params["bool_out_of_melee"] = 1
C.params["bool_shooting"] = 1
C.params["bool_shooting_at_me"] = 1
C.params["bool_standing_still"] = 1
C.params["bool_threatened"] = 1
C.params["bool_threatening_me"] = 1
C.params["bool_under_fire"] = 1
C.params["value_armour"] = 0.01
C.params["value_armour_inverse"] = 0.01
C.params["value_damage_resist_all"] = 0.01
C.params["value_damage_resist_all_inverse"] = 0.01
C.params["value_damage_resist_flame"] = 0.01
C.params["value_damage_resist_flame_inverse"] = 0.01
C.params["value_damage_resist_magic"] = 0.01
C.params["value_damage_resist_magic_inverse"] = 0.01
C.params["value_damage_resist_missile"] = 0.01
C.params["value_damage_resist_missile_inverse"] = 0.01
C.params["value_damage_resist_physical"] = 0.01
C.params["value_damage_resist_physical_inverse"] = 0.01
C.params["value_damage_weak_flame"] = 0.01
C.params["value_damage_weak_flame_inverse"] = 0.01
C.params["value_enemy_to_friendly_ratio"] = 1
C.params["value_enemy_units_in_area"] = 0.25
C.params["value_enemy_units_in_area_inverse"] = 0.25
C.params["value_enemy_units_in_cone"] = 1
C.params["value_formation_rows"] = 0.2
C.params["value_friendly_to_enemy_ratio"] = 1
C.params["value_friendly_units_in_area"] = 0.25
C.params["value_friendly_units_in_area_inverse"] = 0.25
C.params["value_hitpoint_damage_taken"] = 0.0001
C.params["value_hitpoint_total"] = 0.0001
C.params["value_homing_projectile_ratio"] = 1
C.params["value_homing_projectile_ratio_inverse"] = 1
C.params["value_melee_attack"] = 0.01
C.params["value_melee_attack_inverse"] = 0.01
C.params["value_melee_cp"] = 0.001
C.params["value_melee_cp_inverse"] = 0.001
C.params["value_missile_attack"] = 1
C.params["value_missle_cp"] = 0.001
C.params["value_missle_cp_inverse"] = 0.001
C.params["value_morale_score"] = 0.01
C.params["value_morale_score_inverse"] = 0.01
C.params["value_num_men"] = 0.0055
C.params["value_num_men_inverse"] = 0.0055
C.params["value_spacing_horizontal"] = 0.2
C.params["value_spacing_vertical"] = 0.2
C.params["value_speed_current"] = 0.1
C.params["value_speed_current_inverse"] = 0.1
C.params["value_speed_max"] = 0.1
C.params["value_speed_max_inverse"] = 0.1
C.params["value_total_cp"] = 0.001
C.params["value_total_cp_inverse"] = 0.001
C.params["value_winds_of_magic_amount"] = 0.03
C.params["value_winds_of_magic_amount_inverse"] = 0.03
C.params["value_winds_of_magic_recharge"] = 5
C.params["value_winds_of_magic_recharge_inverse"] = 5
C.templates["always_use_only_land"] = {b=1,w={["bool_flying_currently"]=0}}
C.templates["ammo_replenish"] = {b=1,w={["bool_ammo_under_threshold"]=10,["bool_missile_unit"]=1,["value_missle_cp"]=1}}
C.templates["aoe"] = {b=1,w={["bool_flying_currently"]=0,["value_armour_inverse"]=1,["value_enemy_units_in_area"]=2,["value_friendly_units_in_area_inverse"]=1,["value_num_men"]=2.5,["value_speed_current_inverse"]=1,["value_total_cp"]=2.5}}
C.templates["aoe_ap"] = {b=1,w={["bool_flying_currently"]=0,["value_armour"]=1.5,["value_enemy_units_in_area"]=2,["value_friendly_units_in_area_inverse"]=1,["value_num_men"]=2.5,["value_speed_current_inverse"]=1,["value_total_cp"]=2.5}}
C.templates["aoe_bombardment"] = {b=1,w={["bool_flying_currently"]=0,["bool_standing_still"]=1,["value_enemy_units_in_area"]=2,["value_num_men"]=2,["value_total_cp"]=3}}
C.templates["aoe_centred_on_self"] = {b=1,w={["bool_in_melee"]=6,["value_enemy_units_in_area"]=1.5}}
C.templates["artillery_opportunity"] = {b=1,w={["value_enemy_units_in_area_inverse"]=1}}
C.templates["assault_opportunity"] = {b=1,w={["bool_in_melee"]=2,["value_enemy_units_in_area_inverse"]=5}}
C.templates["augment_charge"] = {b=1,w={["bool_charging"]=1,["value_melee_attack"]=1,["value_total_cp"]=1}}
C.templates["augment_charge_self"] = {b=1,w={["bool_charging"]=1}}
C.templates["augment_charged_at"] = {b=1,w={["bool_charged_at"]=1}}
C.templates["augment_charged_at_area"] = {b=1,w={["bool_charged_at"]=1,["value_friendly_units_in_area"]=2}}
C.templates["augment_defense_melee"] = {b=1,w={["bool_in_melee"]=1,["value_total_cp"]=2}}
C.templates["augment_defense_melee_area"] = {b=1,w={["bool_in_melee"]=1,["value_friendly_units_in_area"]=1.5,["value_total_cp"]=1.5}}
C.templates["augment_defense_ranged"] = {b=1,w={["bool_under_fire"]=1}}
C.templates["augment_defense_ranged_area"] = {b=1,w={["bool_under_fire"]=1,["value_friendly_units_in_area"]=1}}
C.templates["augment_flying"] = {b=1,w={["bool_flying_unit"]=1}}
C.templates["augment_flying_area"] = {b=1,w={["bool_flying_unit"]=1,["value_friendly_units_in_area"]=1}}
C.templates["augment_melee"] = {b=1,w={["bool_in_melee"]=1,["value_melee_attack"]=1,["value_melee_cp"]=2}}
C.templates["augment_melee_area"] = {b=1,w={["bool_in_melee"]=1,["value_friendly_units_in_area"]=2,["value_melee_attack"]=1,["value_melee_cp"]=1}}
C.templates["augment_melee_healing"] = {b=1,w={["bool_in_melee"]=1,["value_hitpoint_damage_taken"]=4,["value_total_cp"]=2}}
C.templates["augment_melee_healing_single_use"] = {b=1,w={["bool_in_melee"]=1,["value_hitpoint_damage_taken"]=8,["value_total_cp"]=2}}
C.templates["augment_melee_morale"] = {b=1,w={["bool_in_melee"]=1,["value_morale_score_inverse"]=10,["value_total_cp"]=2}}
C.templates["augment_melee_morale_area"] = {b=1,w={["bool_in_melee"]=1,["value_friendly_units_in_area"]=1,["value_morale_score_inverse"]=10,["value_total_cp"]=2}}
C.templates["augment_melee_self"] = {b=1,w={["bool_in_melee"]=1}}
C.templates["augment_morale"] = {b=1,w={["bool_in_melee"]=0.5,["value_morale_score_inverse"]=2}}
C.templates["augment_morale_area"] = {b=1,w={["bool_in_melee"]=0.5,["value_friendly_units_in_area"]=1,["value_morale_score_inverse"]=2}}
C.templates["augment_morale_self_area"] = {b=1,w={["bool_in_melee"]=0.5,["value_friendly_units_in_area"]=1,["value_morale_score_inverse"]=2}}
C.templates["augment_ranged"] = {b=1,w={["bool_shooting"]=1,["value_missle_cp"]=1}}
C.templates["augment_ranged_area"] = {b=1,w={["bool_shooting"]=1,["value_friendly_units_in_area"]=1,["value_missle_cp"]=1}}
C.templates["augment_self_area"] = {b=1,w={["bool_in_melee"]=1,["value_friendly_units_in_area"]=1}}
C.templates["augment_spellcasting"] = {b=1,w={["value_winds_of_magic_recharge_inverse"]=1.2}}
C.templates["augment_support_self"] = {b=1,w={["bool_out_of_melee"]=1}}
C.templates["being_charged"] = {b=1,w={["bool_charged_at"]=4}}
C.templates["direct_damage_multi_entity"] = {b=1,w={["value_armour"]=1,["value_num_men"]=2,["value_total_cp"]=1}}
C.templates["direct_damage_multi_entity_area"] = {b=1,w={["value_enemy_units_in_area"]=2,["value_num_men"]=1}}
C.templates["direct_damage_single_entity"] = {b=1,w={["value_num_men_inverse"]=3,["value_total_cp"]=1.5}}
C.templates["direct_damage_single_entity_area"] = {b=1,w={["value_enemy_units_in_area"]=1,["value_num_men_inverse"]=1.5,["value_total_cp"]=1}}
C.templates["flanking_opportunity"] = {b=1,w={["value_friendly_units_in_area"]=5}}
C.templates["full_hide"] = {b=1,w={["bool_in_melee"]=0,["bool_under_fire"]=1,["value_total_cp"]=10}}
C.templates["healing"] = {b=1,w={["value_hitpoint_damage_taken"]=6,["value_melee_attack"]=2,["value_morale_score"]=2,["value_total_cp"]=1}}
C.templates["healing_area"] = {b=1,w={["value_friendly_units_in_area"]=1,["value_hitpoint_damage_taken"]=6,["value_total_cp"]=1}}
C.templates["healing_single_use"] = {b=1,w={["bool_ability_final_use"]=0.6,["value_hitpoint_damage_taken"]=10,["value_total_cp"]=1}}
C.templates["hex_armour"] = {b=1,w={["bool_in_melee"]=1,["value_armour"]=30}}
C.templates["hex_armour_area"] = {b=1,w={["bool_in_melee"]=1,["value_armour"]=30,["value_enemy_units_in_area"]=1.5}}
C.templates["hex_flying"] = {b=1,w={["bool_flying_unit"]=1}}
C.templates["hex_flying_area"] = {b=1,w={["bool_flying_unit"]=1,["value_enemy_units_in_area"]=1.5}}
C.templates["hex_hiding_area"] = {b=1,w={}}
C.templates["hex_melee"] = {b=1,w={["bool_in_melee"]=1,["value_melee_attack"]=1.7,["value_total_cp"]=1.5}}
C.templates["hex_melee_area"] = {b=1,w={["bool_in_melee"]=1,["value_enemy_units_in_area"]=2,["value_melee_attack"]=1.2,["value_total_cp"]=1}}
C.templates["hex_melee_area_self"] = {b=1,w={["bool_in_melee"]=1,["value_enemy_units_in_area"]=1}}
C.templates["hex_morale"] = {b=1,w={["bool_in_melee"]=0.5,["value_morale_score_inverse"]=2}}
C.templates["hex_morale_area"] = {b=1,w={["bool_in_melee"]=0.5,["value_enemy_units_in_area"]=1,["value_morale_score_inverse"]=2}}
C.templates["hex_ranged"] = {b=1,w={["bool_missile_unit_inverse"]=0,["bool_shooting"]=5}}
C.templates["hex_ranged_area"] = {b=1,w={["bool_missile_unit_inverse"]=0,["bool_shooting"]=2,["value_enemy_units_in_area"]=3}}
C.templates["hex_ranged_melee_area"] = {b=1,w={["bool_in_melee"]=60,["bool_shooting"]=80,["value_enemy_units_in_area"]=10,["value_melee_attack"]=0.15}}
C.templates["hex_ranged_summon"] = {b=1,w={["bool_flying_currently_inverse"]=1,["value_missle_cp"]=5}}
C.templates["hex_speed"] = {b=1,w={["bool_out_of_melee"]=1,["value_speed_current"]=2}}
C.templates["hex_speed_area"] = {b=1,w={["bool_under_fire"]=2,["value_enemy_units_in_area"]=2,["value_speed_current"]=2}}
C.templates["hex_speed_charging_at"] = {b=1,w={["bool_charged_at"]=4,["value_speed_current"]=2}}
C.templates["hex_speed_under_fire"] = {b=1,w={["bool_under_fire"]=4,["value_speed_current"]=2}}
C.templates["hex_spellcaster"] = {b=1,w={["bool_has_abilities_costing_mana"]=1}}
C.templates["hex_spellcasting"] = {b=1,w={["value_winds_of_magic_recharge"]=1.2}}
C.templates["power_of_darkness"] = {b=1,w={["value_num_men"]=1,["value_winds_of_magic_recharge_inverse"]=2}}
C.templates["projectile_explosive"] = {b=1,w={["value_armour_inverse"]=1,["value_num_men"]=1,["value_total_cp"]=5}}
C.templates["projectile_explosive_ap"] = {b=1,w={["value_armour"]=1,["value_num_men"]=1,["value_total_cp"]=5}}
C.templates["projectile_homing"] = {b=1,w={["value_homing_projectile_ratio"]=10}}
C.templates["projectile_homing_single"] = {b=1,w={["bool_out_of_melee"]=1,["value_armour_inverse"]=1,["value_homing_projectile_ratio"]=1,["value_num_men_inverse"]=2,["value_total_cp"]=2}}
C.templates["projectile_homing_single_ap"] = {b=1,w={["bool_out_of_melee"]=1,["value_armour"]=1,["value_homing_projectile_ratio"]=1,["value_num_men_inverse"]=2,["value_total_cp"]=2}}
C.templates["projectile_large"] = {b=1,w={}}
C.templates["projectile_large_explosive"] = {b=1,w={}}
C.templates["projectile_low_power"] = {b=1,w={}}
C.templates["projectile_low_power_explosive"] = {b=1,w={}}
C.templates["projectile_single"] = {b=1,w={["bool_out_of_melee"]=1,["value_armour_inverse"]=1,["value_num_men_inverse"]=2,["value_total_cp"]=2}}
C.templates["projectile_single_ap"] = {b=1,w={["bool_out_of_melee"]=1,["value_armour"]=1,["value_num_men_inverse"]=2,["value_total_cp"]=2}}
C.templates["qb_master_of_souls"] = {b=1,w={["value_hitpoint_damage_taken"]=30}}
C.templates["threatened"] = {b=1,w={["bool_in_melee"]=1.5}}
C.templates["tzarkan"] = {b=1,w={["value_hitpoint_damage_taken"]=2}}
C.templates["upgrade_armour"] = {b=1,w={["value_armour"]=1,["value_melee_cp"]=1}}
C.templates["upgrade_missiles"] = {b=1,w={["value_missle_cp"]=1,["value_num_men"]=2}}
C.templates["upgrade_shields"] = {b=1,w={["bool_under_fire"]=1}}
C.templates["upgrade_weapons"] = {b=1,w={["value_melee_cp"]=2}}
C.templates["vortex"] = {b=1,w={["bool_flying_currently"]=0,["value_armour_inverse"]=1,["value_enemy_units_in_area"]=4,["value_num_men"]=2,["value_total_cp"]=1}}
C.templates["vortex_ap"] = {b=1,w={["bool_flying_currently"]=0,["value_armour"]=1,["value_enemy_units_in_area"]=4,["value_num_men"]=2,["value_total_cp"]=1}}
C.templates["vortex_breath"] = {b=1,w={["bool_flying_currently"]=0,["value_armour_inverse"]=1.5,["value_enemy_units_in_cone"]=4,["value_num_men"]=3,["value_total_cp"]=1.5}}
C.templates["vortex_breath_ap"] = {b=1,w={["bool_flying_currently"]=0,["value_armour"]=1.5,["value_enemy_units_in_cone"]=4,["value_num_men"]=3,["value_total_cp"]=1.5}}
C.templates["vortex_flying_only"] = {b=1,w={["bool_flying_currently_inverse"]=0,["value_enemy_units_in_area"]=5}}
C.templates["vortex_low_morale"] = {b=1,w={["bool_flying_currently"]=0,["value_enemy_units_in_area"]=2,["value_morale_score_inverse"]=2,["value_num_men"]=2.5,["value_total_cp"]=2}}
C.templates["vortex_wind"] = {b=1,w={["bool_flying_currently"]=0,["value_armour_inverse"]=1.5,["value_enemy_units_in_cone"]=4,["value_num_men"]=1}}
C.templates["vortex_wind_ap"] = {b=1,w={["bool_flying_currently"]=0,["value_armour"]=1.5,["value_enemy_units_in_cone"]=4,["value_num_men"]=1}}
C.abilities["wh2_dlc09_character_abilities_curse_of_djaf"] = {ai="hex_melee_area",cd=0,dur=13,er=35,mana=0,mc=0,minr=0,n="Curse of Djaf",ne=-1,rng=100,src="active",te=true,tg=true,ty="area_of_hexes",uses=1,wu=0}
C.abilities["wh2_dlc09_character_abilities_curse_of_khsar"] = {ai="hex_armour_area",cd=0,dur=25,er=35,mana=0,mc=0,minr=0,n="Curse of Khsar",ne=-1,rng=100,src="active",te=true,tg=true,ty="area_of_hexes",uses=1,wu=0}
C.abilities["wh2_dlc09_character_abilities_restore"] = {ai="healing",cd=60,dur=24,er=0,heal=true,mana=0,mc=0,minr=0,n="Restore",nf=1,rng=100,src="active",tf=true,ty="regeneration",uses=2,wu=0}
C.abilities["wh2_dlc09_character_abilities_stay_here_ill_get_help"] = {ai="augment_melee_morale",cd=90,dur=35,er=35,mana=0,mc=0,minr=0,n="\"Stay Here, I'll Get Help!\"",nf=-1,rng=60,sa=true,src="active",tf=true,tg=true,ts=true,ty="area_of_augments",uses=3,wu=0}
C.abilities["wh2_dlc09_character_abilities_strike_of_nagash"] = {ai="augment_melee_self",cd=120,dur=27,er=0,mana=0,mc=0,minr=0,n="Necrostrike",nf=1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc09_character_abilities_strike_of_nehekhara"] = {ai="augment_melee_self",cd=120,dur=23,er=0,mana=0,mc=0,minr=0,n="Desertstrike",nf=1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc09_character_abilities_strike_of_tombs"] = {ai="augment_melee_self",cd=90,dur=23,er=0,mana=0,mc=0,minr=0,n="Tombstrike",nf=1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc09_character_abilities_tomb_king_rally"] = {ai="augment_morale_area",cd=60,dur=14,er=35,mana=0,mc=0,minr=0,n="Reanimate",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc09_character_abilities_tomb_king_rally_upgraded"] = {ai="augment_morale_area",cd=90,dur=10,er=35,heal=true,mana=0,mc=0,minr=0,n="Reanimate Upgraded",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",upg=true,wu=0}
C.abilities["wh2_dlc09_item_abilities_amulet_of_phastah"] = {ai="hex_armour_area",cd=120,dur=22,er=55,mana=0,mc=0,minr=0,n="Amulet of Pha-Stah",ne=-1,rng=100,src="active",te=true,tg=true,ty="area_of_hexes",wu=0}
C.abilities["wh2_dlc09_item_abilities_cloak_of_the_dunes"] = {cd=90,dur=73,er=0,fm=true,mana=0,mc=0,minr=0,n="Cloak of the Dunes",nf=1,rng=0,sa=true,src="active",ty="hiding",wu=0}
C.abilities["wh2_dlc09_item_abilities_elixir_of_might"] = {ai="augment_melee_self",cd=60,dur=36,er=0,mana=0,mc=0,minr=0,n="Elixir of Might",rng=100,src="active",tf=true,ts=true,ty="augment",uses=1,wu=0}
C.abilities["wh2_dlc09_item_abilities_enkhils_kanopi"] = {ai="augment_defense_melee_area",cd=120,dur=24,er=35,mana=0,mc=0,minr=0,n="Enkhil's Kanopi",nf=-1,rng=0,sa=true,src="active",ty="area_of_ward_save",wu=0}
C.abilities["wh2_dlc09_item_abilities_hieratic_jar"] = {ai="healing_single_use",cd=60,dur=33,er=0,heal=true,mana=0,mc=0,minr=0,n="Hieratic Jar",rng=0,sa=true,src="active",ty="regeneration",uses=1,wu=0}
C.abilities["wh2_dlc09_item_abilities_neferras_scrolls_of_mighty_incantations"] = {ai="augment_spellcasting",cd=90,dur=31,er=0,mana=0,mc=0,minr=0,n="Neferra's Scrolls of Mighty Incantations",rng=0,sa=true,src="active",ty="augment_of_the_winds",uses=1,wu=0}
C.abilities["wh2_dlc09_item_abilities_staff_of_nagash"] = {ai="augment_spellcasting",cd=120,dur=33,er=0,mana=0,mc=0,minr=0,n="Staff of Nagash",nf=1,rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh2_dlc09_lord_abilities_sand_storm"] = {ai="vortex_ap",cd=90,dmg=11,dur=14,er=0,ff=true,mana=0,mc=0,minr=0,n="Sandstorm",rad=12,rng=100,src="active",te=true,tg=true,ty="vortex",uses=3,vlen=56,wu=3}
C.abilities["wh2_dlc09_lord_abilities_the_liber_mortis"] = {ai="augment_defense_melee_area",cd=90,dur=15,er=35,mana=0,mc=0,minr=0,n="The Liber Mortis",nf=-1,rng=150,sa=true,src="active",tg=true,ts=true,ty="area_of_ward_save",uses=3,wu=0}
C.abilities["wh2_dlc09_lord_abilities_venom_wave"] = {ai="aoe_centred_on_self",cd=90,dmg=16,dur=3,er=0,mana=0,mc=0,minr=0,n="Venom Wave",rad=15,rng=0,sa=true,src="active",ty="explosion",uses=3,wu=0}
C.abilities["wh2_dlc09_lord_abilities_wrath_of_ptra"] = {ai="aoe_centred_on_self",cd=90,dmg=16,dur=3,er=0,mana=0,mc=0,minr=0,n="Wrath of Ptra",rad=15,rng=0,sa=true,src="active",ty="explosion",uses=3,wu=0}
C.abilities["wh2_dlc09_spell_death_spirit_leech_bound"] = {ai="direct_damage_single_entity",cd=45,dur=13,er=0,mana=0,mc=0,minr=0,n="Spirit Leech",ne=1,rng=100,src="bound",te=true,ty="direct_damage",uses=2,wu=3}
C.abilities["wh2_dlc09_spell_nehekhara_djafs_incantation_of_cursed_blades"] = {ai="augment_melee",cd=28,dur=25,er=0,mana=3,mc=0,minr=0,n="Djaf's Incantation of Cursed Blades",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh2_dlc09_spell_nehekhara_djafs_incantation_of_cursed_blades_upgraded"] = {ai="augment_melee",cd=28,dur=25,er=0,mana=5,mc=0.5,minr=0,n="Djaf's Incantation of Cursed Blades Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=1}
C.abilities["wh2_dlc09_spell_nehekhara_nerus_incantation_of_protection"] = {ai="augment_defense_melee",cd=30,dur=18,er=0,mana=6,mc=0,minr=0,n="Neru's Incantation of Protection",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="ward_save",wu=1}
C.abilities["wh2_dlc09_spell_nehekhara_nerus_incantation_of_protection_upgraded"] = {ai="augment_defense_melee",cd=30,dur=36,er=0,mana=10,mc=0.5,minr=0,n="Neru's Incantation of Protection Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="ward_save",upg=true,wu=1}
C.abilities["wh2_dlc09_spell_nehekhara_ptras_incantation_of_righteous_smiting"] = {ai="augment_ranged",cd=43,dur=32,er=0,mana=6,mc=0,minr=0,n="Ptra's Incantation of Righteous Smiting",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh2_dlc09_spell_nehekhara_ptras_incantation_of_righteous_smiting_upgraded"] = {ai="augment_ranged",cd=43,dur=64,er=0,mana=10,mc=0.5,minr=0,n="Ptra's Incantation of Righteous Smiting Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=3}
C.abilities["wh2_dlc09_spell_nehekhara_sakhmets_incantation_of_the_skullstorm"] = {ai="vortex",cd=49,dmg=19,dur=27,er=0,ff=true,mana=10,mc=0,minr=0,n="Sakhmet's Incantation of the Skullstorm",rad=7,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=54,wu=5}
C.abilities["wh2_dlc09_spell_nehekhara_sakhmets_incantation_of_the_skullstorm_upgraded"] = {ai="vortex",cd=49,dmg=19,dur=27,er=0,ff=true,mana=15,mc=0.5,minr=0,n="Sakhmet's Incantation of the Skullstorm Upgraded",rad=10,rng=150,src="spell",te=true,tg=true,ty="vortex",upg=true,vlen=54,wu=5}
C.abilities["wh2_dlc09_spell_nehekhara_usekhps_incantation_of_desiccation"] = {ai="hex_melee_area",cd=51,dur=38,er=35,mana=13,mc=0,minr=0,n="Usekhp's Incantation of Desiccation",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",wu=5}
C.abilities["wh2_dlc09_spell_nehekhara_usekhps_incantation_of_desiccation_upgraded"] = {ai="hex_melee_area",cd=51,dur=38,er=55,mana=17,mc=0.5,minr=0,n="Usekhp's Incantation of Desiccation Upgraded",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",upg=true,wu=5}
C.abilities["wh2_dlc09_spell_nehekhara_usirians_incantation_of_vengeance"] = {ai="direct_damage_multi_entity",cd=45,dur=22,er=0,mana=9,mc=0,minr=0,n="Usirian's Incantation of Vengeance",ne=1,rng=100,src="spell",te=true,ty="direct_damage",wu=3}
C.abilities["wh2_dlc09_spell_nehekhara_usirians_incantation_of_vengeance_upgraded"] = {ai="direct_damage_multi_entity",cd=45,dur=22,er=0,mana=12,mc=0.5,minr=0,n="Usirian's Incantation of Vengeance Upgraded",ne=1,rng=100,src="spell",te=true,ty="direct_damage",upg=true,wu=3}
C.abilities["wh2_dlc09_unit_abilities_death_from_above"] = {ai="always_use_only_land",cd=0.1,dur=1,er=0,ff=true,mana=0,mc=0,minr=0,n="Death from Above",rad=8,rng=10,src="active",ty="bombardment",uses=1,wu=0}
C.abilities["wh2_dlc09_weapon_abilities_blade_of_setep"] = {ai="hex_melee_area",cd=90,dur=44,er=0,mana=0,mc=0,minr=0,n="Blade of Setep",ne=1,rng=100,src="active",te=true,ty="hex",wu=0}
C.abilities["wh2_dlc09_weapon_abilities_blessed_blade_of_ptra"] = {ai="augment_melee_self",cd=120,dur=43,er=0,mana=0,mc=0,minr=0,n="The Blessed Blade of Ptra",nf=1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc09_weapon_abilities_tomb_blade_of_arkhan"] = {ai="assault_opportunity",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="The Tomb Blade of Arkhan",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=5,wu=0}
C.abilities["wh2_dlc09_weapon_abilities_venom_staff"] = {ai="projectile_explosive_ap",cd=30,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="The Venom Staff",rad=7,rng=200,src="active",te=true,ty="magic_missiles",uses=4,wu=1}
C.abilities["wh2_dlc10_character_abilities_entangle"] = {ai="hex_speed_under_fire",cd=120,dur=15,er=15,mana=0,mc=0,minr=0,n="Entangle",ne=-1,rng=100,src="active",te=true,tg=true,ty="area_of_hexes",uses=2,wu=0}
C.abilities["wh2_dlc10_item_abilities_fear_of_aramar"] = {ai="hex_morale",cd=120,dur=47,er=0,mana=0,mc=0,minr=0,n="Fear of Aramar",ne=1,rng=200,src="active",te=true,ty="hex",uses=1,wu=0}
C.abilities["wh2_dlc10_item_abilities_horn_of_the_ancestors"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Horn of the Ancestors",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh2_dlc10_item_abilities_sceptre_of_stone"] = {ai="aoe_bombardment",cd=90,dur=9,er=0,ff=true,mana=0,mc=0,minr=0,n="Sceptre of Stone",rad=25,rng=200,src="active",te=true,tg=true,ty="bombardment",uses=2,wu=5}
C.abilities["wh2_dlc10_item_abilities_speed_of_lykos"] = {ai="full_hide",cd=60,dur=36,er=0,fm=true,mana=0,mc=0,minr=0,n="Speed of Lykos",nf=1,rng=200,sa=true,src="active",tf=true,ts=true,ty="hiding",uses=1,wu=0}
C.abilities["wh2_dlc10_item_abilities_star_of_avelorn"] = {ai="augment_melee_healing",cd=120,dur=27,er=15,heal=true,mana=0,mc=0,minr=0,n="Star of Avelorn",nf=3,rng=200,sa=true,src="active",tg=true,ty="area_of_regeneration",uses=2,wu=0}
C.abilities["wh2_dlc10_item_abilities_stave_of_avelorn"] = {ai="augment_spellcasting",cd=60,dur=40,er=0,mana=0,mc=0,minr=0,n="Stave of Avelorn",nf=1,rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh2_dlc10_item_abilities_the_amber_trance"] = {ai="hex_morale",cd=60,dur=25,er=0,mana=0,mc=0,minr=0,n="The Amber Trance",ne=1,rng=100,sa=true,src="active",te=true,ty="area_of_hexes",uses=1,wu=0}
C.abilities["wh2_dlc10_item_bound_arnizipals_black_horror"] = {ai="vortex_wind",cd=120,dmg=9,dur=16,er=0,ff=true,mana=0,mc=0,minr=0,n="Arnzipal's Black Horror",rad=10,rng=100,src="bound",te=true,tg=true,ty="wind",uses=1,vlen=140,wu=5}
C.abilities["wh2_dlc10_item_bound_assault_of_stone"] = {ai="aoe_bombardment",cd=90,dur=9,er=0,ff=true,mana=0,mc=0,minr=0,n="Assault of Stone",rad=25,rng=200,src="bound",te=true,tg=true,ty="bombardment",uses=1,wu=3}
C.abilities["wh2_dlc10_item_bound_blast"] = {ai="projectile_explosive_ap",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Blast",rad=1.3,rng=100,src="bound",te=true,ty="magic_missile",uses=1,wu=0}
C.abilities["wh2_dlc10_lord_abilities_deadly_mislead"] = {ai="threatened",cd=90,dur=62,er=0,fm=true,mana=0,mc=0,minr=0,n="Call of the Shadow Dancer",nf=1,rng=50,sa=true,src="active",sum=true,tg=true,ts=true,ty="hiding",uses=3,wu=0}
C.abilities["wh2_dlc10_lord_abilities_gaze_of_khaine"] = {ai="augment_melee_area",cd=90,dur=28,er=35,mana=0,mc=0,minr=0,n="Gaze of Khaine",nf=-1,rng=100,src="active",tg=true,ty="area_of_augments",uses=3,wu=0}
C.abilities["wh2_dlc10_lord_abilities_mislead"] = {ai="threatened",cd=90,dur=62,er=0,fm=true,mana=0,mc=0,minr=0,n="Mislead",nf=1,rng=50,sa=true,src="active",sum=true,tg=true,ts=true,ty="hiding",uses=3,wu=0}
C.abilities["wh2_dlc10_lord_abilities_oath_of_vengeance"] = {ai="hex_melee",cd=60,dur=44,er=0,mana=0,mc=0,minr=0,n="Oath of Vengeance",ne=1,rng=200,src="active",te=true,ty="hex",wu=0}
C.abilities["wh2_dlc10_lord_abilities_red_ruin"] = {ai="augment_melee_self",cd=90,dur=35,er=0,mana=0,mc=0,minr=0,n="Red Ruin",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc10_quest_abilities_fiery_head"] = {ai="always_use_only_land",cd=25,dmg=12,dur=45,er=0,ff=true,mana=0,mc=0,minr=0,n="Breath of the Hydra",rad=35,rng=0,sa=true,src="active",ty="vortex",wu=2}
C.abilities["wh2_dlc10_quest_abilities_flame_storm"] = {ai="vortex",cd=25,dmg=17,dur=27,er=0,ff=true,mana=0,mc=0,minr=0,n="Flame Storm",rad=10,rng=150,src="active",te=true,tg=true,ty="vortex",vlen=54,wu=5}
C.abilities["wh2_dlc10_quest_abilities_magic_fiery_convocation"] = {ai="vortex_wind_ap",cd=25,dmg=35,dur=10,er=0,ff=true,mana=0,mc=0,minr=0,n="Fiery Convocation",rad=7,rng=150,src="active",te=true,tg=true,ty="wind",vlen=132,wu=5}
C.abilities["wh2_dlc10_quest_abilities_regenerating_head"] = {ai="always_use_only_land",cd=15,dur=25,er=35,heal=true,mana=0,mc=0.5,minr=0,n="Eye of Rejuvenation",nf=-1,rng=0,sa=true,src="active",ty="area_of_regeneration",wu=2}
C.abilities["wh2_dlc10_quest_abilities_unidentified_hydra_head"] = {ai="always_use_only_land",cd=135,dmg=12,dur=35,er=0,ff=true,mana=0,mc=1,minr=0,n="Unidentified Hydra Head",nf=1,rad=35,rng=0,sa=true,src="active",ty="vortex",uses=3,wu=2}
C.abilities["wh2_dlc10_quest_passive_the_rats_overwhelm"] = {ai="always_use_only_land",cd=70,dur=2,er=0,heal=true,mana=0,mc=0,minr=0,n="Muroid Surge",rng=0,sa=true,src="passive",sum=true,ty="summon_unit",uses=15,wu=1}
C.abilities["wh2_dlc10_spell_bound_lesser_doombolt"] = {ai="aoe_bombardment",cd=90,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Lesser Doombolt",rad=13,rng=200,src="bound",te=true,ty="bombardment",uses=2,wu=3}
C.abilities["wh2_dlc10_spell_bound_magic_fiery_convocation"] = {ai="vortex_wind_ap",cd=120,dmg=35,dur=10,er=0,ff=true,mana=0,mc=0,minr=0,n="Fiery Convocation",rad=7,rng=150,src="bound",te=true,tg=true,ty="wind",uses=2,vlen=132,wu=5}
C.abilities["wh2_dlc10_spell_bound_soul_stealer_ror"] = {ai="direct_damage_single_entity_area",cd=120,dur=12,er=35,heal=true,mana=0,mc=0,minr=0,n="Soul Stealer",ne=-1,nf=1,rng=100,sa=true,src="bound",te=true,tg=true,ty="area_of_direct_damage",uses=1,wu=0}
C.abilities["wh2_dlc10_spell_bound_soulblight"] = {ai="hex_melee_area",cd=90,dur=20,er=35,mana=0,mc=0,minr=0,n="Soulblight",ne=-1,rng=200,src="bound",te=true,tg=true,ty="area_of_hexes",uses=2,wu=3}
C.abilities["wh2_dlc10_spell_bound_word_of_pain"] = {ai="hex_melee",cd=90,dur=40,er=0,mana=0,mc=0,minr=0,n="Word of Pain",ne=1,rng=200,src="bound",te=true,ty="hex",uses=2,wu=0}
C.abilities["wh2_dlc10_unit_abilities_frost_breath"] = {ai="projectile_explosive_ap",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Frost Breath",rad=5,rng=90,src="active",te=true,ty="magic_missiles",uses=3,wu=1}
C.abilities["wh2_dlc10_unit_abilities_frost_wyrm_breath"] = {ai="projectile_explosive_ap",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Frost Breath",rad=5,rng=90,src="active",te=true,ty="magic_missiles",uses=3,wu=1.1}
C.abilities["wh2_dlc10_weapon_abilities_sword_of_khaine"] = {ai="vortex_ap",cd=120,dmg=14,dur=11,er=0,ff=true,mana=0,mc=0,minr=0,n="Sword of Khaine",rad=12,rng=150,src="active",te=true,tg=true,ty="vortex",vlen=44,wu=0}
C.abilities["wh2_dlc10_weapon_abilities_the_moonbow"] = {ai="projectile_explosive_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="The Moonbow",rad=7,rng=300,src="active",te=true,ty="magic_missile",uses=2,wu=3}
C.abilities["wh2_dlc11_character_abilities_all_hands_hoay"] = {ai="augment_morale_area",cd=90,dur=20,er=35,mana=0,mc=0,minr=0,n="All Hands Hoay!",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc11_character_abilities_avast_ye"] = {ai="augment_morale_area",cd=60,dur=14,er=35,mana=0,mc=0,minr=0,n="Avast Ye!",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc11_character_abilities_ballistic_enchantment"] = {ai="augment_ranged_area",cd=90,dur=32,er=55,mana=0,mc=0,minr=0,n="Enchanted Ballistics",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc11_character_abilities_beyond_the_realm"] = {ai="threatened",cd=120,dur=3,er=0,mana=0,mc=0,minr=0,n="Beyond the Realm",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=3}
C.abilities["wh2_dlc11_character_abilities_cackle_fruit"] = {ai="projectile_explosive",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Cackle Fruit",rad=5,rng=70,src="active",te=true,ty="magic_missile",uses=3,wu=0.4}
C.abilities["wh2_dlc11_character_abilities_ghosts_of_the_past_0"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Ghosts of the Past",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=3}
C.abilities["wh2_dlc11_character_abilities_ghosts_of_the_past_1"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Ghosts of the Past",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=3}
C.abilities["wh2_dlc11_character_abilities_ghosts_of_the_past_2"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Ghosts of the Past",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=3}
C.abilities["wh2_dlc11_character_abilities_hornswaggle"] = {ai="hex_melee",cd=90,dur=32,er=0,mana=0,mc=0,minr=0,n="Hornswaggle",ne=1,rng=100,src="active",te=true,ty="hex",wu=0}
C.abilities["wh2_dlc11_character_abilities_pyromaniac"] = {ai="projectile_explosive",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Pyromaniac",rad=5,rng=70,src="active",te=true,ty="magic_missile",uses=3,wu=0.4}
C.abilities["wh2_dlc11_character_abilities_sacrilege"] = {ai="threatened",cd=120,dur=3,er=0,mana=0,mc=0,minr=0,n="Sacrilege",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=3}
C.abilities["wh2_dlc11_character_abilities_taunt"] = {ai="hex_melee",cd=60,dur=17,er=0,mana=0,mc=0,minr=0,n="Taunt",ne=1,rng=100,src="active",te=true,ty="hex",wu=0}
C.abilities["wh2_dlc11_hero_abilities_bomb_throw"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Bomb-Throw",rad=5,rng=70,src="active",te=true,ty="magic_missile",uses=4,wu=0.4}
C.abilities["wh2_dlc11_hero_abilities_more_powder"] = {ai="ammo_replenish",cd=60,dur=10,er=0,mana=0,mc=0,minr=0,n="More Powder!",nf=1,rng=100,src="active",tf=true,ty="augment",uses=4,wu=0}
C.abilities["wh2_dlc11_item_abilities_captain_roths_moondial"] = {ai="threatened",cd=120,dur=3,er=0,mana=0,mc=0,minr=0,n="Captain Roth's Moondial",rng=150,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=3}
C.abilities["wh2_dlc11_item_abilities_moonshine"] = {ai="augment_morale",cd=60,dur=15,er=0,heal=true,mana=0,mc=0,minr=0,n="Moonshine",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh2_dlc11_item_abilities_slann_gold"] = {ai="always_use_only_land",cd=120,dur=55,er=0,mana=0,mc=0,minr=0,n="Slann Gold",ne=1,rng=200,src="active",te=true,ty="hex_of_the_winds",wu=0}
C.abilities["wh2_dlc11_lord_abilities_claws_of_mourkain"] = {ai="augment_melee_self",cd=120,dur=34,er=0,mana=0,mc=0,minr=0,n="Claws of Mourkain",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc11_lord_abilities_dark_protection"] = {ai="augment_melee_self",cd=90,dur=30,er=0,mana=0,mc=0,minr=0,n="Dark Protection",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc11_lord_abilities_dreaded_duelist"] = {ai="augment_melee_self",cd=60,dur=22,er=0,mana=0,mc=0,minr=0,n="Dreaded Duellist",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc11_lord_abilities_ghoul_king_of_ushoran"] = {ai="augment_melee_self",cd=120,dur=32,er=0,heal=true,mana=0,mc=0,minr=0,n="Ghoul King of Ushoran",rng=0,sa=true,src="active",ty="regeneration",wu=0}
C.abilities["wh2_dlc11_lord_abilities_heart_piercing"] = {ai="augment_melee_self",cd=120,dur=28,er=0,mana=0,mc=0,minr=0,n="Heart Piercing",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc11_lord_abilities_lightning_reflexes"] = {ai="augment_melee_self",cd=90,dur=32,er=0,mana=0,mc=0,minr=0,n="Lightning Reflexes",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc11_lord_abilities_mananns_luck"] = {ai="augment_melee_self",cd=60,dur=15,er=0,mana=0,mc=0,minr=0,n="Manann's Luck",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc11_lord_abilities_power_siphon"] = {ai="hex_spellcaster",cd=60,dur=30,er=0,mana=0,mc=0,minr=0,n="Power Siphon",ne=1,rng=100,src="active",te=true,ty="hex",uses=4,wu=0}
C.abilities["wh2_dlc11_lord_abilities_seduction"] = {cd=120,dur=41,er=35,mana=0,mc=0,minr=0,n="Seduction",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh2_dlc11_lord_abilities_song_of_enthrallment"] = {ai="always_use_only_land",cd=90,dur=22,er=35,mana=0,mc=0,minr=0,n="Song of Enthrallment",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh2_dlc11_lord_abilities_spearfishers_net"] = {ai="hex_melee",cd=90,dur=18,er=0,mana=0,mc=0,minr=0,n="Spearfisher's Net",ne=1,rng=100,src="active",te=true,ty="hex",uses=3,wu=0}
C.abilities["wh2_dlc11_lord_abilities_storm_of_the_night"] = {ai="vortex_flying_only",cd=90,dur=22,er=35,mana=0,mc=0,minr=0,n="Storm of the Night",ne=-1,rng=150,src="active",te=true,ty="vortex",uses=3,wu=0}
C.abilities["wh2_dlc11_lord_abilities_transfix"] = {ai="augment_melee_self",cd=120,dur=26,er=0,mana=0,mc=0,minr=0,n="Transfix",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc11_lord_abilities_wraith_storm"] = {ai="aoe_bombardment",cd=90,dur=9,er=0,ff=true,mana=0,mc=0,minr=0,n="Wraith Storm",rad=41,rng=200,src="active",te=true,ty="bombardment",uses=3,wu=3}
C.abilities["wh2_dlc11_quest_battle_supply"] = {cd=120,dur=30,er=-1,heal=true,mana=0,mc=0,minr=0,n="Battlefield Resupply",nf=-1,rng=0,src="quest",ty="augment",uses=3,wu=0}
C.abilities["wh2_dlc11_spell_beasts_transformation_of_kadon"] = {ai="threatened",cd=45,dur=1,er=0,mana=16,mc=0,minr=0,n="Transformation of Kadon",rng=50,sa=true,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=5}
C.abilities["wh2_dlc11_spell_bound_the_purple_sun_of_xereus"] = {ai="vortex_ap",cd=120,dmg=15,dur=11,er=0,ff=true,mana=0,mc=0,minr=0,n="The Purple Sun of Xereus",rad=12,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=2,vlen=22,wu=5}
C.abilities["wh2_dlc11_spell_bound_tidecall"] = {ai="vortex_breath",cd=60,dmg=20,dur=2,er=0,ff=true,mana=0,mc=0,minr=0,n="Tidecall",rad=12,rng=100,src="active",te=true,tg=true,ts=true,ty="breath",uses=4,vlen=48,wu=1}
C.abilities["wh2_dlc11_spell_bound_wind_blast"] = {ai="vortex_breath",cd=60,dmg=20,dur=2,er=0,ff=true,mana=0,mc=0,minr=0,n="Wind Blast",rad=12,rng=100,src="active",te=true,tg=true,ty="breath",uses=4,vlen=48,wu=1}
C.abilities["wh2_dlc11_spell_deep_denizens_of_the_deep"] = {ai="threatened",cd=43,dur=3,er=0,mana=12,mc=0,minr=0,n="Denizens of the Deep",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=3}
C.abilities["wh2_dlc11_spell_deep_fog_of_the_damned"] = {ai="hex_melee_area",cd=44,dur=35,er=35,mana=8,mc=0,minr=0,n="Fog of the Damned",ne=-1,rng=200,src="spell",tg=true,ty="area_of_hexes",wu=3}
C.abilities["wh2_dlc11_spell_deep_fog_of_the_damned_upgraded"] = {ai="hex_melee_area",cd=44,dur=35,er=35,mana=11,mc=0.5,minr=0,n="Fog of the Damned Upgraded",ne=-1,rng=200,src="spell",tg=true,ty="area_of_hexes",upg=true,wu=3}
C.abilities["wh2_dlc11_spell_deep_ghost_ship"] = {ai="vortex_wind_ap",cd=54,dmg=72,dur=6,er=0,ff=true,mana=20,mc=0,minr=0,n="Vangheist's Revenge",rad=7,rng=150,src="spell",te=true,tg=true,ty="wind",vlen=120,wu=5}
C.abilities["wh2_dlc11_spell_deep_ghost_ship_upgraded"] = {ai="vortex_wind_ap",cd=54,dmg=108,dur=6,er=0,ff=true,mana=26,mc=0.5,minr=0,n="Vangheist's Revenge Upgraded",rad=7,rng=150,src="spell",te=true,tg=true,ty="wind",upg=true,vlen=120,wu=5}
C.abilities["wh2_dlc11_spell_deep_krakens_pull"] = {ai="aoe_ap",cd=49,dmg=4,dur=15,er=0,ff=true,mana=15,mc=0,minr=0,n="Kraken's Pull",ne=1,rad=15,rng=200,src="spell",te=true,tg=true,ty="vortex",wu=5}
C.abilities["wh2_dlc11_spell_deep_krakens_pull_upgraded"] = {ai="aoe_ap",cd=49,dmg=4,dur=30,er=0,ff=true,mana=22,mc=0.5,minr=0,n="Kraken's Pull Upgraded",ne=1,rad=15,rng=200,src="spell",te=true,tg=true,ty="vortex",upg=true,wu=5}
C.abilities["wh2_dlc11_spell_deep_spiteful_shot"] = {ai="augment_ranged",cd=28,dur=36,er=0,mana=4,mc=0,minr=0,n="Spiteful Shot",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh2_dlc11_spell_deep_spiteful_shot_upgraded"] = {ai="augment_ranged",cd=28,dur=72,er=0,mana=6,mc=0.5,minr=0,n="Spiteful Shot Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=1}
C.abilities["wh2_dlc11_spell_deep_tidecall"] = {ai="vortex_breath",cd=32,dmg=20,dur=2,er=0,ff=true,mana=5,mc=0,minr=0,n="Tidecall",rad=12,rng=100,src="spell",te=true,tg=true,ts=true,ty="breath",vlen=48,wu=1}
C.abilities["wh2_dlc11_spell_deep_tidecall_upgraded"] = {ai="vortex_breath",cd=32,dmg=30,dur=2,er=0,ff=true,mana=8,mc=0.5,minr=0,n="Tidecall Upgraded",rad=12,rng=100,src="spell",te=true,tg=true,ty="breath",upg=true,vlen=48,wu=1}
C.abilities["wh2_dlc11_spell_vampires_drowned_dead"] = {ai="threatened",cd=41,dur=3,er=0,mana=7,mc=0,minr=0,n="Drowned Dead",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=4,wu=3}
C.abilities["wh2_dlc11_spell_vampires_drowned_dead_upgraded"] = {ai="threatened",cd=41,dur=3,er=0,mana=10,mc=0.5,minr=0,n="Drowned Dead Upgraded",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",upg=true,uses=4,wu=3}
C.abilities["wh2_dlc12_character_abilities_brass_orb"] = {ai="aoe_ap",cd=90,dmg=4,dur=13,er=0,ff=true,mana=0,mc=0,minr=0,n="Brass Orb",ne=1,rad=12,rng=200,src="active",te=true,tg=true,ty="vortex",uses=3,wu=3}
C.abilities["wh2_dlc12_character_abilities_brass_orb_tech_lab_doom_flayer"] = {ai="aoe",cd=90,dmg=4,dur=13,er=0,ff=true,mana=0,mc=0,minr=0,n="Brass Orb",ne=1,rad=12,rng=200,src="active",te=true,tg=true,ty="vortex",uses=3,wu=3}
C.abilities["wh2_dlc12_character_abilities_brass_orb_upgrade"] = {ai="aoe_ap",cd=90,dmg=4,dur=13,er=12,ff=true,mana=0,mc=0,minr=0,n="Brass Orb Upgraded",ne=-1,rad=12,rng=200,src="active",te=true,tg=true,ty="vortex",uses=3,wu=3}
C.abilities["wh2_dlc12_character_abilities_supreme_shield_of_the_old_ones"] = {ai="augment_melee_area",cd=120,dur=18,er=35,mana=0,mc=0,minr=0,n="Supreme Shield of the Old Ones",nf=-1,rng=150,sa=true,src="active",tg=true,ts=true,ty="area_of_ward_save",wu=0}
C.abilities["wh2_dlc12_lord_abilities_drop_sphere_of_tepok"] = {ai="always_use_only_land",cd=5,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Drop Sphere of Tepok",rad=10,rng=10,src="active",ty="bombardment",uses=1,wu=0}
C.abilities["wh2_dlc12_lord_abilities_drop_sphere_of_tepok_upgraded"] = {ai="always_use_only_land",cd=5,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Drop Sphere of Tepok Upgraded",rad=10,rng=10,src="active",ty="bombardment",upg=true,uses=2,wu=0}
C.abilities["wh2_dlc12_lord_abilities_focus_instincts"] = {ai="augment_morale",cd=90,dur=40,er=35,mana=0,mc=0,minr=0,n="Focus Instincts",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc12_lord_abilities_master_of_the_skies"] = {ai="augment_melee_self",cd=60,dur=31,er=0,mana=0,mc=0,minr=0,n="Master of the Skies",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc12_lord_abilities_unlimited_power"] = {ai="augment_spellcasting",cd=90,dur=26,er=0,mana=0,mc=0.5,minr=0,n="Unlimited Power!",rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh2_dlc12_lord_abilities_warriors_crest"] = {ai="augment_melee_self",cd=90,dur=30,er=0,mana=0,mc=0,minr=0,n="Warrior's Crest",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc12_spell_kroak_deliverance_of_itza_1"] = {ai="aoe",cd=15,dmg=40,dur=2,er=0,mana=7,mc=0,minr=0,n="Deliverance of Itza I",rad=15,rng=200,src="spell",te=true,tg=true,ty="explosion",wu=5}
C.abilities["wh2_dlc12_spell_kroak_deliverance_of_itza_2"] = {ai="aoe_ap",cd=20,dmg=50,dur=2,er=0,mana=13,mc=0,minr=0,n="Deliverance of Itza II",rad=20,rng=200,src="spell",te=true,tg=true,ty="explosion",wu=5}
C.abilities["wh2_dlc12_spell_kroak_deliverance_of_itza_3"] = {ai="aoe_ap",cd=25,dmg=60,dur=2,er=0,mana=20,mc=0,minr=0,n="Deliverance of Itza III",rad=25,rng=200,src="spell",te=true,tg=true,ty="explosion",wu=5}
C.abilities["wh2_dlc12_unit_abilities_ark_of_sotek"] = {ai="aoe_centred_on_self",cd=90,dmg=1,dur=26,er=0,mana=0,mc=0,minr=0,n="Ark of Sotek",rad=15,rng=0,sa=true,src="active",ty="vortex",wu=1}
C.abilities["wh2_dlc12_unit_abilities_burning_alignment"] = {ai="vortex_wind",cd=120,dmg=24,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Burning Alignment",rad=8,rng=100,src="active",te=true,tg=true,ty="wind",uses=2,vlen=120,wu=5}
C.abilities["wh2_dlc12_unit_abilities_drop_rocks_character"] = {ai="always_use_only_land",cd=5,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Drop Rocks",rad=8,rng=10,src="active",ty="bombardment",uses=1,wu=0}
C.abilities["wh2_dlc12_unit_abilities_drop_rocks_of_chotec"] = {ai="always_use_only_land",cd=5,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Drop Rocks of Chotec",rad=9,rng=10,src="active",ty="bombardment",uses=1,wu=0}
C.abilities["wh2_dlc12_unit_abilities_drop_rocks_of_sundering"] = {ai="always_use_only_land",cd=5,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Drop Rocks of Sundering",rad=9,rng=10,src="active",ty="bombardment",uses=1,wu=0}
C.abilities["wh2_dlc12_unit_abilities_refuse_to_die"] = {ai="augment_defense_melee",cd=60,dur=20,er=0,mana=0,mc=0,minr=0,n="Refuse to Die",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc12_unit_abilities_shield_of_chaqua"] = {ai="augment_defense_ranged",cd=90,dur=25,er=55,mana=0,mc=0,minr=0,n="Shield of Chaqua",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",uses=3,wu=0}
C.abilities["wh2_dlc12_unit_abilities_toad_rage"] = {ai="augment_melee_self",cd=60,dur=18,er=0,mana=0,mc=0,minr=0,n="Toad Rage",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc12_weapon_abilities_storm_daemon"] = {ai="projectile_explosive_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Storm Daemon",rad=6,rng=400,src="active",te=true,ty="magic_missiles",uses=2,wu=5}
C.abilities["wh2_dlc13_character_abilities_big_boom"] = {ai="projectile_explosive_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Big Boom",rad=10,rng=70,src="active",te=true,ty="magic_missile",uses=3,wu=2.2}
C.abilities["wh2_dlc13_character_abilities_patch_up"] = {ai="healing",cd=90,dur=7,er=0,heal=true,mana=0,mc=0,minr=0,n="Patch Up",nf=1,rng=100,src="active",tf=true,ty="regeneration",uses=3,wu=0}
C.abilities["wh2_dlc13_character_ability_hunters_call"] = {cd=120,dur=32,er=35,mana=0,mc=0,minr=0,n="Hunter's Call",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",uses=3,wu=0}
C.abilities["wh2_dlc13_character_ability_ishas_rain"] = {ai="aoe_bombardment",cd=120,dur=9,er=0,ff=true,mana=0,mc=0,minr=0,n="Isha's Rain",rad=21,rng=200,src="active",te=true,tg=true,ty="bombardment",uses=3,wu=3}
C.abilities["wh2_dlc13_character_ability_shatter"] = {ai="vortex_breath",cd=120,dmg=24,dur=5,er=0,ff=true,mana=0,mc=0,minr=0,n="Shatter",rad=12,rng=30,src="active",te=true,tg=true,ty="breath",uses=3,vlen=48,wu=1}
C.abilities["wh2_dlc13_item_abilities_shield_of_aeons"] = {ai="augment_melee_area",cd=120,dur=23,er=55,mana=0,mc=0,minr=0,n="Shield of Aeons",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc13_lord_abilities_arrows_of_aqshy"] = {ai="projectile_homing_single",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Quiver of Aqshy",rad=7,rng=200,src="active",te=true,ty="magic_missiles",uses=3,wu=4.5}
C.abilities["wh2_dlc13_lord_abilities_aura_of_inertia"] = {ai="hex_morale_area",cd=90,dur=24,er=35,mana=0,mc=0,minr=0,n="Aura of Inertia",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh2_dlc13_lord_abilities_executioner"] = {ai="projectile_homing_single_ap",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Executioner",rad=1,rng=250,src="active",te=true,ty="magic_missile",uses=3,wu=5}
C.abilities["wh2_dlc13_lord_abilities_fire_arrow"] = {ai="projectile_homing_single",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Arrow of Aqshy",rad=7,rng=200,src="active",te=true,ty="magic_missile",uses=3,wu=4.5}
C.abilities["wh2_dlc13_lord_abilities_funnel_of_flame"] = {ai="augment_ranged",cd=90,dur=33,er=55,mana=0,mc=0,minr=0,n="Funnel of Flame",nf=-1,rng=100,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc13_lord_abilities_hail_of_fire"] = {ai="augment_ranged",cd=90,dur=22,er=55,mana=0,mc=0,minr=0,n="Hail of Fire",nf=-1,rng=100,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc13_lord_abilities_hunters_snare"] = {ai="hex_speed_area",cd=90,dur=11,er=35,mana=0,mc=0,minr=0,n="Hunter's Snare",ne=-1,rng=100,src="active",te=true,tg=true,ty="area_of_hexes",uses=3,wu=0}
C.abilities["wh2_dlc13_lord_abilities_hunters_trap"] = {ai="hex_speed_area",cd=90,dur=22,er=35,mana=0,mc=0,minr=0,n="Hunter's Trap",ne=-1,rng=100,src="active",te=true,tg=true,ty="area_of_hexes",uses=3,wu=0}
C.abilities["wh2_dlc13_lord_abilities_kill_shot"] = {ai="projectile_homing_single_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Focused Shot",rad=1,rng=250,src="active",te=true,ty="magic_missile",uses=2,wu=5}
C.abilities["wh2_dlc13_lord_abilities_miasma_of_despair"] = {ai="hex_morale_area",cd=90,dur=16,er=35,mana=0,mc=0,minr=0,n="Miasma of Despair",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh2_dlc13_lord_abilities_monstrous_strength"] = {ai="augment_melee_self",cd=90,dur=35,er=0,mana=0,mc=0,minr=0,n="Monstrous Strength",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc13_lord_abilities_oil_flask"] = {ai="hex_speed_under_fire",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Oil Flask",rad=7,rng=70,src="active",te=true,ty="magic_missile",uses=3,wu=1.9}
C.abilities["wh2_dlc13_lord_abilities_primal_roar"] = {ai="augment_melee_area",cd=120,dur=25,er=35,mana=0,mc=0,minr=0,n="Primal Roar",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc13_lord_abilities_rock_of_itza"] = {ai="augment_melee_self",cd=60,dur=24,er=0,mana=0,mc=0,minr=0,n="Rok of Itza",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc13_unit_abilities_emergency_vent"] = {cd=60,dmg=2,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Emergency Vent",rad=15,rng=0,sa=true,src="active",ty="explosion",wu=0}
C.abilities["wh2_dlc13_weapon_abilities_amber_bow"] = {ai="projectile_homing_single_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Amber Bow",rad=1,rng=250,src="active",te=true,ty="magic_missiles",uses=2,wu=4.5}
C.abilities["wh2_dlc13_weapon_abilities_averland_runefang"] = {ai="hex_melee",cd=120,dur=33,er=0,mana=0,mc=0,minr=0,n="The Averland Runefang",ne=1,rng=100,src="active",te=true,ty="hex",wu=0}
C.abilities["wh2_dlc13_weapon_abilities_drakwald_runefang"] = {ai="augment_melee_self",cd=120,dur=39,er=0,mana=0,mc=0,minr=0,n="The Drakwald Runefang",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc13_weapon_abilities_hochland_runefang"] = {ai="hex_melee_area_self",cd=120,dur=24,er=35,mana=0,mc=0,minr=0,n="The Hochland Runefang",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh2_dlc13_weapon_abilities_mace_of_ulumak"] = {ai="augment_melee_self",cd=120,dur=24,er=0,mana=0,mc=0,minr=0,n="Mace of Ulumak",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc13_weapon_abilities_nordland_runefang"] = {ai="augment_melee_self",cd=120,dur=22,er=35,mana=0,mc=0,minr=0,n="The Nordland Runefang",ne=-1,rng=0,src="active",ty="area_of_direct_damage",wu=0}
C.abilities["wh2_dlc13_weapon_abilities_ostermark_runefang"] = {ai="augment_melee_area",cd=120,dur=27,er=35,mana=0,mc=0,minr=0,n="The Ostermark Runefang",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc13_weapon_abilities_ostland_runefang"] = {ai="augment_melee_self",cd=120,dur=38,er=0,mana=0,mc=0,minr=0,n="The Ostland Runefang",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc13_weapon_abilities_talabecland_runefang"] = {ai="augment_melee_self",cd=120,dur=41,er=0,mana=0,mc=0,minr=0,n="The Talabecland Runefang",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc13_weapon_abilities_wissenland_runefang"] = {ai="hex_melee_area_self",cd=120,dur=29,er=35,mana=0,mc=0,minr=0,n="The Wissenland Runefang",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh2_dlc14_character_abilities_cracklebomb"] = {ai="projectile_explosive",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Cracklebomb",rad=7,rng=70,src="active",te=true,ty="magic_missile",uses=3,wu=0.8}
C.abilities["wh2_dlc14_character_abilities_from_the_shadows"] = {ai="augment_melee_area",cd=90,dur=58,er=35,mana=0,mc=0,minr=0,n="From the Shadows",nf=-1,rng=200,sa=true,src="active",tg=true,ts=true,ty="area_of_augments",wu=0}
C.abilities["wh2_dlc14_lord_abilities_beastslaver"] = {ai="augment_melee_self",cd=60,dur=34,er=0,mana=0,mc=0,minr=0,n="Beastslaver",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc14_lord_abilities_bloodstorm"] = {ai="aoe_centred_on_self",cd=60,dmg=18,dur=9,er=0,mana=0,mc=0,minr=0,n="Bloodstorm",rad=15,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc14_lord_abilities_deathmasters_sigil"] = {ai="hex_melee",cd=90,dmg=24,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Deathmaster's Sigil",rad=15,rng=100,src="active",te=true,ty="hex",wu=0}
C.abilities["wh2_dlc14_lord_abilities_halo_of_maidenly_wrath"] = {ai="aoe_centred_on_self",cd=120,dmg=12,dur=3,er=0,mana=0,mc=0,minr=0,n="Halo of Maidenly Wrath",rad=15,rng=0,sa=true,src="active",ty="explosion",wu=0}
C.abilities["wh2_dlc14_lord_abilities_looming_dread"] = {ai="hex_melee",cd=90,dur=31,er=0,mana=0,mc=0,minr=0,n="Looming Dread",rng=150,src="active",te=true,ty="hex",wu=0}
C.abilities["wh2_dlc14_lord_abilities_reaper_of_souls"] = {ai="direct_damage_single_entity_area",cd=90,dur=9,er=35,heal=true,mana=0,mc=0,minr=0,n="Reaper of Souls",ne=-1,nf=1,rng=0,sa=true,src="active",ty="area_of_direct_damage",wu=0}
C.abilities["wh2_dlc14_lord_abilities_the_blood_price"] = {ai="augment_melee_self",cd=90,dur=22,er=0,mana=0,mc=0,minr=0,n="The Blood Price",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc14_lord_abilities_the_daemons_curse"] = {ai="hex_melee_area_self",cd=120,dur=34,er=35,mana=0,mc=0,minr=0,n="The Daemon's Curse",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh2_dlc14_lord_abilities_tzarkan"] = {ai="tzarkan",cd=0,dur=0,er=0,mana=0,mc=0,minr=0,n="Tz'arkan",nf=1,rng=0,sa=true,src="active",tr=true,ty="transform",wu=3}
C.abilities["wh2_dlc14_lord_abilities_tzarkan_mp"] = {ai="tzarkan",cd=0,dur=0,er=0,mana=0,mc=0,minr=0,n="Tz'arkan",nf=1,rng=0,sa=true,src="active",tr=true,ty="transform",wu=3}
C.abilities["wh2_dlc14_lord_abilities_tzarkan_snikch"] = {ai="tzarkan",cd=0,dur=0,er=0,mana=0,mc=0,minr=0,n="Tz'arkan",nf=1,rng=0,sa=true,src="active",tr=true,ty="augment",wu=1.5}
C.abilities["wh2_dlc14_lord_abilities_tzarkan_spite"] = {ai="tzarkan",cd=0,dur=0,er=0,mana=0,mc=0,minr=0,n="Tz'arkan",nf=1,rng=0,sa=true,src="active",tr=true,ty="transform",wu=3}
C.abilities["wh2_dlc14_lord_abilities_tzarkan_spite_mp"] = {ai="tzarkan",cd=0,dur=0,er=0,mana=0,mc=0,minr=0,n="Tz'arkan",nf=1,rng=0,sa=true,src="active",tr=true,ty="transform",wu=3}
C.abilities["wh2_dlc14_lord_abilities_whiplash"] = {ai="augment_melee",cd=90,dur=21,er=0,mana=0,mc=0,minr=0,n="Whiplash!",nf=1,rng=100,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh2_dlc14_spell_bound_warpfireball"] = {ai="projectile_homing_single",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Warp-Fireball",rad=5,rng=300,src="bound",te=true,ty="magic_missile",uses=4,wu=0}
C.abilities["wh2_dlc14_spell_grey_seer_the_dreaded_thirteenth_spell_upgraded"] = {ai="hex_melee_area",cd=52,dur=13,er=0,ff=true,mana=20,mc=0,minr=0,n="The Dreaded Thirteenth Spell",rad=20.1,rng=100,src="spell",sum=true,te=true,tg=true,ty="explosion",upg=true,uses=2,wu=5}
C.abilities["wh2_dlc14_spell_ruin_flensing_ruin"] = {ai="direct_damage_single_entity_area",cd=52,dur=22,er=35,mana=15,mc=0,minr=0,n="Flensing Ruin",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_direct_damage",wu=5}
C.abilities["wh2_dlc14_spell_ruin_flensing_ruin_upgraded"] = {ai="direct_damage_single_entity_area",cd=52,dur=34,er=35,mana=22,mc=0.5,minr=0,n="Flensing Ruin Upgraded",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_direct_damage",upg=true,wu=5}
C.abilities["wh2_dlc14_spell_stealth_armour_of_darkness"] = {ai="augment_ranged",cd=43,dur=44,er=0,mana=7,mc=0,minr=0,n="Armour of Darkness",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh2_dlc14_spell_stealth_armour_of_darkness_upgraded"] = {ai="augment_ranged_area",cd=43,dur=44,er=35,mana=11,mc=0.5,minr=0,n="Armour of Darkness Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=3}
C.abilities["wh2_dlc14_spell_stealth_black_whirlwind"] = {ai="vortex_ap",cd=47,dmg=3,dur=17,er=0,ff=true,mana=13,mc=0,minr=0,n="Black Whirlwind",rad=15,rng=150,src="spell",te=true,tg=true,ts=true,ty="vortex",wu=5}
C.abilities["wh2_dlc14_spell_stealth_black_whirlwind_upgraded"] = {ai="vortex_ap",cd=47,dmg=4,dur=17,er=0,ff=true,mana=19,mc=0.5,minr=0,n="Black Whirlwind Upgraded",rad=15,rng=150,src="spell",te=true,tg=true,ts=true,ty="vortex",upg=true,wu=5}
C.abilities["wh2_dlc14_spell_stealth_brittle_bone"] = {ai="hex_melee",cd=47,dur=39,er=0,mana=11,mc=0,minr=0,n="Brittle Bone",ne=1,rng=200,src="spell",te=true,ty="hex",wu=5}
C.abilities["wh2_dlc14_spell_stealth_brittle_bone_upgraded"] = {ai="hex_melee_area",cd=47,dur=39,er=35,mana=18,mc=0.5,minr=0,n="Brittle Bone Upgrade",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",upg=true,wu=5}
C.abilities["wh2_dlc14_spell_stealth_veil_of_shadows"] = {ai="hex_ranged_area",cd=38,dmg=0,dur=26,er=0,mana=6,mc=0,minr=0,n="Veil of Shadows",rad=25,rng=200,src="spell",te=true,tg=true,ts=true,ty="vortex",wu=3}
C.abilities["wh2_dlc14_spell_stealth_veil_of_shadows_upgraded"] = {ai="hex_ranged_area",cd=38,dmg=0,dur=26,er=0,mana=10,mc=0.5,minr=0,n="Veil of Shadows Upgraded",rad=25,rng=200,src="spell",te=true,tg=true,ts=true,ty="vortex",upg=true,wu=3}
C.abilities["wh2_dlc14_spell_stealth_warp_stars"] = {ai="projectile_explosive_ap",cd=28,dur=0,er=0,ff=true,mana=4,mc=0,minr=0,n="Warp Stars",rad=1,rng=200,sa=true,src="spell",te=true,ty="magic_missiles",wu=1}
C.abilities["wh2_dlc14_spell_stealth_warp_stars_upgraded"] = {ai="projectile_explosive_ap",cd=28,dur=0,er=0,ff=true,mana=7,mc=0.5,minr=0,n="Warp Stars Upgraded",rad=1,rng=200,sa=true,src="spell",te=true,ty="magic_missiles",upg=true,wu=1}
C.abilities["wh2_dlc14_unit_abilities_doppelgang"] = {ai="threatened",cd=90,dur=60,er=0,fm=true,mana=0,mc=1,minr=0,n="Doppelgang",nf=1,rng=50,sa=true,src="active",sum=true,tf=true,tg=true,ts=true,ty="hiding",uses=2,wu=0}
C.abilities["wh2_dlc14_unit_abilities_seismic_snare"] = {ai="hex_melee_area_self",cd=60,dur=13,er=35,mana=0,mc=0,minr=0,n="Seismic Snare",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh2_dlc14_unit_abilities_wail_of_malice"] = {ai="direct_damage_multi_entity_area",cd=90,dur=7,er=35,mana=0,mc=0,minr=0,n="Wail of Malice",ne=-1,rng=0,src="active",ty="area_of_direct_damage",uses=2,wu=0}
C.abilities["wh2_dlc14_unit_abilities_warp_quake"] = {ai="direct_damage_multi_entity_area",cd=90,dur=17,er=35,mana=0,mc=0,minr=0,n="Warp-Quake",ne=-1,rng=0,src="active",ty="area_of_direct_damage",wu=0}
C.abilities["wh2_dlc14_weapon_abilities_sword_of_lyonesse"] = {ai="augment_melee_self",cd=120,dur=24,er=0,mana=0,mc=0,minr=0,n="The Sword of Lyonesse",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc14_weapon_abilities_whirl_of_weeping_blades"] = {ai="hex_melee_area_self",cd=120,cm=true,dmg=108,dur=5,er=0,mana=0,mc=0,minr=0,n="Whirl of Weeping Blades",rad=5,rng=0,sa=true,src="active",ty="vortex",wu=0}
C.abilities["wh2_dlc15_character_abilities_burp_of_grom_0"] = {ai="aoe_centred_on_self",cd=60,dmg=10,dur=17,er=0,mana=0,mc=0,minr=0,n="Burp of Grom",rad=25,rng=0,sa=true,src="active",ty="explosion",wu=0}
C.abilities["wh2_dlc15_character_abilities_burp_of_grom_1"] = {ai="aoe_centred_on_self",cd=60,dmg=15,dur=17,er=0,mana=0,mc=0,minr=0,n="Burp of Grom",rad=25,rng=0,sa=true,src="active",ty="explosion",wu=0}
C.abilities["wh2_dlc15_character_abilities_burp_of_grom_2"] = {ai="aoe_centred_on_self",cd=60,dmg=20,dur=17,er=0,mana=0,mc=0,minr=0,n="Burp of Grom",rad=25,rng=0,sa=true,src="active",ty="explosion",wu=0}
C.abilities["wh2_dlc15_character_abilities_fishy_breathe"] = {ai="vortex_breath",cd=32,dmg=18,dur=6,er=0,ff=true,mana=0,mc=0,minr=0,n="Fishy Breath",rad=16,rng=50,src="active",te=true,tg=true,ty="wind",uses=3,vlen=60,wu=0.5}
C.abilities["wh2_dlc15_character_abilities_goggly_glare"] = {ai="projectile_homing_single",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Goggly Glare",rad=1,rng=250,src="active",te=true,ty="magic_missiles",uses=3,wu=1}
C.abilities["wh2_dlc15_character_abilities_sausage_busta"] = {ai="augment_melee_area",cd=120,dur=36,er=35,mana=0,mc=0,minr=0,n="Bangers & Smash",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",uses=3,wu=1}
C.abilities["wh2_dlc15_character_abilities_slimy_smoothie"] = {ai="healing_area",cd=30,dmg=0,dur=14,er=35,ff=true,mana=0,mc=0,minr=0,n="Slime Smoothie",nf=4,rad=15,rng=100,sa=true,src="active",tf=true,tg=true,ts=true,ty="area_of_augments",uses=3,wu=1}
C.abilities["wh2_dlc15_character_abilities_they_needs_stabbin"] = {ai="hex_melee",cd=60,dur=29,er=0,mana=0,mc=0,minr=0,n="They Needs Stabbin’",ne=1,rng=75,src="active",te=true,ty="hex",wu=0}
C.abilities["wh2_dlc15_character_abilities_wardens_cage"] = {ai="hex_melee",cd=120,dur=25,er=0,fm=true,mana=0,mc=0,minr=0,n="Warden's Cage",ne=1,rng=100,src="active",te=true,ty="direct_damage",uses=1,wu=0}
C.abilities["wh2_dlc15_hero_abilities_mither"] = {ai="hex_morale",cd=60,dur=15,er=0,mana=0,mc=0,minr=0,n="Mither",ne=1,rng=75,src="active",te=true,ty="hex",uses=3,wu=0}
C.abilities["wh2_dlc15_hero_abilities_swamp_breath"] = {ai="projectile_homing_single",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Swamp Breath",rad=5,rng=60,src="active",te=true,ty="magic_missile",uses=3,wu=1.2}
C.abilities["wh2_dlc15_item_abilities_armour_of_caledor"] = {ai="augment_spellcasting",cd=180,cm=true,dur=20,er=0,heal=true,mana=0,mc=0,minr=0,n="Armour of Caledor",rng=0,sa=true,src="active",ty="augment",uses=3,wu=0}
C.abilities["wh2_dlc15_item_abilities_azhags_ard_armour"] = {ai="augment_melee_area",cd=120,dur=38,er=35,mana=0,mc=0,minr=0,n="Azhag's 'Ard Armour",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc15_item_abilities_blacktoofs_conjuration"] = {ai="threatened",cd=300,dur=1,er=0,mana=0,mc=1,minr=0,n="Blacktoof's Conjuration",nf=1,rng=50,sa=true,src="active",sum=true,tf=true,tg=true,ts=true,ty="augment",uses=1,wu=0}
C.abilities["wh2_dlc15_item_abilities_blood_forged_armour"] = {ai="aoe_centred_on_self",cd=30,dmg=16,dur=12,er=0,mana=0,mc=0,minr=0,n="Blood-Forged Armour",rad=15,rng=0,sa=true,src="active",ty="explosion",wu=0}
C.abilities["wh2_dlc15_item_abilities_helm_of_yvresse"] = {ai="augment_melee",cd=120,dur=17,er=0,mana=0,mc=0,minr=0,n="Helm of Yvresse",nf=1,rng=50,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh2_dlc15_item_abilities_lucky_banner"] = {ai="augment_melee",cd=120,dur=25,er=0,mana=0,mc=0,minr=0,n="Lucky Banner",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc15_item_abilities_vine_dragon_scale"] = {cd=120,dur=14,er=35,mana=0,mc=0,minr=0,n="Vine Dragon Scale",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh2_dlc15_lord_abilities_da_boss_loons"] = {ai="vortex_breath",cd=30,dmg=18,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Da Boss' Loons",rad=4,rng=15,src="active",te=true,tg=true,ty="vortex",uses=2,vlen=84,wu=0}
C.abilities["wh2_dlc15_lord_abilities_da_great_un_iz_ere"] = {ai="augment_melee_area",cd=90,dur=21,er=35,mana=0,mc=0,minr=0,n="Da Great 'Un Iz 'Ere!",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc15_lord_abilities_dont_even_try_it"] = {ai="hex_melee",cd=90,dur=18,er=0,mana=0,mc=0,minr=0,n="Don't Even Try It",ne=1,rng=100,src="active",te=true,ty="direct_damage",uses=2,wu=0}
C.abilities["wh2_dlc15_lord_abilities_dragonhorn"] = {ai="augment_melee_area",cd=120,dur=16,er=-1,mana=0,mc=0,minr=0,n="Dragonhorn",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",uses=3,wu=6}
C.abilities["wh2_dlc15_lord_abilities_fermented_fungi"] = {ai="hex_melee",cd=90,dur=15,er=0,mana=0,mc=0,minr=0,n="Fermented Fungi",ne=1,rng=75,src="active",te=true,ty="hex",uses=3,wu=0}
C.abilities["wh2_dlc15_lord_abilities_lord_of_dragons"] = {ai="hex_melee",cd=90,dur=22,er=0,mana=0,mc=0,minr=0,n="Lord of Dragons",rng=75,src="active",te=true,ty="hex",wu=0}
C.abilities["wh2_dlc15_lord_abilities_smash_em_faster"] = {ai="augment_melee_area",cd=90,dur=30,er=35,mana=0,mc=0,minr=0,n="Smash 'Em Faster",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc15_lord_abilities_youre_next"] = {ai="hex_melee",cd=90,dur=24,er=0,mana=0,mc=0,minr=0,n="You're Next!",ne=1,rng=75,src="active",te=true,ty="hex",wu=0}
C.abilities["wh2_dlc15_spell_beasts_transformation_of_kadon"] = {ai="threatened",cd=45,dur=1,er=0,mana=12,mc=0,minr=0,n="Transformation of Kadon",rng=50,sa=true,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=5}
C.abilities["wh2_dlc15_spell_bound_chain_lightning"] = {ai="vortex",cd=50,dmg=13,dur=20,er=0,ff=true,mana=0,mc=0,minr=0,n="Chain Lightning",rad=10,rng=150,src="spell",te=true,tg=true,ty="vortex",uses=2,vlen=42,wu=5}
C.abilities["wh2_dlc15_spell_bound_gaze_of_nagash"] = {ai="projectile_homing_single_ap",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Gaze of Nagash",rad=1,rng=250,src="bound",te=true,ty="magic_missiles",uses=3,wu=3}
C.abilities["wh2_dlc15_spell_bound_wind_of_death"] = {ai="vortex_wind",cd=120,dmg=24,dur=5,er=0,ff=true,mana=0,mc=0,minr=0,n="Wind of Death",rad=6,rng=150,src="bound",te=true,tg=true,ty="wind",uses=1,vlen=100,wu=5}
C.abilities["wh2_dlc15_unit_abilities_arachneruption"] = {ai="aoe_bombardment",cd=90,dur=2,er=0,ff=true,mana=0,mc=0,minr=0,n="Arachneruption",rad=19,rng=0,src="active",ty="bombardment",uses=3,wu=0}
C.abilities["wh2_dlc15_unit_abilities_emberstorm"] = {ai="always_use_only_land",cd=90,dmg=12,dur=11.5,er=0,ff=true,mana=0,mc=0,minr=0,n="Emberstorm",ne=-1,rad=10,rng=10,sa=true,src="active",ty="vortex",uses=3,wu=1.5}
C.abilities["wh2_dlc15_unit_abilities_mighty_roar"] = {ai="hex_morale_area",cd=90,dur=25,er=35,mana=0,mc=0,minr=0,n="Mighty Roar",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh2_dlc15_unit_abilities_mimic_cold_blooded"] = {ai="augment_morale",cd=60,dur=40,er=0,mana=0,mc=0,minr=0,n="Mirror (Cold-Blooded)",rng=0,sa=true,src="active",ty="augment",uses=2,wu=0}
C.abilities["wh2_dlc15_unit_abilities_mimic_feint_and_riposte"] = {ai="augment_melee",cd=90,dur=28,er=0,mana=0,mc=0,minr=0,n="Mirror (Feint & Riposte)",rng=0,sa=true,src="active",ty="augment",uses=2,wu=0}
C.abilities["wh2_dlc15_unit_abilities_mimic_grand_hammer_of_faith"] = {ai="augment_melee",cd=90,dur=50,er=0,mana=0,mc=0,minr=0,n="Mirror (Grand Hammer of Faith)",rng=0,sa=true,src="active",ty="augment",uses=2,wu=0}
C.abilities["wh2_dlc15_unit_abilities_mimic_grom_waaagh"] = {ai="augment_melee",cd=120,dur=18,er=0,heal=true,mana=0,mc=0,minr=0,n="Mirror (Grom's Big Waaagh!)",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc15_unit_abilities_mimic_loecs_shroud"] = {ai="flanking_opportunity",cd=120,dur=44,er=0,fm=true,mana=0,mc=0,minr=0,n="Mirror (Loec's Shroud)",nf=1,rng=0,sa=true,src="active",ty="hiding",wu=0}
C.abilities["wh2_dlc15_unit_abilities_mimic_ruinshelter"] = {cd=90,dur=60,er=0,mana=0,mc=0,minr=0,n="Ruinshelter",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc15_unit_abilities_mimic_waaagh"] = {ai="augment_melee",cd=90,dur=18,er=0,mana=0,mc=0,minr=0,n="Mirror (Waaagh!)",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc15_unit_abilities_noxious_breath_imrik"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Shackolot's Noxious Breath",rad=5,rng=80,src="active",te=true,ty="magic_missiles",uses=3,wu=1.3}
C.abilities["wh2_dlc15_unit_abilities_rock_bottom"] = {cd=45,dur=1,er=0,mana=0,mc=0,minr=0,n="Rock Bottom",rng=0,sa=true,src="active",ty="augment",wu=1}
C.abilities["wh2_dlc15_unit_abilities_sun_dragon_breath_imrik"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Gordinar's Dragon Breath",rad=10,rng=80,src="active",te=true,ty="magic_missiles",uses=3,wu=1.3}
C.abilities["wh2_dlc15_weapon_abilities_axe_of_grom"] = {ai="augment_melee",cd=120,dur=29,er=0,mana=0,mc=0,minr=0,n="Axe of Grom",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc15_weapon_abilities_fangsword_of_eltharion"] = {ai="augment_melee",cd=120,dur=31,er=0,mana=0,mc=0,minr=0,n="Fangsword of Eltharion",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc15_weapon_abilities_star_lance"] = {ai="augment_melee",cd=120,dur=29,er=0,mana=0,mc=0,minr=0,n="Star Lance",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc16_army_abilities_transformation_of_kadon"] = {ai="threatened",cd=45,dur=1,er=0,mana=0,mc=0,minr=0,n="Transformation of Kadon",rng=-1,sa=true,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=0}
C.abilities["wh2_dlc16_character_abilities_befuddlement_of_mischiefs"] = {ai="aoe",cd=90,dur=11,er=35,mana=0,mc=0,minr=0,n="Befuddlement of Mischiefs",ne=-1,rng=100,src="active",te=true,tg=true,ty="area_of_hexes",uses=3,wu=0}
C.abilities["wh2_dlc16_character_abilities_blight_of_terrors"] = {ai="hex_morale_area",cd=90,dur=20,er=35,mana=0,mc=0,minr=0,n="Blight of Terrors",ne=-1,rng=0,src="active",ty="area_of_hexes",uses=3,wu=0}
C.abilities["wh2_dlc16_character_abilities_muster_of_malevolents"] = {ai="hex_melee",cd=90,dur=15,er=0,mana=0,mc=0,minr=0,n="Muster of Malevolents",ne=1,rng=75,src="active",te=true,ty="direct_damage",uses=3,wu=0}
C.abilities["wh2_dlc16_character_abilities_pageant_of_shrikes"] = {ai="hex_ranged",cd=90,dur=20,er=0,mana=0,mc=0,minr=0,n="Pageant of Shrikes",ne=1,rng=75,src="active",te=true,ty="hex",uses=3,wu=0}
C.abilities["wh2_dlc16_hero_abilities_evisceration"] = {ai="aoe_centred_on_self",cd=90,cm=true,dmg=120,dur=4,er=0,mana=0,mc=0,minr=0,n="Evisceration",rad=6,rng=0,sa=true,src="active",ty="vortex",wu=0}
C.abilities["wh2_dlc16_hero_abilities_shock_collar"] = {ai="augment_morale",cd=60,dur=24,er=0,mana=0,mc=0,minr=0,n="Shock Collar",nf=1,rng=100,sa=true,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh2_dlc16_hero_abilities_tide_of_death"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Tide of Death",nf=1,rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="augment",uses=1,wu=0}
C.abilities["wh2_dlc16_hero_abilities_tide_of_pox"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Tide of Pox",nf=1,rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="augment",uses=1,wu=0}
C.abilities["wh2_dlc16_hero_abilities_warp_frenzy"] = {ai="augment_melee",cd=90,dur=29,er=0,mana=0,mc=0,minr=0,n="Warp Frenzy",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc16_item_abilities_acorns_of_the_oak_of_ages"] = {ai="aoe",cd=120,dmg=20,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Acorns of the Oak of Ages",rad=15,rng=200,sa=true,src="active",te=true,tg=true,ty="explosion",uses=2,wu=3}
C.abilities["wh2_dlc16_item_abilities_berry_wine"] = {ai="healing",cd=120,dur=14,er=0,heal=true,mana=0,mc=0,minr=0,n="Berry Wine",nf=1,rng=60,sa=true,src="active",tf=true,ts=true,ty="augment",uses=1,wu=0}
C.abilities["wh2_dlc16_item_abilities_dart_of_doom"] = {ai="projectile_homing_single_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Dart of Doom",rad=7,rng=200,src="active",te=true,ty="magic_missile",uses=3,wu=1}
C.abilities["wh2_dlc16_item_abilities_dreaming_cloak_i"] = {ai="artillery_opportunity",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Dreaming Cloak I",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=1}
C.abilities["wh2_dlc16_item_abilities_dreaming_cloak_ii"] = {ai="artillery_opportunity",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Dreaming Cloak II",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=1}
C.abilities["wh2_dlc16_item_abilities_dreaming_cloak_iii"] = {ai="artillery_opportunity",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Dreaming Cloak III",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=1}
C.abilities["wh2_dlc16_item_abilities_dreaming_ring_i"] = {ai="healing",cd=60,dur=13,er=0,heal=true,mana=0,mc=0,minr=0,n="Dreaming Ring I",nf=1,rng=200,sa=true,src="active",tf=true,ts=true,ty="regeneration",wu=0}
C.abilities["wh2_dlc16_item_abilities_dreaming_ring_ii"] = {ai="healing",cd=90,dur=13,er=0,heal=true,mana=0,mc=0,minr=0,n="Dreaming Ring II",nf=1,rng=200,sa=true,src="active",tf=true,ts=true,ty="regeneration",wu=0}
C.abilities["wh2_dlc16_item_abilities_dreaming_ring_iii"] = {ai="healing",cd=120,dur=17,er=0,heal=true,mana=0,mc=0,minr=0,n="Dreaming Ring III",nf=1,rng=200,sa=true,src="active",tf=true,ts=true,ty="regeneration",wu=0}
C.abilities["wh2_dlc16_item_abilities_eagle_quiver"] = {ai="projectile_homing_single",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Eagle Quiver",rad=3,rng=400,src="active",te=true,ty="magic_missile",uses=2,wu=0}
C.abilities["wh2_dlc16_item_abilities_twilight_horn_i"] = {ai="augment_melee",cd=60,dur=33,er=0,mana=0,mc=0,minr=0,n="Twilight Horn I",nf=1,rng=200,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh2_dlc16_item_abilities_twilight_horn_ii"] = {ai="augment_melee",cd=90,dur=36,er=35,mana=0,mc=0,minr=0,n="Twilight Horn II",nf=-1,rng=200,sa=true,src="active",tf=true,tg=true,ts=true,ty="augment",wu=0}
C.abilities["wh2_dlc16_lord_abilities_beast_pack"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Beast Pack",nf=1,rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="augment",uses=1,wu=0}
C.abilities["wh2_dlc16_lord_abilities_call_to_ceithin_har"] = {ai="threatened",cd=120,dur=0,er=0,mana=0,mc=0,minr=0,n="Call to Ceithin-Har",rng=50,sa=true,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh2_dlc16_lord_abilities_call_to_gwindalor"] = {ai="threatened",cd=120,dur=0,er=0,mana=0,mc=0,minr=0,n="Call to Gwindalor",nf=1,rng=50,sa=true,src="active",sum=true,tf=true,tg=true,ts=true,ty="augment",uses=1,wu=0}
C.abilities["wh2_dlc16_lord_abilities_loecs_blessing"] = {ai="full_hide",cd=90,dur=32,er=35,mana=0,mc=0,minr=0,n="Loec's Blessing",nf=-1,rng=100,sa=true,src="active",tf=true,tg=true,ts=true,ty="area_of_augments",wu=0}
C.abilities["wh2_dlc16_lord_abilities_remouldered"] = {ai="healing",cd=120,dur=24,er=0,heal=true,mana=0,mc=0,minr=0,n="Remouldered",nf=1,rng=100,sa=true,src="active",tf=true,ty="augment",uses=3,wu=0}
C.abilities["wh2_dlc16_lord_abilities_roused_to_wrath"] = {ai="threatened",cd=90,dur=1,er=0,mana=0,mc=0,minr=0,n="Roused to Wrath",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=1}
C.abilities["wh2_dlc16_lord_abilities_roused_to_wrath_2"] = {ai="threatened",cd=90,dur=1,er=0,mana=0,mc=0,minr=0,n="Roused to Wrath",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=1}
C.abilities["wh2_dlc16_spell_bound_death_frenzy"] = {ai="augment_melee",cd=90,dur=28,er=0,mana=0,mc=0,minr=0,n="Death Frenzy",nf=1,rng=0,sa=true,src="active",ty="augment",uses=1,wu=3}
C.abilities["wh2_dlc16_spell_bound_earth_blood"] = {ai="healing_area",cd=60,dur=7,er=35,heal=true,mana=0,mc=0,minr=0,n="Earth Blood",nf=4,rng=200,sa=true,src="bound",tf=true,tg=true,ts=true,ty="area_of_regeneration",uses=2,wu=0}
C.abilities["wh2_dlc16_spell_bound_flesh_to_stone"] = {ai="augment_melee",cd=90,dur=19,er=0,mana=0,mc=0,minr=0,n="Flesh to Stone",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="augment",uses=3,wu=0}
C.abilities["wh2_dlc16_spell_bound_regrowth"] = {ai="healing",cd=120,dur=26,er=0,heal=true,mana=0,mc=0,minr=0,n="Regrowth",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="regeneration",uses=1,wu=0}
C.abilities["wh2_dlc16_spell_bound_the_curse_of_anraheir"] = {ai="hex_melee_area",cd=120,dur=21,er=35,mana=0,mc=0,minr=0,n="The Curse of Anraheir",ne=-1,rng=200,src="bound",te=true,tg=true,ty="hex",uses=1,wu=0}
C.abilities["wh2_dlc16_spell_bound_vampires_lesser_raise_dead"] = {ai="threatened",cd=0,dur=1,er=0,mana=0,mc=0,minr=0,n="Lesser Raise Dead",nf=1,rng=50,src="bound",sum=true,tf=true,tg=true,ts=true,ty="augment",uses=1,wu=3}
C.abilities["wh2_dlc16_unit_abilities_acidic_musk_glands"] = {ai="hex_melee",cd=60,dur=19,er=35,mana=0,mc=0,minr=0,n="Acidic Musk Glands",ne=-1,nf=-1,rng=0,sa=true,src="active",ty="area_of_direct_damage",wu=0}
C.abilities["wh2_dlc16_unit_abilities_cellular_instability"] = {ai="augment_melee",cd=90,dmg=30,dur=6,er=0,ff=true,mana=0,mc=0,minr=0,n="Cellular Instability",rad=25,rng=0,sa=true,src="active",ty="explosion",uses=1,wu=1}
C.abilities["wh2_dlc16_unit_abilities_fluid_injection"] = {ai="augment_melee",cd=60,dur=22,er=0,mana=0,mc=0,minr=0,n="Fluid Injection!",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc16_unit_abilities_neuroparasites"] = {ai="healing",cd=120,dur=21,er=0,heal=true,mana=0,mc=0,minr=0,n="Necroparasites",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh2_dlc16_unit_abilities_volley_of_kurnous"] = {ai="projectile_homing_single",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Volley of Kurnous",rad=3,rng=400,src="active",te=true,ty="magic_missiles",uses=1,wu=0}
C.abilities["wh2_dlc16_unit_abilities_warp_lightning_rod"] = {ai="aoe_bombardment",cd=60,dur=5,er=0,ff=true,mana=0,mc=0,minr=0,n="Warp Lightning Rod",rad=14,rng=0,sa=true,src="active",ty="bombardment",uses=3,wu=1}
C.abilities["wh2_dlc16_unit_abilities_whirling_death"] = {cd=1,dur=0,er=0,mana=0,mc=0,minr=0,n="Whirling Death",rng=0,sa=true,src="active",ty="augment",wu=1}
C.abilities["wh2_dlc16_weapon_abilities_creature_killer"] = {ai="augment_melee_area",cd=120,dur=38,er=35,mana=0,mc=0,minr=0,n="Creature-Killer",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_dlc16_weapon_abilities_dragon_spear"] = {ai="augment_melee",cd=120,dur=25,er=0,mana=0,mc=0,minr=0,n="Dragon Spear",nf=1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc16_weapon_abilities_eagle_bow"] = {ai="full_hide",cd=60,dur=25,er=0,mana=0,mc=0,minr=0,n="Eagle Bow",nf=1,rng=200,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh2_dlc17_character_abilities_hunter_of_champions_upgraded"] = {cd=90,dur=24,er=0,mana=0,mc=0,minr=0,n="Hunter of Champions",rng=100,src="active",te=true,ty="hex",upg=true,wu=0}
C.abilities["wh2_dlc17_hero_abilities_cinderblast_shell"] = {ai="projectile_explosive_ap",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=10,n="Cinderblast Shell",rad=7,rng=200,src="active",te=true,ty="magic_missile",uses=3,wu=1}
C.abilities["wh2_dlc17_hero_abilities_more_powder_generic"] = {ai="ammo_replenish",cd=60,dur=10,er=0,mana=0,mc=0,minr=0,n="Restock!",nf=1,rng=100,src="active",tf=true,ty="augment",uses=4,wu=0}
C.abilities["wh2_dlc17_lord_abilities_barbed_knuckle_boxing"] = {ai="augment_melee",cd=90,dur=29,er=0,mana=0,mc=0,minr=0,n="Barbed-Knuckle Boxing",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc17_lord_abilities_bloodbeast"] = {ai="aoe_centred_on_self",cd=90,dmg=2,dur=6,er=0,ff=true,mana=0,mc=0,minr=0,n="Bloodbeast",rad=15,rng=0,sa=true,src="active",ty="explosion",wu=0}
C.abilities["wh2_dlc17_lord_abilities_brass_body"] = {ai="augment_melee",cd=120,dur=41,er=0,mana=0,mc=0,minr=0,n="Brass Body",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_dlc17_lord_abilities_master_predator"] = {ai="augment_ranged",cd=1,dur=0,er=0,mana=0,mc=0,minr=0,n="Master Predator",rng=0,sa=true,src="active",ty="augment",wu=1}
C.abilities["wh2_dlc17_lord_abilities_rune_of_doom"] = {ai="augment_melee_area",cd=120,dur=16,er=55,mana=0,mc=0,minr=0,n="Rune of Doom",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=5}
C.abilities["wh2_dlc17_rune_abilities_master_rune_of_breaking"] = {ai="augment_melee",cd=180,dur=55,er=0,mana=0,mc=0.5,minr=0,n="Master Rune of Breaking",nf=1,rng=100,sa=true,src="rune",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh2_dlc17_rune_abilities_master_rune_of_flight"] = {ai="projectile_explosive_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=5,n="Master Rune of Flight",rad=1.3,rng=100,src="active",te=true,ty="magic_missile",wu=0}
C.abilities["wh2_dlc17_rune_abilities_master_rune_of_immolation"] = {ai="aoe_bombardment",cd=30,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Master Rune of Immolation",rad=10,rng=0,src="active",ty="explosion",wu=0}
C.abilities["wh2_dlc17_rune_abilities_master_rune_of_slowness"] = {ai="hex_speed_under_fire",cd=180,dur=45,er=0,mana=0,mc=0.5,minr=0,n="Master Rune of Slowness",ne=1,rng=100,src="rune",te=true,ty="hex",wu=3}
C.abilities["wh2_dlc17_rune_abilities_master_rune_of_speed"] = {ai="augment_melee_area",cd=180,dur=40,er=35,mana=0,mc=0.5,minr=0,n="Master Rune of Speed",nf=-1,rng=100,sa=true,src="rune",tf=true,tg=true,ts=true,ty="area_of_augments",wu=3}
C.abilities["wh2_dlc17_rune_abilities_rune_of_breaking"] = {ai="augment_melee",cd=120,dur=33,er=0,mana=0,mc=0,minr=0,n="Rune of Breaking",nf=1,rng=100,sa=true,src="rune",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh2_dlc17_rune_abilities_rune_of_slowness"] = {ai="hex_speed_under_fire",cd=120,dur=30,er=0,mana=0,mc=0,minr=0,n="Rune of Slowness",ne=1,rng=100,src="rune",te=true,ty="hex",wu=3}
C.abilities["wh2_dlc17_rune_abilities_rune_of_speed"] = {ai="augment_melee_area",cd=120,dur=30,er=35,mana=0,mc=0,minr=0,n="Rune of Speed",nf=-1,rng=100,sa=true,src="rune",tf=true,tg=true,ts=true,ty="area_of_augments",wu=3}
C.abilities["wh2_dlc17_spell_bound_lesser_banishment"] = {ai="vortex",cd=120,dmg=7,dur=8,er=0,ff=true,mana=0,mc=0,minr=0,n="Lesser Banishment",rad=12,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=1,vlen=18,wu=5}
C.abilities["wh2_dlc17_spell_bound_lesser_chain_lightning"] = {ai="vortex",cd=120,dmg=13,dur=10,er=0,ff=true,mana=0,mc=0,minr=0,n="Lesser Chain Lightning",rad=10,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=1,vlen=22,wu=5}
C.abilities["wh2_dlc17_spell_bound_savage_dominion"] = {ai="artillery_opportunity",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Savage Dominion",nf=1,rng=50,src="bound",sum=true,tf=true,tg=true,ts=true,ty="augment",uses=2,wu=5}
C.abilities["wh2_dlc17_spell_bound_shield_of_thorns"] = {ai="augment_charged_at",cd=90,dur=30,er=0,mana=0,mc=0,minr=0,n="Shield of Thorns",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="augment",uses=2,wu=3}
C.abilities["wh2_dlc17_spell_bound_urannons_thunderbolt"] = {ai="aoe_bombardment",cd=90,dur=4,er=0,ff=true,mana=0,mc=0,minr=0,n="Urannon's Thunderbolt",rad=9,rng=300,src="bound",te=true,tg=true,ty="bombardment",uses=2,wu=3}
C.abilities["wh2_dlc17_spell_bound_urannons_thunderbolt_upgraded"] = {ai="aoe_bombardment",cd=30,dur=4,er=0,ff=true,mana=0,mc=0,minr=0,n="Klad Brakak",rad=9,rng=30,src="active",te=true,tg=true,ty="bombardment",upg=true,wu=3}
C.abilities["wh2_dlc17_spell_heavens_comet_of_casandora_bound_skink_oracle"] = {ai="aoe_bombardment",cd=120,dur=7,er=0,ff=true,mana=0,mc=1,minr=0,n="Comet of Casandora",rad=28,rng=200,src="spell",te=true,tg=true,ty="bombardment",uses=1,wu=5}
C.abilities["wh2_dlc17_spell_wild_mantle_of_ghorok_upgraded"] = {ai="augment_melee",cd=47,dur=52,er=0,mana=15,mc=0.5,minr=0,n="Mantle of Ghorok Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=5}
C.abilities["wh2_dlc17_unit_abilities_primeval_roar"] = {ai="augment_melee_area",cd=60,dur=31,er=35,mana=0,mc=0,minr=0,n="Primeval Roar",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=4.5}
C.abilities["wh2_dlc17_weapon_abilities_the_golden_blowpipe_of_ptoohee"] = {ai="projectile_homing_single",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=5,n="The Golden Blowpipe of P'Toohee",rng=200,src="active",te=true,ty="magic_missiles",wu=2.5}
C.abilities["wh2_main_character_abilities_arcane_vassal"] = {ai="aoe",cd=120,dmg=36,dur=1,er=0,mana=0,mc=0,minr=0,n="Arcane Vassal",rad=15,rng=200,sa=true,src="active",tf=true,ts=true,ty="explosion",wu=0}
C.abilities["wh2_main_character_abilities_assassins_trophy"] = {ai="hex_melee",cd=60,dur=29,er=0,mana=0,mc=0,minr=0,n="Assassin's Trophy",rng=150,src="active",te=true,ty="hex",wu=0}
C.abilities["wh2_main_character_abilities_black_lotus"] = {ai="augment_melee_self",cd=60,dur=44,er=0,mana=0,mc=0,minr=0,n="Black Lotus",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh2_main_character_abilities_cold_blooded"] = {ai="augment_morale",cd=60,dur=40,er=0,mana=0,mc=0,minr=0,n="Cold-Blooded",rng=200,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh2_main_character_abilities_concealment_bombs"] = {ai="flanking_opportunity",cd=90,dur=73,er=0,fm=true,mana=0,mc=0,minr=0,n="Concealment Bombs",rng=0,sa=true,src="active",ty="hiding",uses=3,wu=0}
C.abilities["wh2_main_character_abilities_dark_venom"] = {ai="augment_melee_self",cd=60,dur=40,er=0,mana=0,mc=0,minr=0,n="Dark Venom",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh2_main_character_abilities_shield_of_the_old_ones"] = {ai="augment_melee_area",cd=90,dur=17,er=35,mana=0,mc=0,minr=0,n="Shield of the Old Ones",nf=-1,rng=150,sa=true,src="active",tg=true,ts=true,ty="area_of_ward_save",wu=0}
C.abilities["wh2_main_character_abilities_swiftness_of_itzl"] = {ai="aoe_centred_on_self",cd=90,dmg=0,dur=32,er=0,mana=0,mc=0,minr=0,n="Swiftness of Itzl",rad=25,rng=0,sa=true,src="active",ty="explosion",wu=0}
C.abilities["wh2_main_character_abilities_verminous_valour"] = {ai="aoe_centred_on_self",cd=60,dmg=0,dur=17,er=0,mana=0,mc=0,minr=0,n="Verminous Valour",rad=25,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_main_character_abilities_volley_of_dark_arrows"] = {ai="projectile_explosive",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Volley of Dark Arrows",rad=4,rng=200,src="active",te=true,ty="magic_missiles",uses=3,wu=1}
C.abilities["wh2_main_character_abilities_volley_of_high_arrows"] = {ai="projectile_explosive",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Volley of High Arrows",rad=4,rng=200,src="active",te=true,ty="magic_missiles",uses=3,wu=1}
C.abilities["wh2_main_character_abilities_witchbrew"] = {ai="augment_melee_self",cd=90,dur=24,er=0,mana=0,mc=0,minr=0,n="Witchbrew",rng=0,sa=true,src="active",ty="augment",uses=3,wu=0}
C.abilities["wh2_main_hero_abilities_doomrocket"] = {ai="projectile_explosive",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Doomrocket",rad=6,rng=200,src="active",te=true,ty="magic_missile",uses=1,wu=1}
C.abilities["wh2_main_item_abilities_amulet_of_itzl"] = {ai="augment_defense_melee",cd=60,dur=18,er=0,mana=0,mc=0,minr=0,n="Amulet of Itzl",rng=0,sa=true,src="active",ty="ward_save",uses=1,wu=0}
C.abilities["wh2_main_item_abilities_armour_of_the_stars"] = {ai="flanking_opportunity",cd=90,dur=73,er=0,fm=true,mana=0,mc=0,minr=0,n="Armour of the Stars",rng=0,sa=true,src="active",ty="hiding",wu=0}
C.abilities["wh2_main_item_abilities_aura_of_quetzl"] = {ai="augment_defense_melee_area",cd=90,dur=25,er=35,mana=0,mc=0,minr=0,n="Aura of Quetzl",nf=-1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_main_item_abilities_black_dragon_egg"] = {ai="vortex_breath_ap",cd=90,dmg=16,dur=16,er=0,ff=true,mana=0,mc=0,minr=0,n="Black Dragon Egg",rad=6,rng=100,src="active",te=true,tg=true,ty="breath",uses=3,vlen=72,wu=3}
C.abilities["wh2_main_item_abilities_blade_of_bel_korhadris"] = {ai="augment_melee_self",cd=90,dur=38,er=0,mana=0,mc=0,minr=0,n="Blade of Bel-Korhadris",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_main_item_abilities_blood_statuette_of_spite"] = {ai="direct_damage_multi_entity",cd=60,dur=14,er=0,mana=0,mc=0,minr=0,n="Blood Statuette of Spite",ne=1,rng=100,src="active",te=true,ty="direct_damage",uses=2,wu=0}
C.abilities["wh2_main_item_abilities_book_of_hoeth"] = {ai="augment_spellcasting",cd=90,dur=36,er=0,mana=0,mc=0,minr=0,n="Book of Hoeth",rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh2_main_item_abilities_cube_of_darkness"] = {ai="hex_spellcaster",cd=60,dur=18,er=0,mana=0,mc=0,minr=0,n="Cube of Darkness",ne=1,rng=100,src="active",te=true,ty="hex_of_the_winds",wu=0}
C.abilities["wh2_main_item_abilities_dragonhorn"] = {ai="augment_ranged_area",cd=0,dur=28,er=35,mana=0,mc=0,minr=0,n="Horn of Vaul",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",uses=1,wu=0}
C.abilities["wh2_main_item_abilities_pearl_of_infinite_bleakness"] = {ai="augment_morale_area",cd=60,dur=44,er=35,mana=0,mc=0,minr=0,n="Pearl of Infinite Bleakness",nf=-1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_main_item_abilities_plaque_of_dominion"] = {ai="hex_morale_area",cd=60,dur=20,er=35,mana=0,mc=0,minr=0,n="Plaque of Dominion",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh2_main_item_abilities_rival_hide_talisman"] = {ai="hex_melee_area_self",cd=60,dur=31,er=35,mana=0,mc=0,minr=0,n="Rival Hide Talisman",ne=-1,rng=0,src="active",ty="area_of_hexes",uses=1,wu=0}
C.abilities["wh2_main_item_abilities_rod_of_corruption"] = {ai="aoe_centred_on_self",cd=120,dur=11,er=35,mana=0,mc=0,minr=0,n="Rod of Corruption",ne=-1,rng=0,src="active",ty="area_of_direct_damage",uses=3,wu=0}
C.abilities["wh2_main_item_abilities_scrying_stone"] = {ai="augment_defense_melee",cd=60,dur=30,er=0,mana=0,mc=0,minr=0,n="Scrying Stone",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_main_item_abilities_skalm"] = {ai="healing",cd=60,dur=33,er=0,heal=true,mana=0,mc=0,minr=0,n="Skalm",rng=0,sa=true,src="active",ty="regeneration",uses=1,wu=0}
C.abilities["wh2_main_item_abilities_skavenbrew"] = {ai="augment_melee",cd=90,dur=47,er=0,mana=0,mc=0,minr=0,n="Skavenbrew",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",uses=1,wu=0}
C.abilities["wh2_main_item_abilities_starwood_staff"] = {ai="augment_spellcasting",cd=90,dur=23,er=0,mana=0,mc=0,minr=0,n="Starwood Staff",rng=0,sa=true,src="active",ty="augment_of_the_winds",uses=3,wu=0}
C.abilities["wh2_main_item_abilities_talisman_of_loec"] = {ai="augment_melee_self",cd=0,dur=67,er=0,mana=0,mc=0,minr=0,n="Talisman of Loec",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh2_main_item_abilities_the_bane_shield"] = {ai="augment_defense_ranged_area",cd=0,dur=44,er=35,mana=0,mc=0,minr=0,n="The Bane Shield",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",uses=1,wu=0}
C.abilities["wh2_main_item_abilities_the_guiding_eye"] = {ai="augment_ranged_area",cd=60,dur=18,er=55,mana=0,mc=0,minr=0,n="The Guiding Eye",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_main_item_abilities_the_horn_of_kygor"] = {ai="augment_self_area",cd=90,dur=20,er=35,mana=0,mc=0,minr=0,n="The Horn of Kygor",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_main_item_abilities_the_liber_bubonicus"] = {ai="direct_damage_single_entity",cd=120,dur=15,er=0,mana=0,mc=0,minr=0,n="The Liber Bubonicus",ne=1,rng=100,src="active",te=true,ty="direct_damage",uses=2,wu=0}
C.abilities["wh2_main_item_abilities_the_tricksters_pendant"] = {ai="hex_spellcaster",cd=60,dur=16,er=35,mana=0,mc=0,minr=0,n="The Trickster's Pendant",ne=-1,rng=100,src="active",te=true,tg=true,ty="area_of_hexes",wu=0}
C.abilities["wh2_main_item_abilities_the_vortex_shard"] = {ai="hex_spellcaster",cd=60,dur=31,er=0,mana=0,mc=0,minr=0,n="The Vortex Shard",ne=1,rng=100,src="active",te=true,ty="hex_of_the_winds",uses=1,wu=0}
C.abilities["wh2_main_item_abilities_warpstorm_scroll"] = {ai="hex_flying_area",cd=60,dur=29,er=55,mana=0,mc=0,minr=0,n="Warpstorm Scroll",ne=-1,rng=100,src="active",te=true,tg=true,ty="area_of_direct_damage",uses=1,wu=0}
C.abilities["wh2_main_item_abilities_worlds_edge_armour"] = {ai="augment_melee_self",cd=60,dur=57,er=0,mana=0,mc=0,minr=0,n="World's Edge Armour",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh2_main_item_bound_gilded_horn_of_galon_konook"] = {ai="vortex",cd=90,dmg=21,dur=13,er=0,ff=true,mana=0,mc=0,minr=0,n="Gilded Horn of Galon Konook",rad=7,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=2,vlen=39,wu=3}
C.abilities["wh2_main_lord_abilities_feint_and_reposte"] = {ai="augment_melee_self",cd=90,dur=28,er=0,mana=0,mc=0,minr=0,n="Feint & Riposte",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_main_lord_abilities_gaze_of_malice"] = {ai="vortex_breath",cd=90,dmg=32,dur=8,er=0,ff=true,mana=0,mc=0,minr=0,n="Gaze of Malice",rad=14,rng=100,src="active",te=true,tg=true,ty="breath",uses=3,vlen=24,wu=3}
C.abilities["wh2_main_lord_abilities_potion_of_charoi"] = {ai="healing",cd=60,dur=9,er=0,heal=true,mana=0,mc=0,minr=0,n="Potion of Charoi",rng=0,sa=true,src="active",ty="regeneration",uses=4,wu=0}
C.abilities["wh2_main_lord_abilities_sacred_spawning_of_xhotl"] = {ai="augment_melee_self",cd=60,dur=20,er=0,mana=0,mc=0,minr=0,n="Sacred Spawning of Xhotl",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_main_lord_abilities_the_ruination_of_cities"] = {ai="vortex",cd=120,dmg=52,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="The Ruination of Cities",rad=7,rng=150,src="active",te=true,tg=true,ty="wind",uses=2,vlen=60,wu=5}
C.abilities["wh2_main_lord_abilities_trophy_heads"] = {ai="hex_melee",cd=90,dur=36,er=0,mana=0,mc=0,minr=0,n="Trophy Heads",rng=150,src="active",te=true,ty="hex",wu=0}
C.abilities["wh2_main_mount_abilities_unholy_clamour"] = {ai="augment_morale",cd=120,dur=18,er=-1,mana=0,mc=0.5,minr=0,n="Unholy Clamour",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh2_main_mount_bound_pestilent_breath"] = {ai="vortex_breath",cd=60,dmg=20,dur=8,er=0,ff=true,mana=0,mc=0.5,minr=0,n="Pestilent Breath",rad=12,rng=30,src="active",te=true,tg=true,ty="breath",vlen=48,wu=1}
C.abilities["wh2_main_mount_bound_scorch"] = {ai="vortex_breath",cd=90,dmg=36,dur=12,er=0,ff=true,mana=0,mc=0.5,minr=0,n="Scorch",rad=6,rng=150,src="active",te=true,tg=true,ty="breath",vlen=72,wu=3}
C.abilities["wh2_main_spell_bound_black_staff"] = {ai="augment_spellcasting",cd=90,dur=20,er=0,mana=0,mc=0,minr=0,n="Black Staff",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="augment_of_the_winds",uses=3,wu=0}
C.abilities["wh2_main_spell_bound_embers_of_the_phoenix"] = {ai="augment_ranged_area",cd=90,dur=28,er=35,mana=0,mc=0,minr=0,n="Embers of the Phoenix",nf=-1,rng=200,sa=true,src="bound",tf=true,tg=true,ts=true,ty="area_of_augments",uses=3,wu=0}
C.abilities["wh2_main_spell_bound_hand_of_gods"] = {ai="projectile_homing_single_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Hand of Gods",rad=1,rng=250,src="bound",te=true,ty="magic_missiles",uses=2,wu=0}
C.abilities["wh2_main_spell_bound_khaines_ring_of_fury"] = {ai="vortex_wind_ap",cd=120,dmg=35,dur=10,er=0,ff=true,mana=0,mc=0,minr=0,n="Bound Fiery Convocation",rad=7,rng=150,src="bound",te=true,tg=true,ty="wind",uses=2,vlen=132,wu=5}
C.abilities["wh2_main_spell_bound_radiant_gem_of_hoeth"] = {ai="healing",cd=60,dur=10,er=0,heal=true,mana=0,mc=0,minr=0,n="Radiant Gem of Hoeth",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="regeneration",uses=4,wu=0}
C.abilities["wh2_main_spell_bound_ring_of_corin"] = {ai="direct_damage_single_entity",cd=90,dur=22,er=0,mana=0,mc=0,minr=0,n="Ring of Corin",ne=1,rng=200,src="bound",te=true,tg=true,ty="direct_damage",uses=2,wu=0}
C.abilities["wh2_main_spell_bound_rod_of_the_storm"] = {ai="aoe_bombardment",cd=90,dur=4,er=0,ff=true,mana=0,mc=0,minr=0,n="Rod of the Storm",rad=9,rng=300,src="bound",te=true,tg=true,ty="bombardment",uses=3,wu=3}
C.abilities["wh2_main_spell_bound_rubric_of_dark_dimensions"] = {ai="aoe_ap",cd=90,dmg=5,dur=13,er=0,ff=true,mana=0,mc=0,minr=0,n="Rubric of Dark Dimensions",ne=-1,rad=15,rng=200,src="bound",te=true,tg=true,ty="vortex",uses=2,wu=6}
C.abilities["wh2_main_spell_bound_the_gem_of_sunfire"] = {ai="vortex",cd=90,dmg=17,dur=26,er=0,ff=true,mana=0,mc=0,minr=0,n="The Gem of Sunfire",rad=10,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=1,vlen=54,wu=5}
C.abilities["wh2_main_spell_bound_the_seerstaff_of_saphery"] = {ai="augment_ranged",cd=60,dur=22,er=0,mana=0,mc=0,minr=0,n="The Seerstaff of Saphery",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="augment",uses=4,wu=0}
C.abilities["wh2_main_spell_bound_tome_of_furion"] = {ai="aoe_bombardment",cd=60,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Tome of Furion",rad=13,rng=200,src="bound",te=true,ty="bombardment",uses=4,wu=5}
C.abilities["wh2_main_spell_bound_wand_of_the_kharaidon"] = {ai="aoe_bombardment",cd=120,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Wand of the Kharaidon",rad=13,rng=200,src="bound",te=true,ty="bombardment",uses=2,wu=5}
C.abilities["wh2_main_spell_bound_whip_of_agony"] = {ai="hex_melee",cd=90,dur=31,er=0,mana=0,mc=0,minr=0,n="Whip of Misery",ne=1,rng=200,src="bound",te=true,ty="hex",uses=3,wu=0}
C.abilities["wh2_main_spell_dark_magic_bladewind"] = {ai="vortex",cd=38,dmg=18,dur=7,er=0,ff=true,mana=11,mc=0,minr=0,n="Bladewind",rad=10,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=14,wu=3}
C.abilities["wh2_main_spell_dark_magic_bladewind_upgraded"] = {ai="vortex",cd=38,dmg=18,dur=14,er=0,ff=true,mana=15,mc=0.5,minr=0,n="Bladewind Upgraded",rad=10,rng=150,src="spell",te=true,tg=true,ty="vortex",upg=true,vlen=28,wu=3}
C.abilities["wh2_main_spell_dark_magic_chillwind"] = {ai="vortex_wind_ap",cd=29,dmg=16,dur=3,er=0,ff=true,mana=5,mc=0,minr=0,n="Chillwind",rad=6,rng=150,src="spell",te=true,tg=true,ty="wind",vlen=60,wu=1}
C.abilities["wh2_main_spell_dark_magic_chillwind_upgraded"] = {ai="vortex_wind_ap",cd=29,dmg=22,dur=3,er=0,ff=true,mana=8,mc=0.5,minr=0,n="Chillwind Upgraded",rad=6,rng=150,src="spell",te=true,tg=true,ty="wind",upg=true,vlen=60,wu=1}
C.abilities["wh2_main_spell_dark_magic_doombolt"] = {ai="aoe_bombardment",cd=47,dur=7,er=0,ff=true,mana=9,mc=0,minr=0,n="Doombolt",rad=13,rng=200,src="spell",te=true,ty="bombardment",wu=5}
C.abilities["wh2_main_spell_dark_magic_doombolt_upgraded"] = {ai="aoe_bombardment",cd=47,dur=7,er=0,ff=true,mana=14,mc=0.5,minr=0,n="Doombolt Upgraded",rad=13,rng=200,src="spell",te=true,ty="bombardment",upg=true,wu=5}
C.abilities["wh2_main_spell_dark_magic_power_of_darkness"] = {ai="power_of_darkness",cd=28,dur=20,er=0,mana=4,mc=0,minr=0,n="Power of Darkness",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment_of_the_winds",uses=2,wu=1}
C.abilities["wh2_main_spell_dark_magic_soul_stealer"] = {ai="direct_damage_single_entity_area",cd=54,dur=12,er=35,heal=true,mana=18,mc=0,minr=0,n="Soul Stealer",ne=-1,nf=1,rng=100,sa=true,src="spell",te=true,tg=true,ty="area_of_direct_damage",wu=5}
C.abilities["wh2_main_spell_dark_magic_word_of_pain"] = {ai="hex_melee",cd=44,dur=40,er=0,mana=8,mc=0,minr=0,n="Word of Pain",ne=1,rng=200,src="spell",te=true,ty="hex",wu=3}
C.abilities["wh2_main_spell_dark_magic_word_of_pain_upgraded"] = {ai="hex_melee",cd=44,dur=40,er=0,mana=12,mc=0.5,minr=0,n="Word of Pain Upgraded",ne=1,rng=200,src="spell",te=true,ty="hex",upg=true,wu=3}
C.abilities["wh2_main_spell_grey_seer_the_dreaded_thirteenth_spell"] = {ai="aoe_bombardment",cd=52,dur=13,er=0,ff=true,mana=20,mc=0,minr=0,n="The Dreaded Thirteenth Spell",rad=20.1,rng=100,src="spell",sum=true,te=true,tg=true,ty="explosion",uses=2,wu=5}
C.abilities["wh2_main_spell_high_magic_apotheosis"] = {ai="healing",cd=29,dur=10,er=0,heal=true,mana=5,mc=0,minr=0,n="Apotheosis",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="regeneration",wu=1}
C.abilities["wh2_main_spell_high_magic_apotheosis_upgraded"] = {ai="healing",cd=29,dur=10,er=0,heal=true,mana=7,mc=0.5,minr=0,n="Apotheosis Upgraded",nf=1,rng=600,sa=true,src="spell",tf=true,ts=true,ty="regeneration",upg=true,wu=1}
C.abilities["wh2_main_spell_high_magic_arcane_unforging"] = {ai="direct_damage_single_entity",cd=52,dur=22,er=0,mana=14,mc=0,minr=0,n="Arcane Unforging",ne=1,rng=100,src="spell",te=true,ty="direct_damage",wu=5}
C.abilities["wh2_main_spell_high_magic_arcane_unforging_upgraded"] = {ai="direct_damage_single_entity",cd=52,dur=22,er=0,mana=18,mc=0.5,minr=0,n="Arcane Unforging Upgraded",ne=1,rng=100,src="spell",te=true,ty="direct_damage",upg=true,wu=5}
C.abilities["wh2_main_spell_high_magic_fiery_convocation"] = {ai="vortex_wind_ap",cd=52,dmg=35,dur=10,er=0,ff=true,mana=13,mc=0,minr=0,n="Fiery Convocation",rad=7,rng=150,src="spell",te=true,tg=true,ty="wind",vlen=132,wu=5}
C.abilities["wh2_main_spell_high_magic_fiery_convocation_upgraded"] = {ai="vortex_wind_ap",cd=52,dmg=60,dur=10,er=0,ff=true,mana=20,mc=0.5,minr=0,n="Fiery Convocation Upgraded",rad=7,rng=150,src="spell",te=true,tg=true,ty="wind",upg=true,vlen=132,wu=5}
C.abilities["wh2_main_spell_high_magic_hand_of_glory"] = {ai="augment_ranged",cd=28,dur=29,er=0,mana=4,mc=0,minr=0,n="Hand of Glory",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh2_main_spell_high_magic_hand_of_glory_upgraded"] = {ai="augment_ranged",cd=28,dur=29,er=0,mana=6,mc=0.5,minr=0,n="Hand of Glory Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=1}
C.abilities["wh2_main_spell_high_magic_soul_quench"] = {ai="projectile_explosive",cd=43,dur=0,er=0,ff=true,mana=7,mc=0,minr=0,n="Soul Quench",rad=5,rng=250,src="spell",te=true,ty="magic_missile",wu=3}
C.abilities["wh2_main_spell_high_magic_soul_quench_upgraded"] = {ai="projectile_explosive",cd=43,dur=0,er=0,ff=true,mana=11,mc=0.5,minr=0,n="Soul Quench Upgraded",rad=8,rng=250,src="spell",te=true,ty="magic_missile",upg=true,wu=3}
C.abilities["wh2_main_spell_high_magic_tempest"] = {ai="vortex_flying_only",cd=37,dur=17,er=35,mana=10,mc=0,minr=0,n="Tempest",ne=-1,rng=150,src="spell",te=true,ty="area_of_direct_damage",wu=3}
C.abilities["wh2_main_spell_high_magic_tempest_upgraded"] = {ai="vortex_flying_only",cd=44,dur=17,er=35,mana=16,mc=0.5,minr=0,n="Tempest Upgraded",ne=-1,rng=150,src="spell",te=true,ty="area_of_direct_damage",upg=true,wu=3}
C.abilities["wh2_main_spell_plague_bless_with_filth"] = {ai="augment_melee_area",cd=29,dur=22,er=35,mana=4,mc=0,minr=0,n="Bless with Filth",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",wu=1}
C.abilities["wh2_main_spell_plague_bless_with_filth_upgraded"] = {ai="augment_melee_area",cd=29,dur=44,er=35,mana=7,mc=0.5,minr=0,n="Bless with Filth Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=1}
C.abilities["wh2_main_spell_plague_pestilent_birth"] = {ai="threatened",cd=48,dur=1,er=0,ff=true,mana=14,mc=0,minr=0,n="Pestilent Birth",rad=8.1,rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=5}
C.abilities["wh2_main_spell_plague_pestilent_breath"] = {ai="vortex_breath",cd=32,dmg=20,dur=8,er=0,ff=true,mana=6,mc=0,minr=0,n="Pestilent Breath",rad=12,rng=100,src="spell",te=true,tg=true,ty="breath",vlen=48,wu=1}
C.abilities["wh2_main_spell_plague_pestilent_breath_upgraded"] = {ai="vortex_breath",cd=32,dmg=30,dur=8,er=0,ff=true,mana=9,mc=0.5,minr=0,n="Pestilent Breath Upgraded",rad=12,rng=100,src="spell",te=true,tg=true,ty="breath",upg=true,vlen=48,wu=1}
C.abilities["wh2_main_spell_plague_plague"] = {ai="aoe_ap",cd=50,dmg=8,dur=20,er=0,ff=true,mana=12,mc=0,minr=0,n="Plague",rad=14,rng=150,src="spell",te=true,tg=true,ty="vortex",wu=5}
C.abilities["wh2_main_spell_plague_plague_upgraded"] = {ai="aoe_ap",cd=50,dmg=12,dur=20,er=0,ff=true,mana=17,mc=0.5,minr=0,n="Plague Upgraded",rad=14,rng=150,src="spell",te=true,tg=true,ty="vortex",upg=true,wu=5}
C.abilities["wh2_main_spell_plague_vermintide"] = {ai="threatened",cd=41,dur=1,er=0,ff=true,mana=7,mc=0,minr=0,n="Vermintide",rad=8.1,rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=5,wu=3}
C.abilities["wh2_main_spell_plague_wither"] = {ai="hex_armour_area",cd=37,dur=50,er=35,mana=6,mc=0,minr=0,n="Wither",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",wu=3}
C.abilities["wh2_main_spell_plague_wither_upgraded"] = {ai="hex_armour_area",cd=37,dur=50,er=35,mana=10,mc=0.5,minr=0,n="Wither Upgraded",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",upg=true,wu=3}
C.abilities["wh2_main_spell_ruin_cracks_call"] = {ai="vortex_wind_ap",cd=52,dmg=35,dur=10,er=0,ff=true,mana=15,mc=0,minr=0,n="Crack's Call",rad=7,rng=150,src="spell",te=true,tg=true,ty="wind",vlen=60,wu=5}
C.abilities["wh2_main_spell_ruin_cracks_call_upgraded"] = {ai="vortex_wind_ap",cd=52,dmg=70,dur=10,er=0,ff=true,mana=20,mc=0.5,minr=0,n="Crack's Call Upgraded",rad=7,rng=150,src="spell",te=true,tg=true,ty="wind",upg=true,vlen=60,wu=5}
C.abilities["wh2_main_spell_ruin_death_frenzy"] = {ai="augment_melee",cd=43,dur=28,er=0,mana=6,mc=0,minr=0,n="Death Frenzy",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh2_main_spell_ruin_death_frenzy_upgraded"] = {ai="augment_melee",cd=43,dur=28,er=35,mana=10,mc=0.5,minr=0,n="Death Frenzy Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="augment",upg=true,wu=3}
C.abilities["wh2_main_spell_ruin_howling_warpgale"] = {ai="hex_flying_area",cd=30,dur=14,er=55,mana=5,mc=0,minr=0,n="Howling Warpgale",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_hexes",wu=1}
C.abilities["wh2_main_spell_ruin_howling_warpgale_upgraded"] = {ai="hex_flying_area",cd=30,dur=28,er=55,mana=9,mc=0.5,minr=0,n="Howling Warpgale Upgraded",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_hexes",upg=true,wu=1}
C.abilities["wh2_main_spell_ruin_scorch"] = {ai="vortex_breath",cd=44,dmg=36,dur=12,er=0,ff=true,mana=7,mc=0,minr=0,n="Scorch",rad=6,rng=150,src="spell",te=true,tg=true,ty="breath",vlen=72,wu=3}
C.abilities["wh2_main_spell_ruin_scorch_upgraded"] = {ai="vortex_breath",cd=44,dmg=36,dur=12,er=0,ff=true,mana=11,mc=0.5,minr=0,n="Scorch Upgraded",rad=6,rng=450,src="spell",te=true,tg=true,ty="breath",upg=true,vlen=144,wu=3}
C.abilities["wh2_main_spell_ruin_skitterleap"] = {ai="full_hide",cd=29,dur=25,er=0,fm=true,mana=4,mc=0,minr=0,n="Skitterleap",nf=1,rng=200,src="spell",tf=true,tg=true,ts=true,ty="hiding",wu=1}
C.abilities["wh2_main_spell_ruin_skitterleap_upgraded"] = {ai="full_hide",cd=29,dur=25,er=35,fm=true,mana=8,mc=0.5,minr=0,n="Skitterleap Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="hiding",upg=true,wu=1}
C.abilities["wh2_main_spell_ruin_warp_lightning"] = {ai="aoe_bombardment",cd=30,dur=5,er=0,ff=true,mana=6,mc=0,minr=0,n="Warp Lightning",rad=14,rng=200,src="spell",te=true,tg=true,ty="bombardment",wu=1}
C.abilities["wh2_main_spell_ruin_warp_lightning_upgraded"] = {ai="aoe_bombardment",cd=30,dur=5,er=0,ff=true,mana=11,mc=0.5,minr=0,n="Warp Lightning Upgraded",rad=14,rng=200,src="spell",te=true,tg=true,ty="bombardment",upg=true,wu=1}
C.abilities["wh2_main_unit_abilities_concealment_bombs"] = {ai="flanking_opportunity",cd=90,dur=73,er=0,fm=true,mana=0,mc=0,minr=0,n="Concealment Bombs",rng=0,sa=true,src="active",ty="hiding",uses=3,wu=0}
C.abilities["wh2_main_unit_abilities_dark_fire_of_chaos"] = {ai="projectile_explosive_ap",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Dark Fire of Chaos",rad=5,rng=80,src="active",te=true,ty="magic_missiles",uses=3,wu=1.1}
C.abilities["wh2_main_unit_abilities_death_shriek"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Death Shriek",rad=4,rng=80,src="active",te=true,ty="magic_missiles",uses=3,wu=0.6}
C.abilities["wh2_main_unit_abilities_drop_rocks"] = {ai="always_use_only_land",cd=5,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Drop Rocks",rad=8,rng=10,src="active",ty="bombardment",uses=1,wu=0}
C.abilities["wh2_main_unit_abilities_fiery_breath"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Fiery Breath",rad=4,rng=90,src="active",te=true,ty="magic_missiles",uses=3,wu=1}
C.abilities["wh2_main_unit_abilities_fury_of_khaine"] = {ai="augment_melee",cd=90,dur=28,er=0,mana=0,mc=0,minr=0,n="Fury of Khaine",nf=1,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh2_main_unit_abilities_moon_dragons_breath"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Moon Dragon's Breath",rad=5,rng=80,src="active",te=true,ty="magic_missiles",uses=3,wu=1.3}
C.abilities["wh2_main_unit_abilities_noxious_breath"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Noxious Breath",rad=5,rng=80,src="active",te=true,ty="magic_missiles",uses=3,wu=1.3}
C.abilities["wh2_main_unit_abilities_pestilential_breath"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Pestilential Breath",rad=5,rng=80,src="active",te=true,ty="magic_missiles",uses=3,wu=1.3}
C.abilities["wh2_main_unit_abilities_revivification_crystal"] = {ai="healing",cd=60,dur=20,er=0,heal=true,mana=0,mc=0,minr=0,n="Revivification Crystal",nf=1,rng=100,src="active",tf=true,ty="regeneration",uses=7,wu=3}
C.abilities["wh2_main_unit_abilities_soporific_breath"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Soporific Breath",rad=5,rng=80,src="active",te=true,ty="magic_missiles",uses=3,wu=1.3}
C.abilities["wh2_main_unit_abilities_star_dragons_breath"] = {ai="projectile_explosive_ap",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Star Dragon's Breath",rad=5,rng=80,src="active",te=true,ty="magic_missiles",uses=3,wu=1.3}
C.abilities["wh2_main_unit_abilities_sun_dragons_breath"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Sun Dragon's Breath",rad=5,rng=80,src="active",te=true,ty="magic_missiles",uses=3,wu=1.3}
C.abilities["wh2_main_unit_abilities_wake_of_fire"] = {ai="always_use_only_land",cd=0.1,dur=0.1,er=0,ff=true,mana=0,mc=0,minr=0,n="Wake of Fire",rad=7.5,rng=10,src="active",ty="bombardment",uses=10,wu=0}
C.abilities["wh2_main_weapon_abilities_bow_of_the_seafarer"] = {ai="projectile_explosive",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Bow of the Seafarer",rad=4,rng=350,src="active",te=true,ty="magic_missile",uses=3,wu=1}
C.abilities["wh2_main_weapon_abilities_dwarf_gouger"] = {ai="augment_melee_self",cd=120,dur=36,er=0,mana=0,mc=0,minr=0,n="Dwarf Gouger",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_main_weapon_abilities_hydra_blade"] = {ai="augment_melee_self",cd=120,dur=38,er=0,mana=0,mc=0,minr=0,n="Hydra Blade",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_main_weapon_abilities_sunfang"] = {ai="vortex_breath",cd=120,dmg=33,dur=17,er=0,ff=true,mana=0,mc=0,minr=0,n="Sunfang",rad=12,rng=100,src="active",te=true,tg=true,ty="breath",vlen=48,wu=5}
C.abilities["wh2_main_weapon_abilities_sword_of_teclis"] = {ai="augment_melee_self",cd=120,dur=23,er=0,mana=0,mc=0,minr=0,n="Sword of Teclis",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_main_weapon_abilities_web_of_shadows"] = {ai="direct_damage_single_entity_area",cd=60,dur=17,er=35,mana=0,mc=0,minr=0,n="Web of Shadows",ne=-1,rng=0,src="active",ty="area_of_direct_damage",uses=1,wu=0}
C.abilities["wh2_main_weapon_bound_reaver_bow"] = {ai="projectile_explosive",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Reaver Bow",rad=6,rng=200,src="bound",te=true,ty="magic_missiles",uses=3,wu=1}
C.abilities["wh2_main_weapon_bound_winged_staff"] = {ai="aoe",cd=60,dur=7,er=35,mana=0,mc=0,minr=0,n="Winged Staff",ne=-1,rng=100,src="bound",te=true,tg=true,ty="area_of_direct_damage",uses=4,wu=0}
C.abilities["wh2_pro08_character_abilities_gotrek_doom"] = {ai="augment_melee_self",cd=120,dur=22,er=0,mana=0,mc=0,minr=0,n="Gotrek's Doom",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_pro08_character_abilities_helping_hand"] = {ai="augment_melee",cd=120,dur=22,er=0,mana=0,mc=0,minr=0,n="Helping Hand",nf=-1,rng=50,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh2_pro08_weapon_abilities_karaghul"] = {ai="augment_melee_self",cd=120,dur=28,er=0,mana=0,mc=0,minr=0,n="Karaghul",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_pro08_weapon_abilities_rune_axe_of_gotrek"] = {ai="augment_melee_self",cd=120,dur=36,er=0,mana=0,mc=0,minr=0,n="Rune Axe of Gotrek",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh2_twa03_lord_abilities_beastlords_gaze"] = {ai="augment_melee",cd=60,dur=40,er=0,mana=0,mc=0,minr=0,n="Beastlord's Gaze",rng=200,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh2_twa03_weapon_abilities_whip_of_agony"] = {ai="hex_melee",cd=120,dur=29,er=0,mana=0,mc=0,minr=0,n="Whip of Agony",ne=1,rng=75,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_cp1_character_abilities_magic_prayer"] = {ai="augment_defense_melee_area",cd=120,dur=27,er=0,mana=0,mc=0,minr=0,n="Arcane Hymn",rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh3_cp1_character_abilities_offense_prayer"] = {ai="augment_defense_melee_area",cd=120,dur=40,er=35,mana=0,mc=0,minr=0,n="Mantra of Righteousness",nf=-1,rng=100,sa=true,src="active",tf=true,ts=true,ty="area_of_augments",wu=0}
C.abilities["wh3_cp1_character_abilities_protection_prayer"] = {ai="augment_defense_melee_area",cd=120,dur=32,er=0,heal=true,mana=0,mc=0,minr=0,n="Mantra of Invigoration",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="regeneration",wu=0}
C.abilities["wh3_cp1_character_abilities_terrifying_presence"] = {ai="augment_defense_melee_area",cd=120,dur=28,er=35,mana=0,mc=0,minr=0,n="Ultimate Verdict",ne=-1,rng=0,sa=true,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh3_cp1_item_abilities_heavens_gate"] = {ai="vortex",cd=120,dmg=36,dur=0,er=0,fm=true,mana=0,mc=0,minr=0,n="Heaven's Gate",ot=true,rad=5,rng=150,src="active",tg=true,ty="explosion",wu=2}
C.abilities["wh3_cp1_lord_abilities_guiding_strike"] = {ai="augment_charge_self",cd=90,dur=29,er=0,mana=0,mc=0,minr=0,n="Guiding Strike",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_cp1_lord_abilities_hidden_huntress"] = {ai="hex_armour",cd=60,dur=20,er=0,mana=0,mc=0,minr=0,n="Hidden Huntress",ne=1,rng=75,src="lord",te=true,ty="hex",wu=0}
C.abilities["wh3_cp1_lord_abilities_hidden_huntress_upgraded"] = {ai="hex_armour",cd=90,dur=20,er=0,mana=0,mc=0,minr=0,n="Hidden Huntress Upgraded",ne=1,rng=75,src="lord",te=true,ty="hex",upg=true,wu=0}
C.abilities["wh3_cp1_lord_abilities_mastered_strike"] = {ai="augment_charge_self",cd=120,dur=34,er=0,mana=0,mc=0,minr=0,n="Masterful Strike",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_cp1_lord_abilities_predatory_instincts"] = {ai="augment_defense_melee",cd=90,dur=25,er=0,mana=0,mc=0,minr=0,n="Predatory Instincts",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh3_cp1_spell_beasts_transformation_of_kadon"] = {ai="threatened",cd=45,dur=1,er=0,mana=18,mc=0,minr=0,n="Transformation of Kadon",rng=50,sa=true,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=5}
C.abilities["wh3_cp1_weapon_abilities_blades_of_shang_yang"] = {ai="augment_melee",cd=120,dur=32,er=0,mana=0,mc=0,minr=0,n="Blades of Shang-Yang",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_cp1_weapon_abilities_tyrants_talon"] = {ai="vortex",cd=120,dur=27,er=0,mana=0,mc=0,minr=0,n="Tyrant's Talon",rng=0,sa=true,src="weapon",ty="augment",wu=0}
C.abilities["wh3_dlc20_cataclysm_bound_ashes_and_dust"] = {ai="direct_damage_multi_entity_area",cd=120,dur=11,er=35,mana=0,mc=0,minr=0,n="Ashes & Dust",ne=-1,rng=-1,src="bound",te=true,tg=true,ty="area_of_direct_damage",uses=1,wu=5}
C.abilities["wh3_dlc20_cataclysm_bound_dance_of_despair"] = {ai="hex_melee_area",cd=120,dur=45,er=55,mana=0,mc=0,minr=0,n="Dance of Despair",ne=-1,rng=-1,src="bound",te=true,tg=true,ty="area_of_hexes",uses=1,wu=5}
C.abilities["wh3_dlc20_cataclysm_bound_gehennas_golden_globe"] = {ai="vortex_wind",cd=120,dmg=100,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Gehenna's Golden Globe",rad=8,rng=-1,src="bound",tg=true,ty="wind",uses=1,vlen=140,wu=5}
C.abilities["wh3_dlc20_cataclysm_bound_magma_storm"] = {ai="aoe_ap",cd=120,dmg=28,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Magma Storm",rad=65,rng=-1,src="bound",tg=true,ty="vortex",uses=1,wu=5}
C.abilities["wh3_dlc20_cataclysm_bound_merciws_monstrous_regiment"] = {ai="augment_melee",cd=120,dur=120,er=0,mana=0,mc=0,minr=0,n="Merciw's Monstrous Regiment",nf=1,rng=-1,src="bound",tf=true,ty="augment",uses=1,wu=5}
C.abilities["wh3_dlc20_cataclysm_bound_storm_of_renewal"] = {ai="healing_area",cd=120,dur=20,er=55,heal=true,mana=0,mc=0,minr=0,n="Storm of Renewal",nf=-1,rng=-1,src="bound",tg=true,ty="area_of_regeneration",uses=1,wu=5}
C.abilities["wh3_dlc20_cataclysm_bound_thorsens_thunderstorm"] = {ai="aoe_bombardment",cd=120,dur=31,er=0,ff=true,mana=0,mc=0,minr=0,n="Thorsen's Thunderstorm",rad=38,rng=-1,src="bound",tg=true,ty="bombardment",uses=1,wu=5}
C.abilities["wh3_dlc20_cataclysm_bound_time_amok"] = {ai="augment_melee_area",cd=120,dur=45,er=-1,mana=0,mc=0,minr=0,n="Time Amok",ne=-1,nf=-1,rng=-1,src="bound",tg=true,ty="area_of_augments",uses=1,wu=5}
C.abilities["wh3_dlc20_item_abilities_daemonshield"] = {ai="augment_melee_self",cd=120,dur=13,er=0,mana=0,mc=0,minr=0,n="Daemonshield",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc20_item_abilities_pestilent_potions"] = {ai="hex_melee",cd=120,dur=25,er=0,mana=0,mc=0,minr=0,n="Pestilent Potions",ne=5,rng=100,src="active",te=true,ty="chain_hex",uses=3,wu=0}
C.abilities["wh3_dlc20_item_abilities_rod_of_torment"] = {ai="aoe_bombardment",cd=90,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Rod of Torment",rad=13,rng=200,src="bound",te=true,ty="bombardment",uses=3,wu=3}
C.abilities["wh3_dlc20_item_abilities_the_armour_of_morkar"] = {ai="augment_melee_area",cd=120,dur=29,er=35,mana=0,mc=0,minr=0,n="The Armour of Morkar",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc20_lord_abilities_harbinger_of_pestilence"] = {ai="aoe_centred_on_self",cd=30,dur=0,er=35,mana=0,mc=0,minr=0,n="Harbinger of Pestilence",ne=-1,rng=0,src="lord",ty="area_of_direct_damage",wu=0}
C.abilities["wh3_dlc20_lord_abilities_healing_elixirs"] = {ai="augment_melee_healing",cd=30,dur=0,er=35,heal=true,mana=0,mc=0,minr=0,n="Healing Elixirs",nf=-1,rng=0,sa=true,src="lord",ty="area_of_regeneration",wu=0}
C.abilities["wh3_dlc20_lord_abilities_tempest_rage"] = {ai="augment_melee_self",cd=120,dur=36,er=0,mana=0,mc=0,minr=0,n="Tempest Rage",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc20_lord_abilities_temptator"] = {cd=120,dur=19,er=0,mana=0,mc=0,minr=0,n="Temptator",nf=-1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc20_spell_bound_flame_storm"] = {ai="vortex",cd=50,dmg=17,dur=27,er=0,ff=true,mana=0,mc=0,minr=0,n="Flame Storm",rad=10,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=1,vlen=54,wu=5}
C.abilities["wh3_dlc20_spell_bound_fleshy_abundance"] = {ai="healing",cd=54,dur=18,er=0,heal=true,mana=0,mc=0,minr=0,n="Fleshy Abundance",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="regeneration",uses=1,wu=5}
C.abilities["wh3_dlc20_spell_bound_gehennas_golden_hounds"] = {ai="vortex",cd=45,dmg=15,dur=13,er=0,ff=true,mana=0,mc=0,minr=0,n="Gehenna's Golden Hounds",rad=7,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=1,vlen=26,wu=3}
C.abilities["wh3_dlc20_spell_bound_infernal_gateway"] = {ai="aoe_ap",cd=54,dmg=5,dur=17,er=0,ff=true,mana=0,mc=0,minr=0,n="Infernal Gateway",ne=1,rad=15,rng=200,src="bound",te=true,tg=true,ty="vortex",uses=1,wu=6}
C.abilities["wh3_dlc20_spell_bound_pink_fire_of_tzeentch"] = {ai="vortex_breath",cd=30,dmg=16,dur=2,er=0,ff=true,mana=0,mc=0,minr=0,n="Pink Fire of Tzeentch",rad=12,rng=100,src="bound",te=true,tg=true,ty="breath",uses=2,vlen=48,wu=1}
C.abilities["wh3_dlc20_spell_bound_slicing_shards"] = {ai="aoe_bombardment",cd=48,dur=9,er=0,ff=true,mana=0,mc=0,minr=0,n="Slicing Shards",rad=23,rng=200,src="bound",te=true,tg=true,ty="bombardment",uses=1,wu=5}
C.abilities["wh3_dlc20_spell_bound_stream_of_corruption"] = {ai="vortex_breath_ap",cd=29,dmg=24,dur=3,er=0,ff=true,mana=0,mc=0,minr=0,n="Stream of Corruption",rad=6,rng=100,src="bound",te=true,tg=true,ty="breath",uses=2,vlen=72,wu=1}
C.abilities["wh3_dlc20_spell_bound_the_penumbral_pendulum"] = {ai="vortex_wind_ap",cd=40,dmg=36,dur=2,er=0,ff=true,mana=0,mc=0,minr=0,n="The Penumbral Pendulum",ne=1,rad=4,rng=200,src="bound",te=true,tg=true,ty="wind",uses=1,vlen=80,wu=3}
C.abilities["wh3_dlc20_unit_abilities_storm_rage"] = {ai="augment_melee_self",cd=90,dur=24,er=0,mana=0,mc=0,minr=0,n="Storm Rage",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc20_unit_abilities_violent_wind"] = {ai="aoe_centred_on_self",cd=120,dmg=30,dur=4,er=0,mana=0,mc=0,minr=0,n="Violent Wind",rad=7,rng=0,sa=true,src="unit",ty="vortex",wu=0}
C.abilities["wh3_dlc20_weapon_abilities_aether_sword"] = {ai="augment_melee_self",cd=90,dur=27,er=0,mana=0,mc=0,minr=0,n="Aether Sword",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc20_weapon_abilities_daemonblade"] = {ai="augment_melee_self",cd=120,dur=32,er=0,mana=0,mc=0,minr=0,n="Daemonblade",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc20_weapon_abilities_rapier_of_ecstasy"] = {ai="augment_melee_self",cd=90,dur=17,er=0,mana=0,mc=0,minr=0,n="Rapier of Ecstasy",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc20_weapon_abilities_sliverslash"] = {ai="augment_melee_self",cd=120,dur=26,er=0,mana=0,mc=0,minr=0,n="Sliverslash",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc20_weapon_abilities_the_spear_slaupnir"] = {ai="vortex_breath",cd=120,dmg=60,dur=2,er=0,ff=true,mana=0,mc=0,minr=0,n="The Spear Slaupnir",rad=4,rng=100,src="active",te=true,tg=true,ty="wind",uses=2,vlen=80,wu=3}
C.abilities["wh3_dlc23_bound_abilities_breath_of_hatred"] = {ai="augment_melee_area",cd=90,dur=31,er=35,mana=0,mc=0,minr=0,n="Breath of Hatred",nf=-1,rng=100,sa=true,src="bound",tf=true,tg=true,ts=true,ty="area_of_augments",uses=3,wu=0}
C.abilities["wh3_dlc23_character_abilities_breath_of_hatred"] = {ai="augment_melee_area",cd=90,dur=31,er=35,mana=0,mc=0,minr=0,n="Breath of Hatred",nf=-1,rng=100,sa=true,src="character",tf=true,tg=true,ts=true,ty="area_of_augments",uses=3,wu=0}
C.abilities["wh3_dlc23_character_abilities_reforge"] = {ai="healing",cd=60,dur=19,er=0,heal=true,mana=0,mc=0,minr=0,n="Reforge",ot=true,rng=100,sa=true,src="active",tf=true,ts=true,ty="regeneration",uses=2,wu=0}
C.abilities["wh3_dlc23_character_abilities_skjalandirs_fall"] = {ai="augment_ranged",cd=120,dur=39,er=0,mana=0,mc=0,minr=0,n="Skjalandir's Fall",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc23_character_abilities_sword_dance"] = {ai="augment_melee_self",cd=120,dur=23,er=15,mana=0,mc=0,minr=0,n="The Dancing Blade",ne=-1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc23_hero_abilities_crooked_dice"] = {cd=90,dur=30,er=0,fm=true,mana=0,mc=0,minr=0,n="Crooked Dice",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc23_hero_abilities_get_tha_gitz!"] = {ai="hex_ranged_summon",cd=120,dur=5,er=0,mana=0,mc=0,minr=0,n="Get Tha Gitz!",rng=90,src="active",sum=true,te=true,tg=true,ty="summon_unit",uses=3,wu=3}
C.abilities["wh3_dlc23_item_abilities_ancestral_vengeance"] = {ai="threatened",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Ancestral Vengeance",rng=30,src="active",sum=true,tg=true,ty="summon_unit",uses=2,wu=5}
C.abilities["wh3_dlc23_item_abilities_armour_of_gazrakh"] = {ai="augment_melee_self",cd=120,dur=48,er=0,mana=0,mc=0,minr=0,n="Armour of Gazrakh",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc23_item_abilities_black_gem_of_gnar"] = {ai="augment_melee_self",cd=90,dur=13,er=0,mana=0,mc=0,minr=0,n="The Black Gem of Gnar",rng=0,sa=true,src="active",ty="augment",uses=3,wu=0}
C.abilities["wh3_dlc23_item_abilities_daemon_flask_of_ashak"] = {ai="aoe_centred_on_self",cd=120,dmg=4,dur=5,er=0,mana=0,mc=0,minr=0,n="Daemon Flask of Ashak",ne=-1,rad=15,rng=0,sa=true,src="active",ty="vortex",uses=1,wu=0}
C.abilities["wh3_dlc23_item_abilities_darkened_mist"] = {ai="direct_damage_single_entity",cd=120,dur=20,er=0,mana=0,mc=0,minr=0,n="Darkened Mist",ne=3,rng=30,src="active",te=true,ty="direct_damage",uses=3,wu=3}
C.abilities["wh3_dlc23_item_abilities_dweomer_leach_orb"] = {ai="hex_spellcasting",cd=90,dur=22,er=0,mana=0,mc=0,minr=0,n="Dweomer Leach Orb",ot=true,rng=200,sa=true,src="active",te=true,ty="hex_of_the_winds",wu=0}
C.abilities["wh3_dlc23_item_abilities_hammer_of_smednir"] = {ai="aoe_ap",cd=120,dmg=30,dur=10,er=0,ff=true,mana=0,mc=0,minr=0,n="The Hammer of Smednir",rad=15,rng=100,src="active",te=true,tg=true,ty="explosion",uses=3,wu=3}
C.abilities["wh3_dlc23_item_abilities_morgrims_eye"] = {ai="augment_ranged_area",cd=120,dur=32,er=35,mana=0,mc=0,minr=0,n="Morgrim's Eye",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc23_item_abilities_rune_of_thungni"] = {ai="augment_melee",cd=120,dur=40,er=0,mana=0,mc=0,minr=0,n="Rune of Thungni",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh3_dlc23_item_abilities_slayer_for_chaos"] = {ai="augment_defense_melee",cd=120,dur=24,er=0,mana=0,mc=0,minr=0,n="Slayer for Chaos",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh3_dlc23_item_abilities_the_vial_of_hashut"] = {ai="hex_armour",cd=120,dur=60,er=0,mana=0,mc=0,minr=0,n="The Vial of Hashut",ne=1,ot=true,rng=50,src="active",te=true,ty="hex",uses=1,wu=0}
C.abilities["wh3_dlc23_lord_abilities_flame_and_shadow"] = {ai="aoe_bombardment",cd=90,dur=5,er=0,ff=true,mana=0,mc=0,minr=0,n="Flame & Shadow",rad=22,rng=100,src="lord",te=true,tg=true,ty="bombardment",uses=2,wu=3}
C.abilities["wh3_dlc23_lord_abilities_sadistic_snare"] = {ai="hex_melee",cd=120,dur=33,er=0,mana=0,mc=0,minr=0,n="Sadistic Snare",ne=1,rng=20,src="active",te=true,ty="hex",uses=2,wu=0}
C.abilities["wh3_dlc23_spell_bound_burning_wrath"] = {ai="projectile_homing_single",cd=30,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Burning Wrath",rad=3,rng=300,src="bound",te=true,ty="magic_missile",uses=3,wu=1}
C.abilities["wh3_dlc23_spell_bound_enfeebling_foe"] = {ai="hex_melee",cd=60,dur=17,er=0,mana=0,mc=0,minr=0,n="The Enfeebling Foe",ne=1,rng=200,src="bound",te=true,ty="hex",uses=1,wu=1}
C.abilities["wh3_dlc23_spell_bound_hell_hammer"] = {ai="vortex_wind_ap",cd=50,dmg=48,dur=4,er=0,ff=true,mana=0,mc=0,minr=0,n="Hell Hammer",rad=14.1,rng=200,src="bound",te=true,tg=true,ty="wind",uses=1,vlen=60,wu=5}
C.abilities["wh3_dlc23_spell_bound_the_withering"] = {ai="hex_morale",cd=90,dur=40,er=0,mana=0,mc=0,minr=0,n="The Withering",ne=1,rng=200,src="bound",te=true,ty="hex",uses=1,wu=0}
C.abilities["wh3_dlc23_spell_hashut_ash_storm"] = {ai="hex_melee_area",cd=37,dur=32,er=35,mana=8,mc=0,minr=0,n="Ash Storm",ne=-1,rng=200,sa=true,src="spell",tg=true,ty="area_of_hexes",wu=3}
C.abilities["wh3_dlc23_spell_hashut_ash_storm_upgraded"] = {ai="hex_melee_area",cd=37,dur=48,er=35,mana=12,mc=0.5,minr=0,n="Ash Storm Upgraded",ne=-1,rng=200,sa=true,src="spell",tg=true,ty="area_of_hexes",upg=true,wu=3}
C.abilities["wh3_dlc23_spell_hashut_burning_wrath"] = {ai="projectile_homing_single",cd=30,dur=0,er=0,ff=true,mana=6,mc=0,minr=0,n="Burning Wrath",rad=3,rng=300,src="spell",te=true,ty="magic_missile",wu=1}
C.abilities["wh3_dlc23_spell_hashut_burning_wrath_upgraded"] = {ai="projectile_homing_single",cd=30,dur=0,er=0,ff=true,mana=10,mc=0.5,minr=0,n="Burning Wrath Upgraded",rad=6,rng=300,src="spell",te=true,ty="magic_missile",upg=true,wu=1}
C.abilities["wh3_dlc23_spell_hashut_curse_of_hashut"] = {ai="direct_damage_single_entity",cd=38,dur=10,er=0,mana=10,mc=0,minr=0,n="Curse of Hashut",ne=1,rng=200,src="spell",te=true,ty="direct_damage",wu=4}
C.abilities["wh3_dlc23_spell_hashut_curse_of_hashut_upgraded"] = {ai="direct_damage_single_entity",cd=38,dur=16,er=0,mana=15,mc=0.5,minr=0,n="Curse of Hashut Upgraded",ne=1,rng=200,src="spell",te=true,ty="direct_damage",upg=true,wu=4}
C.abilities["wh3_dlc23_spell_hashut_dark_subjugation"] = {ai="hex_morale",cd=31,dur=17,er=0,mana=6,mc=0,minr=0,n="Dark Subjugation",ne=1,rng=200,src="spell",te=true,ty="hex",wu=1}
C.abilities["wh3_dlc23_spell_hashut_dark_subjugation_upgraded"] = {ai="hex_morale",cd=31,dur=35,er=0,mana=10,mc=0.5,minr=0,n="Dark Subjugation Upgraded",ne=1,rng=200,src="spell",te=true,ty="hex",upg=true,wu=1}
C.abilities["wh3_dlc23_spell_hashut_flames_of_azgorh"] = {ai="aoe_bombardment",cd=52,dmg=56,dur=8,er=0,ff=true,mana=18,mc=0,minr=0,n="Flames of Azgorh",rad=24,rng=200,src="spell",te=true,tg=true,ty="bombardment",wu=5}
C.abilities["wh3_dlc23_spell_hashut_flames_of_azgorh_upgraded"] = {ai="aoe_bombardment",cd=52,dmg=76,dur=8,er=0,ff=true,mana=26,mc=0.5,minr=0,n="Flames of Azgorh Upgraded",rad=24,rng=200,src="spell",te=true,tg=true,ty="bombardment",upg=true,wu=5}
C.abilities["wh3_dlc23_spell_hashut_hell_hammer"] = {ai="vortex_wind_ap",cd=50,dmg=48,dur=4,er=0,ff=true,mana=15,mc=0,minr=0,n="Hell Hammer",rad=14.1,rng=200,src="spell",te=true,tg=true,ty="wind",vlen=60,wu=5}
C.abilities["wh3_dlc23_spell_hashut_hell_hammer_upgraded"] = {ai="vortex_wind_ap",cd=50,dmg=48,dur=4,er=0,ff=true,mana=20,mc=0.5,minr=0,n="Hell Hammer Upgraded",rad=14.1,rng=200,src="spell",te=true,tg=true,ty="wind",upg=true,vlen=90,wu=5}
C.abilities["wh3_dlc23_unit_abilities_flaming_breath"] = {ai="projectile_explosive",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Flaming Breath",rad=4,rng=90,src="active",te=true,ty="magic_missile",uses=3,wu=1}
C.abilities["wh3_dlc23_unit_abilities_more_power"] = {ai="augment_charge_self",cd=120,dur=28,er=0,mana=0,mc=0,minr=0,n="More Power!",rng=0,sa=true,src="active",ty="augment",wu=1}
C.abilities["wh3_dlc23_weapon_abilities_black_hammer_of_hashut"] = {cd=120,dur=32,er=0,mana=0,mc=0,minr=0,n="Black Hammer of Hashut",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc23_weapon_abilities_dagger_of_malice"] = {ai="augment_melee_self",cd=120,dur=17,er=0,mana=0,mc=0,minr=0,n="Dagger of Malice",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc23_weapon_abilities_dark_mace"] = {cd=90,dur=30,er=35,mana=0,mc=0,minr=0,n="Dark Mace",ne=-1,rng=0,sa=true,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh3_dlc23_weapon_abilities_silver_dagger"] = {ai="augment_melee_self",cd=120,dur=32,er=0,mana=0,mc=0,minr=0,n="Silver Dagger",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc23_weapon_abilities_spell_wrought_sceptre"] = {ai="augment_spellcasting",cd=90,dur=50,er=0,mana=0,mc=0,minr=0,n="Spell-Wrought Sceptre",ot=true,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh3_dlc23_weapon_abilities_the_graven_sceptre"] = {cd=120,dur=24,er=0,mana=0,mc=0,minr=0,n="The Graven Sceptre",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc24_character_abilities_bastions_defenders"] = {ai="augment_defense_melee",cd=90,dur=30,er=0,mana=0,mc=0,minr=0,n="Bastion's Defenders",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh3_dlc24_character_abilities_change_or_die"] = {ai="augment_melee_area",cd=90,dur=22,er=35,mana=0,mc=0,minr=0,n="Change or Die!",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc24_character_abilities_colossal_strike"] = {ai="augment_charge_self",cd=90,dur=32,er=0,mana=0,mc=0,minr=0,n="Colossal Strike",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc24_character_abilities_colossal_strike_summoned"] = {ai="augment_charge_self",cd=90,dur=32,er=0,mana=0,mc=0,minr=0,n="Colossal Strike",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc24_character_abilities_fury_of_the_land"] = {ai="augment_melee_area",cd=120,dur=35,er=55,mana=0,mc=0,minr=0,n="Fury of the Land",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc24_character_abilities_giant_leap"] = {ai="aoe_centred_on_self",cd=120,cm=true,dmg=35,dur=5,er=0,mana=0,mc=0,minr=0,n="Giant Leap",ne=-1,rad=12,rng=0,sa=true,src="active",ty="explosion",wu=0}
C.abilities["wh3_dlc24_character_abilities_tacticians_rally"] = {ai="augment_morale_area",cd=60,dur=14,er=35,mana=0,mc=0,minr=0,n="Tacticians, Rally!",nf=-1,rng=100,sa=true,src="active",tf=true,tg=true,ty="area_of_augments",wu=0}
C.abilities["wh3_dlc24_character_abilities_tacticians_stand_your_ground"] = {ai="augment_melee_area",cd=90,dur=18,er=35,mana=0,mc=0,minr=0,n="Tacticians, Stand Your Ground!",nf=-1,rng=100,sa=true,src="active",tf=true,tg=true,ty="area_of_augments",wu=0}
C.abilities["wh3_dlc24_character_abilities_watched_by_the_watcher"] = {ai="hex_ranged_area",cd=120,dur=60,er=-1,mana=0,mc=0,minr=0,n="Watched by the Watcher",ne=-1,rng=0,src="active",ty="area_of_hexes",uses=3,wu=0}
C.abilities["wh3_dlc24_hero_abilities_koldunjas_spirit"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Koldunja's Spirit",rng=50,src="active",sum=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=1}
C.abilities["wh3_dlc24_hero_abilities_thorns_aura"] = {ai="hex_morale_area",cd=120,dur=30,er=35,mana=0,mc=0,minr=0,n="Thorn's Aura",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc24_hero_abilities_vorozhejas_foresight"] = {ai="hex_ranged",cd=120,dur=25,er=0,mana=0,mc=0,minr=0,n="Vorozheja's Foresight",ne=1,rng=150,src="active",te=true,ty="hex",wu=3}
C.abilities["wh3_dlc24_hero_abilities_windblade"] = {ai="projectile_large",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="The Windblade",rad=4,rng=150,src="active",te=true,ty="magic_missile",wu=1}
C.abilities["wh3_dlc24_hero_abilities_znarkharjas_ward"] = {ai="augment_defense_melee",cd=90,dur=26,er=35,mana=0,mc=0,minr=0,n="Znarkharja's Ward",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",uses=2,wu=0}
C.abilities["wh3_dlc24_item_abilities_blessed_helm_of_the_oblast"] = {ai="augment_ranged_area",cd=90,dur=30,er=35,mana=0,mc=0,minr=0,n="Blessed Helm of the Oblast",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc24_item_abilities_book_of_secrets"] = {ai="hex_melee",cd=90,dur=20,er=0,fm=true,mana=0,mc=0,minr=0,n="Book of Secrets",ne=1,rng=100,src="active",te=true,ty="hex",uses=3,wu=0}
C.abilities["wh3_dlc24_item_abilities_mirror_of_knowledge"] = {ai="hex_melee_area",cd=37,dur=40,er=55,mana=0,mc=0,minr=0,n="Mirror of Knowledge",ne=-1,rng=-1,sa=true,src="active",tg=true,ty="area_of_hexes",wu=3}
C.abilities["wh3_dlc24_item_abilities_ritual_of_the_beast"] = {ai="threatened",cd=300,dur=1,er=0,mana=0,mc=0,minr=0,n="Ritual of the Beast",nf=1,rng=50,sa=true,src="item",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh3_dlc24_item_abilities_the_golden_eye_of_tzeentch"] = {ai="augment_defense_ranged",cd=120,dur=33,er=0,mana=0,mc=0,minr=0,n="The Golden Eye of Tzeentch",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc24_item_abilities_wind_bow"] = {ai="projectile_homing_single_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Wind Bow",rad=3,rng=350,src="item",te=true,ty="magic_missiles",uses=3,wu=5}
C.abilities["wh3_dlc24_lord_abilities_celestial_sweep"] = {ai="aoe_centred_on_self",cd=120,cm=true,dmg=120,dur=4,er=0,mana=0,mc=0,minr=0,n="Celestial Sweep",rad=6,rng=0,sa=true,src="active",ty="vortex",wu=0.1}
C.abilities["wh3_dlc24_lord_abilities_formless_horror"] = {ai="augment_melee_self",cd=60,dur=5,er=0,fm=true,mana=0,mc=0,minr=0,n="Formless Horror",rng=0,sa=true,src="active",tr=true,ty="transform",wu=5}
C.abilities["wh3_dlc24_lord_abilities_formless_horror_changeling"] = {ai="augment_support_self",cd=60,dur=5,er=0,mana=0,mc=0,minr=0,n="Formless Horror",rng=0,sa=true,src="active",tr=true,ty="transform",wu=5}
C.abilities["wh3_dlc24_lord_abilities_formless_horror_quest_battle"] = {ai="augment_melee_self",cd=60,dur=5,er=0,fm=true,mana=0,mc=0,minr=0,n="Formless Horror",rng=0,sa=true,src="active",tr=true,ty="transform",wu=5}
C.abilities["wh3_dlc24_lord_abilities_formless_horror_quest_battle_changeling_form"] = {cd=60,dur=5,er=0,mana=0,mc=0,minr=0,n="Formless Horror",rng=0,sa=true,src="active",tr=true,ty="transform",wu=5}
C.abilities["wh3_dlc24_lord_abilities_gulyas"] = {ai="augment_melee_healing",cd=120,dur=23,er=35,heal=true,mana=0,mc=0,minr=0,n="Gulyas",nf=5,rng=200,sa=true,src="active",tg=true,ty="area_of_regeneration",wu=3}
C.abilities["wh3_dlc24_lord_abilities_jade_dragon_dragon_form"] = {ai="augment_melee_self",cd=120,dur=5,er=0,mana=0,mc=0,minr=0,n="Transformation of the Dragon",nf=1,rng=0,sa=true,src="active",tr=true,ty="transform",wu=5}
C.abilities["wh3_dlc24_lord_abilities_jade_dragon_human_form"] = {cd=120,dur=5,er=0,mana=0,mc=0,minr=0,n="Transformation of the Dragon",nf=1,rng=0,sa=true,src="active",tr=true,ty="transform",wu=5}
C.abilities["wh3_dlc24_lord_abilities_lord_of_grand_cathay"] = {ai="augment_defense_melee_area",cd=120,dur=16,er=35,mana=0,mc=0,minr=0,n="Lord of Grand Cathay",nf=-1,rng=100,sa=true,src="active",tg=true,ts=true,ty="area_of_augments",wu=0}
C.abilities["wh3_dlc24_lord_abilities_spirit_bear"] = {ai="projectile_homing_single",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Spirit Bear",rad=10,rng=150,src="active",te=true,ty="magic_missile",uses=3,wu=4}
C.abilities["wh3_dlc24_lord_abilities_spirit_bear_upgrade"] = {ai="projectile_homing_single",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Dire Spirit Bear",rad=10,rng=150,src="active",te=true,ty="magic_missile",uses=3,wu=4}
C.abilities["wh3_dlc24_lord_abilities_taals_judgement"] = {ai="projectile_homing_single",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Taal's Judgement",rad=3,rng=200,src="active",te=true,ty="magic_missiles",uses=3,wu=4.5}
C.abilities["wh3_dlc24_lord_abilities_the_emperors_executioner"] = {ai="direct_damage_single_entity",cd=120,dur=2,er=0,mana=0,mc=0,minr=0,n="The Emperor's Executioner",ne=1,rng=50,src="active",te=true,ty="direct_damage",uses=1,wu=2}
C.abilities["wh3_dlc24_lord_abilities_the_emperors_executioner_upgrade"] = {ai="direct_damage_single_entity",cd=120,dur=2,er=0,mana=0,mc=0,minr=0,n="The Emperor's Executioner",ne=1,rng=50,src="active",te=true,ty="direct_damage",uses=1,wu=2}
C.abilities["wh3_dlc24_lord_item_deceiving_shadows"] = {ai="threatened",cd=120,dur=20,er=0,mana=0,mc=0,minr=0,n="Deceiving Shadows",rng=50,sa=true,src="active",sum=true,tg=true,ts=true,ty="summon_unit",uses=3,wu=0}
C.abilities["wh3_dlc24_spell_hags_curse_of_the_ancient_witch"] = {ai="hex_armour",cd=27,dur=27,er=0,mana=8,mc=0,minr=0,n="Curse of the Ancient Witch",ne=5,rng=200,src="spell",te=true,ty="chain_hex",wu=3}
C.abilities["wh3_dlc24_spell_hags_curse_of_the_ancient_witch_upgraded"] = {ai="augment_ranged",cd=35,dur=24,er=0,mana=8,mc=0,minr=0,n="Blessing of the Ancient Witch",nf=5,rng=200,sa=true,src="spell",tf=true,ts=true,ty="chain_augment",upg=true,wu=3}
C.abilities["wh3_dlc24_spell_hags_cursed_cauldron"] = {ai="vortex_ap",cd=18,dmg=2,dur=10,er=0,ff=true,mana=18,mc=0,minr=0,n="Cursed Cauldron",rad=19,rng=200,src="spell",te=true,tg=true,ty="bombardment",wu=5}
C.abilities["wh3_dlc24_spell_hags_cursed_cauldron_upgraded"] = {ai="vortex_ap",cd=18,dmg=2,dur=10,er=0,ff=true,mana=22,mc=0,minr=0,n="Blessed Cauldron",rad=19,rng=200,src="spell",te=true,tg=true,ty="bombardment",upg=true,wu=5}
C.abilities["wh3_dlc24_spell_hags_malediction_of_madness"] = {ai="hex_melee",cd=45,dur=15,er=0,mana=16,mc=0,minr=0,n="Malediction of Madness",ne=1,rng=100,src="spell",te=true,ty="hex",wu=5}
C.abilities["wh3_dlc24_spell_hags_malediction_of_madness_upgraded"] = {ai="augment_melee",cd=45,dur=43,er=0,mana=16,mc=0,minr=0,n="Incantation of Mania",nf=1,rng=100,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=5}
C.abilities["wh3_dlc24_spell_hags_the_forbidden_fens"] = {ai="hex_speed_area",cd=31,dur=24,er=55,mana=5,mc=0,minr=0,n="The Forbidden Fens",ne=-1,rng=200,src="spell",tg=true,ty="area_of_hexes",wu=1}
C.abilities["wh3_dlc24_spell_hags_the_forbidden_fens_upgraded"] = {ai="augment_defense_ranged_area",cd=32,dur=21,er=55,mana=6,mc=0,minr=0,n="Whispers in the Woods",nf=-1,rng=200,sa=true,src="spell",tg=true,ty="area_of_augments",upg=true,wu=1}
C.abilities["wh3_dlc24_spell_hags_vengeance_of_spirits"] = {ai="direct_damage_multi_entity_area",cd=38,dur=11,er=35,mana=12,mc=0,minr=0,n="Vengeance of Spirits",ne=-1,rng=200,src="spell",tg=true,ty="area_of_direct_damage",wu=3}
C.abilities["wh3_dlc24_spell_hags_vengeance_of_spirits_upgraded"] = {ai="augment_spellcasting",cd=40,dur=19,er=35,mana=6,mc=0,minr=0,n="Omen of Spirits",nf=-1,rng=200,sa=true,src="spell",tg=true,ty="augment_of_the_winds",upg=true,uses=3,wu=3}
C.abilities["wh3_dlc24_spell_hags_witchbrew"] = {ai="vortex_breath",cd=30,dmg=23,dur=2,er=0,ff=true,mana=6,mc=0,minr=0,n="Witchbrew",rad=12,rng=100,src="spell",te=true,tg=true,ty="breath",vlen=48,wu=1}
C.abilities["wh3_dlc24_spell_hags_witchbrew_upgraded"] = {ai="vortex_breath",cd=30,dmg=0,dur=2,er=0,ff=true,mana=6,mc=0,minr=0,n="Witchbroth",rad=12,rng=100,sa=true,src="spell",tg=true,ts=true,ty="breath",upg=true,vlen=48,wu=1}
C.abilities["wh3_dlc24_spell_the_changeling_drowned_dead"] = {ai="threatened",cd=60,dur=3,er=0,mana=0,mc=0,minr=0,n="Drowned Dead",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=3}
C.abilities["wh3_dlc24_unit_abilities_bastion_of_the_great_cities"] = {ai="augment_defense_melee_area",cd=30,dur=0,er=100,mana=0,mc=0,minr=0,n="Bastion of the Great Cities",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc24_unit_abilities_disdain_of_the_dragon_emperor"] = {ai="augment_melee_area",cd=30,dur=0,er=100,mana=0,mc=0,minr=0,n="Disdain of the Dragon Emperor",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc24_unit_abilities_fearsome_roar"] = {ai="hex_morale_area",cd=90,dur=25,er=35,mana=0,mc=0,minr=0,n="Fearsome Roar",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh3_dlc24_unit_abilities_fury_of_the_falling_blade"] = {ai="augment_melee_area",cd=30,dur=0,er=100,mana=0,mc=0,minr=0,n="Fury of the Falling Blade",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc24_unit_abilities_hags_denial"] = {cd=120,dur=44,er=0,mana=0,mc=0,minr=0,n="Hag's Denial",rng=0,sa=true,src="active",ty="ward_save",uses=1,wu=0}
C.abilities["wh3_dlc24_unit_abilities_howl_of_the_great_beast"] = {ai="hex_morale_area",cd=90,dur=25,er=35,mana=0,mc=0,minr=0,n="Howl of the Great Beast",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=1}
C.abilities["wh3_dlc24_unit_abilities_ice_breath"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Ice Breath",rad=5,rng=80,src="active",te=true,ty="magic_missiles",uses=3,wu=1.3}
C.abilities["wh3_dlc24_unit_abilities_jade_dragons_breath"] = {ai="vortex_breath",cd=30,dmg=21,dur=3,er=0,ff=true,mana=0,mc=0,minr=0,n="Jade Lion's Breath",rad=9,rng=100,src="bound",te=true,tg=true,ty="breath",uses=2,vlen=37.5,wu=1}
C.abilities["wh3_dlc24_unit_abilities_lampreys_bite"] = {ai="aoe",cd=90,dmg=32,dur=1,er=0,ff=true,mana=0,mc=0,minr=0,n="Lamprey's Bite",rad=25,rng=100,sa=true,src="active",tg=true,ty="wind",uses=5,vlen=24,wu=0}
C.abilities["wh3_dlc24_unit_abilities_maelstrom_of_change"] = {ai="direct_damage_multi_entity",cd=60,dur=7,er=0,mana=0,mc=0,minr=0,n="Maelstrom of Change",ne=5,rng=200,src="active",te=true,ty="chain_hex",uses=3,wu=0}
C.abilities["wh3_dlc24_unit_abilities_mark_of_yin"] = {ai="hex_ranged",cd=120,dur=28,er=0,mana=0,mc=0,minr=0,n="Mark of Yin",ne=1,rng=180,src="active",te=true,ty="hex",wu=3}
C.abilities["wh3_dlc24_unit_abilities_moon_flare"] = {ai="always_use_only_land",cd=90,cm=true,dmg=12,dur=11.5,er=0,ff=true,mana=0,mc=0,minr=0,n="Moon Flare",ne=-1,rad=10,rng=10,sa=true,src="active",ty="vortex",uses=3,wu=1.5}
C.abilities["wh3_dlc24_unit_abilities_nan_gau_grenades"] = {ai="always_use_only_land",cd=60,dur=10,er=0,ff=true,mana=0,mc=0,minr=0,n="Nan-Gau Grenades",rad=7,rng=10,src="active",ty="bombardment",uses=2,wu=0}
C.abilities["wh3_dlc24_unit_abilities_pack_trap"] = {ai="hex_melee",cd=90,dur=10,er=0,mana=0,mc=0,minr=0,n="Pack Trap",ne=1,rng=100,src="active",te=true,ty="hex",uses=3,wu=0}
C.abilities["wh3_dlc24_unit_abilities_witchbrew"] = {ai="augment_melee_self",cd=90,dur=24,er=0,mana=0,mc=0,minr=0,n="Witchbrew",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh3_dlc24_unit_bound_missile_mirror"] = {ai="hex_ranged",cd=44,dur=18,er=0,fm=true,mana=0,mc=0,minr=0,n="Missile Mirror",ne=1,rng=200,src="bound",te=true,ty="hex",uses=2,wu=3}
C.abilities["wh3_dlc24_unit_passive_petrifying_gaze"] = {cd=120,dur=32,er=0,mana=0,mc=0,minr=0,n="Petrifying Gaze",ne=1,rng=50,src="active",te=true,ty="hex",uses=2,wu=0}
C.abilities["wh3_dlc24_weapon_abilities_dragons_fang"] = {ai="augment_melee_self",cd=120,dur=20,er=0,mana=0,mc=0,minr=0,n="The Dragon's Fang",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc24_weapon_abilities_ursuns_claw"] = {ai="augment_melee_self",cd=120,dur=17,er=0,mana=0,mc=0,minr=0,n="Ursun's Claw",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc25_abilities_restock_gunnery_school"] = {ai="ammo_replenish",cd=60,dur=10,er=0,mana=0,mc=0,minr=0,n="Restock!",nf=1,rng=100,src="active",tf=true,ty="augment",uses=2,wu=0}
C.abilities["wh3_dlc25_cataclysm_beasts_merciws_monstrous_regiment_com"] = {ai="augment_melee",cd=120,dur=120,er=0,mana=20,mc=0,minr=0,n="Merciw's Monstrous Regiment",nf=1,rng=-1,src="cataclysm",tf=true,ty="augment",uses=1,wu=5}
C.abilities["wh3_dlc25_cataclysm_death_ashes_and_dust_com"] = {ai="direct_damage_multi_entity_area",cd=120,dur=11,er=35,mana=20,mc=0,minr=0,n="Ashes & Dust",ne=-1,rng=-1,src="cataclysm",te=true,tg=true,ty="area_of_direct_damage",uses=1,wu=5}
C.abilities["wh3_dlc25_cataclysm_fire_magma_storm_com"] = {ai="aoe_ap",cd=120,dmg=28,dur=12,er=0,ff=true,mana=20,mc=0,minr=0,n="Magma Storm",rad=65,rng=-1,src="cataclysm",tg=true,ty="vortex",uses=1,wu=5}
C.abilities["wh3_dlc25_cataclysm_heavens_thorsens_thunderstorm_com"] = {ai="aoe_bombardment",cd=120,dur=31,er=0,ff=true,mana=20,mc=0,minr=0,n="Thorsen's Thunderstorm",rad=38,rng=-1,src="cataclysm",tg=true,ty="bombardment",uses=1,wu=5}
C.abilities["wh3_dlc25_cataclysm_life_storm_of_renewal_com"] = {ai="healing_area",cd=120,dur=20,er=55,heal=true,mana=20,mc=0,minr=0,n="Storm of Renewal",nf=-1,rng=-1,src="cataclysm",tg=true,ty="area_of_regeneration",uses=1,wu=5}
C.abilities["wh3_dlc25_cataclysm_light_time_amok_com"] = {ai="augment_melee_area",cd=120,dur=45,er=-1,mana=20,mc=0,minr=0,n="Time Amok",ne=-1,nf=-1,rng=-1,src="cataclysm",tg=true,ty="area_of_augments",uses=1,wu=5}
C.abilities["wh3_dlc25_cataclysm_metal_gehennas_golden_globe_com"] = {ai="vortex_wind",cd=120,dmg=100,dur=12,er=0,ff=true,mana=20,mc=0,minr=0,n="Gehenna's Golden Globe",rad=8,rng=-1,src="cataclysm",tg=true,ty="wind",uses=1,vlen=140,wu=5}
C.abilities["wh3_dlc25_cataclysm_shadow_dance_of_despair_com"] = {ai="hex_melee_area",cd=120,dur=45,er=55,mana=20,mc=0,minr=0,n="Dance of Despair",ne=-1,rng=-1,src="cataclysm",te=true,tg=true,ty="area_of_hexes",uses=1,wu=5}
C.abilities["wh3_dlc25_character_abilities_children_of_the_forest"] = {ai="threatened",cd=90,dur=1,er=0,mana=0,mc=0,minr=0,n="Children of the Forest",nf=1,rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=5,wu=0}
C.abilities["wh3_dlc25_character_abilities_get_em"] = {ai="hex_speed_under_fire",cd=90,dur=11,er=35,mana=0,mc=0,minr=0,n="Get 'Em!",ne=-1,rng=100,src="active",te=true,tg=true,ty="hex",wu=0}
C.abilities["wh3_dlc25_character_abilities_guardian_of_the_forest"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Guardian of the Forest",nf=1,rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh3_dlc25_character_abilities_hurricane_of_death"] = {ai="aoe_centred_on_self",cd=120,cm=true,dmg=80,dur=6,er=0,mana=0,mc=0,minr=0,n="Hurricane of Death",rad=5,rng=0,sa=true,src="active",ty="vortex",wu=0}
C.abilities["wh3_dlc25_character_abilities_kettles_call"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Kettle's Call",rng=45,src="active",sum=true,tf=true,tg=true,ty="summon_unit",uses=2,wu=5}
C.abilities["wh3_dlc25_character_abilities_mercurial_shot"] = {ai="projectile_homing_single",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Mercurial Shot",rad=5,rng=130,src="active",te=true,ty="magic_missile",uses=3,wu=0}
C.abilities["wh3_dlc25_character_abilities_pigeon_bomb"] = {ai="aoe_bombardment",cd=120,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Pigeon Bomb",rad=13,rng=200,src="active",te=true,tg=true,ty="bombardment",uses=3,wu=0}
C.abilities["wh3_dlc25_character_abilities_sands_of_sickness"] = {ai="augment_melee_area",cd=120,dur=25,er=0,mana=0,mc=0,minr=0,n="Sands of Sickness",ne=5,nf=5,rng=0,sa=true,src="active",ty="chain_augment",wu=0}
C.abilities["wh3_dlc25_character_abilities_surprise_squig"] = {ai="threatened",cd=60,dur=1,er=0,mana=0,mc=0,minr=0,n="Surprise Squig!",nf=1,rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=5,wu=0}
C.abilities["wh3_dlc25_character_abilities_tallymans_blades"] = {ai="hex_melee",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="The Tallyman's Blades",rng=50,src="active",sum=true,tf=true,tg=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_dlc25_character_abilities_tallymans_blades_2"] = {ai="hex_melee",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="The Tallyman's Blades Upgraded",rng=-1,src="active",sum=true,tf=true,tg=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_dlc25_character_abilties_epidemic_outbreak"] = {ai="aoe_centred_on_self",cd=90,dmg=20,dur=2,er=0,mana=0,mc=0,minr=0,n="Epidemic Outburst",rad=15,rng=0,sa=true,src="active",ty="explosion",wu=0}
C.abilities["wh3_dlc25_character_abilties_epidemic_outbreak_improved"] = {ai="aoe_centred_on_self",cd=90,dmg=40,dur=2,er=0,mana=0,mc=0,minr=0,n="Epidemic Outbreak",rad=15,rng=0,sa=true,src="active",ty="explosion",wu=0}
C.abilities["wh3_dlc25_hero_abilities_titan_headsman"] = {ai="hex_melee",cd=90,dur=29,er=0,mana=0,mc=0,minr=0,n="Titan Headsman",rng=75,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_dlc25_item_abilities_deaths_timekeeper"] = {ai="direct_damage_single_entity",cd=120,dur=10,er=0,heal=true,mana=0,mc=0,minr=0,n="Death's Timekeeper",ne=1,nf=1,rng=100,sa=true,src="active",te=true,ty="direct_damage",uses=2,wu=0}
C.abilities["wh3_dlc25_item_abilities_necrotic_phylactry"] = {ai="healing_single_use",cd=90,dur=18,er=0,mana=0,mc=0,minr=0,n="Necrotic Phylactery",nf=5,rng=0,sa=true,src="active",ty="chain_augment",uses=1,wu=0}
C.abilities["wh3_dlc25_item_abilities_ominous_powder"] = {cd=120,dur=30,er=0,fm=true,mana=0,mc=0,minr=0,n="Ominous Powder",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc25_item_abilities_stormlance"] = {ai="augment_melee_self",cd=120,dur=32,er=0,mana=0,mc=0,minr=0,n="Stormlance",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc25_item_abilities_the_gold_standard"] = {cd=90,dur=13,er=0,mana=0,mc=0,minr=0,n="The Gold Standard",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh3_dlc25_lord_abilities_cinderblast_cluster_bomb"] = {ai="projectile_explosive",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=5,n="Cinderblast Cluster Bomb",rad=3,rng=75,src="active",te=true,ty="magic_missile",uses=3,wu=3}
C.abilities["wh3_dlc25_lord_abilities_darkwalker"] = {ai="augment_defense_melee",cd=120,dur=30,er=0,mana=0,mc=0,minr=0,n="Darkwalker",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc25_lord_abilities_deranged_munitions"] = {ai="augment_ranged",cd=90,dur=30,er=0,mana=0,mc=0,minr=0,n="Deranged Munitions",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh3_dlc25_lord_abilities_deranged_munitions_upgraded"] = {ai="augment_ranged_area",cd=90,dur=30,er=35,mana=0,mc=0,minr=0,n="Deranged Munitions Upgraded",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",upg=true,wu=0}
C.abilities["wh3_dlc25_lord_abilities_glorious_death"] = {ai="augment_defense_melee_area",cd=120,dur=40,er=55,mana=0,mc=0,minr=0,n="Glorious Death",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc25_lord_abilities_nemesis_crown"] = {ai="aoe_bombardment",cd=120,dur=10,er=0,ff=true,mana=0,mc=0,minr=0,n="Nemesis Crown",rad=19,rng=100,src="active",te=true,tg=true,ty="bombardment",wu=6}
C.abilities["wh3_dlc25_lord_abilities_nurgles_favoured_son"] = {ai="augment_defense_melee",cd=120,dur=40,er=0,mana=0,mc=0,minr=0,n="Nurgle's Favoured Son",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc25_lord_abilities_rot_or_die"] = {ai="augment_melee_area",cd=90,dur=18,er=0,mana=0,mc=0,minr=0,n="Rot or Die!",nf=6,rng=0,sa=true,src="active",ty="chain_augment",wu=0}
C.abilities["wh3_dlc25_spell_Bound_doom_and_darkness_gunnery_school"] = {ai="hex_morale",cd=90,dur=36,er=0,mana=0,mc=0,minr=0,n="Doom & Darkness",ne=1,rng=200,src="bound",te=true,ty="hex",uses=2,wu=0}
C.abilities["wh3_dlc25_spell_bound_fire_the_burning_head"] = {ai="vortex_wind",cd=90,dmg=20,dur=20,er=0,ff=true,mana=0,mc=0,minr=0,n="The Burning Head",rad=7,rng=150,src="bound",te=true,tg=true,ty="wind",uses=1,vlen=180,wu=3}
C.abilities["wh3_dlc25_spell_bound_spirit_leech"] = {ai="direct_damage_single_entity",cd=32,dur=13,er=0,mana=0,mc=0,minr=0,n="Spirit Leech",ne=1,rng=100,src="bound",te=true,ty="direct_damage",uses=2,wu=1}
C.abilities["wh3_dlc25_spell_bound_spirit_leech_gunnery_school"] = {ai="direct_damage_single_entity",cd=32,dur=13,er=0,mana=0,mc=0,minr=0,n="Spirit Leech",ne=1,rng=100,src="bound",te=true,ty="direct_damage",uses=1,wu=1}
C.abilities["wh3_dlc25_spell_bound_the_fate_of_bjuna"] = {ai="direct_damage_multi_entity",cd=52,dur=18,er=0,mana=0,mc=0,minr=0,n="The Fate of Bjuna",ne=1,rng=100,src="bound",te=true,ty="direct_damage",uses=1,wu=5}
C.abilities["wh3_dlc25_unit_abilities_coruscating_blast"] = {ai="projectile_explosive",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=10,n="Coruscating Blast",rad=4,rng=55,src="active",te=true,ty="magic_missiles",uses=3,wu=1.3}
C.abilities["wh3_dlc25_unit_abilities_full_power"] = {ai="augment_charge_self",cd=90,dur=28,er=0,mana=0,mc=0,minr=0,n="Full Power!",rng=0,sa=true,src="active",ty="augment",wu=1}
C.abilities["wh3_dlc25_unit_abilities_gyrobomber_fire_bomb"] = {ai="always_use_only_land",cd=3,dur=1,er=0,ff=true,mana=0,mc=0,minr=0,n="Fire Bombs",rad=7.5,rng=10,src="active",ty="bombardment",uses=3,wu=0}
C.abilities["wh3_dlc25_unit_abilities_gyrocopter_bomb_anti_large"] = {ai="always_use_only_land",cd=0.1,dur=0.1,er=0,ff=true,mana=0,mc=0,minr=0,n="Gyrocopter Bomb (Trollhammer)",rad=6,rng=10,src="active",ty="bombardment",uses=2,wu=0}
C.abilities["wh3_dlc25_unit_abilities_marienburg_land_mines"] = {ai="always_use_only_land",cd=10,dmg=20,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Land Mine",rad=25,rng=0,src="active",ty="explosion",uses=3,wu=0}
C.abilities["wh3_dlc25_unit_abilities_spear_of_grungni"] = {ai="projectile_single_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Spear of Grungni",rad=8,rng=300,src="active",te=true,ty="magic_missile",uses=1,wu=1}
C.abilities["wh3_dlc25_unit_abilities_thunderbarge_fire_bomb"] = {ai="always_use_only_land",cd=3,dur=1,er=0,ff=true,mana=0,mc=0,minr=0,n="Fire Bombs",rad=2.7,rng=10,src="active",ty="bombardment",uses=3,wu=0}
C.abilities["wh3_dlc25_unit_abilities_thunderburner"] = {ai="hex_speed_under_fire",cd=30,dur=0,er=0,mana=0,mc=0,minr=0,n="Thunderburner",rng=0,sa=true,src="active",ty="augment",wu=1}
C.abilities["wh3_dlc25_unit_abilities_thunderburner_upgraded"] = {ai="hex_speed_under_fire",cd=30,dur=0,er=0,mana=0,mc=0,minr=0,n="Thunderburner Upgraded",rng=0,sa=true,src="active",ty="augment",upg=true,wu=1}
C.abilities["wh3_dlc25_unit_abilities_unspeakable_foulness"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Unspeakable Foulness",rad=5,rng=60,src="active",te=true,ty="magic_missiles",uses=3,wu=1.3}
C.abilities["wh3_dlc25_unit_abilities_whirlwind_of_death"] = {ai="aoe_centred_on_self",cd=90,cm=true,dmg=4,dur=6,er=0,fm=true,mana=0,mc=0,minr=0,n="Whirlwind of Death",rad=4,rng=0,sa=true,src="active",ty="vortex",uses=1,wu=0}
C.abilities["wh3_dlc25_unit_abilities_whirlwind_of_death_ror"] = {ai="aoe_centred_on_self",cd=60,cm=true,dmg=4,dur=6,er=0,fm=true,mana=0,mc=0,minr=0,n="Endless Whirlwind of Death",rad=4,rng=0,sa=true,src="active",ty="vortex",wu=0}
C.abilities["wh3_dlc25_unit_abilities_whirlwind_of_death_ror_upgraded"] = {ai="aoe_centred_on_self",cd=60,cm=true,dmg=6,dur=6,er=0,fm=true,mana=0,mc=0,minr=0,n="Endless Whirlwind of Death Upgraded",rad=4,rng=0,sa=true,src="active",ty="vortex",upg=true,wu=0}
C.abilities["wh3_dlc25_unit_abilities_whirlwind_of_death_upgraded"] = {ai="aoe_centred_on_self",cd=90,cm=true,dmg=6,dur=6,er=0,fm=true,mana=0,mc=0,minr=0,n="Whirlwind of Death Upgraded",rad=4,rng=0,sa=true,src="active",ty="vortex",upg=true,uses=1,wu=0}
C.abilities["wh3_dlc25_unit_formation_shieldwall"] = {ai="augment_charge_self",cd=-1,dur=0,er=0,fm=true,mana=0,mc=0,minr=0,n="Shieldwall",rng=0,sa=true,src="active",ty="formation",wu=0}
C.abilities["wh3_dlc25_unit_formation_shieldwall_upgraded"] = {ai="augment_charge_self",cd=-1,dur=0,er=0,fm=true,mana=0,mc=0,minr=0,n="Shieldwall of Gromril",rng=0,sa=true,src="active",ty="formation",upg=true,wu=0}
C.abilities["wh3_dlc25_weapon_abilities_axes_of_kadrin"] = {ai="augment_melee_self",cd=120,dur=21,er=0,mana=0,mc=0,minr=0,n="Axes of Kadrin",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc25_weapon_abilities_experimental_explosive"] = {ai="projectile_explosive",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Experimental Explosive",rad=15,rng=70,src="active",te=true,ty="magic_missile",uses=2,wu=0.8}
C.abilities["wh3_dlc25_weapon_abilities_liarsbane"] = {ai="augment_melee_self",cd=60,dur=28,er=0,mana=0,mc=0,minr=0,n="Liarsbane",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc25_weapon_abilities_makaissons_persuader"] = {ai="healing",cd=120,dur=17,er=0,heal=true,mana=0,mc=0,minr=0,n="Makaisson's Persuader",ot=true,rng=100,sa=true,src="active",tf=true,ts=true,ty="regeneration",uses=3,wu=0}
C.abilities["wh3_dlc25_weapon_abilities_sword_of_filth"] = {ai="hex_armour",cd=120,dur=20,er=0,mana=0,mc=0,minr=0,n="Sword of Filth",ne=5,rng=35,src="active",te=true,ty="chain_hex",wu=1}
C.abilities["wh3_dlc25_weapon_abilities_the_black_cleaver"] = {ai="augment_melee_self",cd=120,dur=36,er=55,mana=0,mc=0,minr=0,n="The Black Cleaver",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc25_weapon_abilities_the_father_of_blades"] = {ai="augment_melee_self",cd=90,dur=33,er=20,mana=0,mc=0,minr=0,n="The Father of Blades",ne=-1,rng=0,sa=true,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh3_dlc26_character_abilities_bloody_onslaught"] = {ai="hex_armour",cd=90,dur=38,er=0,mana=0,mc=0,minr=0,n="Bloody Onslaught",ne=1,rng=75,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_dlc26_character_abilities_cash_cascade"] = {ai="augment_melee_area",cd=120,dur=30,er=35,mana=0,mc=0,minr=0,n="Cash Cascade",nf=-1,rng=200,src="active",tf=true,tg=true,ty="area_of_augments",wu=0}
C.abilities["wh3_dlc26_character_abilities_crimson_juggernaut"] = {ai="augment_charge_self",cd=120,dur=25,er=0,mana=0,mc=0,minr=0,n="Crimson Juggernaut",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc26_character_abilities_da_boss_as_a_plan"] = {ai="augment_melee_self",cd=90,dur=20,er=0,mana=0,mc=0,minr=0,n="Da Boss 'as a Plan!",nf=1,rng=150,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_dlc26_character_abilities_dead_eye"] = {ai="projectile_homing_single_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Dead Eye",rad=1,rng=150,src="active",te=true,ty="magic_missile",wu=5}
C.abilities["wh3_dlc26_character_abilities_dinner_bell"] = {ai="augment_defense_melee",cd=90,dur=55,er=0,mana=0,mc=0.3,minr=0,n="Dinner Bell",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc26_character_abilities_empowering_shrooms"] = {ai="augment_melee",cd=90,dur=35,er=35,mana=0,mc=0,minr=0,n="Empowering Shrooms",nf=-1,rng=100,sa=true,src="active",tf=true,tg=true,ty="area_of_augments",wu=0}
C.abilities["wh3_dlc26_character_abilities_headhunt"] = {ai="hex_melee",cd=90,dur=31,er=0,mana=0,mc=0,minr=0,n="Headhunt",ne=1,rng=150,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_dlc26_character_abilities_inevitable_horror"] = {ai="hex_melee_area",cd=120,dur=33,er=35,mana=0,mc=0,minr=0,n="Inevitable Horror",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh3_dlc26_character_abilities_inventory_of_hatchlings"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Inventory of Hatchlings",rng=50,src="active",sum=true,te=true,tg=true,ty="summon_unit",uses=3,wu=0}
C.abilities["wh3_dlc26_character_abilities_inventory_of_hatchlings_upgraded"] = {ai="threatened",cd=60,dur=1,er=0,mana=0,mc=0,minr=0,n="Inventory of Hatchlings Upgraded",rng=100,src="active",sum=true,te=true,tg=true,ty="summon_unit",upg=true,uses=5,wu=0}
C.abilities["wh3_dlc26_character_abilities_kill_for_khorne"] = {ai="aoe_centred_on_self",cd=120,dmg=24,dur=1,er=0,mana=0,mc=0,minr=0,n="Kill for Khorne!",ne=-1,rad=15,rng=0,sa=true,src="active",ty="explosion",wu=3}
C.abilities["wh3_dlc26_character_abilities_mumbo_jumbo_chant"] = {ai="augment_melee_area",cd=120,cm=true,dur=30,er=55,mana=0,mc=0,minr=0,n="Mumbo-Jumbo Chant",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc26_character_abilities_orcs_are_da_best"] = {ai="augment_melee",cd=90,dur=27,er=0,mana=0,mc=0,minr=0,n="Orcs are da Best!",nf=1,rng=150,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_dlc26_character_abilities_puncture"] = {ai="augment_melee_self",cd=90,dur=38,er=0,mana=0,mc=0,minr=0,n="Puncture",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc26_character_abilities_spider_web_attack"] = {ai="hex_melee",cd=120,dur=18,er=0,mana=0,mc=0,minr=0,n="Spiderweb Attack",ne=1,rng=50,src="active",te=true,ty="hex",uses=2,wu=0}
C.abilities["wh3_dlc26_character_abilities_squig_thinkin"] = {ai="threatened",cd=90,dur=1,er=0,mana=0,mc=0,minr=0,n="Squig Thinkin'",rng=75,src="active",sum=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh3_dlc26_character_abilities_sting_of_snagla"] = {ai="projectile_single",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Sting of Snagla",rad=5,rng=250,src="active",te=true,ty="magic_missiles",uses=3,wu=2}
C.abilities["wh3_dlc26_character_abilities_were_you_goin"] = {ai="augment_defense_melee",cd=90,dur=25,er=0,mana=0,mc=0,minr=0,n="Where You Goin!?",nf=1,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_dlc26_hero_abilities_savage_predators"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Savage Predators",rng=45,src="active",sum=true,tf=true,tg=true,ty="augment",uses=1,wu=5}
C.abilities["wh3_dlc26_item_abilities_bugmans_xxxxxx"] = {ai="healing_single_use",cd=120,dur=18,er=0,heal=true,mana=0,mc=0,minr=0,n="Bugman's XXXXXX",rng=55,sa=true,src="active",ty="regeneration",wu=0}
C.abilities["wh3_dlc26_item_tmb_liche_priest_viziers_kanopi"] = {ai="assault_opportunity",cd=-1,dur=1,er=0,mana=0,mc=0,minr=0,n="Vizier's Kanopi",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh3_dlc26_lord_abilities_blood_sacrifice"] = {ai="healing",cd=60,dur=10,er=0,heal=true,mana=0,mc=0,minr=0,n="Blood Sacrifice",nf=1,rng=100,sa=true,src="active",tf=true,ty="regeneration",uses=3,wu=0}
C.abilities["wh3_dlc26_lord_abilities_boiling_cauldron"] = {ai="aoe_ap",cd=120,dmg=10,dur=6,er=0,ff=true,mana=0,mc=0,minr=0,n="Boiling Cauldron",rad=15,rng=200,src="active",te=true,tg=true,ty="vortex",uses=1,wu=1.5}
C.abilities["wh3_dlc26_lord_abilities_eye_of_khorne"] = {ai="hex_melee",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Eye of Khorne",ne=1,rng=50,src="active",sum=true,te=true,ty="direct_damage",uses=1,wu=0}
C.abilities["wh3_dlc26_lord_abilities_feasting_frenzy"] = {ai="augment_melee_area",cd=-1,dur=27,er=-1,mana=0,mc=0,minr=0,n="Feasting Frenzy",nf=-1,rng=0,src="active",ty="area_of_augments",uses=1,wu=0}
C.abilities["wh3_dlc26_lord_abilities_gaze_of_khorne"] = {ai="aoe_centred_on_self",cd=120,cm=true,dmg=36,dur=2,er=0,mana=0,mc=0,minr=0,n="Fury of the Blood God",ne=-1,rad=15,rng=0,sa=true,src="active",ty="explosion",wu=0}
C.abilities["wh3_dlc26_lord_abilities_gorger_onslaught_upgraded"] = {ai="threatened",cd=90,dur=1,er=0,mana=0,mc=0,minr=0,n="Gorger Onslaught Upgraded",rng=100,src="active",sum=true,te=true,tg=true,ty="summon_unit",upg=true,uses=3,wu=1}
C.abilities["wh3_dlc26_lord_abilities_murderous_exhortations"] = {ai="aoe_centred_on_self",cd=120,dur=20,er=35,mana=0,mc=0,minr=0,n="Murderous Exhortations",ne=-1,rng=0,src="active",ty="area_of_direct_damage",uses=3,wu=0}
C.abilities["wh3_dlc26_lord_abilities_pilgrimage_of_skulls"] = {ai="augment_melee_area",cd=120,dur=21,er=35,mana=0,mc=0,minr=0,n="Pilgrimage of Skulls",nf=-1,rng=100,sa=true,src="active",tf=true,ty="area_of_augments",wu=0}
C.abilities["wh3_dlc26_lord_abilities_simmering_pot"] = {ai="aoe_ap",cd=90,dmg=4,dur=6,er=0,ff=true,mana=0,mc=0,minr=0,n="Simmering Pot",rad=15,rng=200,src="active",te=true,tg=true,ty="vortex",uses=1,wu=1.5}
C.abilities["wh3_dlc26_lord_abilities_wild_abandon"] = {ai="augment_melee",cd=90,dur=25,er=0,mana=0,mc=0,minr=0,n="Wild Abandon",nf=1,rng=100,sa=true,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_dlc26_spell_bound_bonecrusher"] = {ai="aoe_bombardment",cd=90,dmg=64,dur=6,er=0,ff=true,mana=0,mc=0,minr=0,n="Bonecrusher",rad=8,rng=200,src="bound",te=true,tg=true,ty="explosion",uses=1,wu=3}
C.abilities["wh3_dlc26_spell_bound_trollguts"] = {ai="healing",cd=90,dur=35,er=0,heal=true,mana=0,mc=0,minr=0,n="Trollguts",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="regeneration",uses=1,wu=5}
C.abilities["wh3_dlc26_unit_abilities_acid_vomit"] = {ai="aoe_centred_on_self",cd=120,dmg=10,dur=14,er=0,mana=0,mc=0,minr=0,n="Acid Burps",rad=5,rng=0,sa=true,src="active",ty="vortex",wu=0}
C.abilities["wh3_dlc26_unit_abilities_eat_da_runts"] = {ai="healing",cd=90,dur=10,er=0,heal=true,mana=0,mc=0,minr=0,n="Eat da Runts!",nf=-1,rng=100,sa=true,src="active",tf=true,ty="regeneration",uses=3,wu=0}
C.abilities["wh3_dlc26_unit_abilities_immovable_bulwark"] = {ai="augment_defense_melee",cd=1,dur=0,er=0,mana=0,mc=0,minr=0,n="Immovable Bulwark",rng=0,sa=true,src="active",ty="augment",wu=1}
C.abilities["wh3_dlc26_unit_abilities_maneater_smoke_bomb"] = {ai="augment_melee_self",cd=90,dmg=0,dur=24,er=0,mana=0,mc=0,minr=0,n="Maneater Smoke Bomb",rad=25,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc26_unit_abilities_marked_for_eatin"] = {ai="hex_melee",cd=120,dur=29,er=0,mana=0,mc=0,minr=0,n="Marked for Eatin'",ne=1,rng=75,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_dlc26_unit_abilities_net_dem_up"] = {ai="hex_melee",cd=90,dur=18,er=0,mana=0,mc=0,minr=0,n="Net Dem Up!",ne=1,rng=75,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_dlc26_unit_abilities_splode_da_big_one"] = {ai="aoe_centred_on_self",cd=0,cm=true,dmg=69,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Splode da Big 'Un!",ne=-1,rad=30,rng=0,sa=true,src="active",ty="explosion",uses=1,wu=0.4}
C.abilities["wh3_dlc26_unit_abilities_unstoppable_choppas"] = {ai="augment_melee",cd=1,dur=0,er=0,mana=0,mc=0,minr=0,n="Unstoppable Choppas",rng=0,sa=true,src="active",ty="augment",wu=1}
C.abilities["wh3_dlc26_unit_abilities_waaagh_in_combat"] = {ai="augment_melee",cd=90,dur=18,er=0,mana=0,mc=0,minr=0,n="Waaagh!",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc26_weapon_abilities_bloodstorm_blades"] = {ai="augment_melee_self",cd=120,dur=35,er=0,mana=0,mc=0,minr=0,n="Bloodstorm Blades",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc26_weapon_abilities_fangspike"] = {ai="augment_melee_self",cd=120,dur=29,er=0,mana=0,mc=0,minr=0,n="Fangspike",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc26_weapon_abilities_great_gutgouger"] = {ai="augment_melee_self",cd=120,dur=22,er=0,mana=0,mc=0,minr=0,n="Great Gutgouger",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc26_weapon_abilities_morglor_the_mangler"] = {ai="augment_melee_self",cd=120,dur=23,er=0,mana=0,mc=0,minr=0,n="Morglor the Mangler",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc26_weapon_abilities_the_slayer_sword"] = {ai="augment_melee_self",cd=120,dur=22,er=0,mana=0,mc=0,minr=0,n="The Slayer Sword",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc27_cataclysm_bound_ashes_and_dust"] = {ai="direct_damage_multi_entity_area",cd=120,dur=11,er=35,mana=0,mc=0,minr=0,n="Ashes & Dust",ne=-1,rng=-1,src="bound",te=true,tg=true,ty="area_of_direct_damage",uses=3,wu=5}
C.abilities["wh3_dlc27_cataclysm_bound_dance_of_despair"] = {ai="hex_melee_area",cd=120,dur=45,er=55,mana=0,mc=0,minr=0,n="Dance of Despair",ne=-1,rng=-1,src="bound",te=true,tg=true,ty="area_of_hexes",uses=3,wu=5}
C.abilities["wh3_dlc27_cataclysm_bound_gehennas_golden_globe"] = {ai="vortex_wind",cd=120,dmg=100,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Gehenna's Golden Globe",rad=8,rng=-1,src="bound",tg=true,ty="wind",uses=3,vlen=140,wu=5}
C.abilities["wh3_dlc27_cataclysm_bound_magma_storm"] = {ai="aoe_ap",cd=120,dmg=28,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Magma Storm",rad=65,rng=-1,src="bound",tg=true,ty="vortex",uses=3,wu=5}
C.abilities["wh3_dlc27_cataclysm_bound_merciws_monstrous_regiment"] = {ai="augment_melee",cd=120,dur=120,er=0,mana=0,mc=0,minr=0,n="Merciw's Monstrous Regiment",nf=1,rng=-1,src="bound",tf=true,ty="augment",uses=3,wu=5}
C.abilities["wh3_dlc27_cataclysm_bound_storm_of_renewal"] = {ai="healing_area",cd=120,dur=20,er=55,heal=true,mana=0,mc=0,minr=0,n="Storm of Renewal",nf=-1,rng=-1,src="bound",tg=true,ty="area_of_regeneration",uses=3,wu=5}
C.abilities["wh3_dlc27_cataclysm_bound_thorsens_thunderstorm"] = {ai="aoe_bombardment",cd=120,dur=31,er=0,ff=true,mana=0,mc=0,minr=0,n="Thorsen's Thunderstorm",rad=38,rng=-1,src="bound",tg=true,ty="bombardment",uses=3,wu=5}
C.abilities["wh3_dlc27_cataclysm_bound_time_amok"] = {ai="augment_melee_area",cd=120,dur=45,er=-1,mana=0,mc=0,minr=0,n="Time Amok",ne=-1,nf=-1,rng=-1,src="bound",tg=true,ty="area_of_augments",uses=3,wu=5}
C.abilities["wh3_dlc27_character_abilities_captain_of_the_phoenix_guard"] = {ai="augment_defense_melee",cd=120,dur=43,er=0,heal=true,mana=0,mc=0,minr=0,n="Captain of the Phoenix Guard",nf=1,ot=true,rng=50,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_dlc27_character_abilities_envelop_in_mist_bound"] = {ai="full_hide",cd=120,dur=22,er=35,mana=0,mc=0,minr=0,n="Envelop in Mist",nf=-1,rng=150,src="active",tg=true,ty="area_of_augments",uses=1,wu=0}
C.abilities["wh3_dlc27_character_abilities_iron_hand_captain"] = {ai="augment_morale",cd=120,dur=42,er=0,mana=0,mc=0,minr=0,n="Iron-Handed Captain",nf=1,ot=true,rng=200,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_dlc27_character_abilities_master_of_mists"] = {ai="augment_ranged_area",cd=120,dur=58,er=35,mana=0,mc=0,minr=0,n="Master of Mists",nf=-1,rng=250,sa=true,src="active",tg=true,ty="area_of_augments",uses=2,wu=0}
C.abilities["wh3_dlc27_character_abilities_master_of_mists_custom"] = {ai="augment_ranged_area",cd=120,dur=36,er=35,mana=0,mc=0,minr=0,n="Master of Mists",nf=-1,rng=250,sa=true,src="active",tg=true,ty="area_of_augments",uses=2,wu=0}
C.abilities["wh3_dlc27_character_abilities_nightmaw"] = {ai="vortex_wind",cd=45,dmg=50,dur=5,er=0,ff=true,mana=0,mc=0,minr=0,n="Nightmaw",rad=4.5,rng=50,src="active",te=true,tg=true,ty="wind",uses=3,vlen=33,wu=3}
C.abilities["wh3_dlc27_character_abilities_slezuzus_voice"] = {ai="augment_morale",cd=120,dur=26,er=0,mana=0,mc=0,minr=0,n="Daemonic Whispers",nf=1,rng=200,src="character",tf=true,ty="augment",wu=0}
C.abilities["wh3_dlc27_character_abilities_the_black_tongue"] = {ai="hex_melee",cd=120,dur=21,er=0,mana=0,mc=0,minr=0,n="The Black Tongue",ne=1,rng=200,src="active",te=true,ty="hex",uses=2,wu=0}
C.abilities["wh3_dlc27_hero_abilities_favoured_by_the_matriarch"] = {ai="augment_defense_ranged",cd=90,dur=26,er=55,mana=0,mc=0,minr=0,n="Favoured by the Matriarch",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc27_item_abilities_bear_fang_talisman"] = {ai="augment_melee_self",cd=90,dur=25,er=0,mana=0,mc=0,minr=0,n="Bear Fang Talisman",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc27_item_abilities_eagle_feather_torc"] = {ai="augment_melee_healing",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Eagle-Feather Torc",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc27_item_abilities_elixir_of_damnation"] = {ai="augment_melee_self",cd=120,dur=19,er=0,mana=0,mc=0,minr=0,n="Elixir of Damnation",rng=0,sa=true,src="item",ty="augment",uses=5,wu=0}
C.abilities["wh3_dlc27_item_abilities_mask_of_the_merlord"] = {cd=120,dur=3,er=0,mana=0,mc=0,minr=0,n="Mask of the Merlord",rng=100,src="active",sum=true,tg=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_dlc27_item_abilities_null_stone"] = {ai="hex_spellcasting",cd=120,dur=35,er=-1,mana=0,mc=0,minr=0,n="Null Stone",ne=-1,nf=-1,rng=0,src="active",ty="area_of_hexes",uses=3,wu=0}
C.abilities["wh3_dlc27_item_abilities_power_familiar"] = {ai="augment_spellcasting",cd=90,dur=22,er=0,mana=0,mc=0,minr=0,n="Power Familiar",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh3_dlc27_item_abilities_preyton_horns"] = {ai="augment_morale_area",cd=90,dur=24,er=55,mana=0,mc=0,minr=0,n="Preyton Horns",ne=1,nf=-1,rng=100,sa=true,src="bound",te=true,ty="area_of_augments",wu=0}
C.abilities["wh3_dlc27_item_abilities_schalkains_teeth"] = {ai="projectile_single_ap",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Schalkain's Teeth",ne=1,ot=true,rad=1,rng=200,src="active",te=true,ty="magic_missile",uses=2,wu=0}
C.abilities["wh3_dlc27_item_abilities_spurting_bile_blood"] = {cd=0,dmg=8,dur=9,er=0,mana=0,mc=0,minr=0,n="Spurting Bile-Blood",rad=10,rng=0,sa=true,src="bound",ty="vortex",uses=2,wu=0}
C.abilities["wh3_dlc27_item_abilities_staff_of_the_masque"] = {ai="augment_melee_self",cd=120,dur=23,er=0,heal=true,mana=0,mc=0,minr=0,n="Staff of Masks",ne=1,rng=50,sa=true,src="item",te=true,ty="augment",uses=2,wu=0}
C.abilities["wh3_dlc27_item_abilities_warrior_familiar"] = {ai="augment_melee_self",cd=90,dur=57,er=0,mana=0,mc=0,minr=0,n="Warrior Familiar",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh3_dlc27_item_passive_petrifying_gaze"] = {cd=-1,dur=16,er=0,mana=0,mc=0,minr=0,n="Petrifying Gaze",ne=1,rng=50,src="bound",te=true,ty="hex",uses=1,wu=0}
C.abilities["wh3_dlc27_lord_abilities_chanson_of_caging"] = {ai="aoe_centred_on_self",cd=20,dur=0,er=55,mana=0,mc=0,minr=0,n="Chanson of Caging",ne=-1,nf=-1,rng=0,sa=true,src="lord",ty="area_of_hexes",wu=0}
C.abilities["wh3_dlc27_lord_abilities_daggerdance"] = {ai="augment_defense_melee",cd=30,dur=0,er=0,mana=0,mc=0,minr=0,n="Daggerdance",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc27_lord_abilities_dance_of_destruction"] = {ai="augment_defense_melee",cd=30,dur=0,er=0,mana=0,mc=0,minr=0,n="Dance of Destruction",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc27_lord_abilities_offering_to_the_gods"] = {ai="augment_melee",cd=120,dur=43,er=0,mana=0,mc=0,minr=0,n="Offering to the Gods",nf=1,ot=true,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_dlc27_lord_abilities_quicksilver_strike"] = {ai="augment_melee_self",cd=60,dur=29,er=0,mana=0,mc=0,minr=0,n="Quicksilver Strike",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc27_lord_abilities_the_dance_of_dreaming"] = {ai="direct_damage_multi_entity",cd=20,dur=0,er=35,mana=0,mc=0,minr=0,n="The Dance of Dreaming",ne=-1,rng=0,sa=true,src="lord",ty="area_of_direct_damage",wu=0}
C.abilities["wh3_dlc27_lord_abilities_the_praise_of_slaanesh"] = {ai="augment_defense_melee",cd=30,dur=0,er=0,mana=0,mc=0,minr=0,n="The Praise of Slaanesh",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc27_lord_abilities_the_waltz_of_lethargy"] = {ai="aoe_centred_on_self",cd=20,dur=0,er=55,mana=0,mc=0,minr=0,n="The Waltz of Lethargy",ne=-1,nf=-1,rng=0,sa=true,src="lord",ty="area_of_hexes",wu=0}
C.abilities["wh3_dlc27_lord_abilities_whirlwind_of_pleasure"] = {ai="aoe_centred_on_self",cd=120,cm=true,dmg=108,dur=5,er=0,mana=0,mc=0,minr=0,n="Whirlwind of Pleasure",ne=-1,rad=6,rng=0,sa=true,src="lord",ty="vortex",wu=0}
C.abilities["wh3_dlc27_qb_unit_abilities_bitter_sting"] = {ai="hex_melee",cd=60,dur=30,er=0,mana=0,mc=0,minr=0,n="Bitter Sting",ne=1,rng=30,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_dlc27_qb_unit_abilities_copious_phlegm"] = {ai="aoe_ap",cd=45,dmg=72,dur=1,er=0,ff=true,mana=0,mc=0,minr=0,n="Copious Phlegm",rad=20,rng=60,src="active",te=true,tg=true,ty="explosion",wu=0}
C.abilities["wh3_dlc27_qb_unit_abilities_dissolving_bone"] = {ai="direct_damage_single_entity",cd=60,dur=2,er=0,mana=0,mc=0,minr=0,n="Dissolving Bone",ne=1,rng=30,src="active",te=true,ty="direct_damage",wu=0}
C.abilities["wh3_dlc27_qb_unit_abilities_frenzied_challenge"] = {ai="hex_melee",cd=90,dur=15,er=0,mana=0,mc=0,minr=0,n="Frenzied Challenge",ne=1,rng=150,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_dlc27_qb_unit_abilities_guttural_roar"] = {ai="hex_morale_area",cd=90,dur=25,er=90,mana=0,mc=0,minr=0,n="Guttural Roar",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh3_dlc27_qb_unit_abilities_insanity"] = {ai="hex_morale",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Insanity",ne=1,rng=30,src="passive",te=true,ty="area_of_hexes",wu=0}
C.abilities["wh3_dlc27_qb_unit_abilities_terrible_malice"] = {ai="direct_damage_single_entity",cd=90,dur=2,er=0,mana=0,mc=0,minr=0,n="Terrible Malice",ne=1,rng=15,src="active",te=true,ty="direct_damage",wu=0}
C.abilities["wh3_dlc27_qb_unit_abilities_visions_of_madness"] = {ai="hex_melee",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Visions of Madness",ne=5,rng=30,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_dlc27_recipe_mark_of_vindictiveness_ascendancy_i"] = {ai="augment_melee_self",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Supreme Ascendancy",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh3_dlc27_recipe_mark_of_vindictiveness_ascendancy_ii"] = {ai="augment_melee_self",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Supreme Ascendancy II",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh3_dlc27_recipe_mark_of_vindictiveness_ascendancy_iii"] = {ai="augment_melee_self",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Supreme Ascendancy III",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh3_dlc27_spell_bound_acquiescence"] = {ai="hex_melee",cd=60,dur=25,er=0,mana=0,mc=0,minr=0,n="Acquiescence",ne=1,rng=200,src="bound",te=true,ty="hex",uses=2,wu=1}
C.abilities["wh3_dlc27_spell_bound_enfeebling_foe"] = {ai="hex_melee",cd=60,dur=17,er=0,mana=0,mc=0,minr=0,n="The Enfeebling Foe",ne=1,rng=200,src="bound",te=true,ty="hex",uses=3,wu=1}
C.abilities["wh3_dlc27_spell_bound_fireball_upgraded"] = {ai="projectile_homing_single",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Fireball Upgraded",rad=6,rng=300,src="bound",te=true,ty="magic_missile",upg=true,uses=6,wu=0}
C.abilities["wh3_dlc27_spell_bound_lash_of_slaanesh"] = {ai="vortex_breath_ap",cd=60,dmg=12,dur=6,er=0,ff=true,mana=0,mc=0,minr=0,n="Lash of Slaanesh",rad=12,rng=100,src="bound",te=true,tg=true,ty="breath",uses=2,vlen=40,wu=1}
C.abilities["wh3_dlc27_spell_bound_pit_of_shades"] = {ai="aoe_ap",cd=120,dmg=5,dur=13,er=0,ff=true,mana=0,mc=0,minr=0,n="Pit of Shades",ne=1,rad=15,rng=200,src="bound",te=true,tg=true,ty="vortex",uses=1,wu=6}
C.abilities["wh3_dlc27_spell_bound_runecaller_death_doom_and_darkness"] = {ai="hex_morale",cd=90,dur=36,er=0,mana=0,mc=0,minr=0,n="Doom & Darkness",ne=1,rng=200,src="bound",te=true,ty="hex",uses=3,wu=1}
C.abilities["wh3_dlc27_spell_bound_runecaller_flock_of_doom"] = {ai="direct_damage_multi_entity_area",cd=60,dur=6,er=35,mana=0,mc=0,minr=0,n="Flock of Doom",ne=-1,rng=100,src="bound",te=true,tg=true,ty="area_of_direct_damage",uses=3,wu=1}
C.abilities["wh3_dlc27_spell_bound_soul_stealer"] = {ai="direct_damage_single_entity_area",cd=120,dur=12,er=35,heal=true,mana=0,mc=0,minr=0,n="Soul Stealer",ne=-1,nf=1,rng=100,sa=true,src="bound",te=true,tg=true,ty="area_of_direct_damage",uses=1,wu=0}
C.abilities["wh3_dlc27_spell_bound_transformation_of_kadon"] = {ai="threatened",cd=45,dur=1,er=0,mana=0,mc=0,minr=0,n="Transformation of Kadon",rng=50,sa=true,src="bound",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_dlc27_spell_dark_magic_chillwind_bound"] = {ai="vortex_wind_ap",cd=29,dmg=16,dur=3,er=0,ff=true,mana=0,mc=0,minr=0,n="Chillwind",rad=6,rng=150,src="spell",te=true,tg=true,ty="wind",uses=2,vlen=60,wu=1}
C.abilities["wh3_dlc27_spell_dark_magic_word_of_pain_bound_1use"] = {ai="hex_melee",cd=90,dur=40,er=0,mana=0,mc=0,minr=0,n="Word of Pain",ne=1,rng=200,src="bound",te=true,ty="hex",uses=1,wu=0}
C.abilities["wh3_dlc27_spell_death_doom_and_darkness_summoned"] = {ai="hex_morale_area",cd=43,dur=36,er=35,mana=6,mc=0,minr=0,n="Doom & Darkness Upgraded",ne=-1,rng=200,src="spell",te=true,tg=true,ty="hex",wu=3}
C.abilities["wh3_dlc27_spell_death_spirit_leech_summoned"] = {ai="direct_damage_single_entity",cd=32,dur=13,er=0,mana=8,mc=0,minr=0,n="Spirit Leech Upgraded",ne=1,rng=300,src="spell",te=true,ty="direct_damage",wu=1}
C.abilities["wh3_dlc27_spell_death_the_purple_sun_of_xereus_summoned"] = {ai="vortex_ap",cd=54,dmg=15,dur=11,er=0,ff=true,mana=18,mc=0,minr=0,n="The Purple Sun of Xereus Upgraded",rad=12,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=44,wu=5}
C.abilities["wh3_dlc27_spell_fire_fireball_summoned"] = {ai="projectile_homing_single",cd=29,dur=0,er=0,ff=true,mana=5,mc=0,minr=0,n="Fireball Upgraded",rad=6,rng=300,src="spell",te=true,ty="magic_missile",wu=1}
C.abilities["wh3_dlc27_spell_fire_flame_storm_summoned"] = {ai="vortex",cd=50,dmg=22,dur=54,er=0,ff=true,mana=13,mc=0,minr=0,n="Flame Storm Upgraded",rad=10,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=108,wu=5}
C.abilities["wh3_dlc27_spell_fire_the_burning_head_summoned"] = {ai="vortex_wind",cd=37,dmg=30,dur=20,er=0,ff=true,mana=10,mc=0,minr=0,n="The Burning Head Upgraded",rad=7,rng=150,src="spell",te=true,tg=true,ty="wind",vlen=180,wu=3}
C.abilities["wh3_dlc27_spell_heavens_chain_lightning"] = {ai="direct_damage_multi_entity",cd=50,dur=5,er=0,ff=true,mana=14,mc=0,minr=0,n="Chain Lightning",ne=10,rad=12,rng=200,src="spell",te=true,ty="chain_direct_damage",wu=5}
C.abilities["wh3_dlc27_spell_heavens_chain_lightning_bound"] = {ai="direct_damage_multi_entity",cd=50,dur=5,er=0,ff=true,mana=0,mc=0,minr=0,n="Chain Lightning",ne=10,rad=12,rng=200,src="bound",te=true,ty="chain_direct_damage",uses=2,wu=5}
C.abilities["wh3_dlc27_spell_heavens_chain_lightning_bound_unit"] = {ai="direct_damage_multi_entity",cd=60,dur=5,er=0,ff=true,mana=0,mc=0,minr=0,n="Chain Lightning",ne=10,rad=12,rng=200,src="bound",te=true,ty="chain_direct_damage",uses=1,wu=5}
C.abilities["wh3_dlc27_spell_metal_final_transmutation_summoned"] = {ai="direct_damage_single_entity_area",cd=54,dur=16,er=35,mana=17,mc=0,minr=0,n="Final Transmutation Upgraded",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_direct_damage",wu=5}
C.abilities["wh3_dlc27_spell_metal_gehennas_golden_hounds_summoned"] = {ai="vortex",cd=45,dmg=15,dur=26,er=0,ff=true,mana=8,mc=0,minr=0,n="Gehenna's Golden Hounds Upgraded",rad=10,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=52,wu=3}
C.abilities["wh3_dlc27_spell_metal_searing_doom_summoned"] = {ai="aoe_bombardment",cd=30,dur=8,er=0,ff=true,mana=6,mc=0,minr=0,n="Searing Doom Upgraded",rad=23,rng=200,src="spell",te=true,tg=true,ty="bombardment",wu=1}
C.abilities["wh3_dlc27_spell_mists_flensing_haar"] = {ai="hex_melee",cd=45,dur=24,er=0,mana=8,mc=0,minr=0,n="Flensing Haar",ne=5,rng=200,src="spell",te=true,ty="chain_hex",wu=3}
C.abilities["wh3_dlc27_spell_mists_flensing_haar_upgraded"] = {ai="hex_melee",cd=45,dur=48,er=0,mana=12,mc=0.5,minr=0,n="Flensing Haar Upgraded",ne=5,rng=200,src="spell",te=true,ty="chain_hex",upg=true,wu=3}
C.abilities["wh3_dlc27_spell_mists_ladrielles_shroud"] = {ai="augment_defense_melee",cd=40,dur=25,er=0,mana=4,mc=0,minr=0,n="Ladrielle's Shroud",nf=1,rng=150,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh3_dlc27_spell_mists_ladrielles_shroud_upgraded"] = {ai="healing",cd=40,dur=25,er=0,heal=true,mana=9,mc=0.5,minr=0,n="Ladrielle's Shroud Upgraded",nf=1,rng=150,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=1}
C.abilities["wh3_dlc27_spell_mists_mathlanns_spite"] = {ai="direct_damage_single_entity",cd=37,dur=20,er=0,mana=8,mc=0,minr=0,n="Mathlann’s Spite",ne=1,rng=150,src="spell",te=true,ty="hex",wu=1}
C.abilities["wh3_dlc27_spell_mists_mathlanns_spite_upgraded"] = {ai="direct_damage_single_entity",cd=37,dur=30,er=0,mana=12,mc=0.5,minr=0,n="Mathlann’s Spite Upgraded",ne=1,rng=150,src="spell",te=true,ty="hex",upg=true,wu=1}
C.abilities["wh3_dlc27_spell_mists_mistress_of_the_deeps"] = {ai="threatened",cd=46,dur=3,er=0,mana=13,mc=0,minr=0,n="Mistress of the Deeps",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=3}
C.abilities["wh3_dlc27_spell_mists_the_writhing_mist"] = {ai="hex_melee_area",cd=56,dur=24,er=35,mana=10,mc=0,minr=0,n="The Writhing Mist",ne=-1,nf=-1,rng=100,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",wu=3}
C.abilities["wh3_dlc27_spell_mists_the_writhing_mist_bound"] = {ai="hex_melee_area",cd=56,dur=24,er=35,mana=0,mc=0,minr=0,n="The Writhing Mist",ne=-1,nf=-1,rng=100,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",uses=1,wu=3}
C.abilities["wh3_dlc27_spell_mists_the_writhing_mist_upgraded"] = {ai="hex_melee_area",cd=56,dur=48,er=35,mana=14,mc=0.5,minr=0,n="The Writhing Mist Upgraded",ne=-1,nf=-1,rng=100,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=3}
C.abilities["wh3_dlc27_spell_mists_walk_between_worlds"] = {ai="augment_defense_ranged",cd=45,dur=22,er=0,mana=6,mc=0,minr=0,n="Walk Between Worlds",nf=1,rng=150,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh3_dlc27_spell_mists_walk_between_worlds_upgraded"] = {ai="augment_defense_ranged",cd=45,dur=44,er=0,mana=9,mc=0.5,minr=0,n="Walk Between Worlds",nf=1,rng=150,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=1}
C.abilities["wh3_dlc27_spell_shadow_melkoths_mystifying_miasma_bound"] = {ai="direct_damage_multi_entity",cd=29,dur=13,er=0,mana=0,mc=0,minr=0,n="Melkoth's Mystifying Miasma",ne=1,rng=100,src="spell",te=true,ty="direct_damage",uses=2,wu=1}
C.abilities["wh3_dlc27_unit_abilities_burrow"] = {cd=90,dmg=12,dur=0,er=0,fm=true,mana=0,mc=0,minr=0,n="Deep Tunneling",ot=true,rad=15,rng=130,src="active",tg=true,ty="explosion",wu=2}
C.abilities["wh3_dlc27_unit_abilities_consuming_hatred"] = {ai="hex_melee",cd=120,dur=25,er=0,mana=0,mc=0,minr=0,n="All-Consuming Hatred",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc27_unit_abilities_dread_maw_surface"] = {cd=25,dmg=12,dur=2,er=0,fm=true,mana=0,mc=0,minr=0,n="Surface",nf=1,rad=15,rng=0,sa=true,src="active",tr=true,ty="transform",wu=0}
C.abilities["wh3_dlc27_unit_abilities_dread_maw_underground"] = {cd=25,dur=3,er=0,fm=true,mana=0,mc=0,minr=0,n="Burrow",nf=1,rng=0,sa=true,src="active",tr=true,ty="transform",wu=4}
C.abilities["wh3_dlc27_unit_abilities_elfish_healing_herbs"] = {ai="healing",cd=90,dur=27,er=0,heal=true,mana=0,mc=0,minr=0,n="Elvish Healing Herbs",nf=1,ot=true,rng=50,src="active",tf=true,ty="regeneration",uses=3,wu=0}
C.abilities["wh3_dlc27_unit_abilities_flaming_breath"] = {ai="projectile_explosive",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Flaming Breath",rad=4,rng=90,src="active",te=true,ty="magic_missile",uses=3,wu=1}
C.abilities["wh3_dlc27_unit_abilities_perfect_predator"] = {ai="full_hide",cd=120,dur=48,er=0,heal=true,mana=0,mc=0,minr=0,n="Perfect Predator",rng=55,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc27_weapon_abilities_tenebrous_forge_hammer"] = {ai="augment_melee_area",cd=90,dur=24,er=35,mana=0,mc=0,minr=0,n="Tenebrous Forge-Hammer",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc27_weapon_abilities_the_phoenix_blade"] = {ai="augment_melee_self",cd=120,dur=21,er=0,mana=0,mc=0,minr=0,n="The Phoenix Blade",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_ability_bound_prayer_battle_howl"] = {ai="augment_melee_area",cd=60,dur=15,er=55,mana=0,mc=0,minr=0,n="Battle Howl",nf=-1,rng=0,sa=true,src="unit",ty="area_of_augments",wu=0.5}
C.abilities["wh3_dlc29_ability_bound_prayer_winters_chill"] = {ai="hex_melee_area",cd=90,dur=20,er=55,mana=0,mc=0,minr=0,n="Winter’s Chill",ne=-1,rng=0,src="unit",ty="hex",wu=0.5}
C.abilities["wh3_dlc29_army_abilities_mark_plague_spawned"] = {ai="augment_defense_melee_area",cd=-1,dur=28,er=-1,mana=0,mc=0,minr=0,n="Mouldering Fortification",nf=-1,rng=0,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_army_abilities_mark_rot_forged_legionaries"] = {ai="augment_defense_melee_area",cd=-1,dur=28,er=-1,mana=0,mc=0,minr=0,n="Mark of the Rot-Forged Legionaries",nf=-1,rng=0,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_army_abilities_pestilential_bombardment"] = {ai="aoe_bombardment",cd=90,dur=5,er=0,ff=true,mana=0,mc=0,minr=0,n="Bubonic Broadside",rad=30,rng=-1,src="active",tg=true,ty="bombardment",uses=2,wu=5}
C.abilities["wh3_dlc29_bound_deep_fog_of_the_damned"] = {ai="hex_melee_area",cd=44,dur=35,er=35,mana=0,mc=0,minr=0,n="Fog of the Damned",ne=-1,rng=200,src="bound",tg=true,ty="area_of_hexes",uses=2,wu=3}
C.abilities["wh3_dlc29_bound_spell_vampires_raise_dead"] = {ai="assault_opportunity",cd=48,dur=1,er=0,mana=12,mc=0.5,minr=0,n="Raise Dead (Skeleton Warriors)",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=3}
C.abilities["wh3_dlc29_bound_spell_vampires_raise_dead_upgraded"] = {ai="assault_opportunity",cd=48,dur=1,er=0,mana=0,mc=0,minr=0,n="Lesser Awakening from the Grave",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",upg=true,uses=2,wu=3}
C.abilities["wh3_dlc29_character_abilities_eternal_vigour"] = {ai="augment_defense_melee_area",cd=120,dur=26,er=-1,mana=0,mc=0,minr=0,n="Eternal Vigour",nf=-1,rng=0,src="active",ty="area_of_augments",uses=2,wu=0}
C.abilities["wh3_dlc29_character_abilities_invocation_of_the_lichemaster"] = {ai="threatened",cd=90,dur=3,er=0,fm=true,mana=0,mc=0,minr=0,n="Invocation of the Lichemaster",rng=50,src="active",sum=true,tg=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh3_dlc29_character_abilities_invocation_of_the_lichemaster_0"] = {ai="threatened",cd=90,dur=3,er=0,mana=0,mc=0,minr=0,n="Invocation of the Lichemaster",rng=50,src="active",sum=true,tg=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh3_dlc29_character_abilities_invocation_of_the_lichemaster_1"] = {ai="threatened",cd=90,dur=3,er=0,mana=0,mc=0,minr=0,n="Invocation of the Lichemaster",rng=50,src="active",sum=true,tg=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh3_dlc29_character_active_mark_of_the_monster"] = {ai="hex_melee",cd=90,dur=32,er=0,mana=0,mc=0,minr=0,n="Fecund Rebirth",ne=1,rng=200,src="active",te=true,ty="hex",wu=1}
C.abilities["wh3_dlc29_hero_abilities_blood_chalice"] = {ai="healing",cd=90,dur=8,er=0,heal=true,mana=0,mc=0,minr=0,n="Blood Chalice",rng=0,sa=true,src="active",ty="regeneration",wu=0}
C.abilities["wh3_dlc29_hero_abilities_coat_in_blood"] = {ai="augment_melee_self",cd=90,dur=17,er=0,mana=0,mc=0,minr=0,n="Coat in Blood",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_hero_abilities_whispering_mist"] = {ai="hex_melee_area",cd=90,dur=32,er=0,mana=0,mc=0,minr=0,n="Whispering Mist",ne=1,rng=200,src="active",te=true,ty="hex",wu=1}
C.abilities["wh3_dlc29_hero_active_bilespurter"] = {ai="projectile_explosive_ap",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Bilespurt",rad=1,rng=90,src="active",te=true,ty="magic_missiles",uses=3,wu=1.3}
C.abilities["wh3_dlc29_hero_active_dispatch_the_swarm_attack"] = {ai="hex_melee",cd=120,dur=24,er=0,mana=0,mc=0,minr=0,n="Ravaging Swarm",ne=5,rng=100,src="active",te=true,ty="chain_hex",wu=1}
C.abilities["wh3_dlc29_hero_active_dispatch_the_swarm_attack_upgraded"] = {ai="hex_melee",cd=60,dur=24,er=0,mana=0,mc=0,minr=0,n="Ravaging Swarm Upgraded",ne=5,rng=100,src="active",te=true,ty="chain_hex",upg=true,wu=1}
C.abilities["wh3_dlc29_hero_active_dispatch_the_swarm_protect"] = {ai="augment_melee_area",cd=120,dur=30,er=0,mana=0,mc=0,minr=0,n="Shielding Swarm",nf=5,rng=100,sa=true,src="active",tf=true,ty="chain_augment",wu=1}
C.abilities["wh3_dlc29_hero_active_dispatch_the_swarm_protect_upgraded"] = {ai="augment_melee_area",cd=60,dur=30,er=0,mana=0,mc=0,minr=0,n="Shielding Swarm Upgraded",nf=5,rng=100,sa=true,src="active",tf=true,ty="chain_augment",upg=true,wu=1}
C.abilities["wh3_dlc29_hero_active_ghostly_howl"] = {cd=90,dur=8,er=0,mana=0,mc=0,minr=0,n="Ghostly Howl",ne=1,rng=75,src="active",te=true,ty="direct_damage",wu=3}
C.abilities["wh3_dlc29_hero_active_glory_seeker"] = {ai="hex_melee",cd=120,dur=24,er=0,mana=0,mc=0,minr=0,n="Glory Seeker",ne=1,rng=100,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_dlc29_hero_active_glory_seeker_upgraded"] = {ai="hex_melee",cd=120,dur=36,er=0,mana=0,mc=0,minr=0,n="Glory Seeker Upgraded",ne=1,rng=100,src="active",te=true,ty="hex",upg=true,wu=0}
C.abilities["wh3_dlc29_hero_active_nurgling_birth"] = {ai="threatened",cd=90,dur=2,er=0,mana=0,mc=0,minr=0,n="Nurgling Birth",rng=75,src="active",sum=true,tg=true,ts=true,ty="summon_unit",uses=3,wu=1}
C.abilities["wh3_dlc29_hero_active_nurgling_birth_upgraded"] = {ai="threatened",cd=90,dur=2,er=0,mana=0,mc=0,minr=0,n="Nurgling Birth Upgraded",rng=75,src="active",sum=true,tg=true,ts=true,ty="summon_unit",upg=true,uses=5,wu=1}
C.abilities["wh3_dlc29_hero_active_overseer_of_the_unseen"] = {ai="augment_defense_melee",cd=90,dur=44,er=0,mana=0,mc=0,minr=0,n="Overseer of the Unseen",nf=1,ot=true,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_dlc29_hero_active_tendrils_of_the_sea"] = {ai="hex_melee",cd=120,dur=24,er=0,mana=0,mc=0,minr=0,n="Tendrils of the Sea",ne=1,rng=200,src="active",te=true,ty="hex",wu=3}
C.abilities["wh3_dlc29_item_abilities_alakanash_the_staff_of_power"] = {ai="aoe_centred_on_self",cd=120,dmg=0,dur=21,er=10,mana=0,mc=0,minr=0,n="Alakanash, the Staff of Power",ne=-1,rad=14,rng=0,sa=true,src="item",ty="vortex",uses=3,wu=1}
C.abilities["wh3_dlc29_item_abilities_armour_of_the_burrows"] = {ai="hex_melee_area",cd=120,dur=27,er=55,mana=0,mc=0,minr=0,n="Armour of the Barrows",ne=-1,rng=0,src="item",ty="area_of_hexes",wu=0}
C.abilities["wh3_dlc29_item_abilities_black_axe_of_krell"] = {ai="augment_melee_self",cd=120,dur=31,er=0,mana=0,mc=0,minr=0,n="The Black Axe of Krell",rng=0,sa=true,src="item",ty="augment",wu=0}
C.abilities["wh3_dlc29_item_abilities_crimson_blade"] = {cd=120,dur=30,er=0,fm=true,mana=0,mc=0,minr=0,n="The Crimson Blade",rng=0,sa=true,src="item",ty="augment",wu=0}
C.abilities["wh3_dlc29_item_abilities_doom_glaive"] = {ai="augment_melee",cd=120,dur=27,er=0,mana=0,mc=0,minr=0,n="Doom Glaive",nf=1,rng=0,sa=true,src="active",ty="augment",uses=3,wu=0}
C.abilities["wh3_dlc29_item_abilities_enhanced_skavenbrew"] = {ai="augment_melee",cd=90,dur=60,er=0,mana=0,mc=0,minr=0,n="Enhanced Skavenbrew",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",uses=2,wu=0}
C.abilities["wh3_dlc29_item_abilities_icon_of_the_king"] = {cd=120,dur=16,er=35,heal=true,mana=0,mc=0,minr=0,n="Icon of the King",nf=-1,rng=0,sa=true,src="item",ty="regeneration",uses=2,wu=0}
C.abilities["wh3_dlc29_item_abilities_morikhane_the_black_armour"] = {cd=120,dur=14,er=-1,fm=true,mana=0,mc=0,minr=0,n="Morikhane, the Black Armour",ne=-1,rng=0,src="item",ty="area_of_hexes",wu=1}
C.abilities["wh3_dlc29_item_abilities_plaguereaper"] = {ai="direct_damage_multi_entity_area",cd=120,dur=25,er=15,heal=true,mana=0,mc=0,minr=0,n="Plaguereaper",ne=-1,nf=1,rng=0,sa=true,src="active",ty="area_of_direct_damage",uses=2,wu=0}
C.abilities["wh3_dlc29_item_abilities_punch_dagger"] = {ai="direct_damage_multi_entity_area",cd=120,dur=4,er=0,mana=0,mc=0,minr=0,n="Punch-Dagger",ne=1,rng=15,sa=true,src="active",te=true,ty="direct_damage",uses=3,wu=0}
C.abilities["wh3_dlc29_item_abilities_scry_orb"] = {cd=120,dur=32,er=0,mana=0,mc=0,minr=0,n="Scry-Orb",rng=0,sa=true,src="passive",ty="augment_of_the_winds",uses=3,wu=0}
C.abilities["wh3_dlc29_item_abilities_warpstiletto"] = {ai="hex_speed_under_fire",cd=120,dur=20,er=0,mana=0,mc=0,minr=0,n="Warpstiletto",ne=1,rng=100,src="active",te=true,ty="hex",uses=2,wu=0}
C.abilities["wh3_dlc29_item_abilities_warpstone_tokens"] = {ai="augment_spellcasting",cd=120,dur=26,er=0,mana=0,mc=0,minr=0,n="Warpstone Tokens",nf=1,rng=0,sa=true,src="active",ty="augment_of_the_winds",uses=2,wu=0}
C.abilities["wh3_dlc29_item_abilities_whispering_skull"] = {ai="augment_spellcasting",cd=90,dur=17,er=0,mana=0,mc=0,minr=0,n="Whispering Skull",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_item_abilities_wristbands_of_black_gold"] = {ai="augment_melee_self",cd=60,dur=22,er=0,mana=0,mc=0,minr=0,n="Wristbands of Black Gold",rng=0,sa=true,src="item",ty="ward_save",wu=0}
C.abilities["wh3_dlc29_item_abilities_zefet_nebtar_the_mortis_blade"] = {ai="direct_damage_multi_entity",cd=120,dmg=0,dur=1,er=15,ff=true,fm=true,mana=0,mc=0,minr=0,n="Zefet-nebtar, the Mortis Blade",ne=1,rad=9,rng=100,src="item",te=true,tg=true,ty="explosion",uses=3,wu=1.5}
C.abilities["wh3_dlc29_item_active_ethracs_brazier"] = {ai="direct_damage_multi_entity",cd=120,dur=14,er=0,mana=0,mc=0,minr=0,n="Ethrac's Brazier",ne=7,rng=100,src="active",te=true,ty="chain_direct_damage",uses=1,wu=3}
C.abilities["wh3_dlc29_item_active_harvestmans_scythe"] = {ai="augment_melee_self",cd=120,dur=28,er=0,mana=0,mc=0,minr=0,n="Harvestman's Scythe",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_item_active_mark_of_the_plague_fleet"] = {ai="hex_melee",cd=120,dur=30,er=0,mana=0,mc=0,minr=0,n="Mark of the Plague Fleet",ne=3,rng=75,src="active",te=true,ty="chain_hex",wu=0}
C.abilities["wh3_dlc29_item_active_ottos_scythe"] = {ai="hex_melee",cd=120,dur=28,er=0,mana=0,mc=0,minr=0,n="Otto's Scythe",ne=1,rng=100,src="active",te=true,ty="hex",wu=1}
C.abilities["wh3_dlc29_item_active_rot_pocked_axe"] = {ai="augment_melee_area",cd=120,dur=24,er=55,mana=0,mc=0,minr=0,n="Rot-pocked Axe",nf=-1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_item_active_the_rotaxes"] = {ai="augment_melee_self",cd=120,dur=30,er=0,mana=0,mc=0,minr=0,n="The Rotaxes",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_lord_abilities_bastet"] = {ai="hex_melee",cd=90,dur=19,er=0,mana=0,mc=0,minr=0,n="Bastet",ne=1,rng=100,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_dlc29_lord_abilities_doom_lord"] = {ai="augment_melee",cd=120,dur=40,er=0,mana=0,mc=0,minr=0,n="Doom Lord",nf=1,rng=200,sa=true,src="active",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh3_dlc29_lord_abilities_gaze_of_usirian"] = {ai="hex_morale",cd=90,dur=15,er=0,fm=true,mana=0,mc=0,minr=0,n="Eternal Gaze",ne=1,rng=100,src="active",te=true,ty="hex",wu=3}
C.abilities["wh3_dlc29_lord_abilities_hellish_vigour"] = {ai="augment_melee",cd=90,dur=25,er=0,mana=0,mc=0,minr=0,n="Hellish Vigour",nf=1,rng=75,src="active",tf=true,ty="augment",wu=3}
C.abilities["wh3_dlc29_lord_abilities_hellish_vigour_upgraded"] = {ai="augment_melee_area",cd=120,dur=25,er=35,mana=0,mc=0,minr=0,n="Hellish Vigour Upgraded",nf=-1,rng=75,src="active",tf=true,tg=true,ty="augment",upg=true,wu=3}
C.abilities["wh3_dlc29_lord_abilities_in_the_name_of_war"] = {ai="augment_melee",cd=120,dur=15,er=35,mana=0,mc=0,minr=0,n="In the Name of War",ne=-1,rng=0,sa=true,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh3_dlc29_lord_abilities_lamentation_of_despair_upgraded"] = {ai="projectile_explosive_ap",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Lamentation of Despairs (Empowered)",rad=5,rng=80,src="active",te=true,ty="magic_missiles",upg=true,wu=1}
C.abilities["wh3_dlc29_lord_abilities_lightning_reflexes"] = {ai="augment_melee_self",cd=90,dur=20,er=0,mana=0,mc=0,minr=0,n="Quickblood",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_lord_abilities_mist_form"] = {cd=120,dmg=5,dur=1,er=0,fm=true,mana=0,mc=0,minr=0,n="Mist Form",ot=true,rad=5,rng=130,src="active",tg=true,tr=true,ty="transform",wu=2}
C.abilities["wh3_dlc29_lord_abilities_otherworldly_pestilence"] = {ai="direct_damage_multi_entity",cd=120,dur=20,er=0,mana=0,mc=0,minr=0,n="Otherworldly Pestilence",ne=5,rng=100,src="active",te=true,ty="chain_direct_damage",uses=1,wu=0}
C.abilities["wh3_dlc29_lord_abilities_raise_legion"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Undeath to All",rng=75,src="active",sum=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=3}
C.abilities["wh3_dlc29_lord_abilities_raise_legion_upgraded"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Undeath to All Upgraded",rng=75,src="active",sum=true,tg=true,ts=true,ty="summon_unit",upg=true,uses=1,wu=3}
C.abilities["wh3_dlc29_lord_abilities_shadowblood"] = {ai="projectile_homing_single_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Shadowblood",rad=9,rng=150,sa=true,src="active",te=true,ty="magic_missile",uses=3,wu=3}
C.abilities["wh3_dlc29_lord_abilities_the_awakening"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="The Awakening",rng=75,src="active",sum=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=3}
C.abilities["wh3_dlc29_lord_abilities_transfix"] = {cd=120,dur=25,er=0,mana=0,mc=0,minr=0,n="Transfix",ne=1,rng=100,src="active",te=true,ty="hex",uses=3,wu=0}
C.abilities["wh3_dlc29_lord_abilities_verminous_fury"] = {ai="augment_melee",cd=120,dur=60,er=0,mana=0,mc=0,minr=0,n="Verminous Fury",nf=1,rng=200,src="active",tf=true,ty="augment",uses=3,wu=0}
C.abilities["wh3_dlc29_lord_abilities_warp_junction"] = {ai="aoe_ap",cd=120,dmg=4,dur=14,er=0,ff=true,mana=0,mc=0,minr=0,n="Warp Junction",ne=-1,rad=12,rng=200,src="active",te=true,tg=true,ty="vortex",uses=2,wu=3}
C.abilities["wh3_dlc29_lord_abilities_warp_step"] = {cd=120,dmg=12,dur=0,er=0,fm=true,mana=0,mc=0,minr=0,n="Shadowstrider",ot=true,rad=10,rng=130,src="active",tg=true,tr=true,ty="transform",wu=3}
C.abilities["wh3_dlc29_lord_abilities_warpstone_addiction"] = {ai="augment_defense_melee",cd=120,dur=33,er=0,mana=0,mc=0,minr=0,n="Warpstone Addiction",nf=1,rng=0,sa=true,src="active",ty="augment",uses=2,wu=0}
C.abilities["wh3_dlc29_lord_abilities_will_of_the_verminking"] = {ai="augment_melee",cd=120,dur=29,er=35,mana=0,mc=0,minr=0,n="Will of the Verminking",ne=-1,nf=-1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_lord_active_commanding_presence"] = {ai="augment_melee_area",cd=60,dur=20,er=35,mana=0,mc=0,minr=0,n="Commanding Presence",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_dlc29_lord_active_pestilent_torrent"] = {ai="projectile_explosive_ap",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Pestilent Torrent",rad=5,rng=80,src="active",te=true,ty="magic_missiles",uses=3,wu=1.3}
C.abilities["wh3_dlc29_mount_abilities_feaster_of_souls"] = {ai="direct_damage_multi_entity",cd=120,dmg=0,dur=5,er=15,ff=true,fm=true,mana=0,mc=0,minr=0,n="Feaster of Souls",ne=1,rad=15,rng=0,src="active",ty="area_of_direct_damage",uses=3,wu=1}
C.abilities["wh3_dlc29_spell_bound_curse_of_years"] = {ai="augment_melee_self",cd=47,dur=35,er=0,mana=0,mc=0,minr=0,n="Curse of Years",rng=0,sa=true,src="active",ty="augment",uses=2,wu=1}
C.abilities["wh3_dlc29_spell_bound_eye_gouger"] = {ai="augment_melee_self",cd=90,dur=24,er=0,mana=0,mc=0,minr=0,n="Eye Gouger",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_spell_bound_eye_jabber"] = {ai="augment_melee_self",cd=90,dur=24,er=0,mana=0,mc=0,minr=0,n="Eye for an Eye",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_spell_bound_fire_skull_of_flaming_death"] = {ai="vortex_wind",cd=90,dmg=20,dur=20,er=0,ff=true,mana=0,mc=0,minr=0,n="The Burning Head",rad=7,rng=150,src="bound",te=true,tg=true,ty="wind",uses=3,vlen=180,wu=3}
C.abilities["wh3_dlc29_spell_bound_invocation_of_nehek"] = {ai="healing",cd=30,dur=18,er=0,heal=true,mana=0,mc=0,minr=0,n="Invocation of Nehek",rng=0,sa=true,src="active",ty="regeneration",uses=2,wu=1}
C.abilities["wh3_dlc29_spell_bound_okkams_mindrazor"] = {ai="augment_melee_self",cd=46,dur=32,er=0,mana=0,mc=0,minr=0,n="Okkam's Mindrazor",rng=0,sa=true,src="active",ty="augment",uses=2,wu=1}
C.abilities["wh3_dlc29_spell_bound_plague"] = {ai="aoe_ap",cd=50,dmg=8,dur=20,er=0,ff=true,mana=0,mc=0,minr=0,n="Irresistible Plague!",rad=14,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=1,wu=5}
C.abilities["wh3_dlc29_spell_bound_plaguemaster"] = {ai="aoe_ap",cd=50,dmg=8,dur=20,er=0,ff=true,mana=0,mc=0,minr=0,n="Plaguemaster",rad=14,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=2,wu=5}
C.abilities["wh3_dlc29_spell_bound_prayer_battle_howl"] = {ai="augment_melee_area",cd=60,dur=15,er=55,mana=0,mc=0,minr=0,n="Battle Howl",nf=-1,rng=0,sa=true,src="bound",ty="area_of_augments",wu=0.5}
C.abilities["wh3_dlc29_spell_bound_prayer_destruction"] = {ai="aoe_centred_on_self",cd=120,dmg=16,dur=3,er=0,mana=0,mc=0,minr=0,n="Destruction",rad=15,rng=0,sa=true,src="active",ty="explosion",wu=0.5}
C.abilities["wh3_dlc29_spell_bound_prayer_ferocious_battle_howl"] = {ai="augment_melee_area",cd=60,dur=15,er=55,mana=0,mc=0,minr=0,n="Ferocious Battle Howl",nf=-1,rng=0,sa=true,src="bound",ty="area_of_augments",wu=0.5}
C.abilities["wh3_dlc29_spell_bound_prayer_ferocious_destruction"] = {ai="aoe_centred_on_self",cd=120,dmg=20,dur=3,er=0,mana=0,mc=0,minr=0,n="Ferocious Destruction",rad=20,rng=0,sa=true,src="active",ty="explosion",wu=0.5}
C.abilities["wh3_dlc29_spell_bound_prayer_ferocious_fury_of_ulric"] = {ai="augment_melee_area",cd=120,dur=25,er=35,mana=0,mc=0,minr=0,n="Ferocious Fury of Ulric",nf=-1,rng=0,sa=true,src="bound",ty="area_of_augments",wu=0.5}
C.abilities["wh3_dlc29_spell_bound_prayer_ferocious_winters_chill"] = {ai="hex_melee_area",cd=90,dur=20,er=55,mana=0,mc=0,minr=0,n="Ferocious Winter’s Chill",ne=-1,rng=0,src="bound",ty="hex",wu=0.5}
C.abilities["wh3_dlc29_spell_bound_prayer_fury_of_ulric"] = {ai="augment_melee_area",cd=90,dur=25,er=35,mana=0,mc=0,minr=0,n="Fury of Ulric",nf=-1,rng=0,sa=true,src="bound",ty="area_of_augments",wu=0.5}
C.abilities["wh3_dlc29_spell_bound_prayer_winters_chill"] = {ai="hex_melee_area",cd=90,dur=20,er=55,mana=0,mc=0,minr=0,n="Winter’s Chill",ne=-1,rng=0,src="bound",ty="hex",wu=0.5}
C.abilities["wh3_dlc29_spell_bound_skitterleap"] = {ai="full_hide",cd=29,dur=25,er=0,fm=true,mana=0,mc=0,minr=0,n="Skitterleap",nf=1,rng=200,src="bound",tf=true,tg=true,ts=true,ty="hiding",uses=3,wu=1}
C.abilities["wh3_dlc29_spell_bound_soulblight"] = {ai="augment_melee_self",cd=45,dur=20,er=0,mana=0,mc=0,minr=0,n="Soulblight",rng=0,sa=true,src="active",ty="augment",uses=2,wu=1}
C.abilities["wh3_dlc29_spell_bound_storm_hammer"] = {ai="augment_charge_self",cd=120,dur=30,er=0,mana=0,mc=0,minr=0,n="Storm Hammer",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_spell_bound_the_dreaded_thirteenth"] = {ai="aoe_bombardment",cd=52,dur=13,er=0,ff=true,mana=0,mc=0,minr=0,n="The Dreaded Thirteenth Spell",rad=20.1,rng=100,src="bound",sum=true,te=true,tg=true,ty="explosion",uses=1,wu=5}
C.abilities["wh3_dlc29_spell_bound_the_dreaded_thirteenth_1"] = {ai="aoe_bombardment",cd=52,dur=13,er=0,ff=true,mana=0,mc=0,minr=0,n="The Dreaded Thirteenth Spell",rad=35.1,rng=100,src="bound",sum=true,te=true,tg=true,ty="explosion",uses=1,wu=5}
C.abilities["wh3_dlc29_spell_bound_the_dreaded_thirteenth_thanquol"] = {ai="aoe_bombardment",cd=52,dur=13,er=0,ff=true,mana=0,mc=0,minr=0,n="The Dreaded Thirteenth Spell",rad=20.1,rng=100,src="bound",sum=true,te=true,tg=true,ty="explosion",uses=1,wu=5}
C.abilities["wh3_dlc29_spell_bound_the_dreaded_thirteenth_thanquol_1"] = {ai="aoe_bombardment",cd=52,dur=13,er=0,ff=true,mana=0,mc=0,minr=0,n="The Dreaded Thirteenth Spell",rad=35.1,rng=100,src="bound",sum=true,te=true,tg=true,ty="explosion",uses=1,wu=5}
C.abilities["wh3_dlc29_spell_bound_undeath_khizaar_the_soulstealer"] = {ai="direct_damage_single_entity_area",cd=37,dur=11,er=35,mana=0,mc=0,minr=0,n="The Soulstealer",ne=-1,rng=100,src="bound",te=true,tg=true,ty="area_of_direct_damage",uses=1,wu=3}
C.abilities["wh3_dlc29_spell_bound_undeath_morkharn_breath_of_darkness"] = {ai="healing",cd=31,dur=14,er=0,heal=true,mana=0,mc=0,minr=0,n="Breath of Darkness",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="regeneration",uses=2,wu=1}
C.abilities["wh3_dlc29_spell_bound_undeath_morkharn_breath_of_darkness_upgraded"] = {ai="healing_area",cd=31,dur=14,er=35,heal=true,mana=0,mc=0.5,minr=0,n="Breath of Darkness Upgraded",nf=4,rng=200,sa=true,src="bound",tf=true,tg=true,ts=true,ty="area_of_regeneration",upg=true,uses=2,wu=1}
C.abilities["wh3_dlc29_spell_bound_undeath_sulekhim_hand_of_dust"] = {ai="augment_melee_self",cd=28,dur=14,er=0,mana=0,mc=0,minr=0,n="The Hand of Dust",nf=1,rng=200,sa=true,src="bound",tf=true,ty="augment",uses=2,wu=1}
C.abilities["wh3_dlc29_spell_bound_undeath_the_abyssal_swarm"] = {ai="vortex",cd=42,dmg=8,dur=30,er=0,mana=0,mc=0,minr=0,n="The Abyssal Swarm",rad=12,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=2,vlen=75,wu=3}
C.abilities["wh3_dlc29_spell_bound_warp_lightning"] = {ai="aoe_bombardment",cd=30,dur=5,er=0,ff=true,mana=0,mc=0,minr=0,n="Master of Lightning",rad=14,rng=200,src="bound",te=true,tg=true,ty="bombardment",uses=3,wu=1}
C.abilities["wh3_dlc29_spell_undeath_akararan_the_dark_riders"] = {ai="vortex_wind_ap",cd=54,dmg=36,dur=5,er=0,ff=true,mana=18,mc=0,minr=0,n="The Dark Riders",rad=6,rng=150,src="spell",te=true,tg=true,ty="wind",vlen=55,wu=5}
C.abilities["wh3_dlc29_spell_undeath_akararan_the_dark_riders_upgraded"] = {ai="vortex_wind_ap",cd=54,dmg=48,dur=5,er=0,ff=true,mana=22,mc=0.5,minr=0,n="The Dark Riders Upgraded",rad=6,rng=150,src="spell",te=true,tg=true,ty="wind",upg=true,vlen=55,wu=5}
C.abilities["wh3_dlc29_spell_undeath_kandorak_the_harbinger"] = {ai="aoe",cd=47,dur=1,er=0,mana=23,mc=0,minr=0,n="The Harbinger",rng=50,src="spell",sum=true,tf=true,tg=true,ty="summon_unit",uses=2,wu=5}
C.abilities["wh3_dlc29_spell_undeath_khizaar_the_soulstealer"] = {ai="direct_damage_multi_entity_area",cd=37,dur=11,er=35,mana=10,mc=0,minr=0,n="The Soulstealer",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_direct_damage",wu=3}
C.abilities["wh3_dlc29_spell_undeath_khizaar_the_soulstealer_upgraded"] = {ai="direct_damage_multi_entity_area",cd=37,dur=22,er=35,mana=18,mc=0.5,minr=0,n="The Soulstealer Upgraded",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_direct_damage",upg=true,wu=3}
C.abilities["wh3_dlc29_spell_undeath_morkharn_breath_of_darkness"] = {ai="healing",cd=31,dur=14,er=0,heal=true,mana=7,mc=0,minr=0,n="Breath of Darkness",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="regeneration",wu=1}
C.abilities["wh3_dlc29_spell_undeath_morkharn_breath_of_darkness_upgraded"] = {ai="healing_area",cd=31,dur=14,er=35,heal=true,mana=13,mc=0.5,minr=0,n="Breath of Darkness Upgraded",nf=4,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_regeneration",upg=true,wu=1}
C.abilities["wh3_dlc29_spell_undeath_razkhar_the_abyssal_swarm"] = {ai="vortex",cd=42,dmg=8,dur=30,er=0,mana=12,mc=0,minr=0,n="The Abyssal Swarm",rad=12,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=75,wu=3}
C.abilities["wh3_dlc29_spell_undeath_razkhar_the_abyssal_swarm_upgraded"] = {ai="vortex",cd=42,dmg=16,dur=30,er=0,mana=18,mc=0.5,minr=0,n="The Abyssal Swarm Upgraded",rad=12,rng=150,src="spell",te=true,tg=true,ty="vortex",upg=true,vlen=75,wu=3}
C.abilities["wh3_dlc29_spell_undeath_sulekhim_hand_of_dust"] = {ai="augment_melee_self",cd=27,dur=14,er=0,mana=3,mc=0,minr=0,n="The Hand of Dust",nf=1,rng=200,sa=true,src="spell",tf=true,ty="augment",wu=1}
C.abilities["wh3_dlc29_spell_undeath_sulekhim_hand_of_dust_upgraded"] = {ai="augment_melee_self",cd=27,dur=14,er=35,mana=7,mc=0.5,minr=0,n="The Hand of Dust Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ty="area_of_augments",upg=true,wu=1}
C.abilities["wh3_dlc29_unit_abilities_battle_of_wills"] = {ai="hex_melee_area_self",cd=120,dur=20,er=55,mana=0,mc=0,minr=0,n="Battle of Wills",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=5}
C.abilities["wh3_dlc29_unit_abilities_blood_omens"] = {ai="hex_ranged_area",cd=90,dur=26,er=-1,mana=0,mc=0,minr=0,n="Blood Omens",ne=-1,rng=0,src="active",ty="hex",uses=1,wu=0}
C.abilities["wh3_dlc29_unit_abilities_entice"] = {ai="augment_melee",cd=120,dur=24,er=0,mana=0,mc=0,minr=0,n="Entice",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_unit_abilities_flesh_eating_scarabs"] = {ai="vortex_breath",cd=90,dmg=33,dur=1,er=0,ff=true,mana=0,mc=0,minr=0,n="Flesh-eating Scarabs",rad=12,rng=3,src="active",tg=true,ty="breath",uses=3,vlen=27,wu=1}
C.abilities["wh3_dlc29_unit_abilities_lightning_strike"] = {ai="aoe_bombardment",cd=42,dur=4,er=0,ff=true,mana=0,mc=0,minr=0,n="Lightning Strike",rad=9,rng=300,src="bound",te=true,tg=true,ty="bombardment",uses=2,wu=3}
C.abilities["wh3_dlc29_unit_abilities_meteor_strike"] = {ai="aoe_bombardment",cd=49,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Meteor Strike",rad=28,rng=200,src="bound",te=true,tg=true,ty="bombardment",uses=3,wu=5}
C.abilities["wh3_dlc29_unit_abilities_of_warp_and_ruin"] = {cd=120,dur=32,er=0,mana=0,mc=0.5,minr=0,n="Of Warp and Ruin",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_unit_abilities_raging_tornado"] = {ai="direct_damage_multi_entity_area",cd=120,dur=32,er=30,mana=0,mc=0,minr=0,n="Raging Tornado",ne=-1,rng=100,src="bound",tg=true,ty="area_of_direct_damage",uses=3,wu=5}
C.abilities["wh3_dlc29_unit_abilities_soul_slaying_hunger"] = {ai="vortex",cd=120,dmg=5,dur=20,er=0,ff=true,mana=0,mc=0,minr=0,n="Soul-slaying Hunger",rad=7,rng=100,src="active",te=true,tg=true,ty="vortex",uses=1,vlen=48,wu=5}
C.abilities["wh3_dlc29_unit_abilities_stormfiend_seismic_snare"] = {ai="hex_melee_area_self",cd=60,dur=13,er=35,mana=0,mc=0,minr=0,n="Seismic Snare",ne=-1,rng=0,src="active",ty="area_of_hexes",uses=1,wu=0}
C.abilities["wh3_dlc29_unit_abilities_the_gaze_of_dust"] = {ai="projectile_homing_single_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="The Gaze of Dust",rad=7,rng=200,sa=true,src="active",te=true,ty="magic_missile",uses=3,wu=2.5}
C.abilities["wh3_dlc29_unit_abilities_undeath_from_above"] = {ai="always_use_only_land",cd=0.1,dur=1,er=0,ff=true,mana=0,mc=0,minr=0,n="Undeath from Above",rad=8,rng=10,src="active",ty="bombardment",uses=1,wu=0}
C.abilities["wh3_dlc29_unit_active_maleficient_gaze"] = {cd=-1,dur=28,er=0,mana=0,mc=0,minr=0,n="Maleficient Gaze",ne=1,rng=100,src="active",te=true,ty="hex",uses=1,wu=3}
C.abilities["wh3_dlc29_unit_active_ripping_blades"] = {ai="vortex_breath_ap",cd=90,dmg=43,dur=9,er=0,ff=true,mana=0,mc=0,minr=0,n="Disembowelling Sweep",rad=6,rng=6,src="active",te=true,tg=true,ty="breath",wu=1}
C.abilities["wh3_dlc29_vmp_mon_morghast_archai_summon"] = {cd=-1,dur=1,er=0,mana=0,mc=0,minr=0,n="The Heralds' Arrival",rng=50,src="bound",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=3}
C.abilities["wh3_dlc29_weapon_abilities_aken_seth_the_staff_of_pain"] = {ai="hex_armour",cd=120,dur=20,er=0,mana=0,mc=0,minr=0,n="Aken-seth, the Staff of Pain",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_weapon_abilities_legbiter"] = {ai="augment_melee_self",cd=120,dur=28,er=0,mana=0,mc=0,minr=0,n="Legbiter",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_dlc29_weapon_active_hammer_axe_of_skoll"] = {ai="augment_melee_self",cd=120,dur=25,er=0,mana=0,mc=0,minr=0,n="Hammer-axe of Skoll",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_banner_abilities_banner_of_hellfire"] = {cd=120,dur=17,er=35,mana=0,mc=0,minr=0,n="Banner of Hellfire",ne=-1,rng=0,src="active",ty="area_of_direct_damage",wu=0}
C.abilities["wh3_main_cataclysm_beasts_merciws_monstrous_regiment"] = {ai="augment_melee",cd=0,dur=120,er=0,mana=0,mc=0,minr=0,n="Merciw's Monstrous Regiment",nf=1,rng=-1,src="cataclysm",tf=true,ty="augment",wu=5}
C.abilities["wh3_main_cataclysm_death_ashes_and_dust"] = {ai="direct_damage_multi_entity_area",cd=0,dur=11,er=35,mana=0,mc=0,minr=0,n="Ashes & Dust",ne=-1,rng=-1,src="cataclysm",te=true,tg=true,ty="area_of_direct_damage",wu=5}
C.abilities["wh3_main_cataclysm_fire_magma_storm"] = {ai="aoe_ap",cd=0,dmg=28,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Magma Storm",rad=65,rng=-1,src="cataclysm",tg=true,ty="vortex",wu=5}
C.abilities["wh3_main_cataclysm_heavens_thorsens_thunderstorm"] = {ai="aoe_bombardment",cd=0,dur=31,er=0,ff=true,mana=0,mc=0,minr=0,n="Thorsen's Thunderstorm",rad=38,rng=-1,src="cataclysm",tg=true,ty="bombardment",wu=5}
C.abilities["wh3_main_cataclysm_khorne_greater_gate_of_khorne"] = {ai="hex_melee",cd=0,dur=10,er=0,mana=0,mc=0,minr=0,n="Greater Gate of Khorne",rng=-1,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_main_cataclysm_life_storm_of_renewal"] = {ai="healing_area",cd=0,dur=20,er=55,heal=true,mana=0,mc=0,minr=0,n="Storm of Renewal",nf=-1,rng=-1,src="cataclysm",tg=true,ty="area_of_regeneration",wu=5}
C.abilities["wh3_main_cataclysm_light_time_amok"] = {ai="augment_melee_area",cd=0,dur=45,er=-1,mana=0,mc=0,minr=0,n="Time Amok",ne=-1,nf=-1,rng=-1,src="cataclysm",tg=true,ty="area_of_augments",wu=5}
C.abilities["wh3_main_cataclysm_metal_gehennas_golden_globe"] = {ai="vortex_wind",cd=0,dmg=100,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Gehenna's Golden Globe",rad=8,rng=-1,src="cataclysm",tg=true,ty="wind",vlen=140,wu=5}
C.abilities["wh3_main_cataclysm_shadow_dance_of_despair"] = {ai="hex_melee_area",cd=0,dur=45,er=55,mana=0,mc=0,minr=0,n="Dance of Despair",ne=-1,rng=-1,src="cataclysm",te=true,tg=true,ty="area_of_hexes",wu=5}
C.abilities["wh3_main_character_abilities_arsebelcher"] = {ai="aoe_centred_on_self",cd=120,dmg=30,dur=4,er=0,mana=0,mc=0,minr=0,n="Arsebelcher",rad=7,rng=0,sa=true,src="character",ty="vortex",wu=0}
C.abilities["wh3_main_character_abilities_crippling_throw"] = {ai="projectile_explosive_ap",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Crippling Throw",rad=1,rng=120,src="active",te=true,ty="magic_missile",uses=3,wu=3}
C.abilities["wh3_main_character_abilities_dazs_song_of_winter_sunlight"] = {ai="augment_melee_area",cd=90,dur=10,er=35,mana=0,mc=0,minr=0,n="Dazh's Song of Winter Sunlight",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_character_abilities_enchanted_metallurgy"] = {ai="augment_melee",cd=60,dur=12,er=35,mana=0,mc=0,minr=0,n="Enchanted Metallurgy",nf=-1,rng=100,sa=true,src="active",tf=true,tg=true,ts=true,ty="augment",wu=0}
C.abilities["wh3_main_character_abilities_enchanted_metallurgy_flaming"] = {ai="augment_melee",cd=90,dur=14,er=35,mana=0,mc=0,minr=0,n="Enchanted Metallurgy: Flaming",nf=-1,rng=100,sa=true,src="active",tf=true,tg=true,ts=true,ty="augment",wu=0}
C.abilities["wh3_main_character_abilities_enchanted_metallurgy_piercing"] = {ai="augment_melee",cd=90,dur=14,er=35,mana=0,mc=0,minr=0,n="Enchanted Metallurgy: Piercing",nf=-1,rng=100,sa=true,src="active",tf=true,tg=true,ts=true,ty="augment",wu=0}
C.abilities["wh3_main_character_abilities_enchanted_metallurgy_poison"] = {ai="augment_melee",cd=90,dur=12,er=35,mana=0,mc=0,minr=0,n="Enchanted Metallurgy: Poison",nf=-1,rng=100,sa=true,src="active",tf=true,tg=true,ts=true,ty="augment",wu=0}
C.abilities["wh3_main_character_abilities_eruption"] = {ai="aoe_centred_on_self",cd=120,dmg=25,dur=4,er=0,mana=0,mc=0,minr=0,n="Eruption",rad=15,rng=0,sa=true,src="active",ty="explosion",uses=1,wu=1}
C.abilities["wh3_main_character_abilities_extra_ingredients"] = {ai="augment_spellcasting",cd=90,dur=31,er=0,mana=0,mc=0,minr=0,n="Extra Ingredients",rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh3_main_character_abilities_fire_breath"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Fire Breath",rad=3,rng=90,src="active",te=true,ty="magic_missiles",uses=3,wu=1.9}
C.abilities["wh3_main_character_abilities_flame_incarnate"] = {ai="aoe_centred_on_self",cd=90,dur=24,er=0,mana=0,mc=0,minr=0,n="Flame Incarnate",rng=0,sa=true,src="active",ty="ward_save",wu=1}
C.abilities["wh3_main_character_abilities_from_the_shadows"] = {ai="flanking_opportunity",cd=120,dur=38,er=0,fm=true,mana=0,mc=0,minr=0,n="From the Shadows",rng=0,sa=true,src="active",ty="hiding",wu=0}
C.abilities["wh3_main_character_abilities_gate_of_khorne"] = {ai="hex_melee",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Gate of Khorne",rng=50,src="active",sum=true,tf=true,tg=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_main_character_abilities_gate_of_nurgle"] = {ai="hex_melee",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Gate of Nurgle",rng=50,src="active",sum=true,tf=true,tg=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_main_character_abilities_gate_of_slaanesh"] = {ai="hex_melee",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Gate of Slaanesh",rng=50,src="active",sum=true,tf=true,tg=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_main_character_abilities_gate_of_tzeentch"] = {ai="threatened",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Gate of Tzeentch",rng=50,src="active",sum=true,tf=true,tg=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_main_character_abilities_glacial_blast"] = {ai="aoe_centred_on_self",cd=90,dmg=15,dur=4,er=0,ff=true,mana=0,mc=0,minr=0,n="Glacial Blast",rad=15,rng=0,sa=true,src="active",ty="explosion",uses=3,wu=3}
C.abilities["wh3_main_character_abilities_greater_gate_of_khorne"] = {ai="hex_melee",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Greater Gate of Khorne",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_main_character_abilities_greater_gate_of_nurgle"] = {ai="hex_melee",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Greater Gate of Nurgle",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_main_character_abilities_greater_gate_of_slaanesh"] = {ai="hex_melee",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Greater Gate of Slaanesh",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_main_character_abilities_greater_gate_of_tzeentch"] = {ai="hex_melee",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Greater Gate of Tzeentch",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_main_character_abilities_groundbreaker"] = {ai="aoe_centred_on_self",cd=90,dmg=72,dur=3,er=0,ff=true,mana=0,mc=0,minr=0,n="Groundbreaker",rad=10,rng=0,sa=true,src="active",ty="explosion",uses=3,wu=0}
C.abilities["wh3_main_character_abilities_guardian_call"] = {ai="threatened",cd=0,dur=1,er=0,mana=0,mc=0,minr=0,n="Guardian Call",rng=50,src="active",sum=true,te=true,tg=true,ty="summon_unit",uses=1,wu=3}
C.abilities["wh3_main_character_abilities_guardian_call_ii"] = {ai="threatened",cd=0,dur=1,er=0,mana=0,mc=0,minr=0,n="Guardian Call II",rng=50,src="active",sum=true,te=true,tg=true,ty="summon_unit",uses=1,wu=3}
C.abilities["wh3_main_character_abilities_guardian_call_iii"] = {ai="threatened",cd=0,dur=1,er=0,mana=0,mc=0,minr=0,n="Guardian Call III",rng=50,src="active",sum=true,te=true,tg=true,ty="summon_unit",uses=1,wu=3}
C.abilities["wh3_main_character_abilities_ice_shard"] = {ai="projectile_explosive_ap",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Ice Shard",rad=3,rng=200,src="active",te=true,ty="magic_missile",uses=3,wu=3}
C.abilities["wh3_main_character_abilities_locus_of_abjuration"] = {ai="augment_defense_ranged_area",cd=90,dur=25,er=55,mana=0,mc=0,minr=0,n="Locus of Abjuration",nf=-1,rng=0,sa=true,src="active",ty="area_of_ward_save",wu=0}
C.abilities["wh3_main_character_abilities_locus_of_beguilement"] = {ai="hex_melee_area",cd=90,dur=22,er=55,mana=0,mc=0,minr=0,n="Locus of Beguilement",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh3_main_character_abilities_locus_of_change"] = {ai="augment_ranged_area",cd=90,dur=40,er=55,mana=0,mc=0,minr=0,n="Locus of Change",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_character_abilities_locus_of_conjuration"] = {ai="augment_spellcasting",cd=90,dur=20,er=55,mana=0,mc=0,minr=0,n="Locus of Conjuration",nf=3,rng=0,sa=true,src="active",ty="area_of_augments_of_the_winds",wu=0}
C.abilities["wh3_main_character_abilities_locus_of_contagion"] = {ai="aoe_centred_on_self",cd=90,dur=11,er=55,mana=0,mc=0,minr=0,n="Locus of Contagion",ne=-1,rng=0,src="active",ty="area_of_direct_damage",wu=0}
C.abilities["wh3_main_character_abilities_locus_of_fecundity"] = {ai="healing",cd=90,dur=11,er=55,heal=true,mana=0,mc=0,minr=0,n="Locus of Fecundity",nf=-1,rng=0,sa=true,src="active",ty="area_of_regeneration",uses=3,wu=0}
C.abilities["wh3_main_character_abilities_locus_of_fury"] = {ai="augment_charge_self",cd=90,dur=17,er=55,mana=0,mc=0,minr=0,n="Locus of Fury",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_character_abilities_locus_of_grace"] = {ai="augment_melee_area",cd=90,dur=22,er=55,mana=0,mc=0,minr=0,n="Locus of Grace",nf=-1,rng=0,sa=true,src="active",ty="area_of_ward_save",wu=0}
C.abilities["wh3_main_character_abilities_locus_of_swiftness"] = {ai="augment_charge_self",cd=90,dur=40,er=55,mana=0,mc=0,minr=0,n="Locus of Swiftness",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_character_abilities_locus_of_transmogrification"] = {ai="threatened",cd=90,dur=10,er=0,mana=0,mc=0,minr=0,n="Locus of Transmogrification",rng=50,sa=true,src="active",sum=true,tf=true,tg=true,ty="summon_unit",uses=2,wu=5}
C.abilities["wh3_main_character_abilities_locus_of_virulence"] = {ai="direct_damage_multi_entity_area",cd=90,dur=25,er=55,mana=0,mc=0,minr=0,n="Locus of Virulence",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_character_abilities_locus_of_wrath"] = {ai="augment_melee_area",cd=90,dur=25,er=55,mana=0,mc=0,minr=0,n="Locus of Wrath",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_character_abilities_no_escape"] = {ai="hex_melee",cd=90,dur=14,er=0,mana=0,mc=0,minr=0,n="No Escape",ne=1,rng=100,src="active",te=true,ty="hex",uses=3,wu=0}
C.abilities["wh3_main_character_abilities_salyaks_lullaby"] = {ai="healing_area",cd=90,dur=15,er=35,heal=true,mana=0,mc=0,minr=0,n="Salyak's Lullaby",nf=4,rng=0,sa=true,src="active",ty="area_of_regeneration",uses=3,wu=0}
C.abilities["wh3_main_character_abilities_silence_the_prey"] = {ai="hex_spellcaster",cd=60,dur=30,er=0,mana=0,mc=0,minr=0,n="Silence the Prey",ne=1,rng=100,src="active",te=true,ty="hex",uses=4,wu=0}
C.abilities["wh3_main_character_abilities_tors_battle_hymn"] = {ai="augment_melee_area",cd=90,dur=25,er=35,mana=0,mc=0,minr=0,n="Tor's Battle Hymn",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_character_abilities_unyielding_defender"] = {ai="augment_melee",cd=90,dur=28,er=0,mana=0,mc=0,minr=0,n="Unyielding Defence",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_character_abilities_ursuns_roar"] = {ai="augment_morale_area",cd=60,dur=9,er=35,mana=0,mc=0,minr=0,n="Ursun's Roar",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_daemon_arms_abilities_blue_fire"] = {ai="vortex_breath",cd=30,dmg=16,dur=6,er=0,ff=true,mana=0,mc=0,minr=0,n="Blue Fire of Chaos",rad=12,rng=100,src="active",tg=true,ty="breath",uses=2,vlen=48,wu=0}
C.abilities["wh3_main_daemon_arms_abilities_blue_fire_upgraded"] = {ai="vortex_breath",cd=30,dmg=32,dur=6,er=0,ff=true,mana=0,mc=0,minr=0,n="Blue Fire of Chaos Upgraded",rad=12,rng=100,src="active",tg=true,ty="breath",upg=true,uses=4,vlen=48,wu=0}
C.abilities["wh3_main_daemon_arms_abilities_gate_of_chaos"] = {ai="threatened",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Gate of Chaos",rng=50,src="active",sum=true,tg=true,ty="summon_unit",uses=2,wu=5}
C.abilities["wh3_main_daemon_arms_abilities_gate_of_chaos_upgraded"] = {ai="threatened",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Gate of Chaos Upgraded",rng=50,src="active",sum=true,tg=true,ty="summon_unit",upg=true,uses=2,wu=5}
C.abilities["wh3_main_daemon_arms_abilities_mortal_blow"] = {ai="augment_melee_self",cd=60,dur=16,er=0,mana=0,mc=0,minr=0,n="Mortal Blow",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_daemon_arms_abilities_mortal_blow_upgraded"] = {ai="augment_melee_self",cd=90,dur=24,er=0,mana=0,mc=0,minr=0,n="Mortal Blow Upgraded",rng=0,sa=true,src="active",ty="augment",upg=true,wu=0}
C.abilities["wh3_main_daemon_body_abilities_winds_of_change"] = {ai="augment_spellcasting",cd=120,dur=26,er=0,mana=0,mc=0,minr=0,n="Winds of Change",rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh3_main_daemon_head_abilities_call_for_power"] = {ai="augment_melee",cd=120,dur=30,er=0,mana=0,mc=0,minr=0,n="Call for Power",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_daemon_head_abilities_pestilent_regeneration"] = {ai="healing",cd=120,dur=24,er=0,heal=true,mana=0,mc=0,minr=0,n="Pestilent Regeneration",nf=5,rng=0,sa=true,src="active",ty="chain_regeneration",wu=0}
C.abilities["wh3_main_daemon_head_abilities_sonic_boom"] = {ai="aoe_centred_on_self",cd=90,dmg=4,dur=6,er=0,mana=0,mc=0,minr=0,n="Sonic Boom",ne=-1,rad=30,rng=0,src="active",ty="explosion",wu=3}
C.abilities["wh3_main_daemon_head_abilities_word_of_change"] = {ai="hex_melee",cd=120,dur=42,er=0,mana=0,mc=0,minr=0,n="Word of Change",ne=1,rng=200,src="active",te=true,ty="hex_of_the_winds",wu=0}
C.abilities["wh3_main_daemon_legs_abilities_daemonic_onslaught"] = {ai="augment_charge_self",cd=90,dur=34,er=0,mana=0,mc=0,minr=0,n="Daemonic Onslaught",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_daemon_wings_abilities_purge_the_weak"] = {ai="augment_charge_self",cd=90,dur=22,er=0,mana=0,mc=0,minr=0,n="Purge the Weak!",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_daemon_wings_abilities_trophy_heads"] = {ai="hex_melee",cd=120,dur=36,er=0,mana=0,mc=0,minr=0,n="Trophy Heads",rng=150,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_main_item_abilities_alchemists_elixir_of_iron_skin"] = {ai="augment_melee",cd=90,dur=25,er=0,mana=0,mc=0,minr=0,n="Alchemist's Elixir of Iron Skin",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",uses=2,wu=0}
C.abilities["wh3_main_item_abilities_alchemists_elixir_of_puissance"] = {ai="augment_melee",cd=90,dur=29,er=0,mana=0,mc=0,minr=0,n="Alchemist's Elixir of Puissance",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",uses=2,wu=0}
C.abilities["wh3_main_item_abilities_alchemists_elixir_of_venom"] = {ai="augment_melee",cd=90,dur=36,er=0,mana=0,mc=0,minr=0,n="Alchemist's Elixir of Venom",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",uses=1,wu=0}
C.abilities["wh3_main_item_abilities_bangstick"] = {ai="vortex_breath",cd=90,dmg=16,dur=6,er=0,ff=true,mana=0,mc=0,minr=0,n="Bangstick",rad=12,rng=50,src="active",te=true,tg=true,ty="breath",uses=3,vlen=48,wu=3}
C.abilities["wh3_main_item_abilities_bloodstone"] = {ai="hex_ranged_summon",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Bloodstone",rng=50,src="active",sum=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_main_item_abilities_crackleblaze"] = {ai="aoe",cd=90,dmg=25,dur=1,er=0,mana=0,mc=0,minr=0,n="Crackleblaze",ne=-1,nf=-1,rad=15,rng=60,src="active",te=true,tg=true,ty="explosion",uses=3,wu=0}
C.abilities["wh3_main_item_abilities_deaths_head"] = {ai="aoe_ap",cd=120,dmg=48,dur=1,er=0,ff=true,mana=0,mc=0,minr=0,n="Blight Boil",rad=20,rng=200,src="bound",te=true,tg=true,ty="explosion",uses=2,wu=5}
C.abilities["wh3_main_item_abilities_fistful_of_laurels"] = {ai="augment_melee_area",cd=120,dur=50,er=35,mana=0,mc=0,minr=0,n="Fistful of Laurels",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",uses=2,wu=0}
C.abilities["wh3_main_item_abilities_gastuvas_egg"] = {ai="augment_melee",cd=-1,cm=true,dur=33,er=0,mana=0,mc=0,minr=0,n="Gastuva's Egg",nf=1,rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh3_main_item_abilities_gruts_sickle"] = {ai="augment_spellcasting",cd=60,dur=20,er=0,mana=0,mc=0,minr=0,n="Grut's Sickle",nf=1,rng=100,src="active",tf=true,ty="augment_of_the_winds",uses=3,wu=0}
C.abilities["wh3_main_item_abilities_kovsh_breath"] = {ai="vortex_breath",cd=60,dmg=16,dur=2,er=0,ff=true,mana=0,mc=0,minr=0,n="Kovsh Breath",rad=12,rng=15,src="active",te=true,tg=true,ty="breath",uses=3,vlen=48,wu=1}
C.abilities["wh3_main_item_abilities_maw_shard"] = {ai="augment_spellcasting",cd=60,dur=22,er=0,mana=0,mc=1,minr=0,n="Maw Shard",nf=1,rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh3_main_item_abilities_potion_of_farsight"] = {ai="augment_ranged",cd=60,dur=36,er=0,mana=0,mc=0,minr=0,n="Potion of Farsight",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh3_main_item_abilities_prismatic_amplifier"] = {ai="augment_spellcasting",cd=90,dur=36,er=0,mana=0,mc=0,minr=0,n="Prismatic Amplifier",rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh3_main_item_abilities_saint_annushkas_finger_bone"] = {ai="healing",cd=60,dur=13,er=0,heal=true,mana=0,mc=0,minr=0,n="Saint Annushka's Finger Bone",nf=1,rng=0,sa=true,src="active",ty="regeneration",wu=0}
C.abilities["wh3_main_item_abilities_scales_of_the_celestial_court"] = {ai="augment_melee_self",cd=120,dur=21,er=0,mana=0,mc=0,minr=0,n="Scales of the Celestial Court",rng=0,sa=true,src="active",ty="ward_save",wu=0}
C.abilities["wh3_main_item_abilities_scroll_of_destiny"] = {ai="augment_spellcasting",cd=120,dur=46,er=0,mana=0,mc=0,minr=0,n="Scroll of Destiny",rng=0,sa=true,src="active",ty="area_of_augments_of_the_winds",uses=1,wu=0}
C.abilities["wh3_main_item_abilities_snowflake_pendant"] = {ai="augment_spellcasting",cd=90,dur=25,er=0,mana=0,mc=0,minr=0,n="Snowflake Pendant",nf=1,rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh3_main_item_abilities_staff_of_wu_xing"] = {ai="augment_spellcasting",cd=120,dur=30,er=0,mana=0,mc=0,minr=0,n="Staff of Wu Xing",rng=0,sa=true,src="active",ty="area_of_augments_of_the_winds",uses=1,wu=0}
C.abilities["wh3_main_item_abilities_steppe_hunters_horn"] = {ai="augment_defense_melee",cd=60,dur=20,er=35,mana=0,mc=0,minr=0,n="Steppe Hunter's Horn",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_item_abilities_the_bloody_shackle"] = {ai="healing_single_use",cd=-1,dur=30,er=0,heal=true,mana=0,mc=0,minr=0,n="The Bloody Shackle",rng=0,sa=true,src="active",ty="regeneration",uses=1,wu=0}
C.abilities["wh3_main_item_abilities_the_chromatic_tome"] = {ai="augment_spellcasting",cd=60,dur=27,er=0,mana=0,mc=0.5,minr=0,n="The Chromatic Tome",nf=1,rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh3_main_item_abilities_the_portalglyph"] = {ai="hex_ranged_summon",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="The Portalglyph",rng=50,src="active",sum=true,te=true,tg=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_main_item_abilities_the_rock_of_inevitability"] = {ai="hex_melee_area_self",cd=90,dur=22,er=35,mana=0,mc=0,minr=0,n="The Rock of Inevitability",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh3_main_item_abilities_void_pendulum"] = {ai="hex_spellcasting",cd=90,dur=25,er=0,mana=0,mc=0,minr=0,n="Void Pendulum",ne=-1,rng=200,sa=true,src="active",te=true,ty="hex_of_the_winds",uses=3,wu=0}
C.abilities["wh3_main_item_abilities_zak_aloooog"] = {ai="threatened",cd=300,dur=1,er=0,mana=0,mc=0,minr=0,n="Wake Da Idol",nf=1,rng=50,sa=true,src="active",sum=true,tf=true,tg=true,ts=true,ty="augment",uses=1,wu=0}
C.abilities["wh3_main_item_passive_rock_eye"] = {ai="hex_ranged_area",cd=0,dur=60,er=-1,mana=0,mc=0,minr=0,n="Rock Eye",ne=-1,rng=0,src="active",ty="area_of_hexes",uses=1,wu=0}
C.abilities["wh3_main_lord_abilities_ballet_of_blows"] = {ai="augment_melee_self",cd=90,dur=45,er=0,mana=0,mc=0,minr=0,n="Ballet of Blows",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_bellow_of_endless_fury"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Bellow of Endless Fury",rad=4,rng=90,src="active",te=true,ty="magic_missile",uses=3,wu=1.2}
C.abilities["wh3_main_lord_abilities_bellow_of_fury"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Bellow of Fury",rad=4,rng=90,src="active",te=true,ty="magic_missile",uses=3,wu=1}
C.abilities["wh3_main_lord_abilities_blight_swarm"] = {ai="hex_melee",cd=60,dur=20,er=0,mana=0,mc=0,minr=0,n="Blight Swarm",ne=5,rng=200,src="active",te=true,ty="chain_hex",uses=4,wu=0}
C.abilities["wh3_main_lord_abilities_bloodthirst"] = {ai="augment_charge_self",cd=60,dur=17,er=0,mana=0,mc=0,minr=0,n="Bloodthirst",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_burning_rage"] = {ai="aoe_centred_on_self",cd=90,dmg=25,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Burning Rage",rad=15,rng=0,sa=true,src="active",ty="explosion",uses=3,wu=0}
C.abilities["wh3_main_lord_abilities_daemonic_possession"] = {ai="direct_damage_multi_entity_area",cd=90,dur=26,er=0,mana=0,mc=0,minr=0,n="Daemonic Possession",ne=-1,rng=60,src="lord",te=true,ty="ward_save_hex",uses=2,wu=0}
C.abilities["wh3_main_lord_abilities_deathbringer"] = {ai="augment_melee_self",cd=90,dur=29,er=0,mana=0,mc=0,minr=0,n="Deathbringer",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_deathbringer_upgraded"] = {ai="augment_melee_self",cd=90,dur=29,er=0,mana=0,mc=0,minr=0,n="Deathbringer Upgraded",rng=0,sa=true,src="active",ty="augment",upg=true,wu=0}
C.abilities["wh3_main_lord_abilities_everyone_has_their_price"] = {ai="hex_melee_area_self",cd=120,dur=15,er=35,mana=0,mc=0,minr=0,n="Everyone Has Their Price",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh3_main_lord_abilities_eye_of_the_storm"] = {ai="augment_melee_self",cd=120,dur=29,er=0,mana=0,mc=0,minr=0,n="Eye of the Storm",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_fury_of_ursun"] = {ai="augment_melee_self",cd=90,dur=18,er=0,mana=0,mc=0,minr=0,n="Fury of Ursun",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_gaze_of_fate"] = {ai="hex_melee",cd=90,dur=14,er=0,mana=0,mc=0,minr=0,n="Gaze of Fate",ne=1,rng=100,src="active",te=true,ty="hex",uses=3,wu=0}
C.abilities["wh3_main_lord_abilities_gorger_onslaught"] = {ai="threatened",cd=60,dur=1,er=0,mana=0,mc=0,minr=0,n="Gorger Onslaught",rng=50,src="active",sum=true,te=true,tg=true,ty="summon_unit",uses=1,wu=1}
C.abilities["wh3_main_lord_abilities_hidden_in_time"] = {ai="flanking_opportunity",cd=90,dur=73,er=0,fm=true,mana=0,mc=0,minr=0,n="Hidden in Time",rng=0,sa=true,src="active",ty="hiding",uses=2,wu=0}
C.abilities["wh3_main_lord_abilities_inspired_assault_i"] = {ai="augment_melee",cd=60,dur=29,er=0,mana=0,mc=0,minr=0,n="Inspired Assault I",nf=1,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_inspired_assault_ii"] = {ai="augment_melee",cd=90,dur=42,er=0,mana=0,mc=0,minr=0,n="Inspired Assault II",nf=1,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_inspired_assault_iii"] = {ai="augment_melee",cd=120,dur=43,er=0,mana=0,mc=0,minr=0,n="Inspired Assault III",nf=1,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_inspired_defence_i"] = {ai="augment_melee",cd=60,dur=24,er=0,mana=0,mc=0,minr=0,n="Inspired Defence I",nf=1,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_inspired_defence_ii"] = {ai="augment_melee",cd=90,dur=31,er=0,mana=0,mc=0,minr=0,n="Inspired Defence II",nf=1,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_inspired_defence_iii"] = {ai="augment_melee",cd=120,dur=34,er=0,mana=0,mc=0,minr=0,n="Inspired Defence III",nf=1,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_inspired_marksmanship_i"] = {ai="augment_ranged",cd=60,dur=29,er=0,mana=0,mc=0,minr=0,n="Inspired Marksmanship I",nf=1,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_inspired_marksmanship_ii"] = {ai="augment_ranged",cd=90,dur=44,er=0,mana=0,mc=0,minr=0,n="Inspired Marksmanship II",nf=1,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_inspired_marksmanship_iii"] = {ai="augment_ranged",cd=120,dur=44,er=0,mana=0,mc=0,minr=0,n="Inspired Marksmanship III",nf=1,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh3_main_lord_abilities_iron_dragon_dragon_form"] = {ai="augment_melee_self",cd=120,dur=5,er=0,mana=0,mc=0,minr=0,n="Transformation of the Dragon",nf=1,rng=0,sa=true,src="active",tr=true,ty="transform",wu=5}
C.abilities["wh3_main_lord_abilities_iron_dragon_human_form"] = {cd=120,dur=5,er=0,mana=0,mc=0,minr=0,n="Transformation of the Dragon",nf=1,rng=0,sa=true,src="active",tr=true,ty="transform",wu=5.3}
C.abilities["wh3_main_lord_abilities_master_of_alchemy"] = {ai="augment_melee_area",cd=90,dur=20,er=35,mana=0,mc=0,minr=0,n="Master of Alchemy",nf=-1,rng=100,sa=true,src="active",tf=true,tg=true,ty="area_of_augments",wu=0}
C.abilities["wh3_main_lord_abilities_master_of_alchemy_flaming"] = {ai="augment_melee_area",cd=120,dur=16,er=35,mana=0,mc=0,minr=0,n="Master of Alchemy: Flaming",nf=-1,rng=100,sa=true,src="active",tf=true,tg=true,ty="area_of_augments",wu=0}
C.abilities["wh3_main_lord_abilities_master_of_alchemy_piercing"] = {ai="augment_melee_area",cd=120,dur=19,er=35,mana=0,mc=0,minr=0,n="Master of Alchemy: Piercing",nf=-1,rng=100,sa=true,src="active",tf=true,tg=true,ty="area_of_augments",wu=0}
C.abilities["wh3_main_lord_abilities_master_of_alchemy_poison"] = {ai="augment_melee_area",cd=120,dur=18,er=35,mana=0,mc=0,minr=0,n="Master of Alchemy: Poison",nf=-1,rng=100,sa=true,src="active",tf=true,tg=true,ty="area_of_augments",wu=0}
C.abilities["wh3_main_lord_abilities_nurgling_tide"] = {ai="threatened",cd=90,dur=10,er=0,mana=0,mc=0,minr=0,n="Nurgling Tide",rng=0,sa=true,src="active",sum=true,ty="summon_unit",uses=3,wu=3}
C.abilities["wh3_main_lord_abilities_oracle_of_eternity"] = {ai="augment_melee_self",cd=90,dur=22,er=0,mana=0,mc=0,minr=0,n="Oracle of Eternity",rng=0,sa=true,src="active",ty="ward_save",wu=0}
C.abilities["wh3_main_lord_abilities_plaguefathers_oration"] = {ai="augment_melee_area",cd=90,dur=26,er=35,mana=0,mc=0,minr=0,n="Plaguefather's Oration",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_lord_abilities_rage_embodied"] = {ai="hex_melee_area_self",cd=90,dur=15,er=35,mana=0,mc=0,minr=0,n="Rage Embodied",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh3_main_lord_abilities_rage_incarnate"] = {ai="hex_melee_area_self",cd=90,dur=15,er=55,mana=0,mc=0,minr=0,n="Rage Incarnate",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh3_main_lord_abilities_seductive_glory"] = {ai="hex_melee_area_self",cd=90,dur=15,er=35,mana=0,mc=0,minr=0,n="Seductive Glory",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh3_main_lord_abilities_shadow_shroud"] = {ai="augment_melee_self",cd=120,dur=22,er=0,mana=0,mc=0,minr=0,n="Shadow Shroud",rng=0,sa=true,src="active",ty="ward_save",wu=0}
C.abilities["wh3_main_lord_abilities_storm_dragon_dragon_form"] = {ai="augment_melee_self",cd=120,dur=5,er=0,mana=0,mc=0,minr=0,n="Transformation of the Dragon",nf=1,rng=0,sa=true,src="active",tr=true,ty="transform",wu=5}
C.abilities["wh3_main_lord_abilities_storm_dragon_human_form"] = {cd=120,dur=5,er=0,mana=0,mc=0,minr=0,n="Transformation of the Dragon",nf=1,rng=0,sa=true,src="active",tr=true,ty="transform",wu=5.3}
C.abilities["wh3_main_lord_abilities_the_dark_master"] = {ai="hex_melee",cd=90,dur=33,er=0,mana=0,mc=0,minr=0,n="The Dark Master",ne=1,rng=100,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_main_lord_abilities_virulent_contagion"] = {ai="hex_melee",cd=120,dur=30,er=0,mana=0,mc=0,minr=0,n="Virulent Contagion",ne=5,rng=200,src="active",te=true,ty="chain_hex",uses=2,wu=0}
C.abilities["wh3_main_lord_abilities_virulent_contagion_upgraded"] = {ai="hex_melee",cd=120,dur=30,er=0,mana=0,mc=0,minr=0,n="Virulent Contagion Upgraded",ne=5,rng=200,src="active",te=true,ty="chain_hex",upg=true,uses=3,wu=0}
C.abilities["wh3_main_lord_abilities_willing_prey"] = {ai="hex_melee",cd=90,dur=15,er=0,mana=0,mc=0,minr=0,n="Willing Prey",ne=1,rng=200,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_main_lord_abilities_wrath_of_the_storm"] = {ai="augment_melee_area",cd=120,dur=32,er=35,mana=0,mc=0,minr=0,n="Wrath of the Storm",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_lord_abilities_wrathful_reaper"] = {ai="augment_melee_self",cd=60,dur=18,er=0,mana=0,mc=0,minr=0,n="Wrathful Reaper",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_mount_bound_celestial_comet"] = {ai="aoe_bombardment",cd=49,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Celestial Comet",rad=28,rng=200,src="bound",te=true,tg=true,ty="bombardment",uses=2,wu=5}
C.abilities["wh3_main_mount_bound_celestial_lightning"] = {ai="aoe_bombardment",cd=42,dur=4,er=0,ff=true,mana=0,mc=0,minr=0,n="Celestial Lightning",rad=9,rng=300,src="bound",te=true,tg=true,ty="bombardment",uses=2,wu=3}
C.abilities["wh3_main_pro_character_abilities_heroic_killing_blow_1"] = {ai="augment_melee_self",cd=90,dur=30,er=0,mana=0,mc=0,minr=0,n="Killing Blow",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_pro_character_abilities_heroic_killing_blow_2"] = {ai="augment_melee_self",cd=90,dur=30,er=0,mana=0,mc=0,minr=0,n="Heroic Killing Blow",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_pro_character_abilities_ursuns_roar"] = {ai="augment_morale_area",cd=60,dur=20,er=-1,mana=0,mc=0,minr=0,n="Ursun's Roar",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_pro_character_abilities_ursuns_roar_1"] = {ai="augment_morale_area",cd=60,dur=30,er=-1,mana=0,mc=0,minr=0,n="Ursun's Roar",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_pro_character_abilities_ursuns_roar_2"] = {ai="augment_morale_area",cd=60,dur=30,er=-1,mana=0,mc=0,minr=0,n="Ursun's Mighty Roar",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_pro_character_abilities_ursuns_roar_3"] = {ai="augment_morale_area",cd=60,dur=30,er=-1,mana=0,mc=0,minr=0,n="Ursun's Roar",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_spell_bound_ancestral_warriors"] = {ai="assault_opportunity",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Ancestral Warriors",rng=50,src="bound",sum=true,tf=true,tg=true,ty="summon_unit",uses=2,wu=5}
C.abilities["wh3_main_spell_bound_banishment"] = {ai="vortex_ap",cd=120,dmg=7,dur=17,er=0,ff=true,mana=0,mc=0,minr=0,n="Banishment",rad=12,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=1,vlen=36,wu=5}
C.abilities["wh3_main_spell_bound_cascading_fire_cloak"] = {ai="augment_melee",cd=60,dur=19,er=0,mana=0,mc=0,minr=0,n="Cascading Fire Cloak",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="augment",uses=2,wu=1}
C.abilities["wh3_main_spell_bound_comet_of_casandora"] = {ai="aoe_bombardment",cd=120,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Comet of Casandora",rad=28,rng=200,src="bound",te=true,tg=true,ty="bombardment",uses=1,wu=5}
C.abilities["wh3_main_spell_bound_earth_blood"] = {ai="healing_area",cd=60,dur=7,er=35,heal=true,mana=0,mc=0,minr=0,n="Earth Blood",nf=4,rng=200,sa=true,src="bound",tf=true,tg=true,ts=true,ty="area_of_regeneration",uses=2,wu=1}
C.abilities["wh3_main_spell_bound_enfeebling_foe"] = {ai="hex_melee",cd=60,dur=17,er=0,mana=0,mc=0,minr=0,n="The Enfeebling Foe",ne=1,rng=200,src="bound",te=true,ty="hex",uses=2,wu=1}
C.abilities["wh3_main_spell_bound_flame_storm"] = {ai="vortex",cd=120,dmg=17,dur=27,er=0,ff=true,mana=0,mc=0,minr=0,n="Flame Storm",rad=10,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=1,vlen=54,wu=5}
C.abilities["wh3_main_spell_bound_flock_of_doom"] = {ai="direct_damage_multi_entity_area",cd=60,dur=6,er=35,mana=0,mc=0,minr=0,n="Flock of Doom",ne=-1,rng=100,src="bound",te=true,tg=true,ty="area_of_direct_damage",uses=2,wu=0}
C.abilities["wh3_main_spell_bound_harmonic_convergence"] = {ai="augment_melee",cd=60,dur=27,er=0,mana=0,mc=0,minr=0,n="Harmonic Convergence",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="augment",uses=2,wu=1}
C.abilities["wh3_main_spell_bound_lash_of_slaanesh"] = {ai="vortex_breath_ap",cd=30,dmg=12,dur=6,er=0,ff=true,mana=0,mc=0,minr=0,n="Lash of Slaanesh",rad=12,rng=100,src="bound",te=true,tg=true,ty="breath",uses=2,vlen=40,wu=1}
C.abilities["wh3_main_spell_bound_lash_of_slaanesh_keeper_of_secrets"] = {ai="vortex_breath_ap",cd=30,dmg=12,dur=6,er=0,ff=true,mana=0,mc=0,minr=0,n="Lash of Slaanesh",rad=12,rng=100,src="bound",te=true,tg=true,ty="breath",uses=2,vlen=40,wu=1}
C.abilities["wh3_main_spell_bound_pestilent_breath"] = {ai="vortex_breath",cd=60,dmg=20,dur=8,er=0,ff=true,mana=0,mc=0,minr=0,n="Pestilent Breath",rad=12,rng=30,src="bound",te=true,tg=true,ty="breath",uses=4,vlen=48,wu=1}
C.abilities["wh3_main_spell_bound_phas_protection"] = {ai="augment_melee",cd=60,dur=22,er=0,mana=0,mc=0,minr=0,n="Pha's Protection",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="augment",uses=2,wu=1}
C.abilities["wh3_main_spell_bound_pit_of_shades"] = {ai="aoe_ap",cd=120,dmg=5,dur=13,er=0,ff=true,mana=0,mc=0,minr=0,n="Pit of Shades",ne=1,rad=15,rng=200,src="bound",te=true,tg=true,ty="vortex",uses=1,wu=6}
C.abilities["wh3_main_spell_bound_plague_of_rust"] = {ai="hex_armour",cd=60,dur=44,er=0,mana=0,mc=0,minr=0,n="Plague of Rust",ne=1,rng=200,src="bound",te=true,ty="hex",uses=2,wu=1}
C.abilities["wh3_main_spell_bound_rancid_visitations"] = {ai="direct_damage_single_entity",cd=90,dur=10,er=0,mana=0,mc=0,minr=0,n="Rancid Visitations",ne=1,rng=100,src="bound",te=true,ty="direct_damage",uses=2,wu=3}
C.abilities["wh3_main_spell_bound_spirit_leech"] = {ai="direct_damage_single_entity",cd=60,dur=13,er=0,mana=0,mc=0,minr=0,n="Spirit Leech",ne=1,rng=100,src="bound",te=true,ty="direct_damage",uses=2,wu=1}
C.abilities["wh3_main_spell_bound_the_curse_of_anraheir"] = {ai="hex_melee_area",cd=120,dur=21,er=35,mana=0,mc=0,minr=0,n="The Curse of Anraheir",ne=-1,rng=200,src="bound",te=true,tg=true,ty="hex",uses=1,wu=0}
C.abilities["wh3_main_spell_bound_the_dwellers_below"] = {ai="vortex_ap",cd=120,dmg=4,dur=15,er=0,ff=true,mana=0,mc=0,minr=0,n="The Dwellers Below",rad=26,rng=200,src="bound",te=true,tg=true,ty="vortex",uses=1,wu=5}
C.abilities["wh3_main_spell_bound_the_fate_of_bjuna"] = {ai="direct_damage_multi_entity",cd=120,dur=18,er=0,mana=0,mc=0,minr=0,n="The Fate of Bjuna",ne=1,rng=100,src="bound",te=true,ty="direct_damage",uses=1,wu=5}
C.abilities["wh3_main_spell_bound_transmutation_of_lead"] = {ai="hex_melee_area",cd=120,dur=50,er=35,mana=0,mc=0,minr=0,n="Transmutation of Lead",ne=-1,rng=200,src="bound",te=true,tg=true,ty="area_of_hexes",uses=1,wu=5}
C.abilities["wh3_main_spell_bound_wall_of_wind_and_fire"] = {ai="vortex_wind_ap",cd=90,dmg=12,dur=25,er=0,ff=true,mana=0,mc=0,minr=0,n="Wall of Wind & Fire",rad=3,rng=150,src="bound",te=true,tg=true,ty="wind",uses=2,vlen=69,wu=3}
C.abilities["wh3_main_spell_great_maw_bonecrusher"] = {ai="aoe_bombardment",cd=43,dmg=64,dur=6,er=0,ff=true,mana=10,mc=0,minr=0,n="Bonecrusher",rad=8,rng=200,src="spell",te=true,tg=true,ty="explosion",wu=3}
C.abilities["wh3_main_spell_great_maw_bonecrusher_upgraded"] = {ai="aoe_bombardment",cd=43,dmg=96,dur=6,er=0,ff=true,mana=15,mc=0.5,minr=0,n="Bonecrusher Upgraded",rad=8,rng=200,src="spell",te=true,tg=true,ty="explosion",upg=true,wu=3}
C.abilities["wh3_main_spell_great_maw_braingobbler"] = {ai="hex_morale",cd=28,dur=18,er=0,mana=4,mc=0,minr=0,n="Braingobbler",ne=1,rng=200,src="spell",te=true,ty="hex",wu=1}
C.abilities["wh3_main_spell_great_maw_braingobbler_upgraded"] = {ai="hex_morale",cd=28,dur=36,er=0,mana=6,mc=0.5,minr=0,n="Braingobbler Upgraded",ne=1,rng=200,src="spell",te=true,ty="hex",upg=true,wu=1}
C.abilities["wh3_main_spell_great_maw_bullgorger"] = {ai="augment_melee",cd=29,dur=17,er=0,mana=4,mc=0,minr=0,n="Bullgorger",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh3_main_spell_great_maw_bullgorger_upgraded"] = {ai="augment_melee",cd=29,dur=34,er=0,mana=7,mc=0.5,minr=0,n="Bullgorger Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=1}
C.abilities["wh3_main_spell_great_maw_the_maw"] = {ai="aoe_ap",cd=54,dmg=48,dur=10,er=0,ff=true,mana=18,mc=0,minr=0,n="The Maw",rad=20,rng=200,src="spell",te=true,tg=true,ty="explosion",wu=5}
C.abilities["wh3_main_spell_great_maw_the_maw_upgraded"] = {ai="aoe_ap",cd=54,dmg=72,dur=10,er=0,ff=true,mana=24,mc=0.5,minr=0,n="The Maw Upgraded",rad=20,rng=200,src="spell",te=true,tg=true,ty="explosion",upg=true,wu=5}
C.abilities["wh3_main_spell_great_maw_toothcracker"] = {ai="augment_defense_ranged_area",cd=44,dur=35,er=35,mana=6,mc=0,minr=0,n="Toothcracker",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",wu=3}
C.abilities["wh3_main_spell_great_maw_toothcracker_upgraded"] = {ai="augment_defense_ranged_area",cd=44,dur=60,er=35,mana=11,mc=0.5,minr=0,n="Toothcracker Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=3}
C.abilities["wh3_main_spell_great_maw_trollguts"] = {ai="healing",cd=52,dur=35,er=0,heal=true,mana=16,mc=0,minr=0,n="Trollguts",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="regeneration",wu=5}
C.abilities["wh3_main_spell_great_maw_trollguts_upgraded"] = {ai="healing",cd=52,dur=70,er=0,heal=true,mana=26,mc=0.5,minr=0,n="Trollguts Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="regeneration",upg=true,wu=5}
C.abilities["wh3_main_spell_ice_crystal_sanctuary"] = {ai="augment_defense_melee",cd=50,cm=true,dur=35,er=0,mana=8,mc=0,minr=0,n="Crystal Sanctuary",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=5}
C.abilities["wh3_main_spell_ice_crystal_sanctuary_upgraded"] = {ai="augment_defense_melee_area",cd=50,cm=true,dur=35,er=35,mana=16,mc=0.5,minr=0,n="Crystal Sanctuary Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=5}
C.abilities["wh3_main_spell_ice_death_frost"] = {ai="direct_damage_single_entity",cd=38,dur=20,er=0,mana=12,mc=0,minr=0,n="Death Frost",ne=1,rng=100,src="spell",te=true,ty="direct_damage",wu=3}
C.abilities["wh3_main_spell_ice_death_frost_upgraded"] = {ai="direct_damage_single_entity",cd=38,dur=20,er=0,mana=15,mc=0.5,minr=0,n="Death Frost Upgraded",ne=1,rng=300,src="spell",te=true,ty="direct_damage",upg=true,wu=3}
C.abilities["wh3_main_spell_ice_frost_blades"] = {ai="augment_melee",cd=43,dur=26,er=0,mana=7,mc=0,minr=0,n="Frost Blades",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh3_main_spell_ice_frost_blades_upgraded"] = {ai="augment_melee",cd=43,dur=26,er=0,mana=10,mc=0.5,minr=0,n="Frost Blades Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=3}
C.abilities["wh3_main_spell_ice_heart_of_winter"] = {ai="direct_damage_multi_entity_area",cd=54,dur=32,er=30,mana=22,mc=0,minr=0,n="Heart of Winter",ne=-1,rng=100,src="spell",tg=true,ty="area_of_direct_damage",wu=5}
C.abilities["wh3_main_spell_ice_heart_of_winter_upgraded"] = {ai="direct_damage_multi_entity_area",cd=54,dur=32,er=30,mana=26,mc=0.5,minr=0,n="Heart of Winter Upgraded",ne=-1,rng=100,src="spell",tg=true,ty="area_of_direct_damage",upg=true,wu=5}
C.abilities["wh3_main_spell_ice_ice_maidens_kiss"] = {ai="vortex_breath",cd=30,dmg=18,dur=2,er=0,ff=true,mana=6,mc=0,minr=0,n="Ice Maiden's Kiss",rad=12,rng=100,src="spell",te=true,tg=true,ty="breath",vlen=48,wu=1}
C.abilities["wh3_main_spell_ice_ice_maidens_kiss_upgraded"] = {ai="vortex_breath",cd=30,dmg=36,dur=2,er=0,ff=true,mana=10,mc=0.5,minr=0,n="Ice Maiden's Kiss Upgraded",rad=12,rng=100,src="spell",te=true,tg=true,ty="breath",upg=true,vlen=48,wu=1}
C.abilities["wh3_main_spell_ice_ice_sheet"] = {ai="hex_speed_area",cd=27,dur=21,er=55,mana=4,mc=0,minr=0,n="Ice Sheet",ne=-1,rng=200,src="spell",tg=true,ty="area_of_hexes",wu=1}
C.abilities["wh3_main_spell_nurgle_curse_of_the_leper"] = {ai="augment_melee",cd=43,dur=30,er=0,mana=7,mc=0,minr=0,n="Curse of the Leper",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh3_main_spell_nurgle_curse_of_the_leper_bound"] = {ai="augment_melee",cd=-1,dur=30,er=0,mana=0,mc=0,minr=0,n="Curse of the Leper",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="augment",uses=1,wu=3}
C.abilities["wh3_main_spell_nurgle_curse_of_the_leper_upgraded"] = {ai="augment_melee",cd=43,dur=30,er=0,mana=10,mc=0.5,minr=0,n="Curse of the Leper Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=3}
C.abilities["wh3_main_spell_nurgle_fleshy_abundance"] = {ai="healing",cd=54,dur=18,er=0,heal=true,mana=16,mc=0,minr=0,n="Fleshy Abundance",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="regeneration",wu=5}
C.abilities["wh3_main_spell_nurgle_fleshy_abundance_bound"] = {ai="healing",cd=-1,dur=18,er=0,heal=true,mana=0,mc=0,minr=0,n="Fleshy Abundance",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="regeneration",uses=1,wu=5}
C.abilities["wh3_main_spell_nurgle_fleshy_abundance_upgraded"] = {ai="healing_area",cd=54,dur=18,er=35,heal=true,mana=28,mc=0.5,minr=0,n="Fleshy Abundance Upgraded",nf=4,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_regeneration",upg=true,wu=5}
C.abilities["wh3_main_spell_nurgle_miasma_of_pestilence"] = {ai="hex_melee",cd=28,dur=21,er=0,mana=4,mc=0,minr=0,n="Miasma of Pestilence",ne=1,rng=200,src="spell",te=true,ty="hex",wu=1}
C.abilities["wh3_main_spell_nurgle_miasma_of_pestilence_bound"] = {ai="hex_melee",cd=-1,dur=21,er=0,mana=0,mc=0,minr=0,n="Miasma of Pestilence",ne=1,rng=200,src="bound",te=true,ty="hex",uses=1,wu=1}
C.abilities["wh3_main_spell_nurgle_miasma_of_pestilence_upgraded"] = {ai="hex_melee_area",cd=28,dur=21,er=0,mana=8,mc=0.5,minr=0,n="Miasma of Pestilence Upgraded",ne=6,rng=200,src="spell",te=true,tg=true,ty="chain_hex",upg=true,wu=1}
C.abilities["wh3_main_spell_nurgle_pestilent_pustule"] = {ai="aoe_ap",cd=49,dmg=48,dur=1,er=0,ff=true,mana=13,mc=0,minr=0,n="Blight Boil",rad=20,rng=200,src="spell",te=true,tg=true,ty="explosion",wu=5}
C.abilities["wh3_main_spell_nurgle_pestilent_pustule_bound"] = {ai="aoe_ap",cd=-1,dmg=72,dur=1,er=0,ff=true,mana=0,mc=0.5,minr=0,n="Blight Boil",rad=20,rng=200,src="bound",te=true,tg=true,ty="explosion",uses=1,wu=5}
C.abilities["wh3_main_spell_nurgle_pestilent_pustule_upgraded"] = {ai="aoe_ap",cd=49,dmg=72,dur=1,er=0,ff=true,mana=18,mc=0.5,minr=0,n="Blight Boil Upgraded",rad=20,rng=200,src="spell",te=true,tg=true,ty="explosion",upg=true,wu=5}
C.abilities["wh3_main_spell_nurgle_rancid_visitations"] = {ai="direct_damage_single_entity",cd=43,dur=10,er=0,mana=15,mc=0,minr=0,n="Rancid Visitations",ne=1,rng=100,src="spell",te=true,ty="direct_damage",wu=3}
C.abilities["wh3_main_spell_nurgle_rancid_visitations_bound"] = {ai="direct_damage_single_entity",cd=-1,dur=10,er=0,mana=0,mc=0,minr=0,n="Rancid Visitations",ne=1,rng=100,src="bound",te=true,ty="direct_damage",uses=1,wu=3}
C.abilities["wh3_main_spell_nurgle_rancid_visitations_upgraded"] = {ai="direct_damage_single_entity",cd=43,dur=20,er=0,mana=22,mc=0.5,minr=0,n="Rancid Visitations Upgraded",ne=1,rng=100,src="spell",te=true,ty="direct_damage",upg=true,wu=3}
C.abilities["wh3_main_spell_nurgle_stream_of_corruption"] = {ai="vortex_breath_ap",cd=29,dmg=24,dur=3,er=0,ff=true,mana=5,mc=0,minr=0,n="Stream of Corruption",rad=6,rng=100,src="spell",te=true,tg=true,ty="breath",vlen=72,wu=1}
C.abilities["wh3_main_spell_nurgle_stream_of_corruption_bound"] = {ai="vortex_breath_ap",cd=29,dmg=24,dur=3,er=0,ff=true,mana=0,mc=0,minr=0,n="Stream of Corruption",rad=6,rng=100,src="bound",te=true,tg=true,ty="breath",uses=2,vlen=72,wu=1}
C.abilities["wh3_main_spell_nurgle_stream_of_corruption_upgraded"] = {ai="vortex_breath_ap",cd=29,dmg=36,dur=3,er=0,ff=true,mana=8,mc=0.5,minr=0,n="Stream of Corruption Upgraded",rad=6,rng=100,src="spell",te=true,tg=true,ty="breath",upg=true,vlen=72,wu=1}
C.abilities["wh3_main_spell_slaanesh_acquiescence"] = {ai="hex_melee",cd=29,dur=25,er=0,mana=6,mc=0,minr=0,n="Acquiescence",ne=1,rng=200,src="spell",te=true,ty="hex",wu=1}
C.abilities["wh3_main_spell_slaanesh_acquiescence_bound"] = {ai="hex_melee",cd=-1,dur=25,er=0,mana=0,mc=0,minr=0,n="Acquiescence",ne=1,rng=200,src="bound",te=true,ty="hex",uses=1,wu=1}
C.abilities["wh3_main_spell_slaanesh_acquiescence_upgraded"] = {ai="hex_melee",cd=29,dur=25,er=0,mana=8,mc=0.5,minr=0,n="Acquiescence Upgraded",ne=1,rng=200,src="spell",te=true,ty="hex",upg=true,wu=1}
C.abilities["wh3_main_spell_slaanesh_hysterical_frenzy"] = {ai="augment_melee",cd=43,dur=28,er=0,mana=8,mc=0,minr=0,n="Hysterical Frenzy",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh3_main_spell_slaanesh_hysterical_frenzy_bound"] = {ai="augment_melee",cd=43,dur=28,er=0,mana=0,mc=0,minr=0,n="Hysterical Frenzy",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="augment",uses=2,wu=3}
C.abilities["wh3_main_spell_slaanesh_hysterical_frenzy_upgraded"] = {ai="augment_melee",cd=43,dur=56,er=0,mana=12,mc=0.5,minr=0,n="Hysterical Frenzy Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=3}
C.abilities["wh3_main_spell_slaanesh_lash_of_slaanesh"] = {ai="vortex_breath_ap",cd=30,dmg=12,dur=6,er=0,ff=true,mana=6,mc=0,minr=0,n="Lash of Slaanesh",rad=12,rng=100,src="spell",te=true,tg=true,ty="breath",vlen=40,wu=1}
C.abilities["wh3_main_spell_slaanesh_lash_of_slaanesh_upgraded"] = {ai="vortex_breath_ap",cd=30,dmg=24,dur=6,er=0,ff=true,mana=9,mc=0.5,minr=0,n="Lash of Slaanesh Upgraded",rad=12,rng=100,src="spell",te=true,tg=true,ty="breath",upg=true,vlen=40,wu=1}
C.abilities["wh3_main_spell_slaanesh_pavane_of_slaanesh"] = {ai="direct_damage_multi_entity",cd=38,dur=24,er=0,mana=14,mc=0,minr=0,n="Pavane of Slaanesh",ne=1,rng=100,src="spell",te=true,ty="direct_damage",wu=3}
C.abilities["wh3_main_spell_slaanesh_pavane_of_slaanesh_bound"] = {ai="direct_damage_multi_entity",cd=-1,dur=24,er=0,mana=0,mc=0,minr=0,n="Pavane of Slaanesh",ne=1,rng=100,src="bound",te=true,ty="direct_damage",uses=1,wu=3}
C.abilities["wh3_main_spell_slaanesh_pavane_of_slaanesh_upgraded"] = {ai="direct_damage_multi_entity",cd=38,dur=38,er=0,mana=23,mc=0.5,minr=0,n="Pavane of Slaanesh Upgraded",ne=1,rng=100,src="spell",te=true,ty="direct_damage",upg=true,wu=3}
C.abilities["wh3_main_spell_slaanesh_phantasmagoria"] = {ai="hex_morale_area",cd=54,dur=11,er=35,mana=15,mc=0,minr=0,n="Phantasmagoria",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_hexes",wu=5}
C.abilities["wh3_main_spell_slaanesh_phantasmagoria_bound"] = {ai="hex_morale_area",cd=-1,dur=11,er=35,mana=0,mc=0,minr=0,n="Phantasmagoria",ne=-1,rng=100,src="bound",te=true,tg=true,ty="area_of_hexes",uses=1,wu=5}
C.abilities["wh3_main_spell_slaanesh_phantasmagoria_upgraded"] = {ai="hex_morale_area",cd=54,dur=22,er=35,mana=22,mc=0.5,minr=0,n="Phantasmagoria Upgraded",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_hexes",upg=true,wu=5}
C.abilities["wh3_main_spell_slaanesh_slicing_shards"] = {ai="aoe_bombardment",cd=48,dur=9,er=0,ff=true,mana=12,mc=0,minr=0,n="Slicing Shards",rad=23,rng=200,src="spell",te=true,tg=true,ty="bombardment",wu=5}
C.abilities["wh3_main_spell_slaanesh_slicing_shards_bound"] = {ai="aoe_bombardment",cd=-1,dur=9,er=0,ff=true,mana=0,mc=0,minr=0,n="Slicing Shards",rad=23,rng=200,src="bound",te=true,tg=true,ty="bombardment",uses=1,wu=5}
C.abilities["wh3_main_spell_slaanesh_slicing_shards_upgraded"] = {ai="aoe_bombardment",cd=48,dur=9,er=0,ff=true,mana=18,mc=0.5,minr=0,n="Slicing Shards Upgraded",rad=23,rng=200,src="spell",te=true,tg=true,ty="bombardment",upg=true,wu=5}
C.abilities["wh3_main_spell_tempest_biting_wind"] = {ai="vortex_wind",cd=39,dmg=26,dur=9,er=0,ff=true,mana=12,mc=0,minr=0,n="Biting Wind",rad=8,rng=150,src="spell",te=true,tg=true,ty="wind",vlen=160,wu=3}
C.abilities["wh3_main_spell_tempest_biting_wind_army"] = {ai="vortex_wind",cd=0,dmg=26,dur=9,er=0,ff=true,mana=0,mc=0,minr=0,n="Biting Wind",rad=8,rng=-1,src="spell",te=true,tg=true,ty="wind",uses=1,vlen=160,wu=3}
C.abilities["wh3_main_spell_tempest_biting_wind_upgraded"] = {ai="vortex_wind_ap",cd=39,dmg=36,dur=9,er=0,ff=true,mana=17,mc=0.5,minr=0,n="Biting Wind Upgraded",rad=8,rng=150,src="spell",te=true,tg=true,ty="wind",upg=true,vlen=160,wu=3}
C.abilities["wh3_main_spell_tempest_blizzard"] = {ai="aoe_ap",cd=54,dmg=4,dur=18,er=0,ff=true,mana=18,mc=0,minr=0,n="Blizzard",rad=20,rng=200,src="spell",te=true,tg=true,ty="vortex",wu=5}
C.abilities["wh3_main_spell_tempest_blizzard_upgraded"] = {ai="aoe_ap",cd=54,dmg=8,dur=18,er=0,ff=true,mana=26,mc=0.5,minr=0,n="Blizzard Upgraded",rad=20,rng=200,src="spell",te=true,tg=true,ty="vortex",upg=true,wu=5}
C.abilities["wh3_main_spell_tempest_gust_of_true_flight"] = {ai="augment_ranged",cd=28,dur=36,er=0,mana=4,mc=0,minr=0,n="Gust of True Flight",nf=1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="augment",wu=1}
C.abilities["wh3_main_spell_tempest_gust_of_true_flight_upgraded"] = {ai="augment_ranged_area",cd=28,dur=36,er=35,mana=8,mc=0.5,minr=0,n="Gust of True Flight Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=1}
C.abilities["wh3_main_spell_tempest_hailstorm"] = {ai="aoe_bombardment",cd=30,dur=9,er=0,ff=true,mana=6,mc=0,minr=0,n="Hailstorm",rad=18,rng=200,src="spell",te=true,tg=true,ty="bombardment",wu=1}
C.abilities["wh3_main_spell_tempest_hailstorm_upgraded"] = {ai="aoe_bombardment",cd=30,dur=15,er=0,ff=true,mana=9,mc=0.5,minr=0,n="Hailstorm Upgraded",rad=18,rng=200,src="spell",te=true,tg=true,ty="bombardment",upg=true,wu=1}
C.abilities["wh3_main_spell_tempest_hawks_of_miska"] = {ai="vortex_low_morale",cd=49,dmg=6,dur=21,er=0,mana=13,mc=0,minr=0,n="Hawks of Miska",rad=15,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=40,wu=5}
C.abilities["wh3_main_spell_tempest_hawks_of_miska_upgraded"] = {ai="vortex_low_morale",cd=49,dmg=9,dur=21,er=0,mana=17,mc=0.5,minr=0,n="Hawks of Miska Upgraded",rad=15,rng=150,src="spell",te=true,tg=true,ty="vortex",upg=true,vlen=40,wu=5}
C.abilities["wh3_main_spell_tempest_swiftwing"] = {ai="augment_charge",cd=44,dur=26,er=35,mana=6,mc=0,minr=0,n="Swiftwing",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",wu=3}
C.abilities["wh3_main_spell_tempest_swiftwing_upgraded"] = {ai="augment_charge",cd=44,dur=26,er=55,mana=8,mc=0.5,minr=0,n="Swiftwing Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=3}
C.abilities["wh3_main_spell_tzeentch_blue_fire_of_tzeentch"] = {ai="projectile_homing_single",cd=28,dur=0,er=0,ff=true,mana=6,mc=0,minr=0,n="Blue Fire of Tzeentch",rad=1,rng=175,src="spell",te=true,ty="magic_missiles",wu=1}
C.abilities["wh3_main_spell_tzeentch_blue_fire_of_tzeentch_bound"] = {ai="projectile_homing_single",cd=-1,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Blue Fire of Tzeentch",rad=1,rng=175,src="bound",te=true,ty="magic_missiles",uses=2,wu=1}
C.abilities["wh3_main_spell_tzeentch_blue_fire_of_tzeentch_upgraded"] = {ai="projectile_homing_single",cd=28,dur=0,er=0,ff=true,mana=10,mc=0.5,minr=0,n="Blue Fire of Tzeentch Upgraded",rad=1,rng=175,src="spell",te=true,ty="magic_missiles",upg=true,wu=1}
C.abilities["wh3_main_spell_tzeentch_glean_magic"] = {ai="hex_spellcasting",cd=44,dur=23,er=0,mana=9,mc=0,minr=0,n="Glean Magic",ne=1,nf=1,ot=true,rng=200,sa=true,src="spell",te=true,ty="hex_of_the_winds",wu=3}
C.abilities["wh3_main_spell_tzeentch_glean_magic_bound"] = {ai="hex_spellcasting",cd=-1,dur=23,er=0,mana=0,mc=0,minr=0,n="Glean Magic",ne=1,nf=1,ot=true,rng=200,sa=true,src="bound",te=true,ty="hex_of_the_winds",uses=1,wu=3}
C.abilities["wh3_main_spell_tzeentch_glean_magic_upgraded"] = {ai="hex_spellcasting",cd=44,dur=46,er=0,mana=13,mc=0.5,minr=0,n="Glean Magic Upgraded",ne=1,nf=1,ot=true,rng=200,sa=true,src="spell",te=true,ty="hex_of_the_winds",upg=true,wu=3}
C.abilities["wh3_main_spell_tzeentch_infernal_gateway"] = {ai="aoe_ap",cd=54,dmg=5,dur=17,er=0,ff=true,mana=18,mc=0,minr=0,n="Infernal Gateway",ne=1,rad=15,rng=200,src="spell",te=true,tg=true,ty="vortex",wu=6}
C.abilities["wh3_main_spell_tzeentch_infernal_gateway_bound"] = {ai="aoe_ap",cd=-1,dmg=5,dur=17,er=0,ff=true,mana=0,mc=0,minr=0,n="Infernal Gateway",ne=1,rad=15,rng=200,src="bound",te=true,tg=true,ty="vortex",uses=1,wu=6}
C.abilities["wh3_main_spell_tzeentch_infernal_gateway_upgraded"] = {ai="aoe_ap",cd=54,dmg=8,dur=17,er=0,ff=true,mana=24,mc=0.5,minr=0,n="Infernal Gateway Upgraded",ne=1,rad=15,rng=200,src="spell",te=true,tg=true,ty="vortex",upg=true,wu=6}
C.abilities["wh3_main_spell_tzeentch_pink_fire_of_tzeentch"] = {ai="vortex_breath",cd=30,dmg=16,dur=2,er=0,ff=true,mana=6,mc=0,minr=0,n="Pink Fire of Tzeentch",rad=12,rng=100,src="spell",te=true,tg=true,ty="breath",vlen=48,wu=1}
C.abilities["wh3_main_spell_tzeentch_pink_fire_of_tzeentch_bound"] = {ai="vortex_breath",cd=30,dmg=16,dur=2,er=0,ff=true,mana=0,mc=0,minr=0,n="Pink Fire of Tzeentch",rad=12,rng=100,src="bound",te=true,tg=true,ty="breath",uses=2,vlen=48,wu=1}
C.abilities["wh3_main_spell_tzeentch_pink_fire_of_tzeentch_upgraded"] = {ai="vortex_breath",cd=30,dmg=32,dur=2,er=0,ff=true,mana=10,mc=0.5,minr=0,n="Pink Fire of Tzeentch Upgraded",rad=12,rng=100,src="spell",te=true,tg=true,ty="breath",upg=true,vlen=48,wu=1}
C.abilities["wh3_main_spell_tzeentch_treason_of_tzeentch"] = {ai="hex_morale_area",cd=45,dur=20,er=35,mana=8,mc=0,minr=0,n="Treason of Tzeentch",ne=-1,rng=200,src="spell",tg=true,ty="area_of_hexes",wu=3}
C.abilities["wh3_main_spell_tzeentch_treason_of_tzeentch_bound"] = {ai="hex_morale_area",cd=-1,dur=20,er=35,mana=0,mc=0,minr=0,n="Treason of Tzeentch",ne=-1,rng=200,src="bound",tg=true,ty="area_of_hexes",uses=1,wu=3}
C.abilities["wh3_main_spell_tzeentch_treason_of_tzeentch_upgraded"] = {ai="hex_morale_area",cd=45,dur=20,er=35,mana=12,mc=0.5,minr=0,n="Treason of Tzeentch Upgraded",ne=-1,rng=200,src="spell",tg=true,ty="area_of_hexes",upg=true,wu=3}
C.abilities["wh3_main_spell_tzeentch_tzeentchs_firestorm"] = {ai="vortex",cd=51,dmg=13,dur=20,er=0,ff=true,mana=15,mc=0,minr=0,n="Tzeentch's Firestorm",rad=7,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=34,wu=5}
C.abilities["wh3_main_spell_tzeentch_tzeentchs_firestorm_bound"] = {ai="vortex",cd=-1,dmg=13,dur=20,er=0,ff=true,mana=0,mc=0,minr=0,n="Tzeentch's Firestorm",rad=7,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=1,vlen=34,wu=5}
C.abilities["wh3_main_spell_tzeentch_tzeentchs_firestorm_upgraded"] = {ai="vortex",cd=51,dmg=17,dur=20,er=0,ff=true,mana=20,mc=0.5,minr=0,n="Tzeentch's Firestorm Upgraded",rad=7,rng=150,src="spell",te=true,tg=true,ty="vortex",upg=true,vlen=34,wu=5}
C.abilities["wh3_main_spell_yang_constellation_of_the_dragon"] = {ai="aoe_ap",cd=54,dmg=48,dur=10,er=0,ff=true,mana=15,mc=0,minr=0,n="Constellation of the Dragon",rad=20,rng=200,src="spell",te=true,tg=true,ty="explosion",wu=5}
C.abilities["wh3_main_spell_yang_constellation_of_the_dragon_upgraded"] = {ai="aoe_ap",cd=54,dmg=72,dur=10,er=0,ff=true,mana=20,mc=0.5,minr=0,n="Constellation of the Dragon Upgraded",rad=20,rng=200,src="spell",te=true,tg=true,ty="explosion",upg=true,wu=5}
C.abilities["wh3_main_spell_yang_dragons_breath"] = {ai="vortex_breath",cd=30,dmg=21,dur=3,er=0,ff=true,mana=6,mc=0,minr=0,n="Dragon's Breath",rad=9,rng=100,src="spell",te=true,tg=true,ty="breath",vlen=37.5,wu=1}
C.abilities["wh3_main_spell_yang_dragons_breath_upgraded"] = {ai="vortex_breath",cd=30,dmg=42,dur=3,er=0,ff=true,mana=9,mc=0.5,minr=0,n="Dragon's Breath Upgraded",rad=9,rng=100,src="spell",te=true,tg=true,ty="breath",upg=true,vlen=37.5,wu=1}
C.abilities["wh3_main_spell_yang_jade_shield"] = {ai="augment_defense_melee",cd=28,dur=11,er=0,mana=4,mc=0,minr=0,n="Jade Shield",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="ward_save",wu=1}
C.abilities["wh3_main_spell_yang_jade_shield_upgraded"] = {ai="augment_defense_melee",cd=28,dur=22,er=0,mana=6,mc=0.5,minr=0,n="Jade Shield Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="ward_save",upg=true,wu=1}
C.abilities["wh3_main_spell_yang_might_of_heaven_and_earth"] = {ai="augment_melee",cd=47,dur=36,er=0,mana=10,mc=0,minr=0,n="Might of Heaven & Earth",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=5}
C.abilities["wh3_main_spell_yang_might_of_heaven_and_earth_upgraded"] = {ai="augment_melee",cd=47,dur=36,er=0,mana=18,mc=0.5,minr=0,n="Might of Heaven & Earth Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=5}
C.abilities["wh3_main_spell_yang_stone_ground_stance"] = {ai="augment_charged_at_area",cd=44,dur=24,er=35,mana=8,mc=0,minr=0,n="Stone Ground Stance",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",wu=3}
C.abilities["wh3_main_spell_yang_stone_ground_stance_upgraded"] = {ai="augment_charged_at_area",cd=44,dur=24,er=55,mana=12,mc=0.5,minr=0,n="Stone Ground Stance Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=3}
C.abilities["wh3_main_spell_yang_wall_of_wind_and_fire"] = {ai="vortex_wind_ap",cd=43,dmg=12,dur=25,er=0,ff=true,mana=6,mc=0,minr=0,n="Wall of Wind & Fire",rad=3,rng=150,src="spell",te=true,tg=true,ty="wind",vlen=69,wu=3}
C.abilities["wh3_main_spell_yang_wall_of_wind_and_fire_upgraded"] = {ai="vortex_wind_ap",cd=43,dmg=18,dur=25,er=0,ff=true,mana=10,mc=0.5,minr=0,n="Wall of Wind & Fire Upgraded",rad=3,rng=150,src="spell",te=true,tg=true,ty="wind",upg=true,vlen=69,wu=3}
C.abilities["wh3_main_spell_yin_ancestral_warriors"] = {ai="threatened",cd=52,dur=10,er=0,mana=16,mc=0,minr=0,n="Ancestral Warriors",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=5}
C.abilities["wh3_main_spell_yin_ancestral_warriors_upgraded"] = {ai="threatened",cd=52,dur=10,er=0,mana=22,mc=0.5,minr=0,n="Ancestral Warriors Upgraded",rng=150,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",upg=true,uses=2,wu=5}
C.abilities["wh3_main_spell_yin_blossom_wind"] = {ai="vortex_wind_ap",cd=45,dmg=18,dur=13,er=0,ff=true,mana=9,mc=0,minr=0,n="Blossom Wind",rad=6,rng=200,src="spell",te=true,tg=true,ty="wind",vlen=200,wu=3}
C.abilities["wh3_main_spell_yin_blossom_wind_upgraded"] = {ai="vortex_wind_ap",cd=45,dmg=26,dur=13,er=0,ff=true,mana=14,mc=0.5,minr=0,n="Blossom Wind Upgraded",rad=6,rng=200,src="spell",te=true,tg=true,ty="wind",upg=true,vlen=200,wu=3}
C.abilities["wh3_main_spell_yin_cloak_of_jet"] = {ai="augment_defense_ranged",cd=28,dur=29,er=0,fm=true,mana=4,mc=0,minr=0,n="Cloak of Jet",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="hiding",wu=1}
C.abilities["wh3_main_spell_yin_cloak_of_jet_upgraded"] = {ai="augment_defense_ranged",cd=28,dur=58,er=0,fm=true,mana=6,mc=0.5,minr=0,n="Cloak of Jet Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="hiding",upg=true,wu=1}
C.abilities["wh3_main_spell_yin_missile_mirror"] = {ai="hex_ranged",cd=44,dur=18,er=0,fm=true,mana=8,mc=0,minr=0,n="Missile Mirror",ne=1,rng=200,src="spell",te=true,ty="hex",wu=3}
C.abilities["wh3_main_spell_yin_missile_mirror_upgraded"] = {ai="hex_ranged",cd=44,dur=36,er=0,fm=true,mana=12,mc=0.5,minr=0,n="Missile Mirror Upgraded",ne=1,rng=400,src="spell",te=true,ty="hex",upg=true,wu=3}
C.abilities["wh3_main_spell_yin_storm_of_shadows"] = {ai="hex_speed_under_fire",cd=28,dur=29,er=0,mana=4,mc=0,minr=0,n="Storm of Shadows",ne=1,rng=200,src="spell",te=true,ty="hex",wu=1}
C.abilities["wh3_main_spell_yin_storm_of_shadows_upgraded"] = {ai="hex_speed_area",cd=28,dur=29,er=35,mana=8,mc=0.5,minr=0,n="Storm of Shadows Upgraded",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",upg=true,wu=1}
C.abilities["wh3_main_spell_yin_talons_of_night"] = {ai="aoe_ap",cd=50,dmg=5,dur=13,er=0,ff=true,mana=17,mc=0,minr=0,n="Talons of Night",ne=1,rad=15,rng=200,src="spell",te=true,tg=true,ty="vortex",wu=6}
C.abilities["wh3_main_spell_yin_talons_of_night_upgraded"] = {ai="aoe_ap",cd=50,dmg=8,dur=13,er=0,ff=true,mana=24,mc=0.5,minr=0,n="Talons of Night Upgraded",ne=1,rad=15,rng=200,src="spell",te=true,tg=true,ty="vortex",upg=true,wu=6}
C.abilities["wh3_main_unit_abilities_elemental_breath"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Elemental Breath",rad=3,rng=90,src="active",te=true,ty="magic_missiles",uses=3,wu=2.7}
C.abilities["wh3_main_unit_abilities_necrotic_explosion"] = {cd=0.1,dmg=16,dur=10.1,er=0,ff=true,mana=0,mc=0,minr=0,n="Necrotic Explosion",rad=15,rng=0,sa=true,src="active",ty="explosion",uses=1,wu=0}
C.abilities["wh3_main_unit_abilities_sky_junk_bomb"] = {ai="always_use_only_land",cd=30,dur=1,er=0,ff=true,mana=0,mc=0,minr=0,n="Sky-Junk Bomb",rad=7.5,rng=10,src="active",ty="bombardment",uses=3,wu=1}
C.abilities["wh3_main_unit_abilities_stun_bomb"] = {ai="being_charged",cd=90,dmg=0,dur=31,er=35,ff=true,mana=0,mc=0,minr=0,n="Heaven's Flash",ne=-1,rad=15,rng=75,src="active",tg=true,ty="area_of_hexes",uses=1,wu=0}
C.abilities["wh3_main_weapon_abilities_axe_of_tor"] = {ai="aoe_bombardment",cd=90,dur=4,er=0,ff=true,mana=0,mc=0,minr=0,n="Axe of Tor",rad=9,rng=200,src="active",te=true,tg=true,ty="bombardment",uses=3,wu=3}
C.abilities["wh3_main_weapon_abilities_banespear"] = {ai="hex_melee_area_self",cd=120,dur=21,er=35,mana=0,mc=0,minr=0,n="The Bane Spear",ne=-1,rng=0,src="active",ty="area_of_direct_damage",wu=0}
C.abilities["wh3_main_weapon_abilities_frost_fang"] = {ai="aoe_ap",cd=120,dmg=29,dur=5,er=0,ff=true,mana=0,mc=0,minr=0,n="Frost Fang",ne=1,rad=15,rng=200,src="active",te=true,tg=true,ty="explosion",uses=2,wu=5}
C.abilities["wh3_main_weapon_abilities_frost_shard_glaive"] = {ai="hex_melee_area_self",cd=120,dur=30,er=0,mana=0,mc=0,minr=0,n="Frost Shard Glaive",ne=1,rng=50,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_main_weapon_abilities_godkiller_pistol"] = {ai="projectile_homing_single",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Damned Pistol",rad=1,rng=100,src="active",te=true,ty="magic_missile",uses=2,wu=2.3}
C.abilities["wh3_main_weapon_abilities_nuku_chos_crossbow"] = {ai="projectile_explosive_ap",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Bolt Storm",rad=0.3,rng=250,src="active",te=true,ty="magic_missiles",wu=1}
C.abilities["wh3_main_weapon_abilities_sceptre_of_titans"] = {ai="augment_melee_self",cd=120,dur=21,er=0,mana=0,mc=0,minr=0,n="Sceptre of Titans",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_weapon_abilities_shard_blade"] = {ai="direct_damage_single_entity_area",cd=120,dur=15,er=15,mana=0,mc=0,minr=0,n="Shard Blade",ne=-1,rng=0,src="active",ty="area_of_direct_damage",uses=2,wu=0}
C.abilities["wh3_main_weapon_abilities_siegebreaker"] = {ai="aoe",cd=120,dur=1,er=0,ff=true,mana=0,mc=0,minr=0,n="Siegebreaker",rad=5.1,rng=100,src="active",te=true,tg=true,ty="explosion",uses=3,wu=5}
C.abilities["wh3_main_weapon_abilities_skars_kraken_killer"] = {ai="healing",cd=120,dur=29,er=0,heal=true,mana=0,mc=0,minr=0,n="Skar's Kraken-Killer",rng=0,sa=true,src="active",ty="regeneration",wu=0}
C.abilities["wh3_main_weapon_abilities_soulnetter"] = {ai="hex_melee",cd=120,dur=26,er=0,mana=0,mc=0,minr=0,n="Gilellion's Soulnetter",rng=50,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_main_weapon_abilities_staff_of_tomorrow"] = {ai="augment_spellcasting",cd=120,dur=29,er=0,mana=0,mc=0,minr=0,n="Staff of Tomorrow",rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh3_main_weapon_abilities_the_eternal_blade"] = {ai="augment_melee_self",cd=120,dur=21,er=0,mana=0,mc=0,minr=0,n="The Eternal Blade",nf=1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_weapon_abilities_the_tenderiser"] = {ai="augment_melee_self",cd=90,dur=25,er=0,mana=0,mc=0,minr=0,n="The Tenderiser",nf=1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_weapon_abilities_the_traitors_sword"] = {ai="aoe_bombardment",cd=90,dur=10,er=0,ff=true,mana=0,mc=0,minr=0,n="Wolf's Howl",rad=13,rng=200,src="active",te=true,ty="bombardment",uses=3,wu=0}
C.abilities["wh3_main_weapon_abilities_thundermace"] = {ai="aoe_centred_on_self",cd=90,dmg=72,dur=3,er=0,ff=true,mana=0,mc=0,minr=0,n="Thundermace",rad=10,rng=0,sa=true,src="active",ty="explosion",uses=3,wu=0}
C.abilities["wh3_main_weapon_abilities_torment_blade"] = {ai="hex_melee",cd=60,dur=18,er=0,mana=0,mc=0,minr=0,n="Torment Blade",ne=1,rng=50,src="active",te=true,ty="hex",wu=0}
C.abilities["wh3_main_weapon_abilities_ursuns_claws"] = {ai="augment_melee_self",cd=60,dur=19,er=0,mana=0,mc=0,minr=0,n="Manus of Ursun",nf=1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_main_weapon_abilities_witstealer_sword"] = {ai="augment_melee_self",cd=120,dur=17,er=0,mana=0,mc=0,minr=0,n="Witstealer Sword",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh3_pro10_cataclysm_fire_magma_storm_bound"] = {ai="aoe_ap",cd=120,dmg=28,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Magma Storm",rad=65,rng=-1,src="bound",tg=true,ty="vortex",uses=2,wu=5}
C.abilities["wh3_pro10_cataclysm_metal_gehennas_golden_globe_bound"] = {ai="vortex_wind",cd=120,dmg=100,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Gehenna's Golden Globe",rad=8,rng=-1,src="bound",tg=true,ty="wind",uses=2,vlen=140,wu=5}
C.abilities["wh3_pro11_weapon_abilities_the_hammer_of_harry"] = {ai="aoe_centred_on_self",cd=120,cm=true,dmg=36,dur=5,er=0,mana=0,mc=0,minr=0,n="The Hammer of Harry",ne=-1,rad=15,rng=0,sa=true,src="active",ty="explosion",wu=3}
C.abilities["wh3_pro12_hero_abilities_karanaks_howl"] = {ai="hex_ranged_summon",cd=120,dur=10,er=0,mana=0,mc=0,minr=0,n="Karanak's Howl",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh3_pro12_hero_abilities_prey_of_the_blood_god"] = {ai="hex_melee",cd=120,dur=22,er=0,mana=0,mc=0,minr=0,n="Prey of the Blood God",rng=100,src="active",te=true,ty="hex",uses=3,wu=0}
C.abilities["wh3_supplies_replenishment_ability_recharge_01"] = {ai="augment_spellcasting",cd=-1,dur=15,er=0,mana=0,mc=0,minr=0,n="Focus",rng=-1,sa=true,src="replenishments",ty="augment",wu=1}
C.abilities["wh3_supplies_replenishment_ammunition_01"] = {ai="ammo_replenish",cd=-1,dur=15,er=0,mana=0,mc=0,minr=0,n="Restock Ammunition",rng=-1,sa=true,src="replenishments",ty="augment",wu=1}
C.abilities["wh3_supplies_replenishment_encourage_01"] = {ai="augment_morale",cd=-1,dur=15,er=0,mana=0,mc=0,minr=0,n="Encouraging Words",rng=-1,sa=true,src="replenishments",ty="augment",wu=1}
C.abilities["wh3_supplies_replenishment_fatigue_01"] = {ai="augment_melee_healing",cd=-1,dur=15,er=0,mana=0,mc=0,minr=0,n="Restore Stamina",rng=-1,sa=true,src="replenishments",ty="augment",wu=1}
C.abilities["wh3_supplies_replenishment_full_restore_01"] = {ai="healing",cd=-1,dur=15,er=0,heal=true,mana=0,mc=0,minr=0,n="A Short Rest",rng=-1,sa=true,src="replenishments",ty="augment",wu=1}
C.abilities["wh3_supplies_replenishment_regen_01"] = {ai="healing",cd=-1,dur=20,er=0,heal=true,mana=0,mc=0,minr=0,n="Restore Health",rng=-1,sa=true,src="replenishments",ty="regeneration",wu=1}
C.abilities["wh3_supplies_replenishment_regen_magical_01"] = {ai="augment_spellcasting",cd=-1,dur=20,er=0,heal=true,mana=0,mc=0,minr=0,n="Restore the Immortal",rng=-1,sa=true,src="replenishments",ty="augment",wu=1}
C.abilities["wh3_supplies_replenishment_winds_of_magic_01"] = {ai="augment_spellcasting",cd=-1,dur=15,er=0,mana=0,mc=0,minr=0,n="Channel the Winds",rng=-1,sa=true,src="replenishments",ty="augment_of_the_winds",wu=1}
C.abilities["wh3_supplies_upgrade_armour_01"] = {ai="upgrade_armour",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Armour Upgrade (Bronze)",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_supplies_upgrade_armour_02"] = {ai="upgrade_armour",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Armour Upgrade (Silver)",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_supplies_upgrade_armour_03"] = {ai="upgrade_armour",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Armour Upgrade (Gold)",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_supplies_upgrade_missiles_01"] = {ai="upgrade_missiles",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Missiles Upgrade (Bronze)",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_supplies_upgrade_missiles_02"] = {ai="upgrade_missiles",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Missiles Upgrade (Silver)",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_supplies_upgrade_missiles_03"] = {ai="upgrade_missiles",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Missiles Upgrade (Gold)",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_supplies_upgrade_shields_01"] = {ai="upgrade_shields",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Shields Upgrade (Bronze)",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_supplies_upgrade_shields_02"] = {ai="upgrade_shields",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Shields Upgrade (Silver)",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_supplies_upgrade_shields_03"] = {ai="upgrade_shields",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Shields Upgrade (Gold)",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_supplies_upgrade_weapons_01"] = {ai="upgrade_weapons",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Weapons Upgrade (Bronze)",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_supplies_upgrade_weapons_02"] = {ai="upgrade_weapons",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Weapons Upgrade (Silver)",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_supplies_upgrade_weapons_03"] = {ai="upgrade_weapons",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Weapons Upgrade (Gold)",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_supplies_upgrade_weapons_imbue_01"] = {ai="upgrade_weapons",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Imbue Weapons: Magical",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_supplies_upgrade_weapons_imbue_02"] = {ai="upgrade_weapons",cd=-1,dur=0,er=0,mana=0,mc=0,minr=0,n="Imbue Weapons: Fire",rng=-1,sa=true,src="upgrades",ty="augment",wu=1}
C.abilities["wh3_twa06_unit_abilities_dazs_song_of_winter_sunlight"] = {ai="augment_melee_area",cd=90,dur=10,er=35,mana=0,mc=0,minr=0,n="Dazh's Song of Winter Sunlight",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",uses=1,wu=0}
C.abilities["wh3_twa06_unit_active_conduit_of_infinity"] = {ai="ammo_replenish",cd=-1,dur=13,er=55,mana=0,mc=0,minr=0,n="Conduit of Infinity",nf=-1,rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh3_twa07_spell_bound_call_of_tor"] = {ai="aoe_centred_on_self",cd=90,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Call of Tor",rad=29,rng=0,src="bound",ty="bombardment",wu=1}
C.abilities["wh3_twa07_unit_abilities_searing_torrent"] = {ai="always_use_only_land",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Searing Torrent",rad=6,rng=10,src="active",ty="bombardment",uses=5,wu=0}
C.abilities["wh3_twa08_spell_bound_enfeebling_foe_keeper_of_secrets_ror"] = {ai="hex_melee",cd=60,dur=17,er=0,mana=0,mc=0,minr=0,n="The Enfeebling Foe",ne=1,rng=200,src="bound",te=true,ty="hex",uses=2,wu=1}
C.abilities["wh3_twa08_spell_bound_heart_of_winter_elemental_bear_ror"] = {ai="direct_damage_multi_entity_area",cd=120,dur=32,er=30,mana=0,mc=0,minr=0,n="Heart of Winter",ne=-1,rng=0,src="spell",ty="area_of_direct_damage",uses=1,wu=5}
C.abilities["wh3_twa08_spell_bound_searing_doom"] = {ai="aoe_bombardment",cd=60,dur=8,er=0,ff=true,mana=0,mc=0,minr=0,n="Searing Doom",rad=13,rng=200,src="bound",te=true,tg=true,ty="bombardment",uses=2,wu=1}
C.abilities["wh3_twa08_spell_bound_spirit_leech_great_unclean_one_ror"] = {ai="direct_damage_single_entity",cd=60,dur=13,er=0,mana=0,mc=0,minr=0,n="Spirit Leech",ne=1,rng=100,src="bound",te=true,ty="direct_damage",uses=1,wu=1}
C.abilities["wh3_twa08_spell_bound_the_withering"] = {ai="hex_morale",cd=90,dur=40,er=0,mana=0,mc=0,minr=0,n="The Withering",ne=1,rng=200,src="bound",te=true,ty="hex",uses=1,wu=0}
C.abilities["wh3_twa08_unit_abilities_defiling_deluge"] = {ai="aoe_centred_on_self",cd=120,dur=6,er=35,heal=true,mana=0,mc=0,minr=0,n="Defiling Deluge",ne=-1,nf=1,rng=0,sa=true,src="active",ty="area_of_direct_damage",uses=2,wu=0}
C.abilities["wh3_twa08_unit_abilities_glacial_defence"] = {ai="augment_defense_ranged",cd=60,dur=21,er=0,mana=0,mc=0,minr=0,n="Glacial Defence",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_dlc01_item_passive_helm_of_many_eyes"] = {ai="augment_melee",cd=90,dur=22,er=0,mana=0,mc=0,minr=0,n="Helm of Many Eyes",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_dlc01_weapon_abilities_starcrusher"] = {ai="augment_melee_self",cd=120,dur=43,er=0,mana=0,mc=0,minr=0,n="Starcrusher",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_dlc01_weapon_abilities_sword_of_change"] = {ai="threatened",cd=90,dur=11,er=0,mana=0,mc=0,minr=0,n="Sword of Change",nf=1,rng=50,src="active",sum=true,tf=true,tg=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh_dlc01_weapon_abilities_the_slayer_of_kings"] = {ai="augment_melee_self",cd=120,dur=25,er=0,mana=0,mc=0,minr=0,n="The Slayer of Kings",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_dlc03_character_abilities_apocalyptic_vision"] = {ai="augment_melee_area",cd=90,dur=18,er=35,mana=0,mc=0,minr=0,n="Apocalyptic Vision",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_dlc03_character_abilities_blood_lust"] = {ai="augment_melee",cd=60,dur=33,er=0,mana=0,mc=0,minr=0,n="Blood Lust",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh_dlc03_character_abilities_call_of_violence"] = {ai="augment_morale_area",cd=60,dur=14,er=35,mana=0,mc=0,minr=0,n="Call of Violence",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_dlc03_character_abilities_deadly_onslaught"] = {ai="augment_charge_self",cd=90,dur=31,er=0,mana=0,mc=0,minr=0,n="Deadly Onslaught",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_dlc03_character_abilities_foe_seeker"] = {ai="augment_melee_self",cd=60,dur=25,er=0,mana=0,mc=0,minr=0,n="Foe-Seeker",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_dlc03_item_abilities_chalice_of_dark_rain"] = {ai="hex_ranged_area",cd=90,dur=89,er=35,mana=0,mc=0,minr=0,n="Chalice of Dark Rain",ne=-1,rng=200,src="active",te=true,tg=true,ty="area_of_hexes",wu=0}
C.abilities["wh_dlc03_item_abilities_hagtree_fetish"] = {ai="augment_spellcasting",cd=60,dur=29,er=0,mana=0,mc=0,minr=0,n="Hagtree Fetish",rng=0,sa=true,src="active",ty="area_of_augments",uses=1,wu=0}
C.abilities["wh_dlc03_item_abilities_horn_of_the_first_beast"] = {ai="augment_melee_area",cd=120,dur=35,er=55,mana=0,mc=0,minr=0,n="Horn of the First Beast",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_dlc03_item_abilities_jagged_dagger"] = {ai="augment_spellcasting",cd=60,dur=31,er=0,mana=0,mc=0,minr=0,n="Jagged Dagger",rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh_dlc03_item_abilities_skull_of_rarkos"] = {ai="augment_spellcasting",cd=120,dur=34,er=0,mana=0,mc=0,minr=0,n="Skull of Rarkos",rng=0,sa=true,src="active",ty="augment_of_the_winds",uses=3,wu=0}
C.abilities["wh_dlc03_spell_beasts_flock_of_doom"] = {ai="direct_damage_multi_entity_area",cd=45,dur=6,er=35,mana=6,mc=0,minr=0,n="Flock of Doom",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_direct_damage",wu=1}
C.abilities["wh_dlc03_spell_beasts_flock_of_doom_upgraded"] = {ai="direct_damage_multi_entity_area",cd=45,dur=13,er=35,mana=13,mc=0.5,minr=0,n="Flock of Doom Upgraded",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_direct_damage",upg=true,wu=1}
C.abilities["wh_dlc03_spell_beasts_panns_impenetrable_pelt"] = {ai="augment_defense_ranged",cd=43,dur=31,er=0,mana=7,mc=0,minr=0,n="Pann's Impenetrable Pelt",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh_dlc03_spell_beasts_panns_impenetrable_pelt_summoned"] = {ai="augment_defense_ranged",cd=43,dur=31,er=0,mana=7,mc=0,minr=0,n="Pann's Impenetrable Pelt",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh_dlc03_spell_beasts_panns_impenetrable_pelt_upgraded"] = {ai="augment_defense_ranged_area",cd=43,dur=31,er=35,mana=13,mc=0.5,minr=0,n="Pann's Impenetrable Pelt Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=3}
C.abilities["wh_dlc03_spell_beasts_the_amber_spear"] = {ai="projectile_explosive_ap",cd=43,dur=0,er=0,ff=true,mana=6,mc=0,minr=0,n="The Amber Spear",rad=2,rng=200,src="spell",te=true,ty="magic_missile",wu=3}
C.abilities["wh_dlc03_spell_beasts_the_amber_spear_upgraded"] = {ai="projectile_explosive_ap",cd=43,dur=0,er=0,ff=true,mana=10,mc=0.5,minr=0,n="The Amber Spear Upgraded",rad=4,rng=200,src="spell",te=true,ty="magic_missile",upg=true,wu=3}
C.abilities["wh_dlc03_spell_beasts_the_curse_of_anraheir"] = {ai="hex_melee_area",cd=47,dur=21,er=35,mana=11,mc=0,minr=0,n="The Curse of Anraheir",ne=-1,rng=200,src="spell",te=true,tg=true,ty="hex",wu=5}
C.abilities["wh_dlc03_spell_beasts_the_curse_of_anraheir_upgraded"] = {ai="hex_melee_area",cd=47,dur=21,er=55,mana=14,mc=0.5,minr=0,n="The Curse of Anraheir Upgraded",ne=-1,rng=200,src="spell",te=true,tg=true,ty="hex",upg=true,wu=5}
C.abilities["wh_dlc03_spell_beasts_transformation_of_kadon"] = {ai="threatened",cd=45,dur=1,er=0,mana=15,mc=0,minr=0,n="Transformation of Kadon",rng=50,sa=true,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=5}
C.abilities["wh_dlc03_spell_beasts_wyssans_wildform"] = {ai="augment_defense_melee",cd=28,dur=19,er=0,mana=4,mc=0,minr=0,n="Wyssan's Wildform",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh_dlc03_spell_beasts_wyssans_wildform_upgraded"] = {ai="augment_defense_melee_area",cd=28,dur=19,er=35,mana=8,mc=0.5,minr=0,n="Wyssan's Wildform Upgraded",nf=-1,rng=300,sa=true,src="spell",tf=true,tg=true,ts=true,ty="augment",upg=true,wu=1}
C.abilities["wh_dlc03_spell_bound_the_amber_spear"] = {ai="projectile_explosive_ap",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="The Amber Spear",rad=2,rng=200,src="bound",te=true,ty="magic_missile",uses=3,wu=0}
C.abilities["wh_dlc03_spell_bound_viletide"] = {ai="aoe",cd=60,dmg=23,dur=3,er=0,ff=true,mana=0,mc=0,minr=0,n="Viletide",ne=1,rad=15,rng=200,src="bound",te=true,tg=true,ty="explosion",uses=4,wu=3}
C.abilities["wh_dlc03_spell_wild_bray_scream"] = {ai="vortex_breath_ap",cd=29,dmg=16,dur=1,er=0,ff=true,mana=5,mc=0,minr=0,n="Bray-Scream",rad=14,rng=100,src="spell",te=true,tg=true,ty="breath",vlen=24,wu=1}
C.abilities["wh_dlc03_spell_wild_bray_scream_upgraded"] = {ai="vortex_breath",cd=29,dmg=24,dur=1,er=0,ff=true,mana=7,mc=0.5,minr=0,n="Bray-Scream Upgraded",rad=14,rng=200,src="spell",te=true,tg=true,ty="breath",upg=true,vlen=24,wu=1}
C.abilities["wh_dlc03_spell_wild_devolve"] = {ai="hex_melee",cd=30,dur=23,er=0,mana=4,mc=0,minr=0,n="Devolve",ne=1,rng=100,src="spell",te=true,ty="hex",wu=1}
C.abilities["wh_dlc03_spell_wild_devolve_upgraded"] = {ai="hex_melee_area",cd=30,dur=23,er=35,mana=8,mc=0.5,minr=0,n="Devolve Upgraded",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_hexes",upg=true,wu=1}
C.abilities["wh_dlc03_spell_wild_mantle_of_ghorok"] = {ai="augment_melee",cd=47,dur=26,er=0,mana=9,mc=0,minr=0,n="Mantle of Ghorok",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=5}
C.abilities["wh_dlc03_spell_wild_savage_dominion"] = {ai="artillery_opportunity",cd=48,dur=1,er=0,mana=15,mc=0,minr=0,n="Savage Dominion",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=5}
C.abilities["wh_dlc03_spell_wild_traitor_kin"] = {ai="direct_damage_single_entity_area",cd=39,dur=12,er=35,mana=11,mc=0,minr=0,n="Traitor-Kin",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_direct_damage",wu=3}
C.abilities["wh_dlc03_spell_wild_traitor_kin_upgraded"] = {ai="direct_damage_single_entity_area",cd=39,dur=12,er=35,mana=18,mc=0.5,minr=0,n="Traitor-Kin Upgraded",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_direct_damage",upg=true,wu=3}
C.abilities["wh_dlc03_spell_wild_viletide"] = {ai="aoe",cd=31,dmg=23,dur=3,er=0,ff=true,mana=7,mc=0,minr=0,n="Viletide",ne=1,rad=15,rng=200,src="spell",te=true,tg=true,ty="explosion",wu=3}
C.abilities["wh_dlc03_spell_wild_viletide_upgraded"] = {ai="aoe",cd=31,dmg=34,dur=3,er=0,ff=true,mana=10,mc=0.5,minr=0,n="Viletide Upgraded",ne=1,rad=15,rng=200,src="spell",te=true,tg=true,ty="explosion",upg=true,wu=3}
C.abilities["wh_dlc03_weapon_abilities_axe_of_men"] = {ai="augment_morale",cd=120,dur=46,er=0,mana=0,mc=0,minr=0,n="Axe of Men",rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_dlc03_weapon_abilities_hunting_spear"] = {ai="projectile_explosive_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Hunting Spear",rad=1,rng=200,src="active",te=true,ty="magic_missile",wu=0}
C.abilities["wh_dlc03_weapon_abilities_scourge"] = {ai="augment_melee_self",cd=120,dur=35,er=0,mana=0,mc=0,minr=0,n="Scourge",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_dlc04_item_abilities_the_carstein_ring"] = {ai="augment_melee",cd=120,dur=22,er=0,mana=0,mc=0,minr=0,n="The Carstein Ring",rng=0,sa=true,src="active",ty="ward_save",wu=0}
C.abilities["wh_dlc04_item_abilities_the_liber_noctus"] = {ai="augment_spellcasting",cd=120,dur=33,er=0,mana=0,mc=0,minr=0,n="The Liber Noctus",rng=0,sa=true,src="active",ty="augment",uses=2,wu=0}
C.abilities["wh_dlc04_lord_abilities_beguile"] = {ai="hex_melee",cd=90,dur=44,er=0,mana=0,mc=0,minr=0,n="Master of Beguilement",ne=1,rng=100,src="active",te=true,ty="hex",wu=0}
C.abilities["wh_dlc04_quest_abilities_servant_of_nagash"] = {ai="threatened",cd=8,dur=5,er=0,mana=0,mc=0,minr=0,n="Servants of Nagash",nf=1,rng=600,src="active",sum=true,tf=true,ts=true,ty="summon_unit",uses=15,wu=0}
C.abilities["wh_dlc04_spell_bound_banishment"] = {ai="vortex_ap",cd=120,dmg=7,dur=17,er=0,ff=true,mana=0,mc=0,minr=0,n="Banishment",rad=12,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=2,vlen=36,wu=5}
C.abilities["wh_dlc04_spell_bound_banishment_innate"] = {ai="vortex",cd=120,dmg=7,dur=17,er=0,ff=true,mana=0,mc=0,minr=0,n="Banishment",rad=12,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=2,vlen=36,wu=5}
C.abilities["wh_dlc04_spell_bound_hammer_of_sigmar_upgraded"] = {ai="augment_melee_area",cd=90,dur=50,er=35,mana=0,mc=0,minr=0,n="Grand Hammer of Sigmar",nf=-1,rng=0,sa=true,src="bound",ty="augment",upg=true,wu=0}
C.abilities["wh_dlc04_spell_bound_net_of_amyntok"] = {ai="hex_speed_under_fire",cd=90,dur=20,er=0,mana=0,mc=0,minr=0,n="Net of Amyntok",ne=1,rng=100,src="bound",te=true,ty="hex",uses=3,wu=3}
C.abilities["wh_dlc04_spell_bound_shield_of_faith_upgraded"] = {ai="augment_melee_area",cd=120,dur=50,er=55,mana=0,mc=0,minr=0,n="Grand Shield of Faith",nf=-1,rng=0,sa=true,src="bound",ty="area_of_ward_save",upg=true,wu=0}
C.abilities["wh_dlc04_spell_bound_soulfire_upgraded"] = {ai="aoe_centred_on_self",cd=120,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Grand Soulfire",rad=18,rng=0,src="bound",ty="bombardment",upg=true,wu=1}
C.abilities["wh_dlc04_spell_death_doom_and_darkness_strigoi"] = {ai="hex_morale",cd=43,dur=36,er=0,mana=5,mc=0,minr=0,n="Doom & Darkness",ne=1,rng=200,src="spell",te=true,ty="hex",wu=3}
C.abilities["wh_dlc04_spell_death_soulblight_strigoi"] = {ai="hex_melee_area",cd=45,dur=20,er=35,mana=8,mc=0,minr=0,n="Soulblight",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",wu=3}
C.abilities["wh_dlc04_spell_death_spirit_leech_strigoi"] = {ai="direct_damage_single_entity",cd=32,dur=13,er=0,mana=8,mc=0,minr=0,n="Spirit Leech",ne=1,rng=100,src="spell",te=true,ty="direct_damage",wu=1}
C.abilities["wh_dlc04_spell_vampires_curse_of_years_helman"] = {ai="hex_melee_area",cd=47,dur=35,er=35,mana=10,mc=0,minr=0,n="Curse of Years",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",wu=5}
C.abilities["wh_dlc04_spell_vampires_gaze_of_nagash_helman"] = {ai="projectile_homing_single_ap",cd=44,dur=0,er=0,ff=true,mana=8,mc=0,minr=0,n="Gaze of Nagash",rad=1,rng=250,src="spell",te=true,ty="magic_missiles",wu=3}
C.abilities["wh_dlc04_spell_vampires_gaze_of_nagash_strigoi"] = {ai="projectile_homing_single_ap",cd=44,dur=0,er=0,ff=true,mana=8,mc=0,minr=0,n="Gaze of Nagash",rad=1,rng=250,src="spell",te=true,ty="magic_missiles",wu=3}
C.abilities["wh_dlc04_spell_vampires_invocation_of_nehek_helman"] = {ai="healing",cd=30,dur=18,er=0,heal=true,mana=7,mc=0,minr=0,n="Invocation of Nehek",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="regeneration",wu=1}
C.abilities["wh_dlc04_spell_vampires_invocation_of_nehek_strigoi"] = {ai="healing",cd=30,dur=18,er=0,heal=true,mana=7,mc=0,minr=0,n="Invocation of Nehek",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="regeneration",wu=1}
C.abilities["wh_dlc04_spell_vampires_raise_dead_helman"] = {ai="assault_opportunity",cd=48,dur=1,er=0,mana=12,mc=0,minr=0,n="Awaken from the Grave",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=3}
C.abilities["wh_dlc04_spell_vampires_raise_dead_strigoi"] = {ai="assault_opportunity",cd=57,dur=1,er=0,mana=9,mc=0,minr=0,n="Command of the Unliving",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=3}
C.abilities["wh_dlc04_spell_vampires_raise_dead_upgraded_helman"] = {ai="assault_opportunity",cd=48,dur=1,er=0,mana=12,mc=0.5,minr=0,n="Awaken from the Grave Upgraded",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=3}
C.abilities["wh_dlc04_spell_vampires_raise_dead_upgraded_strigoi"] = {ai="assault_opportunity",cd=57,dur=1,er=0,mana=16,mc=0.5,minr=0,n="Command of the Unliving Upgraded",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=2,wu=3}
C.abilities["wh_dlc04_spell_vampires_vanhels_danse_macabre_helman"] = {ai="augment_melee",cd=28,dur=29,er=0,mana=4,mc=0,minr=0,n="Vanhel's Danse Macabre",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh_dlc04_spell_vampires_wind_of_death_helman"] = {ai="vortex_wind_ap",cd=44,dmg=24,dur=5,er=0,ff=true,mana=15,mc=0,minr=0,n="Wind of Death",rad=6,rng=150,src="spell",te=true,tg=true,ty="wind",vlen=100,wu=5}
C.abilities["wh_dlc05_character_abilities_prey_of_anath_raema"] = {ai="hex_melee",cd=90,dur=16,er=0,mana=0,mc=0,minr=0,n="Prey of Anath Raema",ne=1,rng=100,src="active",te=true,ty="hex",uses=3,wu=0}
C.abilities["wh_dlc05_hero_abilities_arrow_of_kurnous"] = {ai="projectile_explosive_ap",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Arrow of Kurnous",rad=4,rng=600,src="active",te=true,ty="magic_missiles",uses=3,wu=0}
C.abilities["wh_dlc05_item_abilities_hail_of_doom_arrow"] = {ai="projectile_homing_single",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Hail of Doom Arrow",rad=6,rng=200,src="active",te=true,ty="magic_missiles",uses=3,wu=0}
C.abilities["wh_dlc05_item_abilities_horn_of_the_wild_hunt"] = {ai="augment_melee_area",cd=120,dur=24,er=-1,mana=0,mc=0,minr=0,n="Horn of the Wild Hunt",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_dlc05_lord_abilities_lamentation_of_despair"] = {ai="projectile_explosive_ap",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Lamentation of Despairs",rad=5,rng=80,src="active",te=true,ty="magic_missiles",wu=1}
C.abilities["wh_dlc05_lord_abilities_spirit_essence_of_eternal_chaos"] = {ai="threatened",cd=20,dur=10,er=0,mana=0,mc=0,minr=0,n="Spirit-Essence of Eternal Chaos",ne=1,rng=400,src="passive",sum=true,te=true,ty="direct_damage",uses=20,wu=5}
C.abilities["wh_dlc05_lord_ablities_grey_wolves"] = {ai="vortex",cd=90,dmg=21,dur=13,er=0,ff=true,mana=0,mc=0,minr=0,n="Hounds of Orion",rad=7,rng=150,src="active",te=true,tg=true,ty="vortex",uses=3,vlen=39,wu=3}
C.abilities["wh_dlc05_spell_bound_shield_of_thorns"] = {ai="augment_charged_at",cd=90,dur=30,er=0,mana=0,mc=0,minr=0,n="Shield of Thorns",nf=1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="augment",uses=2,wu=0}
C.abilities["wh_dlc05_spell_bound_the_curse_of_anraheir"] = {ai="hex_melee_area",cd=120,dur=21,er=35,mana=0,mc=0,minr=0,n="The Curse of Anraheir",ne=-1,rng=200,src="bound",te=true,tg=true,ty="hex",uses=1,wu=0}
C.abilities["wh_dlc05_spell_life_awakening_of_the_wood"] = {ai="aoe",cd=31,dmg=19,dur=1,er=0,ff=true,mana=6,mc=0,minr=0,n="Awakening of the Wood",rad=15,rng=200,src="spell",te=true,tg=true,ty="explosion",wu=1}
C.abilities["wh_dlc05_spell_life_awakening_the_wood_branchwraith"] = {ai="aoe",cd=31,dmg=19,dur=1,er=0,ff=true,mana=6,mc=0,minr=0,n="Awakening of the Wood",rad=15,rng=200,src="spell",te=true,tg=true,ty="explosion",wu=1}
C.abilities["wh_dlc05_spell_life_earth_blood"] = {ai="healing_area",cd=30,dur=7,er=35,heal=true,mana=6,mc=0,minr=0,n="Earth Blood",nf=4,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_regeneration",wu=1}
C.abilities["wh_dlc05_spell_life_earth_blood_branchwraith"] = {ai="healing_area",cd=30,dur=7,er=35,heal=true,mana=6,mc=0,minr=0,n="Earth Blood",nf=4,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_regeneration",wu=1}
C.abilities["wh_dlc05_spell_life_earth_blood_upgraded"] = {ai="healing_area",cd=30,dur=14,er=35,heal=true,mana=11,mc=0.5,minr=0,n="Earth Blood Upgraded",nf=4,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_regeneration",upg=true,wu=1}
C.abilities["wh_dlc05_spell_life_flesh_to_stone"] = {ai="augment_melee",cd=43,dur=19,er=0,mana=8,mc=0,minr=0,n="Flesh to Stone",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh_dlc05_spell_life_flesh_to_stone_upgraded"] = {ai="augment_melee",cd=43,dur=38,er=0,mana=14,mc=0.5,minr=0,n="Flesh to Stone Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=3}
C.abilities["wh_dlc05_spell_life_regrowth"] = {ai="healing",cd=48,dur=26,er=0,heal=true,mana=13,mc=0,minr=0,n="Regrowth",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="regeneration",wu=5}
C.abilities["wh_dlc05_spell_life_regrowth_upgraded"] = {ai="healing",cd=48,dur=26,er=0,heal=true,mana=18,mc=0.5,minr=0,n="Regrowth Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="regeneration",upg=true,wu=5}
C.abilities["wh_dlc05_spell_life_shield_of_thorns"] = {ai="augment_charged_at",cd=44,dur=30,er=0,mana=7,mc=0,minr=0,n="Shield of Thorns",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh_dlc05_spell_life_shield_of_thorns_branchwraith"] = {ai="augment_charged_at",cd=44,dur=30,er=0,mana=7,mc=0,minr=0,n="Shield of Thorns",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh_dlc05_spell_life_shield_of_thorns_upgraded"] = {ai="augment_charged_at",cd=44,dur=30,er=0,mana=10,mc=0.5,minr=0,n="Shield of Thorns Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=3}
C.abilities["wh_dlc05_spell_life_the_dwellers_below"] = {ai="vortex_ap",cd=45,dmg=4,dur=15,er=0,ff=true,mana=17,mc=0,minr=0,n="The Dwellers Below",rad=26,rng=200,src="spell",te=true,tg=true,ty="vortex",wu=5}
C.abilities["wh_dlc05_spell_life_the_dwellers_below_upgraded"] = {ai="vortex_ap",cd=45,dmg=6,dur=15,er=0,ff=true,mana=24,mc=0.5,minr=0,n="The Dwellers Below Upgraded",rad=26,rng=200,src="spell",te=true,tg=true,ty="vortex",upg=true,wu=5}
C.abilities["wh_dlc05_spell_shadow_melkoths_mystifying_miasma"] = {ai="direct_damage_multi_entity",cd=29,dur=13,er=0,mana=6,mc=0,minr=0,n="Melkoth's Mystifying Miasma",ne=1,rng=100,src="spell",te=true,ty="direct_damage",wu=1}
C.abilities["wh_dlc05_spell_shadow_melkoths_mystifying_miasma_branchwraith"] = {ai="direct_damage_multi_entity",cd=29,dur=13,er=0,mana=6,mc=0,minr=0,n="Melkoth's Mystifying Miasma",ne=1,rng=100,src="spell",te=true,ty="direct_damage",wu=1}
C.abilities["wh_dlc05_spell_shadow_melkoths_mystifying_miasma_upgraded"] = {ai="direct_damage_multi_entity",cd=29,dur=13,er=0,mana=9,mc=0.5,minr=0,n="Melkoth's Mystifying Miasma Upgraded",ne=1,rng=300,src="spell",te=true,ty="direct_damage",upg=true,wu=1}
C.abilities["wh_dlc05_spell_shadow_okkams_mindrazor"] = {ai="augment_melee",cd=46,dur=32,er=0,mana=8,mc=0,minr=0,n="Okkam's Mindrazor",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=5}
C.abilities["wh_dlc05_spell_shadow_okkams_mindrazor_upgraded"] = {ai="augment_melee_area",cd=46,dur=32,er=35,mana=14,mc=0.5,minr=0,n="Okkam's Mindrazor Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=5}
C.abilities["wh_dlc05_spell_shadow_pit_of_shades"] = {ai="aoe_ap",cd=49,dmg=5,dur=13,er=0,ff=true,mana=15,mc=0,minr=0,n="Pit of Shades",ne=1,rad=15,rng=200,src="spell",te=true,tg=true,ty="vortex",wu=6}
C.abilities["wh_dlc05_spell_shadow_pit_of_shades_bound"] = {ai="aoe_ap",cd=49,dmg=5,dur=13,er=0,ff=true,mana=0,mc=0,minr=0,n="Pit of Shades",ne=1,rad=15,rng=200,src="bound",te=true,tg=true,ty="vortex",uses=1,wu=6}
C.abilities["wh_dlc05_spell_shadow_pit_of_shades_upgraded"] = {ai="aoe_ap",cd=49,dmg=8,dur=13,er=0,ff=true,mana=22,mc=0.5,minr=0,n="Pit of Shades Upgraded",ne=1,rad=15,rng=200,src="spell",te=true,tg=true,ty="vortex",upg=true,wu=6}
C.abilities["wh_dlc05_spell_shadow_the_enfeebling_foe"] = {ai="hex_melee",cd=30,dur=17,er=0,mana=6,mc=0,minr=0,n="The Enfeebling Foe",ne=1,rng=200,src="spell",te=true,ty="hex",wu=1}
C.abilities["wh_dlc05_spell_shadow_the_enfeebling_foe_upgraded"] = {ai="hex_melee",cd=30,dur=34,er=0,mana=10,mc=0.5,minr=0,n="The Enfeebling Foe Upgraded",ne=1,rng=200,src="spell",te=true,ty="hex",upg=true,wu=1}
C.abilities["wh_dlc05_spell_shadow_the_penumbral_pendulum"] = {ai="vortex_wind_ap",cd=40,dmg=36,dur=2,er=0,ff=true,mana=12,mc=0,minr=0,n="The Penumbral Pendulum",ne=1,rad=4,rng=200,src="spell",te=true,tg=true,ty="wind",vlen=80,wu=3}
C.abilities["wh_dlc05_spell_shadow_the_penumbral_pendulum_branchwraith"] = {ai="vortex_wind_ap",cd=40,dmg=36,dur=2,er=0,ff=true,mana=12,mc=0,minr=0,n="The Penumbral Pendulum",ne=1,rad=4,rng=200,src="spell",te=true,tg=true,ty="wind",vlen=80,wu=3}
C.abilities["wh_dlc05_spell_shadow_the_penumbral_pendulum_upgraded"] = {ai="vortex_wind_ap",cd=40,dmg=50,dur=2,er=0,ff=true,mana=16,mc=0.5,minr=0,n="The Penumbral Pendulum Upgraded",ne=1,rad=4,rng=200,src="spell",te=true,tg=true,ty="wind",upg=true,vlen=80,wu=3}
C.abilities["wh_dlc05_spell_shadow_the_withering"] = {ai="hex_morale",cd=43,dur=40,er=0,mana=5,mc=0,minr=0,n="The Withering",ne=1,rng=200,src="spell",te=true,ty="hex",wu=3}
C.abilities["wh_dlc05_spell_shadow_the_withering_branchwraith"] = {ai="hex_morale",cd=43,dur=40,er=0,mana=5,mc=0,minr=0,n="The Withering",ne=1,rng=200,src="spell",te=true,ty="hex",wu=3}
C.abilities["wh_dlc05_spell_shadow_the_withering_upgraded"] = {ai="hex_morale_area",cd=43,dur=40,er=35,mana=11,mc=0.5,minr=0,n="The Withering Upgraded",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",upg=true,wu=3}
C.abilities["wh_dlc05_unit_abilities_storm_of_blades"] = {cd=1,dur=0,er=0,mana=0,mc=0,minr=0,n="Storm of Blades",rng=0,sa=true,src="active",ty="augment",wu=1}
C.abilities["wh_dlc05_unit_abilities_the_shadows_coil"] = {ai="augment_defense_melee",cd=1,dur=0,er=0,mana=0,mc=0,minr=0,n="The Shadow's Coil",rng=0,sa=true,src="active",ty="augment",wu=1}
C.abilities["wh_dlc05_unit_abilities_woven_mist"] = {ai="augment_defense_ranged",cd=1,dur=0,er=0,mana=0,mc=0,minr=0,n="Woven Mist",rng=0,sa=true,src="active",ty="augment",wu=1}
C.abilities["wh_dlc05_weapon_abilities_daiths_sword"] = {ai="direct_damage_multi_entity_area",cd=120,dur=17,er=35,mana=0,mc=0,minr=0,n="Sword of Daith",ne=-1,rng=100,src="active",te=true,tg=true,ty="area_of_direct_damage",uses=2,wu=0}
C.abilities["wh_dlc05_weapon_abilities_el_syf"] = {ai="hex_melee",cd=90,dur=24,er=0,mana=0,mc=0,minr=0,n="El Syf",ne=1,rng=200,src="active",te=true,ty="hex",wu=0}
C.abilities["wh_dlc05_weapon_abilities_hawks_talon"] = {ai="aoe_bombardment",cd=90,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Hawk's Talon",rad=11,rng=200,src="active",te=true,tg=true,ty="bombardment",uses=3,wu=3}
C.abilities["wh_dlc05_weapon_abilities_spear_of_kurnous"] = {ai="projectile_homing_single",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Spear of Kurnous",rad=1,rng=200,src="active",te=true,ty="magic_missile",wu=0}
C.abilities["wh_dlc05_weapon_abilities_stave_of_ruinous_corruption"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Stave of Ruinous Corruption",rng=50,src="active",sum=true,te=true,tg=true,ty="summon_unit",uses=1,wu=5}
C.abilities["wh_dlc05_weapon_abilities_the_bow_of_loren"] = {ai="aoe_bombardment",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="The Bow of Loren",rad=13,rng=200,src="active",te=true,tg=true,ty="bombardment",wu=3}
C.abilities["wh_dlc06_character_abilities_effagee_of_da_git"] = {ai="direct_damage_single_entity",cd=120,dur=13,er=0,mana=0,mc=0,minr=0,n="'Effagee' of da Git",ne=1,rng=100,src="active",te=true,ty="direct_damage",uses=2,wu=0}
C.abilities["wh_dlc06_lord_abilities_mighty_oath_stone"] = {ai="augment_morale_area",cd=90,dur=25,er=55,mana=0,mc=0,minr=0,n="Mighty Oath Stone",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_dlc06_lord_abilities_revenge_incarnate"] = {ai="augment_melee_self",cd=120,dur=33,er=0,mana=0,mc=0,minr=0,n="Revenge Incarnate",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_dlc06_lord_abilities_spite_of_da_bad_moon"] = {ai="augment_self_area",cd=90,dur=20,er=35,mana=0,mc=0,minr=0,n="Spite of Da Bad Moon",nf=-1,rng=150,sa=true,src="active",tf=true,tg=true,ty="area_of_augments",wu=0}
C.abilities["wh_dlc06_lord_abilities_tricksy_traps"] = {ai="full_hide",cd=120,dur=32,er=35,mana=0,mc=0,minr=0,n="Tricksy Traps",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_dlc06_quest_abilities_grand_faiths_bastion"] = {ai="augment_defense_melee",cd=0,dur=60,er=-1,mana=0,mc=0,minr=0,n="Greater Faith Bastion",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",uses=1,wu=3}
C.abilities["wh_dlc06_rune_abilities_master_rune_of_negation"] = {ai="augment_defense_melee_area",cd=180,dur=40,er=0,mana=0,mc=0.5,minr=0,n="Master Rune of Negation",nf=1,rng=100,sa=true,src="rune",tf=true,ts=true,ty="ward_save",wu=3}
C.abilities["wh_dlc06_rune_abilities_master_rune_of_oath_and_steel"] = {ai="augment_self_area",cd=180,dur=44,er=35,mana=0,mc=0.5,minr=0,n="Master Rune of Oath & Steel",nf=-1,rng=100,sa=true,src="rune",tf=true,tg=true,ty="area_of_augments",wu=3}
C.abilities["wh_dlc06_rune_abilities_master_rune_of_wrath_and_ruin"] = {ai="aoe_ap",cd=180,dmg=30,dur=10,er=0,ff=true,mana=0,mc=0.5,minr=0,n="Master Rune of Wrath & Ruin",rad=15,rng=100,src="rune",te=true,tg=true,ty="explosion",wu=3}
C.abilities["wh_dlc06_spell_bound_vindictive_glare"] = {ai="projectile_homing_single",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Vindictive Glare",rad=1,rng=250,src="bound",te=true,ty="magic_missiles",uses=4,wu=1}
C.abilities["wh_dlc06_unit_abilities_marked_by_ulthar"] = {ai="hex_ranged",cd=120,dur=28,er=0,mana=0,mc=0,minr=0,n="Marked by Ulthar",ne=1,rng=150,src="active",te=true,ty="hex",wu=3}
C.abilities["wh_dlc06_unit_abilities_maternal_instinct"] = {ai="threatened",cd=60,dur=1,er=0,mana=0,mc=0,minr=0,n="Maternal Instinct",rng=50,src="active",sum=true,te=true,tg=true,ty="summon_unit",uses=5,wu=5}
C.abilities["wh_dlc06_unit_abilities_skyhammer_bomb"] = {ai="always_use_only_land",cd=0.1,dur=1,er=0,ff=true,mana=0,mc=0,minr=0,n="Skyhammer Bomb",rad=6.5,rng=10,src="active",ty="bombardment",uses=5,wu=0}
C.abilities["wh_dlc06_unit_abilities_skyhammer_fire_bomb"] = {ai="always_use_only_land",cd=0.1,dur=1,er=0,ff=true,mana=0,mc=0,minr=0,n="Skyhammer Fire Bomb",rad=7.5,rng=10,src="active",ty="bombardment",uses=5,wu=0}
C.abilities["wh_dlc06_unit_abilities_smoke_bomb"] = {ai="being_charged",cd=90,dmg=0,dur=21,er=35,ff=true,mana=0,mc=0,minr=0,n="Smoke Bomb",ne=-1,rad=15,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh_dlc06_unit_abilities_the_loons_of_eight_peaks"] = {ai="threatened",cd=30,dmg=18,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="The Loons of Eight Peaks",rad=4,rng=25,src="active",te=true,tg=true,ty="vortex",uses=3,vlen=84,wu=0}
C.abilities["wh_dlc06_weapon_abilities_skarsniks_prodder"] = {ai="projectile_explosive_ap",cd=120,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Skarsnik's Prodder",rad=8,rng=200,src="active",te=true,ty="magic_missiles",uses=2,wu=3}
C.abilities["wh_dlc07_character_abilities_heroic_killing_blow"] = {ai="augment_melee_self",cd=90,dur=25,er=0,mana=0,mc=0,minr=0,n="Heroic Killing Blow",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_dlc07_hero_abilities_dolorous_blade"] = {ai="augment_melee_self",cd=120,dur=33,er=0,mana=0,mc=0,minr=0,n="Dolorous Blade",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_dlc07_item_abilities_chalice_of_potions"] = {ai="aoe_bombardment",cd=120,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Chalice of Potions",rad=26,rng=200,src="active",te=true,tg=true,ty="bombardment",uses=2,wu=5}
C.abilities["wh_dlc07_item_abilities_wrath_of_manann"] = {ai="vortex_wind",cd=120,dmg=24,dur=5,er=0,ff=true,mana=0,mc=0,minr=0,n="Wrath of Manann",rad=6,rng=100,src="active",te=true,tg=true,ty="wind",uses=2,vlen=70,wu=5}
C.abilities["wh_dlc07_lord_abilities_favour_of_the_fay"] = {ai="augment_melee",cd=90,dur=44,er=0,mana=0,mc=0,minr=0,n="Favour of the Fay",nf=1,rng=100,src="active",tf=true,ty="augment",wu=0}
C.abilities["wh_dlc07_lord_abilities_lions_shield"] = {ai="augment_defense_ranged",cd=90,dur=22,er=0,mana=0,mc=0,minr=0,n="The Lion's Shield",rng=0,sa=true,src="active",ty="ward_save",wu=0}
C.abilities["wh_dlc07_unit_formation_lance"] = {ai="augment_charge_self",cd=-1,dur=0,er=0,fm=true,mana=0,mc=0,minr=0,n="Lance",rng=0,sa=true,src="active",ty="formation",wu=0}
C.abilities["wh_dlc08_character_abilities_hunter_of_champions"] = {ai="hex_melee",cd=90,dur=24,er=0,mana=0,mc=0,minr=0,n="Hunter of Champions",rng=100,src="active",te=true,ty="hex",wu=0}
C.abilities["wh_dlc08_item_abilities_ancient_frost_wyrm_scale"] = {ai="always_use_only_land",cd=120,dmg=18,dur=24,er=0,ff=true,mana=0,mc=0,minr=0,n="Ancient Chaos Frost Dragon Scale",ne=-1,rad=7,rng=30,src="active",te=true,tg=true,ty="vortex",vlen=24,wu=1}
C.abilities["wh_dlc08_item_abilities_arachnarok_eggs"] = {ai="hex_melee",cd=60,dur=1,er=0,mana=0,mc=0,minr=0,n="Arachnarok Eggs",rng=50,src="active",sum=true,te=true,tg=true,ty="summon_unit",uses=5,wu=0}
C.abilities["wh_dlc08_item_abilities_great_horn_of_dragon_ogre"] = {ai="aoe_bombardment",cd=120,dur=20,er=0,ff=true,mana=0,mc=0,minr=0,n="Dragon Ogre's Great Horn",nf=1,rad=31,rng=200,sa=true,src="active",te=true,tg=true,ty="bombardment",uses=2,wu=0}
C.abilities["wh_dlc08_item_abilities_terrorgheist_skull"] = {ai="augment_spellcasting",cd=120,dur=44,er=0,mana=0,mc=0,minr=0,n="Terrorgheist Skull",nf=1,rng=100,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh_dlc08_item_abilities_the_wintertooth_crown"] = {ai="augment_morale_area",cd=120,dur=24,er=55,mana=0,mc=0,minr=0,n="The Wintertooth Crown",nf=-1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_dlc08_item_abilities_vial_of_troll_blood"] = {ai="augment_melee_self",cd=90,dur=73,er=0,mana=0,mc=0,minr=0,n="Vial of Troll Blood",nf=1,rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh_dlc08_lord_abilities_copious_vomit"] = {ai="projectile_explosive",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Copious Vomit",rad=5,rng=60,src="active",te=true,ty="magic_missile",uses=3,wu=0}
C.abilities["wh_dlc08_lord_abilities_fight_or_die"] = {ai="augment_morale_area",cd=90,dur=18,er=35,mana=0,mc=0,minr=0,n="Fight or Die!",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_dlc08_lord_abilities_seafang"] = {ai="vortex_wind",cd=90,dmg=56,dur=8,er=0,ff=true,mana=0,mc=0,minr=0,n="Seafang",rad=4,rng=150,src="active",te=true,tg=true,ty="wind",uses=3,vlen=95,wu=4}
C.abilities["wh_dlc08_lord_abilities_seduction_of_the_serpent"] = {ai="augment_melee",cd=90,dur=17,er=0,mana=0,mc=0,minr=0,n="Seduction of the Serpent",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_dlc08_quest_abilities_howling_winter"] = {ai="always_use_only_land",cd=3,dmg=18,dur=27,er=0,ff=true,mana=0,mc=0,minr=0,n="Howling Winter",ne=-1,rad=6,rng=30,src="active",te=true,tg=true,ty="vortex",vlen=27,wu=1}
C.abilities["wh_dlc08_quest_abilities_master_of_souls"] = {ai="qb_master_of_souls",cd=5,dur=2,er=0,mana=1,mc=0,minr=0,n="Master of Souls",rng=600,sa=true,src="active",sum=true,tf=true,ts=true,ty="summon_unit",uses=40,wu=1}
C.abilities["wh_dlc08_spell_bound_death_doom_and_darkness"] = {ai="hex_morale",cd=90,dur=36,er=0,mana=0,mc=0,minr=0,n="Doom & Darkness",ne=1,rng=200,src="bound",te=true,ty="hex",uses=3,wu=0}
C.abilities["wh_dlc08_spell_bound_flock_of_doom"] = {ai="direct_damage_multi_entity_area",cd=60,dur=6,er=35,mana=0,mc=0,minr=0,n="Flock of Doom",ne=-1,rng=100,src="bound",te=true,tg=true,ty="direct_damage",uses=4,wu=0}
C.abilities["wh_dlc08_spell_bound_the_dwellers_below"] = {ai="vortex_ap",cd=120,dmg=4,dur=15,er=0,ff=true,mana=0,mc=0,minr=0,n="The Dwellers Below",rad=26,rng=200,src="bound",te=true,tg=true,ty="vortex",uses=2,wu=5}
C.abilities["wh_dlc08_spell_death_aspect_of_the_dreadknight_arzik"] = {ai="augment_morale",cd=29,dur=16,er=0,mana=4,mc=0,minr=0,n="Aspect of the Dread Knight",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh_dlc08_spell_death_soulblight_arzik"] = {ai="hex_melee_area",cd=45,dur=20,er=35,mana=8,mc=0,minr=0,n="Soulblight",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",wu=3}
C.abilities["wh_dlc08_spell_death_the_fate_of_bjuna_arzik"] = {ai="direct_damage_multi_entity",cd=52,dur=18,er=0,mana=22,mc=0,minr=0,n="The Fate of Bjuna",ne=1,rng=100,src="spell",te=true,ty="direct_damage",wu=5}
C.abilities["wh_dlc08_spell_fire_fireball_kihar"] = {ai="projectile_homing_single",cd=29,dur=0,er=0,ff=true,mana=5,mc=0,minr=0,n="Fireball",rad=5,rng=300,src="spell",te=true,ty="magic_missile",wu=1}
C.abilities["wh_dlc08_spell_fire_flaming_sword_of_rhuin_kihar"] = {ai="augment_melee_area",cd=44,dur=28,er=35,mana=7,mc=0,minr=0,n="Flaming Sword of Rhuin",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",wu=3}
C.abilities["wh_dlc08_spell_metal_final_transmutation_arzik"] = {ai="direct_damage_single_entity_area",cd=54,dur=8,er=35,mana=17,mc=0,minr=0,n="Final Transmutation",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_direct_damage",wu=5}
C.abilities["wh_dlc08_spell_metal_gehennas_golden_hounds_arzik"] = {ai="vortex",cd=45,dmg=15,dur=13,er=0,ff=true,mana=8,mc=0,minr=0,n="Gehenna's Golden Hounds",rad=7,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=26,wu=3}
C.abilities["wh_dlc08_spell_metal_plague_of_rust_kihar"] = {ai="hex_armour",cd=28,dur=44,er=0,mana=4,mc=0,minr=0,n="Plague of Rust",ne=1,rng=200,src="spell",te=true,ty="hex",wu=1}
C.abilities["wh_dlc08_spell_metal_searing_doom_arzik"] = {ai="aoe_bombardment",cd=30,dur=8,er=0,ff=true,mana=6,mc=0,minr=0,n="Searing Doom",rad=13,rng=200,src="spell",te=true,tg=true,ty="bombardment",wu=1}
C.abilities["wh_dlc08_spell_metal_transmutation_of_lead_kihar"] = {ai="hex_melee_area",cd=47,dur=50,er=35,mana=11,mc=0,minr=0,n="Transmutation of Lead",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",wu=5}
C.abilities["wh_dlc08_spell_shadow_pit_of_shades_kihar"] = {ai="aoe_ap",cd=49,dmg=5,dur=13,er=0,ff=true,mana=15,mc=0,minr=0,n="Pit of Shades",ne=1,rad=15,rng=200,src="spell",te=true,tg=true,ty="vortex",wu=6}
C.abilities["wh_dlc08_spell_shadow_the_penumbral_pendulum_kihar"] = {ai="vortex_wind_ap",cd=40,dmg=36,dur=2,er=0,ff=true,mana=12,mc=0,minr=0,n="The Penumbral Pendulum",ne=1,rad=4,rng=200,src="spell",te=true,tg=true,ty="wind",vlen=80,wu=3}
C.abilities["wh_dlc08_weapon_abilities_stinky_giant_club"] = {ai="augment_melee_self",cd=120,dur=57,er=0,mana=0,mc=0.1,minr=0,n="Stinky Giant Club",nf=1,rng=0,sa=true,src="active",ty="explosion",wu=0}
C.abilities["wh_dlc08_weapon_abilities_sword_of_torgald"] = {ai="augment_melee_self",cd=120,dur=44,er=0,mana=0,mc=0,minr=0,n="Sword of Torgald",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_character_abilities_blood_lust"] = {ai="augment_melee",cd=60,dur=33,er=0,mana=0,mc=0,minr=0,n="Blood Lust",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh_main_character_abilities_deadly_onslaught"] = {ai="augment_charge_self",cd=90,dur=31,er=0,mana=0,mc=0,minr=0,n="Deadly Onslaught",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_character_abilities_foe_seeker"] = {ai="augment_melee_self",cd=60,dur=25,er=0,mana=0,mc=0,minr=0,n="Foe-Seeker",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_character_abilities_foe_seeker_summoned"] = {ai="augment_melee_self",cd=60,dur=25,er=0,mana=0,mc=0,minr=0,n="Foe-Seeker",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_character_abilities_get_back_ere"] = {ai="augment_morale_area",cd=60,dur=14,er=35,mana=0,mc=0,minr=0,n="Get Back 'Ere!",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_main_character_abilities_heroic_killing_blow"] = {ai="augment_melee_self",cd=90,dur=25,er=0,mana=0,mc=0,minr=0,n="Heroic Killing Blow",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_character_abilities_magical_animus"] = {ai="augment_morale",cd=60,dur=14,er=35,mana=0,mc=0,minr=0,n="Magical Animus",nf=-1,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_character_abilities_rally"] = {ai="augment_morale_area",cd=60,dur=14,er=35,mana=0,mc=0,minr=0,n="Rally!",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_main_character_abilities_red_fury"] = {ai="augment_melee",cd=90,dur=31,er=0,mana=0,mc=0,minr=0,n="Red Fury",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh_main_character_abilities_stand_or_die"] = {ai="augment_melee_area",cd=90,dur=18,er=35,mana=0,mc=0,minr=0,n="Stand or Die!",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_main_character_abilities_stand_your_ground"] = {ai="augment_melee_area",cd=90,dur=18,er=35,mana=0,mc=0,minr=0,n="Stand Your Ground!",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_main_character_abilities_undeath_resurgent"] = {ai="augment_melee_area",cd=90,dur=18,er=35,mana=0,mc=0,minr=0,n="Undeath Resurgent",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_main_character_abilities_waaagh"] = {ai="augment_melee_area",cd=90,dur=30,er=-1,mana=0,mc=0,minr=0,n="Waaagh!",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_main_hero_abilities_accusation"] = {ai="hex_melee",cd=90,dur=35,er=0,mana=0,mc=0,minr=0,n="Accusation",ne=1,rng=75,src="active",te=true,ty="hex",wu=0}
C.abilities["wh_main_hero_abilities_ballistics_calibration"] = {ai="augment_ranged_area",cd=90,dur=22,er=55,mana=0,mc=0,minr=0,n="Ballistics Calibration",nf=-1,rng=55,sa=true,src="active",tg=true,ty="area_of_augments",wu=0}
C.abilities["wh_main_hero_abilities_faiths_bastion"] = {ai="augment_defense_melee",cd=60,dur=22,er=0,mana=0,mc=0,minr=0,n="Faith's Bastion",rng=0,sa=true,src="active",ty="area_of_ward_save",wu=0}
C.abilities["wh_main_hero_abilities_immortal_will"] = {ai="healing",cd=60,dur=13,er=0,heal=true,mana=0,mc=0,minr=0,n="Immortal Will",rng=0,sa=true,src="active",ty="regeneration",wu=0}
C.abilities["wh_main_hero_abilities_mad_cap_mushrooms"] = {ai="augment_defense_melee",cd=90,dur=50,er=0,mana=0,mc=0.25,minr=0,n="Mad Cap Mushrooms",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_hero_abilities_slippery"] = {ai="augment_melee_self",cd=60,dur=25,er=0,mana=0,mc=0,minr=0,n="Slippery",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_item_abilities_black_periapt"] = {ai="augment_spellcasting",cd=120,dur=27,er=0,mana=0,mc=0,minr=0,n="Black Periapt",rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh_main_item_abilities_channelling_staff"] = {ai="augment_spellcasting",cd=60,dur=29,er=0,mana=0,mc=0,minr=0,n="Channelling Staff",nf=1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_main_item_abilities_cloak_of_mists_and_shadows"] = {ai="augment_melee_self",cd=120,dur=29,er=0,mana=0,mc=0,minr=0,n="Cloak of Mists & Shadows",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_item_abilities_crown_of_command"] = {ai="augment_morale",cd=90,dur=30,er=0,mana=0,mc=0,minr=0,n="Crown of Command",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh_main_item_abilities_daemonic_strength"] = {ai="augment_melee_self",cd=60,dur=22,er=0,mana=0,mc=0,minr=0,n="Daemonic Strength",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh_main_item_abilities_dark_fortune"] = {ai="augment_melee_self",cd=60,dur=57,er=0,mana=0,mc=0,minr=0,n="Dark Fortune",rng=0,sa=true,src="active",ty="ward_save",uses=1,wu=0}
C.abilities["wh_main_item_abilities_earthing_rod"] = {ai="augment_spellcasting",cd=60,dur=36,er=0,mana=0,mc=0,minr=0,n="Earthing Rod",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh_main_item_abilities_fiery_ring_of_thori"] = {ai="vortex_breath",cd=90,dmg=36,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Fiery Ring of Thori",rad=6,rng=100,src="active",te=true,tg=true,ty="breath",uses=3,vlen=72,wu=1}
C.abilities["wh_main_item_abilities_forbidden_rod"] = {ai="augment_spellcasting",cd=90,dur=23,er=0,mana=0,mc=0,minr=0,n="Forbidden Rod",rng=0,sa=true,src="active",ty="augment_of_the_winds",uses=3,wu=0}
C.abilities["wh_main_item_abilities_opal_amulet"] = {ai="augment_melee_self",cd=60,dur=22,er=0,mana=0,mc=0,minr=0,n="Opal Amulet",rng=0,sa=true,src="active",ty="ward_save",wu=0}
C.abilities["wh_main_item_abilities_pendant_of_slaanesh"] = {ai="augment_melee_self",cd=60,dur=25,er=0,mana=0,mc=0,minr=0,n="Pendant of Slaanesh",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_item_abilities_potion_of_foolhardiness"] = {ai="augment_morale",cd=60,dur=31,er=0,mana=0,mc=0,minr=0,n="Potion of Foolhardiness",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh_main_item_abilities_potion_of_healing"] = {ai="healing_single_use",cd=60,dur=33,er=0,heal=true,mana=0,mc=0,minr=0,n="Potion of Healing",rng=0,sa=true,src="active",ty="regeneration",uses=1,wu=0}
C.abilities["wh_main_item_abilities_potion_of_speed"] = {ai="augment_defense_ranged",cd=60,dur=36,er=0,mana=0,mc=0,minr=0,n="Potion of Speed",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh_main_item_abilities_potion_of_strength"] = {ai="augment_melee_self",cd=60,dur=33,er=0,mana=0,mc=0,minr=0,n="Potion of Strength",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh_main_item_abilities_potion_of_toughness"] = {ai="augment_melee_self",cd=60,dur=21,er=0,heal=true,mana=0,mc=0,minr=0,n="Potion of Toughness",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh_main_item_abilities_power_stone"] = {ai="augment_spellcasting",cd=60,dur=31,er=0,mana=0,mc=0,minr=0,n="Power Stone",rng=0,sa=true,src="active",ty="augment_of_the_winds",uses=1,wu=0}
C.abilities["wh_main_item_abilities_regenerating_flesh"] = {ai="healing",cd=60,dur=33,er=0,heal=true,mana=0,mc=0,minr=0,n="Regenerating Flesh",rng=0,sa=true,src="active",ty="regeneration",uses=1,wu=0}
C.abilities["wh_main_item_abilities_sceptre_of_stability"] = {ai="augment_defense_ranged",cd=60,dur=22,er=0,mana=0,mc=0,minr=0,n="Sceptre of Stability",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="ward_save",wu=0}
C.abilities["wh_main_item_abilities_scroll_of_leeching"] = {ai="hex_spellcaster",cd=60,dur=44,er=0,mana=0,mc=0,minr=0,n="Scroll of Leeching",ne=1,rng=100,src="active",te=true,ty="hex_of_the_winds",uses=1,wu=0}
C.abilities["wh_main_item_abilities_scroll_of_power"] = {ai="healing",cd=0,dur=57,er=0,mana=0,mc=0,minr=0,n="Scroll of Power",rng=0,sa=true,src="active",ty="augment",uses=1,wu=0}
C.abilities["wh_main_item_abilities_scroll_of_shielding"] = {ai="augment_defense_melee",cd=60,dur=57,er=0,mana=0,mc=0,minr=0,n="Scroll of Shielding",nf=1,rng=100,sa=true,src="active",tf=true,ts=true,ty="ward_save",uses=1,wu=0}
C.abilities["wh_main_item_abilities_silver_horn_of_vengeance"] = {ai="augment_self_area",cd=60,dur=22,er=35,mana=0,mc=0,minr=0,n="Silver Horn of Vengeance",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_main_item_abilities_skull_of_katam"] = {ai="augment_melee",cd=60,dur=13,er=0,mana=0,mc=0,minr=0,n="Skull of Katam",rng=0,sa=true,src="active",ty="hex_of_the_winds",uses=1,wu=0}
C.abilities["wh_main_item_abilities_skull_wand_of_kaloth"] = {ai="augment_melee_self",cd=120,dur=27,er=0,mana=0,mc=0,minr=0,n="Skull Wand of Kaloth",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_item_abilities_staff_of_volans"] = {ai="augment_spellcasting",cd=120,dur=30,er=0,mana=0,mc=0,minr=0,n="Staff of Volans",rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh_main_item_abilities_tricksters_shard"] = {ai="hex_spellcaster",cd=90,dur=16,er=35,mana=0,mc=0,minr=0,n="Trickster's Shard",ne=-1,rng=500,src="active",te=true,tg=true,ty="area_of_hexes",wu=0}
C.abilities["wh_main_item_abilities_van_horstmanns_speculum"] = {ai="hex_melee_area",cd=90,dur=16,er=35,mana=0,mc=0,minr=0,n="Van Horstmann's Speculum",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh_main_item_abilities_wand_of_jet"] = {ai="augment_spellcasting",cd=60,dur=57,er=0,mana=0,mc=0,minr=0,n="Wand of Jet",rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh_main_lord_abilities_lord_of_the_storm"] = {ai="aoe_bombardment",cd=90,dur=11,er=0,ff=true,mana=0,mc=0,minr=0,n="Lord of the Storm",rad=14,rng=200,src="active",te=true,tg=true,ty="bombardment",uses=3,wu=1}
C.abilities["wh_main_lord_abilities_master_of_the_black_arts"] = {ai="augment_spellcasting",cd=90,dur=15,er=0,mana=0,mc=0,minr=0,n="Master of the Black Arts",rng=0,sa=true,src="active",ty="augment_of_the_winds",wu=0}
C.abilities["wh_main_rune_abilities_rune_of_negation"] = {ai="augment_defense_melee_area",cd=120,dur=24,er=0,mana=0,mc=0,minr=0,n="Rune of Negation",nf=1,rng=100,sa=true,src="rune",tf=true,ts=true,ty="ward_save",wu=3}
C.abilities["wh_main_rune_abilities_rune_of_oath_and_steel"] = {ai="augment_defense_melee_area",cd=120,dur=44,er=35,mana=0,mc=0,minr=0,n="Rune of Oath & Steel",nf=-1,rng=100,sa=true,src="rune",tf=true,tg=true,ty="area_of_augments",wu=3}
C.abilities["wh_main_rune_abilities_rune_of_wrath_and_ruin"] = {ai="aoe",cd=120,dmg=25,dur=10,er=0,ff=true,mana=0,mc=0,minr=0,n="Rune of Wrath & Ruin",rad=15,rng=100,src="rune",te=true,tg=true,ty="explosion",wu=3}
C.abilities["wh_main_spell_big_waaagh_brain_bursta"] = {ai="aoe",cd=31,dmg=23,dur=14,er=0,ff=true,mana=7,mc=0,minr=0,n="Brain Bursta",rad=15,rng=200,src="spell",te=true,tg=true,ty="explosion",wu=1}
C.abilities["wh_main_spell_big_waaagh_brain_bursta_upgraded"] = {ai="aoe",cd=31,dmg=34,dur=14,er=0,ff=true,mana=10,mc=0.5,minr=0,n="Brain Bursta Upgraded",rad=15,rng=200,src="spell",te=true,tg=true,ty="explosion",upg=true,wu=1}
C.abilities["wh_main_spell_big_waaagh_eadbutt"] = {ai="vortex_breath",cd=45,dmg=32,dur=8,er=0,ff=true,mana=5,mc=0,minr=0,n="'Eadbutt",rad=14,rng=150,src="spell",te=true,tg=true,ty="breath",vlen=25,wu=3}
C.abilities["wh_main_spell_big_waaagh_eadbutt_upgraded"] = {ai="vortex_breath",cd=45,dmg=44,dur=8,er=0,ff=true,mana=9,mc=0.5,minr=0,n="'Eadbutt Upgraded",rad=14,rng=150,src="spell",te=true,tg=true,ty="breath",upg=true,vlen=25,wu=3}
C.abilities["wh_main_spell_big_waaagh_ere_we_go"] = {ai="augment_melee_area",cd=47,dur=38,er=35,mana=11,mc=0,minr=0,n="'Ere We Go",nf=-1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="area_of_augments",wu=5}
C.abilities["wh_main_spell_big_waaagh_fists_of_gork"] = {ai="augment_melee",cd=43,dur=35,er=0,mana=7,mc=0,minr=0,n="Fists of Gork",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh_main_spell_big_waaagh_foot_of_gork"] = {ai="aoe_ap",cd=54,dmg=48,dur=8,er=0,ff=true,mana=18,mc=0,minr=0,n="Foot of Gork",rad=20,rng=200,src="spell",te=true,tg=true,ty="explosion",wu=5}
C.abilities["wh_main_spell_big_waaagh_foot_of_gork_upgraded"] = {ai="aoe_ap",cd=54,dmg=72,dur=8,er=0,ff=true,mana=26,mc=0.5,minr=0,n="Foot of Gork Upgraded",rad=20,rng=200,src="spell",te=true,tg=true,ty="explosion",upg=true,wu=5}
C.abilities["wh_main_spell_big_waaagh_gaze_of_mork"] = {ai="projectile_homing_single",cd=29,dur=0,er=0,ff=true,mana=5,mc=0,minr=0,n="Gaze of Mork",rad=2,rng=200,src="spell",te=true,ty="magic_missiles",wu=1}
C.abilities["wh_main_spell_big_waaagh_gaze_of_mork_upgraded"] = {ai="projectile_homing_single",cd=29,dur=0,er=0,ff=true,mana=7,mc=0.5,minr=0,n="Gaze of Mork Upgraded",rad=4,rng=200,src="spell",te=true,ty="magic_missiles",upg=true,wu=1}
C.abilities["wh_main_spell_bound_bironas_timewarp"] = {ai="augment_melee_area",cd=47,dur=50,er=35,mana=0,mc=0,minr=0,n="Birona's Timewarp",nf=-1,rng=200,sa=true,src="bound",tf=true,tg=true,ts=true,ty="area_of_augments",uses=1,wu=5}
C.abilities["wh_main_spell_bound_book_of_arkhan"] = {ai="augment_melee",cd=60,dur=25,er=0,mana=0,mc=0,minr=0,n="Book of Arkhan",nf=1,rng=100,sa=true,src="bound",tf=true,ts=true,ty="augment",uses=4,wu=0}
C.abilities["wh_main_spell_bound_chain_lightning_ror"] = {ai="aoe_ap",cd=60,dmg=13,dur=20,er=0,ff=true,mana=0,mc=0,minr=0,n="Chain Lightning",rad=10,rng=150,src="bound",te=true,tg=true,ty="vortex",uses=1,vlen=42,wu=5}
C.abilities["wh_main_spell_bound_fireball"] = {ai="projectile_homing_single",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Fireball",rad=5,rng=300,src="bound",te=true,ty="magic_missile",uses=4,wu=0}
C.abilities["wh_main_spell_bound_hammer_of_sigmar"] = {ai="augment_melee_area",cd=60,dur=25,er=35,mana=0,mc=0,minr=0,n="Hammer of Sigmar",nf=-1,rng=0,sa=true,src="bound",ty="area_of_augments",wu=0}
C.abilities["wh_main_spell_bound_piercing_bolts_of_burning"] = {ai="aoe_bombardment",cd=120,dur=8,er=0,ff=true,mana=0,mc=0,minr=0,n="Piercing Bolts of Burning",rad=11,rng=200,src="bound",te=true,tg=true,ty="bombardment",uses=4,wu=0}
C.abilities["wh_main_spell_bound_shield_of_faith"] = {ai="augment_defense_melee_area",cd=90,dur=25,er=55,mana=0,mc=0,minr=0,n="Shield of Faith",nf=-1,rng=0,sa=true,src="bound",ty="area_of_ward_save",wu=0}
C.abilities["wh_main_spell_bound_soulfire"] = {ai="aoe_centred_on_self",cd=90,dur=7,er=0,ff=true,mana=0,mc=0,minr=0,n="Soulfire",rad=18,rng=0,src="bound",ty="bombardment",wu=1}
C.abilities["wh_main_spell_bound_staff_of_damnation"] = {ai="augment_self_area",cd=90,dur=25,er=35,mana=0,mc=0,minr=0,n="Staff of Damnation",nf=-1,rng=200,sa=true,src="bound",tf=true,ts=true,ty="area_of_augments",uses=3,wu=0}
C.abilities["wh_main_spell_death_aspect_of_the_dreadknight"] = {ai="augment_morale",cd=29,dur=16,er=0,mana=4,mc=0,minr=0,n="Aspect of the Dread Knight",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh_main_spell_death_aspect_of_the_dreadknight_upgraded"] = {ai="augment_morale",cd=29,dur=32,er=35,mana=8,mc=0.5,minr=0,n="Aspect of the Dread Knight Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="augment",upg=true,wu=1}
C.abilities["wh_main_spell_death_doom_and_darkness"] = {ai="hex_morale",cd=43,dur=36,er=0,mana=5,mc=0,minr=0,n="Doom & Darkness",ne=1,rng=200,src="spell",te=true,ty="hex",wu=3}
C.abilities["wh_main_spell_death_doom_and_darkness_upgraded"] = {ai="hex_morale_area",cd=43,dur=36,er=35,mana=10,mc=0.5,minr=0,n="Doom & Darkness Upgraded",ne=-1,rng=200,src="spell",te=true,tg=true,ty="hex",upg=true,wu=3}
C.abilities["wh_main_spell_death_soulblight"] = {ai="hex_melee_area",cd=45,dur=20,er=35,mana=7,mc=0,minr=0,n="Soulblight",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",wu=3}
C.abilities["wh_main_spell_death_soulblight_upgraded"] = {ai="hex_melee_area",cd=45,dur=40,er=35,mana=13,mc=0.5,minr=0,n="Soulblight Upgraded",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",upg=true,wu=3}
C.abilities["wh_main_spell_death_spirit_leech"] = {ai="direct_damage_single_entity",cd=32,dur=13,er=0,mana=8,mc=0,minr=0,n="Spirit Leech",ne=1,rng=100,src="spell",te=true,ty="direct_damage",wu=1}
C.abilities["wh_main_spell_death_spirit_leech_upgraded"] = {ai="direct_damage_single_entity",cd=32,dur=13,er=0,mana=11,mc=0.5,minr=0,n="Spirit Leech Upgraded",ne=1,rng=300,src="spell",te=true,ty="direct_damage",upg=true,wu=1}
C.abilities["wh_main_spell_death_the_fate_of_bjuna"] = {ai="direct_damage_multi_entity",cd=52,dur=18,er=0,mana=22,mc=0,minr=0,n="The Fate of Bjuna",ne=1,rng=100,src="spell",te=true,ty="direct_damage",wu=5}
C.abilities["wh_main_spell_death_the_purple_sun_of_xereus"] = {ai="vortex_ap",cd=54,dmg=15,dur=11,er=0,ff=true,mana=18,mc=0,minr=0,n="The Purple Sun of Xereus",rad=12,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=22,wu=5}
C.abilities["wh_main_spell_death_the_purple_sun_of_xereus_upgraded"] = {ai="vortex_ap",cd=54,dmg=15,dur=11,er=0,ff=true,mana=24,mc=0.5,minr=0,n="The Purple Sun of Xereus Upgraded",rad=12,rng=150,src="spell",te=true,tg=true,ty="vortex",upg=true,vlen=44,wu=5}
C.abilities["wh_main_spell_fire_cascading_fire_cloak"] = {ai="augment_melee",cd=28,dur=19,er=0,mana=4,mc=0,minr=0,n="Cascading Fire Cloak",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh_main_spell_fire_fireball"] = {ai="projectile_homing_single",cd=29,dur=0,er=0,ff=true,mana=5,mc=0,minr=0,n="Fireball",rad=5,rng=300,src="spell",te=true,ty="magic_missile",wu=1}
C.abilities["wh_main_spell_fire_fireball_upgraded"] = {ai="projectile_homing_single",cd=29,dur=0,er=0,ff=true,mana=9,mc=0.5,minr=0,n="Fireball Upgraded",rad=6,rng=300,src="spell",te=true,ty="magic_missile",upg=true,wu=1}
C.abilities["wh_main_spell_fire_flame_storm"] = {ai="vortex",cd=50,dmg=17,dur=27,er=0,ff=true,mana=13,mc=0,minr=0,n="Flame Storm",rad=10,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=54,wu=5}
C.abilities["wh_main_spell_fire_flame_storm_upgraded"] = {ai="vortex",cd=50,dmg=22,dur=54,er=0,ff=true,mana=20,mc=0.5,minr=0,n="Flame Storm Upgraded",rad=10,rng=150,src="spell",te=true,tg=true,ty="vortex",upg=true,vlen=108,wu=5}
C.abilities["wh_main_spell_fire_flaming_sword_of_rhuin"] = {ai="augment_melee_area",cd=44,dur=28,er=35,mana=7,mc=0,minr=0,n="Flaming Sword of Rhuin",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",wu=3}
C.abilities["wh_main_spell_fire_flaming_sword_of_rhuin_upgraded"] = {ai="augment_melee_area",cd=44,dur=56,er=35,mana=11,mc=0.5,minr=0,n="Flaming Sword of Rhuin Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=3}
C.abilities["wh_main_spell_fire_piercing_bolts_of_burning"] = {ai="aoe_bombardment",cd=47,dur=8,er=0,ff=true,mana=10,mc=0,minr=0,n="Piercing Bolts of Burning",rad=11,rng=200,src="spell",te=true,tg=true,ty="bombardment",wu=5}
C.abilities["wh_main_spell_fire_piercing_bolts_of_burning_upgraded"] = {ai="aoe_bombardment",cd=47,dur=8,er=0,ff=true,mana=16,mc=0.5,minr=0,n="Piercing Bolts of Burning Upgraded",rad=19,rng=200,src="spell",te=true,tg=true,ty="bombardment",upg=true,wu=5}
C.abilities["wh_main_spell_fire_the_burning_head"] = {ai="vortex_wind",cd=37,dmg=20,dur=20,er=0,ff=true,mana=10,mc=0,minr=0,n="The Burning Head",rad=7,rng=150,src="spell",te=true,tg=true,ty="wind",vlen=180,wu=3}
C.abilities["wh_main_spell_fire_the_burning_head_upgraded"] = {ai="vortex_wind",cd=37,dmg=30,dur=20,er=0,ff=true,mana=16,mc=0.5,minr=0,n="The Burning Head Upgraded",rad=7,rng=150,src="spell",te=true,tg=true,ty="wind",upg=true,vlen=180,wu=3}
C.abilities["wh_main_spell_heavens_chain_lightning"] = {ai="vortex_ap",cd=50,dmg=13,dur=20,er=0,ff=true,mana=14,mc=0,minr=0,n="Chain Lightning",rad=10,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=42,wu=5}
C.abilities["wh_main_spell_heavens_comet_of_casandora"] = {ai="aoe_bombardment",cd=49,dur=7,er=0,ff=true,mana=13,mc=0,minr=0,n="Comet of Casandora",rad=28,rng=200,src="spell",te=true,tg=true,ty="bombardment",wu=5}
C.abilities["wh_main_spell_heavens_comet_of_casandora_summoned"] = {ai="aoe_bombardment",cd=49,dur=7,er=0,ff=true,mana=13,mc=0,minr=0,n="Comet of Casandora",rad=28,rng=200,src="spell",te=true,tg=true,ty="bombardment",wu=5}
C.abilities["wh_main_spell_heavens_comet_of_casandora_upgraded"] = {ai="aoe_bombardment",cd=49,dur=7,er=0,ff=true,mana=20,mc=0.5,minr=0,n="Comet of Casandora Upgraded",rad=28,rng=200,src="spell",te=true,tg=true,ty="bombardment",upg=true,wu=5}
C.abilities["wh_main_spell_heavens_curse_of_the_midnight_wind"] = {ai="hex_melee_area",cd=38,dur=25,er=35,mana=8,mc=0,minr=0,n="Curse of the Midnight Wind",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",wu=3}
C.abilities["wh_main_spell_heavens_curse_of_the_midnight_wind_upgraded"] = {ai="hex_melee_area",cd=38,dur=50,er=35,mana=14,mc=0.5,minr=0,n="Curse of the Midnight Wind Upgraded",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",upg=true,wu=3}
C.abilities["wh_main_spell_heavens_harmonic_convergence"] = {ai="augment_melee",cd=30,dur=27,er=0,mana=5,mc=0,minr=0,n="Harmonic Convergence",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh_main_spell_heavens_harmonic_convergence_upgraded"] = {ai="augment_melee",cd=30,dur=40,er=0,mana=8,mc=0.5,minr=0,n="Harmonic Convergence Upgraded",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=1}
C.abilities["wh_main_spell_heavens_urannons_thunderbolt"] = {ai="aoe_bombardment",cd=42,dur=4,er=0,ff=true,mana=6,mc=0,minr=0,n="Urannon's Thunderbolt",rad=9,rng=300,src="spell",te=true,tg=true,ty="bombardment",wu=3}
C.abilities["wh_main_spell_heavens_urannons_thunderbolt_upgraded"] = {ai="aoe_bombardment",cd=42,dur=4,er=0,ff=true,mana=10,mc=0.5,minr=0,n="Urannon's Thunderbolt Upgraded",rad=9,rng=300,src="spell",te=true,tg=true,ty="bombardment",upg=true,wu=3}
C.abilities["wh_main_spell_heavens_wind_blast"] = {ai="vortex_breath",cd=32,dmg=20,dur=2,er=0,ff=true,mana=5,mc=0,minr=0,n="Wind Blast",rad=12,rng=100,src="spell",te=true,tg=true,ty="breath",vlen=48,wu=1}
C.abilities["wh_main_spell_heavens_wind_blast_summoned"] = {ai="vortex_breath",cd=32,dmg=20,dur=2,er=0,ff=true,mana=5,mc=0,minr=0,n="Wind Blast",rad=12,rng=100,src="spell",te=true,tg=true,ty="breath",vlen=48,wu=1}
C.abilities["wh_main_spell_heavens_wind_blast_upgraded"] = {ai="vortex_breath",cd=32,dmg=30,dur=2,er=0,ff=true,mana=8,mc=0.5,minr=0,n="Wind Blast Upgraded",rad=12,rng=100,src="spell",te=true,tg=true,ty="breath",upg=true,vlen=48,wu=1}
C.abilities["wh_main_spell_light_banishment"] = {ai="vortex_ap",cd=54,dmg=7,dur=17,er=0,ff=true,mana=15,mc=0,minr=0,n="Banishment",rad=12,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=36,wu=5}
C.abilities["wh_main_spell_light_banishment_upgraded"] = {ai="vortex_ap",cd=54,dmg=14,dur=17,er=0,ff=true,mana=20,mc=0.5,minr=0,n="Banishment Upgraded",rad=12,rng=150,src="spell",te=true,tg=true,ty="vortex",upg=true,vlen=36,wu=5}
C.abilities["wh_main_spell_light_bironas_timewarp"] = {ai="augment_melee_area",cd=47,dur=50,er=35,mana=11,mc=0,minr=0,n="Birona's Timewarp",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",wu=5}
C.abilities["wh_main_spell_light_bironas_timewarp_upgraded"] = {ai="augment_melee_area",cd=47,dur=50,er=55,mana=14,mc=0.5,minr=0,n="Birona's Timewarp Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=5}
C.abilities["wh_main_spell_light_light_of_battle"] = {ai="augment_morale_area",cd=43,dur=22,er=35,mana=6,mc=0,minr=0,n="Light of Battle",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",wu=3}
C.abilities["wh_main_spell_light_light_of_battle_upgraded"] = {ai="augment_morale_area",cd=43,dur=44,er=35,mana=10,mc=0.5,minr=0,n="Light of Battle Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=3}
C.abilities["wh_main_spell_light_net_of_amyntok"] = {ai="hex_speed_under_fire",cd=38,dur=20,er=0,mana=9,mc=0,minr=0,n="Net of Amyntok",ne=1,rng=100,src="spell",te=true,ty="hex",wu=3}
C.abilities["wh_main_spell_light_net_of_amyntok_upgraded"] = {ai="hex_speed_under_fire",cd=38,dur=20,er=35,mana=18,mc=0.5,minr=0,n="Net of Amyntok Upgraded",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_hexes",upg=true,wu=3}
C.abilities["wh_main_spell_light_phas_protection"] = {ai="augment_melee",cd=29,dur=22,er=0,mana=5,mc=0,minr=0,n="Pha's Protection",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh_main_spell_light_phas_protection_upgraded"] = {ai="augment_melee_area",cd=29,dur=22,er=35,mana=10,mc=0.5,minr=0,n="Pha's Protection Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="augment",upg=true,wu=1}
C.abilities["wh_main_spell_light_shems_burning_gaze"] = {ai="projectile_homing_single_ap",cd=30,dur=0,er=0,ff=true,mana=5,mc=0,minr=0,n="Shem's Burning Gaze",rad=1,rng=250,src="spell",te=true,ty="magic_missiles",wu=1}
C.abilities["wh_main_spell_light_shems_burning_gaze_bound"] = {ai="projectile_homing_single_ap",cd=60,dur=0,er=0,ff=true,mana=0,mc=0,minr=0,n="Shem's Burning Gaze",rad=1,rng=250,src="bound",te=true,ty="magic_missiles",uses=3,wu=3}
C.abilities["wh_main_spell_light_shems_burning_gaze_upgraded"] = {ai="projectile_homing_single_ap",cd=30,dur=0,er=0,ff=true,mana=9,mc=0.5,minr=0,n="Shem's Burning Gaze Upgraded",rad=1,rng=250,src="spell",te=true,ty="magic_missiles",upg=true,wu=1}
C.abilities["wh_main_spell_lil_waaagh_curse_of_da_bad_moon"] = {ai="vortex",cd=47,dmg=16,dur=22,er=0,ff=true,mana=11,mc=0,minr=0,n="Curse of Da Bad Moon",rad=7,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=66,wu=5}
C.abilities["wh_main_spell_lil_waaagh_curse_of_da_bad_moon_upgraded"] = {ai="vortex",cd=47,dmg=16,dur=44,er=0,ff=true,mana=16,mc=0.5,minr=0,n="Curse of Da Bad Moon Upgraded",rad=7,rng=150,src="spell",te=true,tg=true,ty="vortex",upg=true,vlen=88,wu=5}
C.abilities["wh_main_spell_lil_waaagh_gorkll_fix_it"] = {ai="hex_speed_area",cd=43,dur=24,er=35,mana=6,mc=0,minr=0,n="Gork'll Fix It",ne=-1,rng=200,src="spell",te=true,tg=true,ty="hex",wu=3}
C.abilities["wh_main_spell_lil_waaagh_itchy_nuisance"] = {ai="hex_melee_area",cd=44,dur=25,er=35,mana=8,mc=0,minr=0,n="Itchy Nuisance",ne=-1,rng=200,src="spell",te=true,tg=true,ty="hex",wu=3}
C.abilities["wh_main_spell_lil_waaagh_night_shroud"] = {ai="full_hide",cd=48,dur=60,er=35,fm=true,mana=6,mc=0,minr=0,n="Night Shroud",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="hiding",wu=5}
C.abilities["wh_main_spell_lil_waaagh_night_shroud_upgraded"] = {ai="full_hide",cd=48,dur=60,er=55,fm=true,mana=8,mc=0.5,minr=0,n="Night Shroud Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="hiding",upg=true,wu=5}
C.abilities["wh_main_spell_lil_waaagh_sneaky_stabbin"] = {ai="augment_melee",cd=28,dur=40,er=0,mana=4,mc=0,minr=0,n="Sneaky Stabbin'",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh_main_spell_lil_waaagh_vindictive_glare"] = {ai="projectile_homing_single",cd=29,dur=0,er=0,ff=true,mana=5,mc=0,minr=0,n="Vindictive Glare",rad=1,rng=250,src="spell",te=true,ty="magic_missiles",wu=1}
C.abilities["wh_main_spell_lil_waaagh_vindictive_glare_upgraded"] = {ai="projectile_homing_single",cd=29,dur=0,er=0,ff=true,mana=7,mc=0.5,minr=0,n="Vindictive Glare Upgraded",rad=1,rng=250,src="spell",te=true,ty="magic_missiles",upg=true,wu=1}
C.abilities["wh_main_spell_metal_final_transmutation"] = {ai="direct_damage_single_entity_area",cd=54,dur=8,er=35,mana=17,mc=0,minr=0,n="Final Transmutation",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_direct_damage",wu=5}
C.abilities["wh_main_spell_metal_final_transmutation_upgraded"] = {ai="direct_damage_single_entity_area",cd=54,dur=16,er=35,mana=26,mc=0.5,minr=0,n="Final Transmutation Upgraded",ne=-1,rng=100,src="spell",te=true,tg=true,ty="area_of_direct_damage",upg=true,wu=5}
C.abilities["wh_main_spell_metal_gehennas_golden_hounds"] = {ai="vortex",cd=45,dmg=15,dur=13,er=0,ff=true,mana=8,mc=0,minr=0,n="Gehenna's Golden Hounds",rad=7,rng=150,src="spell",te=true,tg=true,ty="vortex",vlen=26,wu=3}
C.abilities["wh_main_spell_metal_gehennas_golden_hounds_upgraded"] = {ai="vortex",cd=45,dmg=15,dur=26,er=0,ff=true,mana=12,mc=0.5,minr=0,n="Gehenna's Golden Hounds Upgraded",rad=10,rng=150,src="spell",te=true,tg=true,ty="vortex",upg=true,vlen=52,wu=3}
C.abilities["wh_main_spell_metal_glittering_robe"] = {ai="augment_defense_melee",cd=42,dur=44,er=0,mana=5,mc=0,minr=0,n="Glittering Robe",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=3}
C.abilities["wh_main_spell_metal_glittering_robe_upgraded"] = {ai="augment_defense_melee_area",cd=42,dur=44,er=35,mana=10,mc=0.5,minr=0,n="Glittering Robe Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_augments",upg=true,wu=3}
C.abilities["wh_main_spell_metal_plague_of_rust"] = {ai="hex_armour",cd=28,dur=44,er=0,mana=4,mc=0,minr=0,n="Plague of Rust",ne=1,rng=200,src="spell",te=true,ty="hex",wu=1}
C.abilities["wh_main_spell_metal_plague_of_rust_upgraded"] = {ai="hex_armour",cd=28,dur=44,er=0,mana=6,mc=0.5,minr=0,n="Plague of Rust Upgraded",ne=1,rng=200,src="spell",te=true,ty="hex",upg=true,wu=1}
C.abilities["wh_main_spell_metal_searing_doom"] = {ai="aoe_bombardment",cd=30,dur=8,er=0,ff=true,mana=6,mc=0,minr=0,n="Searing Doom",rad=13,rng=200,src="spell",te=true,tg=true,ty="bombardment",wu=1}
C.abilities["wh_main_spell_metal_searing_doom_upgraded"] = {ai="aoe_bombardment",cd=30,dur=8,er=0,ff=true,mana=10,mc=0.5,minr=0,n="Searing Doom Upgraded",rad=23,rng=200,src="spell",te=true,tg=true,ty="bombardment",upg=true,wu=1}
C.abilities["wh_main_spell_metal_transmutation_of_lead"] = {ai="hex_melee_area",cd=47,dur=50,er=35,mana=11,mc=0,minr=0,n="Transmutation of Lead",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",wu=5}
C.abilities["wh_main_spell_metal_transmutation_of_lead_upgraded"] = {ai="hex_melee_area",cd=47,dur=50,er=35,mana=16,mc=0.5,minr=0,n="Transmutation of Lead Upgraded",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",upg=true,wu=5}
C.abilities["wh_main_spell_vampires_curse_of_years"] = {ai="hex_melee_area",cd=47,dur=35,er=35,mana=10,mc=0,minr=0,n="Curse of Years",ne=-1,rng=200,src="spell",te=true,tg=true,ty="area_of_hexes",wu=5}
C.abilities["wh_main_spell_vampires_gaze_of_nagash"] = {ai="projectile_homing_single_ap",cd=44,dur=0,er=0,ff=true,mana=8,mc=0,minr=0,n="Gaze of Nagash",rad=1,rng=250,src="spell",te=true,ty="magic_missiles",wu=3}
C.abilities["wh_main_spell_vampires_gaze_of_nagash_upgraded"] = {ai="projectile_homing_single_ap",cd=44,dur=0,er=0,ff=true,mana=15,mc=0.5,minr=0,n="Gaze of Nagash Upgraded",rad=1,rng=250,src="spell",te=true,ty="magic_missiles",upg=true,wu=3}
C.abilities["wh_main_spell_vampires_invocation_of_nehek"] = {ai="healing",cd=30,dur=18,er=0,heal=true,mana=7,mc=0,minr=0,n="Invocation of Nehek",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="regeneration",wu=1}
C.abilities["wh_main_spell_vampires_invocation_of_nehek_upgraded"] = {ai="healing_area",cd=30,dur=18,er=35,heal=true,mana=13,mc=0.5,minr=0,n="Invocation of Nehek Upgraded",nf=4,rng=200,sa=true,src="spell",tf=true,tg=true,ts=true,ty="area_of_regeneration",upg=true,wu=1}
C.abilities["wh_main_spell_vampires_raise_dead"] = {ai="threatened",cd=39,dur=1,er=0,mana=5,mc=0,minr=0,n="Raise Dead",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=7,wu=3}
C.abilities["wh_main_spell_vampires_raise_dead_upgraded"] = {ai="threatened",cd=39,dur=1,er=0,mana=6,mc=0.5,minr=0,n="Raise Dead Upgraded",rng=50,src="spell",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",upg=true,uses=7,wu=3}
C.abilities["wh_main_spell_vampires_vanhels_danse_macabre"] = {ai="augment_melee",cd=28,dur=29,er=0,mana=4,mc=0,minr=0,n="Vanhel's Danse Macabre",nf=1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",wu=1}
C.abilities["wh_main_spell_vampires_vanhels_danse_macabre_upgraded"] = {ai="augment_melee_area",cd=28,dur=29,er=35,mana=8,mc=0.5,minr=0,n="Vanhel's Danse Macabre Upgraded",nf=-1,rng=200,sa=true,src="spell",tf=true,ts=true,ty="augment",upg=true,wu=1}
C.abilities["wh_main_spell_vampires_wind_of_death"] = {ai="vortex_wind_ap",cd=44,dmg=24,dur=5,er=0,ff=true,mana=15,mc=0,minr=0,n="Wind of Death",rad=6,rng=150,src="spell",te=true,tg=true,ty="wind",vlen=100,wu=5}
C.abilities["wh_main_spell_vampires_wind_of_death_upgraded"] = {ai="vortex_wind_ap",cd=44,dmg=72,dur=5,er=0,ff=true,mana=20,mc=0.5,minr=0,n="Wind of Death Upgraded",rad=8,rng=150,src="spell",te=true,tg=true,ty="wind",upg=true,vlen=100,wu=5}
C.abilities["wh_main_unit_abilities_blooood"] = {ai="augment_defense_melee",cd=60,dur=18,er=0,mana=0,mc=0,minr=0,n="Blooood!",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_unit_abilities_boom"] = {ai="augment_ranged",cd=90,dur=15,er=0,mana=0,mc=0,minr=0,n="Boom!",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_unit_abilities_entrenchment"] = {ai="augment_ranged",cd=90,cm=true,dur=44,er=0,mana=0,mc=0,minr=0,n="Entrenchment",nf=1,rng=150,sa=true,src="active",tf=true,ts=true,ty="augment",wu=0}
C.abilities["wh_main_unit_abilities_gyrobomber_bomb"] = {ai="always_use_only_land",cd=0.1,dur=0.1,er=0,ff=true,mana=0,mc=0,minr=0,n="Gyrobomber Bomb",rad=6.5,rng=10,src="active",ty="bombardment",uses=11,wu=0}
C.abilities["wh_main_unit_abilities_gyrocopter_bomb"] = {ai="always_use_only_land",cd=0.1,dur=0.1,er=0,ff=true,mana=0,mc=0,minr=0,n="Gyrocopter Bomb",rad=7,rng=10,src="active",ty="bombardment",uses=2,wu=0}
C.abilities["wh_main_unit_abilities_killing_blow"] = {ai="augment_melee_self",cd=60,dur=13,er=0,mana=0,mc=0,minr=0,n="Killing Blow",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_unit_abilities_spinning_loons"] = {ai="threatened",cd=30,dmg=18,dur=12,er=0,ff=true,mana=0,mc=0,minr=0,n="Spinning Loons",rad=4,rng=25,src="active",te=true,tg=true,ty="vortex",uses=3,vlen=84,wu=0}
C.abilities["wh_main_weapon_abilities_axe_of_dargo"] = {ai="augment_melee_self",cd=120,dur=29,er=0,mana=0,mc=0,minr=0,n="Axe of Dargo",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_weapon_abilities_charmed_shield"] = {ai="augment_defense_ranged",cd=60,dur=17,er=0,mana=0,mc=0,minr=0,n="Charmed Shield",rng=0,sa=true,src="active",ty="ward_save",wu=0}
C.abilities["wh_main_weapon_abilities_filth_mace"] = {ai="augment_melee_self",cd=90,dur=30,er=0,mana=0,mc=0,minr=0,n="Filth Mace",ne=5,rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_weapon_abilities_ghal_maraz"] = {ai="augment_melee_self",cd=120,dur=39,er=0,mana=0,mc=0,minr=0,n="Ghal Maraz",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_weapon_abilities_gitsnik"] = {ai="augment_melee_self",cd=120,dur=33,er=0,mana=0,mc=0,minr=0,n="Gitsnik",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_weapon_abilities_hellfire_sword"] = {ai="augment_melee_self",cd=90,dur=42,er=0,mana=0,mc=0,minr=0,n="Hellfire Sword",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_weapon_abilities_helm_of_discord"] = {ai="hex_melee_area",cd=90,dur=25,er=35,mana=0,mc=0,minr=0,n="Helm of Discord",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh_main_weapon_abilities_runefang"] = {ai="augment_melee_self",cd=120,dur=33,er=0,mana=0,mc=0,minr=0,n="Runefang",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_weapon_abilities_skabscrath"] = {ai="vortex_breath",cd=90,dmg=36,dur=17,er=0,ff=true,mana=0,mc=0,minr=0,n="Skabscrath",rad=6,rng=25,src="active",te=true,tg=true,ty="breath",uses=3,vlen=72,wu=0}
C.abilities["wh_main_weapon_abilities_sword_of_anti_heroes"] = {ai="augment_melee_self",cd=90,dur=40,er=0,mana=0,mc=0,minr=0,n="Sword of Anti-Heroes",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_weapon_abilities_the_hammer_of_karak_drazh"] = {ai="hex_melee",cd=90,dur=50,er=0,mana=0,mc=0,minr=0,n="The Hammer of Karak Drazh",ne=1,rng=50,src="active",te=true,ty="hex",wu=0}
C.abilities["wh_main_weapon_abilities_the_mace_of_helsturm"] = {ai="augment_melee_self",cd=90,dur=40,er=0,mana=0,mc=0,minr=0,n="The Mace of Helsturm",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_main_weapon_abilities_the_reikland_runefang"] = {ai="augment_melee_area",cd=120,dur=39,er=35,mana=0,mc=0,minr=0,n="The Reikland Runefang",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_main_weapon_abilities_the_sword_of_couronne"] = {ai="hex_melee_area_self",cd=120,dur=38,er=35,mana=0,mc=0,minr=0,n="The Sword of Couronne",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh_main_weapon_abilities_tormentor_sword"] = {ai="hex_melee_area",cd=90,dur=9,er=35,mana=0,mc=0,minr=0,n="Tormentor Sword",ne=-1,rng=0,src="active",ty="area_of_hexes",wu=0}
C.abilities["wh_pro01_lord_abilities_flash_bomb"] = {ai="being_charged",cd=90,dmg=0,dur=16,er=35,ff=true,mana=0,mc=0,minr=0,n="Flash Bomb",ne=-1,rad=15,rng=75,src="active",te=true,ty="area_of_hexes",wu=0}
C.abilities["wh_pro01_lord_passive_grombrindal_has_no_fear"] = {ai="augment_morale_self_area",cd=120,dur=24,er=55,mana=0,mc=0,minr=0,n="Grombrindal Has No Fear",nf=-1,rng=0,sa=true,src="passive",ty="area_of_augments",uses=1,wu=0}
C.abilities["wh_pro01_weapon_abilities_rune_axe_of_grombrindal"] = {ai="augment_melee_self",cd=120,dur=32,er=0,mana=0,mc=0,minr=0,n="Rune Axe of Grombrindal",rng=0,sa=true,src="active",ty="augment",wu=0}
C.abilities["wh_pro02_item_abilities_blood_chalice_of_bathori"] = {ai="healing",cd=120,dur=26,er=0,heal=true,mana=0,mc=0,minr=0,n="Blood Chalice of Bathori",nf=1,rng=60,sa=true,src="active",tf=true,ts=true,ty="regeneration",wu=0}
C.abilities["wh_pro03_lord_abilities_lord_of_undeath"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Lord of Undeath",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh_pro03_lord_abilities_lord_of_undeath_0"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Lord of Undeath",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh_pro03_lord_abilities_lord_of_undeath_1"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Lord of Undeath",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh_pro03_lord_abilities_lord_of_undeath_2"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Lord of Undeath",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh_pro03_lord_abilities_lord_of_undeath_3"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Lord of Undeath",rng=50,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh_pro03_lord_abilities_lord_of_undeath_4"] = {ai="threatened",cd=120,dur=1,er=0,mana=0,mc=0,minr=0,n="Lord of Undeath",rng=200,src="active",sum=true,tf=true,tg=true,ts=true,ty="summon_unit",uses=1,wu=0}
C.abilities["wh_pro04_unit_abilities_apocalyptic_charge"] = {ai="aoe_centred_on_self",cd=120,dur=30,er=35,mana=0,mc=0,minr=0,n="Apocalyptic Charge",nf=-1,rng=0,sa=true,src="active",ty="area_of_augments",wu=0}
C.abilities["wh_pro04_unit_abilities_enrage"] = {ai="augment_melee_self",cd=90,dur=22,er=0,mana=0,mc=0,minr=0,n="Enrage",rng=0,sa=true,src="active",ty="ward_save",wu=0}
C.abilities["wh_pro04_unit_abilities_loecs_shroud"] = {ai="flanking_opportunity",cd=120,dur=44,er=0,fm=true,mana=0,mc=0,minr=0,n="Loec's Shroud",nf=1,rng=0,sa=true,src="active",ty="hiding",wu=0}
C.abilities["wh_pro04_unit_abilities_warp_gaze"] = {ai="hex_speed_under_fire",cd=90,dur=12,er=0,mana=0,mc=0,minr=0,n="Warp Gaze",rng=100,src="active",te=true,ty="hex",uses=3,wu=0}
C.units["wh2_dlc09_skv_cha_tretch_craventail"] = {a=90,ai=0,al=25,c="com",cat="inf_melee",cb=40,hp=4288,ma=40,mcp=700,md=70,men=1,rcp=0,spd=4.2}
C.units["wh2_dlc09_tmb_art_casket_of_souls_0"] = {a=80,ai=0,al=0,c="chariot",cat="war_machine",cb=8,hp=3960,lg=true,ma=20,mcp=100,md=14,men=1,rcp=1100,spd=2.8}
C.units["wh2_dlc09_tmb_art_screaming_skull_catapult_0"] = {a=20,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2464,ma=10,mcp=80,md=6,men=44,rcp=720,spd=2.8}
C.units["wh2_dlc09_tmb_cav_hexwraiths"] = {a=0,ai=0,al=0,c="cav_mel",cat="cavalry",cb=61,hp=6960,lg=true,ma=36,mcp=1400,md=34,men=60,rcp=0,spd=9.4}
C.units["wh2_dlc09_tmb_cav_necropolis_knights_0"] = {a=110,ai=0,al=0,c="cav_shk",cat="cavalry",cb=52,hp=7272,lg=true,ma=40,mcp=1400,md=43,men=24,rcp=0,spd=6.6}
C.units["wh2_dlc09_tmb_cav_necropolis_knights_1"] = {a=110,ai=0,al=32,c="cav_shk",cat="cavalry",cb=40,hp=7272,lg=true,ma=32,mcp=1450,md=37,men=24,rcp=0,spd=6.6}
C.units["wh2_dlc09_tmb_cav_necropolis_knights_ror"] = {a=110,ai=0,al=0,c="cav_shk",cat="cavalry",cb=74,hp=10368,lg=true,ma=55,mcp=1700,md=56,men=24,rcp=0,spd=7.6}
C.units["wh2_dlc09_tmb_cav_nehekhara_horsemen_0"] = {a=50,ai=0,al=0,c="cav_mel",cat="cavalry",cb=26,hp=6360,lg=true,ma=28,mcp=650,md=34,men=60,rcp=0,spd=7.8}
C.units["wh2_dlc09_tmb_cav_nehekhara_horsemen_ror"] = {a=80,ai=0,al=0,c="cav_mel",cat="cavalry",cb=50,hp=9300,lg=true,ma=43,mcp=1000,md=52,men=60,rcp=0,spd=8.5}
C.units["wh2_dlc09_tmb_cav_skeleton_horsemen_0"] = {a=30,ai=0,al=0,c="cav_mel",cat="cavalry",cb=34,hp=4860,lg=true,ma=24,mcp=400,md=26,men=60,rcp=0,spd=7.6}
C.units["wh2_dlc09_tmb_cav_skeleton_horsemen_0_summoned"] = {a=30,ai=0,al=0,c="cav_mel",cat="cavalry",cb=34,hp=4860,lg=true,ma=24,mcp=400,md=26,men=60,rcp=0,spd=7.6}
C.units["wh2_dlc09_tmb_cav_skeleton_horsemen_archers_0"] = {a=30,ai=0,al=0,c="cav_mis",cat="cavalry",cb=25,hp=4680,lg=true,ma=20,mcp=100,md=22,men=60,rcp=400,spd=7.6}
C.units["wh2_dlc09_tmb_cha_arkhan_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=12,hp=4840,ma=40,mcp=1100,md=50,men=1,rcp=0,spd=3.1}
C.units["wh2_dlc09_tmb_cha_arkhan_1"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=32,hp=5240,lg=true,ma=40,mcp=1000,md=50,men=1,rcp=0,spd=7.6}
C.units["wh2_dlc09_tmb_cha_arkhan_2"] = {a=110,ai=28,al=0,c="com",cat="war_machine",cb=75,hp=33576,lg=true,ma=30,mcp=1400,md=36,men=6,rcp=0,spd=8.4}
C.units["wh2_dlc09_tmb_cha_khalida_0"] = {a=55,ai=0,al=0,c="com",cat="inf_melee",cb=70,hp=5323,ma=65,mcp=950,md=60,men=1,rcp=0,spd=4.6}
C.units["wh2_dlc09_tmb_cha_khalida_1"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=5935,lg=true,ma=65,mcp=1400,md=60,men=1,rcp=0,spd=6.6}
C.units["wh2_dlc09_tmb_cha_khalida_2"] = {a=80,ai=28,al=0,c="com",cat="war_machine",cb=90,hp=12310,lg=true,ma=35,mcp=1200,md=26,men=2,rcp=0,spd=7.4}
C.units["wh2_dlc09_tmb_cha_khatep_0"] = {a=40,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3888,ma=28,mcp=450,md=38,men=1,rcp=0,spd=3.1}
C.units["wh2_dlc09_tmb_cha_khatep_1"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=4376,lg=true,ma=28,mcp=550,md=38,men=1,rcp=0,spd=7.6}
C.units["wh2_dlc09_tmb_cha_khatep_2"] = {a=80,ai=28,al=0,c="com",cat="war_machine",cb=75,hp=10016,lg=true,ma=28,mcp=900,md=24,men=2,rcp=0,spd=7.4}
C.units["wh2_dlc09_tmb_cha_khatep_3"] = {a=80,ai=0,al=0,c="com",cat="war_machine",cb=8,hp=4808,ma=28,mcp=150,md=20,men=1,rcp=1100,spd=3.1}
C.units["wh2_dlc09_tmb_cha_liche_priest_death_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3520,ma=25,mcp=300,md=30,men=1,rcp=0,spd=3.1}
C.units["wh2_dlc09_tmb_cha_liche_priest_death_1"] = {a=30,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=3940,lg=true,ma=25,mcp=500,md=30,men=1,rcp=0,spd=7.6}
C.units["wh2_dlc09_tmb_cha_liche_priest_light_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3520,ma=25,mcp=300,md=30,men=1,rcp=0,spd=3.1}
C.units["wh2_dlc09_tmb_cha_liche_priest_light_1"] = {a=30,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=3940,lg=true,ma=25,mcp=500,md=30,men=1,rcp=0,spd=7.6}
C.units["wh2_dlc09_tmb_cha_liche_priest_nehekhara_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3520,ma=25,mcp=300,md=30,men=1,rcp=0,spd=3.1}
C.units["wh2_dlc09_tmb_cha_liche_priest_nehekhara_1"] = {a=30,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=3940,lg=true,ma=25,mcp=500,md=30,men=1,rcp=0,spd=7.6}
C.units["wh2_dlc09_tmb_cha_liche_priest_shadow_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3520,ma=25,mcp=300,md=30,men=1,rcp=0,spd=3.1}
C.units["wh2_dlc09_tmb_cha_liche_priest_shadow_1"] = {a=30,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=3940,lg=true,ma=25,mcp=500,md=30,men=1,rcp=0,spd=7.6}
C.units["wh2_dlc09_tmb_cha_necrotect_0"] = {a=55,ai=20,al=0,c="com",cat="inf_melee",cb=20,hp=3788,ma=45,mcp=500,md=30,men=1,rcp=0,spd=3.1}
C.units["wh2_dlc09_tmb_cha_necrotect_1"] = {a=80,ai=28,al=0,c="com",cat="war_machine",cb=75,hp=9616,lg=true,ma=28,mcp=850,md=24,men=2,rcp=0,spd=7.4}
C.units["wh2_dlc09_tmb_cha_settra_0"] = {a=80,ai=0,al=20,c="com",cat="inf_melee",cb=20,hp=5196,ma=60,mcp=1250,md=55,men=1,rcp=0,spd=3.1}
C.units["wh2_dlc09_tmb_cha_settra_1"] = {a=80,ai=0,al=20,c="com",cat="cavalry",cb=40,hp=5596,lg=true,ma=60,mcp=1450,md=55,men=1,rcp=0,spd=7.6}
C.units["wh2_dlc09_tmb_cha_settra_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=100,hp=14792,lg=true,ma=45,mcp=2100,md=30,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc09_tmb_cha_settra_3"] = {a=95,ai=15,al=0,c="com",cat="war_beast",cb=64,hp=10008,lg=true,ma=40,mcp=2100,md=38,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc09_tmb_cha_tomb_king_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=4840,ma=50,mcp=900,md=60,men=1,rcp=0,spd=3.1}
C.units["wh2_dlc09_tmb_cha_tomb_king_1"] = {a=80,ai=0,al=0,c="com",cat="cavalry",cb=40,hp=5240,lg=true,ma=50,mcp=1100,md=60,men=1,rcp=0,spd=7.6}
C.units["wh2_dlc09_tmb_cha_tomb_king_2"] = {a=80,ai=28,al=0,c="com",cat="war_machine",cb=80,hp=11592,lg=true,ma=34,mcp=1150,md=26,men=2,rcp=0,spd=7.4}
C.units["wh2_dlc09_tmb_cha_tomb_king_3"] = {a=95,ai=15,al=0,c="com",cat="war_beast",cb=64,hp=9808,lg=true,ma=38,mcp=2050,md=38,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc09_tmb_cha_tomb_prince_0"] = {a=70,ai=0,al=25,c="com",cat="inf_melee",cb=15,hp=4268,ma=38,mcp=600,md=48,men=1,rcp=0,spd=3.1}
C.units["wh2_dlc09_tmb_cha_tomb_prince_1"] = {a=70,ai=0,al=25,c="com",cat="cavalry",cb=35,hp=4668,lg=true,ma=38,mcp=800,md=48,men=1,rcp=0,spd=7.6}
C.units["wh2_dlc09_tmb_cha_tomb_prince_2"] = {a=80,ai=28,al=0,c="com",cat="war_machine",cb=80,hp=10416,lg=true,ma=30,mcp=850,md=24,men=2,rcp=0,spd=7.4}
C.units["wh2_dlc09_tmb_inf_cairn_wraiths"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=6720,ma=42,mcp=850,md=34,men=60,rcp=0,spd=4.8}
C.units["wh2_dlc09_tmb_inf_crypt_ghouls"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=16,hp=9000,ma=40,mcp=600,md=38,men=120,rcp=0,spd=4}
C.units["wh2_dlc09_tmb_inf_nehekhara_warriors_0"] = {a=45,ai=7,al=0,c="inf_mel",cat="inf_melee",cb=15,hp=9120,ma=32,mcp=525,md=22,men=120,rcp=0,spd=2.8}
C.units["wh2_dlc09_tmb_inf_nehekhara_warriors_ror"] = {a=0,ai=9,al=0,c="inf_mel",cat="inf_melee",cb=15,hp=8760,ma=48,mcp=950,md=32,men=120,rcp=0,spd=3.5}
C.units["wh2_dlc09_tmb_inf_skeleton_archers_0"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=3,hp=6840,ma=10,mcp=50,md=14,men=120,rcp=375,spd=3.1}
C.units["wh2_dlc09_tmb_inf_skeleton_archers_ror"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=3,hp=6840,ma=14,mcp=50,md=19,men=120,rcp=575,spd=3.1}
C.units["wh2_dlc09_tmb_inf_skeleton_spearmen_0"] = {a=20,ai=0,al=14,c="inf_spr",cat="inf_melee",cb=3,hp=9760,ma=14,mcp=325,md=30,men=160,rcp=0,spd=2.8}
C.units["wh2_dlc09_tmb_inf_skeleton_spearmen_ror"] = {a=45,ai=0,al=14,c="inf_spr",cat="inf_melee",cb=3,hp=9760,ma=19,mcp=550,md=42,men=160,rcp=0,spd=2.8}
C.units["wh2_dlc09_tmb_inf_skeleton_warriors_0"] = {a=20,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=5,hp=9760,ma=18,mcp=300,md=22,men=160,rcp=0,spd=2.8}
C.units["wh2_dlc09_tmb_inf_skeleton_warriors_0_summoned"] = {a=20,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=5,hp=12200,ma=18,mcp=200,md=22,men=200,rcp=0,spd=2.8}
C.units["wh2_dlc09_tmb_inf_spirit_host"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=9200,ma=20,mcp=850,md=8,men=200,rcp=0,spd=4.8}
C.units["wh2_dlc09_tmb_inf_tomb_guard_0"] = {a=55,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=9840,ma=32,mcp=750,md=41,men=120,rcp=0,spd=2.8}
C.units["wh2_dlc09_tmb_inf_tomb_guard_1"] = {a=55,ai=0,al=19,c="inf_mel",cat="inf_melee",cb=5,hp=9840,ma=25,mcp=850,md=47,men=120,rcp=0,spd=2.8}
C.units["wh2_dlc09_tmb_inf_tomb_guard_ror"] = {a=70,ai=9,al=0,c="inf_mel",cat="inf_melee",cb=15,hp=9840,ma=41,mcp=1050,md=51,men=120,rcp=0,spd=2.8}
C.units["wh2_dlc09_tmb_mon_carrion_0"] = {a=20,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=5040,ma=26,mcp=350,md=46,men=24,rcp=0,spd=8}
C.units["wh2_dlc09_tmb_mon_carrion_ror"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=5400,lg=true,ma=38,mcp=500,md=46,men=10,rcp=0,spd=9}
C.units["wh2_dlc09_tmb_mon_crypt_horrors"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=12440,lg=true,ma=39,mcp=400,md=28,men=20,rcp=0,spd=5}
C.units["wh2_dlc09_tmb_mon_dire_wolves"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=6080,ma=31,mcp=600,md=14,men=80,rcp=0,spd=11.6}
C.units["wh2_dlc09_tmb_mon_fell_bats"] = {a=20,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=4200,ma=19,mcp=450,md=49,men=60,rcp=0,spd=7.8}
C.units["wh2_dlc09_tmb_mon_heirotitan_0"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=12620,lg=true,ma=56,mcp=2000,md=45,men=1,rcp=0,spd=3.2}
C.units["wh2_dlc09_tmb_mon_khemrian_warsphinx_0"] = {a=95,ai=15,al=0,c="inf_mel",cat="war_beast",cb=64,hp=38480,lg=true,ma=38,mcp=1900,md=38,men=4,rcp=0,spd=6.8}
C.units["wh2_dlc09_tmb_mon_morghast_archai"] = {a=100,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=40,hp=9096,lg=true,ma=40,mcp=900,md=45,men=12,rcp=0,spd=6.5}
C.units["wh2_dlc09_tmb_mon_morghast_harbingers"] = {a=80,ai=30,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=9096,lg=true,ma=45,mcp=900,md=35,men=12,rcp=0,spd=6.5}
C.units["wh2_dlc09_tmb_mon_necrosphinx_0"] = {a=100,ai=0,al=35,c="inf_mel",cat="inf_melee",cb=52,hp=8960,lg=true,ma=48,mcp=2000,md=40,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc09_tmb_mon_necrosphinx_ror"] = {a=100,ai=0,al=35,c="inf_mel",cat="inf_melee",cb=52,hp=9780,lg=true,ma=59,mcp=2450,md=50,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc09_tmb_mon_sepulchral_stalkers_0"] = {a=80,ai=0,al=18,c="inf_mis",cat="inf_ranged",cb=10,hp=7040,lg=true,ma=22,mcp=1080,md=30,men=16,rcp=120,spd=5}
C.units["wh2_dlc09_tmb_mon_sepulchral_stalkers_ror"] = {a=80,ai=0,al=18,c="inf_mis",cat="inf_ranged",cb=10,hp=7040,lg=true,ma=29,mcp=1200,md=38,men=16,rcp=200,spd=5}
C.units["wh2_dlc09_tmb_mon_tomb_scorpion_0"] = {a=90,ai=15,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=6020,lg=true,ma=35,mcp=1000,md=33,men=1,rcp=0,spd=5}
C.units["wh2_dlc09_tmb_mon_ushabti_0"] = {a=90,ai=12,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8128,lg=true,ma=23,mcp=900,md=35,men=16,rcp=0,spd=5.4}
C.units["wh2_dlc09_tmb_mon_ushabti_0_summoned"] = {a=90,ai=12,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8128,lg=true,ma=23,mcp=450,md=35,men=16,rcp=0,spd=5.4}
C.units["wh2_dlc09_tmb_mon_ushabti_1"] = {a=90,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=18,hp=6096,lg=true,ma=23,mcp=220,md=35,men=12,rcp=880,spd=5.4}
C.units["wh2_dlc09_tmb_mon_ushabti_ror"] = {a=90,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=18,hp=6096,lg=true,ma=30,mcp=300,md=44,men=12,rcp=1050,spd=5.4}
C.units["wh2_dlc09_tmb_veh_skeleton_archer_chariot_0"] = {a=80,ai=12,al=0,c="chariot",cat="war_machine",cb=58,hp=13104,lg=true,ma=22,mcp=667,md=24,men=24,rcp=283,spd=7.4}
C.units["wh2_dlc09_tmb_veh_skeleton_chariot_0"] = {a=80,ai=12,al=0,c="chariot",cat="war_machine",cb=58,hp=13104,lg=true,ma=22,mcp=800,md=24,men=24,rcp=0,spd=7.4}
C.units["wh2_dlc09_tmb_veh_skeleton_chariot_0_summoned"] = {a=80,ai=12,al=0,c="chariot",cat="war_machine",cb=58,hp=13104,lg=true,ma=22,mcp=800,md=24,men=24,rcp=0,spd=7.4}
C.units["wh2_dlc10_def_cav_doomfire_warlocks_0"] = {a=15,ai=0,al=0,c="cav_mel",cat="cavalry",cb=40,hp=5040,lg=true,ma=32,mcp=1100,md=28,men=60,rcp=0,spd=9.2}
C.units["wh2_dlc10_def_cav_knights_of_the_ebon_claw_ror_0"] = {a=120,ai=0,al=0,c="cav_mel",cat="cavalry",cb=40,hp=6816,lg=true,ma=50,mcp=1550,md=54,men=48,rcp=0,spd=6.6}
C.units["wh2_dlc10_def_cav_raven_heralds_ror_0"] = {a=30,ai=0,al=0,c="cav_mis",cat="cavalry",cb=20,hp=4080,lg=true,ma=25,mcp=100,md=22,men=24,rcp=800,spd=8.2}
C.units["wh2_dlc10_def_cav_slaanesh_harvesters_ror_0"] = {a=15,ai=0,al=0,c="cav_mel",cat="cavalry",cb=40,hp=5040,lg=true,ma=41,mcp=1450,md=36,men=60,rcp=0,spd=9.2}
C.units["wh2_dlc10_def_cha_crone_0"] = {a=15,ai=20,al=0,c="com",cat="inf_melee",cb=55,hp=4288,ma=70,mcp=1050,md=50,men=1,rcp=0,spd=4.4}
C.units["wh2_dlc10_def_cha_crone_1"] = {a=15,ai=20,al=0,c="com",cat="cavalry",cb=75,hp=4688,lg=true,ma=70,mcp=1250,md=50,men=1,rcp=0,spd=9.2}
C.units["wh2_dlc10_def_cha_crone_4"] = {a=80,ai=20,al=0,c="com",cat="war_machine",cb=35,hp=21024,ma=40,mcp=1850,md=28,men=3,rcp=0,spd=4.4}
C.units["wh2_dlc10_def_cha_crone_5"] = {a=80,ai=20,al=0,c="com",cat="war_beast",cb=75,hp=5468,lg=true,ma=60,mcp=1800,md=38,men=1,rcp=0,spd=7}
C.units["wh2_dlc10_def_cha_sorceress_beasts_0"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=39,mcp=300,md=30,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc10_def_cha_sorceress_beasts_1"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=39,mcp=500,md=30,men=1,rcp=0,spd=9.2}
C.units["wh2_dlc10_def_cha_sorceress_beasts_2"] = {a=60,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4008,lg=true,ma=39,mcp=650,md=30,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc10_def_cha_sorceress_beasts_3"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4168,lg=true,ma=39,mcp=850,md=30,men=1,rcp=0,spd=8.2}
C.units["wh2_dlc10_def_cha_sorceress_death_0"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=39,mcp=300,md=30,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc10_def_cha_sorceress_death_1"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=39,mcp=500,md=30,men=1,rcp=0,spd=9.2}
C.units["wh2_dlc10_def_cha_sorceress_death_2"] = {a=60,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4008,lg=true,ma=39,mcp=650,md=30,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc10_def_cha_sorceress_death_3"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4168,lg=true,ma=39,mcp=850,md=30,men=1,rcp=0,spd=8.2}
C.units["wh2_dlc10_def_cha_supreme_sorceress_beasts_0"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=39,mcp=450,md=30,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc10_def_cha_supreme_sorceress_beasts_1"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4220,lg=true,ma=39,mcp=650,md=30,men=1,rcp=0,spd=9.2}
C.units["wh2_dlc10_def_cha_supreme_sorceress_beasts_2"] = {a=60,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4420,lg=true,ma=39,mcp=800,md=30,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc10_def_cha_supreme_sorceress_beasts_3"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4420,lg=true,ma=39,mcp=1000,md=30,men=1,rcp=0,spd=8.2}
C.units["wh2_dlc10_def_cha_supreme_sorceress_beasts_4"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5268,lg=true,ma=40,mcp=1200,md=34,men=1,rcp=0,spd=7}
C.units["wh2_dlc10_def_cha_supreme_sorceress_beasts_5"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8324,lg=true,ma=50,mcp=2100,md=46,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc10_def_cha_supreme_sorceress_dark_0"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=39,mcp=450,md=30,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc10_def_cha_supreme_sorceress_dark_1"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4220,lg=true,ma=39,mcp=650,md=30,men=1,rcp=0,spd=9.2}
C.units["wh2_dlc10_def_cha_supreme_sorceress_dark_2"] = {a=60,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4420,lg=true,ma=39,mcp=800,md=30,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc10_def_cha_supreme_sorceress_dark_3"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4420,lg=true,ma=39,mcp=1000,md=30,men=1,rcp=0,spd=8.2}
C.units["wh2_dlc10_def_cha_supreme_sorceress_dark_4"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5268,lg=true,ma=40,mcp=1200,md=34,men=1,rcp=0,spd=7}
C.units["wh2_dlc10_def_cha_supreme_sorceress_dark_5"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8324,lg=true,ma=50,mcp=2100,md=46,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc10_def_cha_supreme_sorceress_death_0"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=39,mcp=450,md=30,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc10_def_cha_supreme_sorceress_death_1"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4220,lg=true,ma=39,mcp=650,md=30,men=1,rcp=0,spd=9.2}
C.units["wh2_dlc10_def_cha_supreme_sorceress_death_2"] = {a=60,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4420,lg=true,ma=39,mcp=800,md=30,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc10_def_cha_supreme_sorceress_death_3"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4420,lg=true,ma=39,mcp=1000,md=30,men=1,rcp=0,spd=8.2}
C.units["wh2_dlc10_def_cha_supreme_sorceress_death_4"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5268,lg=true,ma=40,mcp=1200,md=34,men=1,rcp=0,spd=7}
C.units["wh2_dlc10_def_cha_supreme_sorceress_death_5"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8324,lg=true,ma=50,mcp=2100,md=46,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc10_def_cha_supreme_sorceress_fire_0"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=39,mcp=450,md=30,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc10_def_cha_supreme_sorceress_fire_1"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4220,lg=true,ma=39,mcp=650,md=30,men=1,rcp=0,spd=9.2}
C.units["wh2_dlc10_def_cha_supreme_sorceress_fire_2"] = {a=60,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4420,lg=true,ma=39,mcp=800,md=30,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc10_def_cha_supreme_sorceress_fire_3"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4420,lg=true,ma=39,mcp=1000,md=30,men=1,rcp=0,spd=8.2}
C.units["wh2_dlc10_def_cha_supreme_sorceress_fire_4"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5268,lg=true,ma=40,mcp=1200,md=34,men=1,rcp=0,spd=7}
C.units["wh2_dlc10_def_cha_supreme_sorceress_fire_5"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8324,lg=true,ma=50,mcp=2100,md=46,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc10_def_cha_supreme_sorceress_shadow_0"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=39,mcp=450,md=30,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc10_def_cha_supreme_sorceress_shadow_1"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4220,lg=true,ma=39,mcp=650,md=30,men=1,rcp=0,spd=9.2}
C.units["wh2_dlc10_def_cha_supreme_sorceress_shadow_2"] = {a=60,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4420,lg=true,ma=39,mcp=800,md=30,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc10_def_cha_supreme_sorceress_shadow_3"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4420,lg=true,ma=39,mcp=1000,md=30,men=1,rcp=0,spd=8.2}
C.units["wh2_dlc10_def_cha_supreme_sorceress_shadow_4"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5268,lg=true,ma=40,mcp=1200,md=34,men=1,rcp=0,spd=7}
C.units["wh2_dlc10_def_cha_supreme_sorceress_shadow_5"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8324,lg=true,ma=50,mcp=2100,md=46,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc10_def_inf_blades_of_the_blood_queen_ror_0"] = {a=100,ai=14,al=0,c="inf_mel",cat="inf_melee",cb=32,hp=8400,ma=57,mcp=1450,md=43,men=100,rcp=0,spd=3.1}
C.units["wh2_dlc10_def_inf_sisters_of_slaughter"] = {a=5,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=7500,ma=40,mcp=1100,md=58,men=100,rcp=0,spd=4.4}
C.units["wh2_dlc10_def_inf_sisters_of_the_singing_doom_ror_0"] = {a=5,ai=8,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=6500,ma=48,mcp=1050,md=34,men=100,rcp=0,spd=4.4}
C.units["wh2_dlc10_def_inf_the_bolt_fiends_ror_0"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=5670,ma=24,mcp=150,md=31,men=90,rcp=750,spd=3.3}
C.units["wh2_dlc10_def_inf_the_hellebronai_ror_0"] = {a=40,ai=0,al=14,c="inf_mel",cat="inf_melee",cb=8,hp=7560,ma=34,mcp=650,md=52,men=120,rcp=0,spd=3.3}
C.units["wh2_dlc10_def_mon_chill_of_sontar_ror_0"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=10400,lg=true,ma=64,mcp=1950,md=41,men=1,rcp=0,spd=4.6}
C.units["wh2_dlc10_def_mon_feral_manticore_0"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=5103,lg=true,ma=40,mcp=800,md=34,men=1,rcp=0,spd=7}
C.units["wh2_dlc10_def_mon_kharibdyss_0"] = {a=60,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=45,hp=10400,lg=true,ma=60,mcp=1650,md=38,men=1,rcp=0,spd=4.6}
C.units["wh2_dlc10_def_mon_war_hydra_boss"] = {a=90,ai=35,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=15000,lg=true,ma=62,mcp=1600,md=58,men=1,rcp=0,spd=6}
C.units["wh2_dlc10_dwf_cha_thane_ghost_summoned_0"] = {a=0,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4168,ma=45,mcp=300,md=60,men=1,rcp=0,spd=3.2}
C.units["wh2_dlc10_dwf_inf_giant_slayers"] = {a=0,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=30,hp=10400,ma=48,mcp=1200,md=34,men=80,rcp=0,spd=4}
C.units["wh2_dlc10_hef_cav_the_fireborn_ror_0"] = {a=120,ai=0,al=15,c="cav_shk",cat="cavalry",cb=80,hp=6360,lg=true,ma=45,mcp=1850,md=41,men=60,rcp=0,spd=8.4}
C.units["wh2_dlc10_hef_cav_the_heralds_of_the_wind_ror_0"] = {a=40,ai=0,al=0,c="cav_mis",cat="cavalry",cb=40,hp=5040,lg=true,ma=38,mcp=250,md=31,men=60,rcp=750,spd=10.5}
C.units["wh2_dlc10_hef_cha_alarielle_the_radiant_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=23,hp=3888,ma=45,mcp=600,md=55,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc10_hef_cha_alarielle_the_radiant_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=43,hp=4288,lg=true,ma=45,mcp=800,md=55,men=1,rcp=0,spd=9.2}
C.units["wh2_dlc10_hef_cha_alarielle_the_radiant_2"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=43,hp=4288,lg=true,ma=45,mcp=850,md=55,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc10_hef_cha_alarielle_the_radiant_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=5072,lg=true,ma=45,mcp=1150,md=40,men=1,rcp=0,spd=7}
C.units["wh2_dlc10_hef_cha_alith_anar_0"] = {a=40,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=4268,ma=65,mcp=300,md=45,men=1,rcp=700,spd=4.6}
C.units["wh2_dlc10_hef_cha_alith_anar_summoned_0"] = {a=40,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=4268,ma=65,mcp=100,md=45,men=1,rcp=266,spd=4.6}
C.units["wh2_dlc10_hef_cha_alith_anar_summoned_1"] = {a=40,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=4268,ma=65,mcp=100,md=45,men=1,rcp=266,spd=4.6}
C.units["wh2_dlc10_hef_cha_handmaiden_0"] = {a=40,ai=0,al=35,c="com",cat="inf_ranged",cb=22,hp=3688,ma=40,mcp=250,md=52,men=1,rcp=500,spd=4}
C.units["wh2_dlc10_hef_cha_handmaiden_1"] = {a=40,ai=0,al=35,c="com",cat="cavalry",cb=42,hp=4168,lg=true,ma=40,mcp=400,md=52,men=1,rcp=550,spd=9.2}
C.units["wh2_dlc10_hef_cha_handmaiden_2"] = {a=70,ai=0,al=35,c="com",cat="cavalry",cb=42,hp=4168,lg=true,ma=40,mcp=500,md=52,men=1,rcp=500,spd=8.4}
C.units["wh2_dlc10_hef_cha_mage_heavens_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=36,mcp=300,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc10_hef_cha_mage_heavens_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=36,mcp=550,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc10_hef_cha_mage_heavens_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8296,lg=true,ma=24,mcp=800,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc10_hef_cha_mage_shadows_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=36,mcp=300,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc10_hef_cha_mage_shadows_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=36,mcp=550,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc10_hef_cha_mage_shadows_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8296,lg=true,ma=24,mcp=800,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc10_hef_cha_shadow_walker"] = {a=40,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=3688,ma=40,mcp=350,md=45,men=1,rcp=850,spd=4.6}
C.units["wh2_dlc10_hef_inf_dryads_0"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=7000,ma=35,mcp=500,md=25,men=100,rcp=0,spd=4.3}
C.units["wh2_dlc10_hef_inf_everqueens_court_guards_ror_0"] = {a=40,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=7,hp=6720,ma=45,mcp=350,md=48,men=80,rcp=1050,spd=3.6}
C.units["wh2_dlc10_hef_inf_keepers_of_the_flame_ror_0"] = {a=110,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=10,hp=8400,ma=48,mcp=1650,md=50,men=100,rcp=0,spd=3.3}
C.units["wh2_dlc10_hef_inf_shadow_walkers_0"] = {a=30,ai=12,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=5640,ma=40,mcp=325,md=32,men=60,rcp=875,spd=4}
C.units["wh2_dlc10_hef_inf_shadow_warriors_0"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=6400,ma=36,mcp=213,md=22,men=80,rcp=637,spd=4}
C.units["wh2_dlc10_hef_inf_sisters_of_avelorn_0"] = {a=40,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=7,hp=6720,ma=36,mcp=275,md=38,men=80,rcp=825,spd=3.6}
C.units["wh2_dlc10_hef_inf_the_grey_ror_0"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=6400,ma=45,mcp=300,md=29,men=80,rcp=850,spd=4}
C.units["wh2_dlc10_hef_inf_the_scions_of_mathlann_ror_0"] = {a=40,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=4,hp=7560,ma=27,mcp=750,md=48,men=120,rcp=0,spd=3.3}
C.units["wh2_dlc10_hef_inf_the_silverpelts_ror_0"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8000,ma=45,mcp=1100,md=36,men=100,rcp=0,spd=3.3}
C.units["wh2_dlc10_hef_inf_the_storm_riders_ror_0"] = {a=40,ai=0,al=16,c="inf_mis",cat="inf_ranged",cb=4,hp=6120,ma=29,mcp=300,md=41,men=90,rcp=550,spd=3.6}
C.units["wh2_dlc10_hef_mon_treekin_0"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=8768,lg=true,ma=26,mcp=900,md=46,men=16,rcp=0,spd=3.4}
C.units["wh2_dlc10_hef_mon_treeman_0"] = {a=110,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=9828,lg=true,ma=52,mcp=1500,md=56,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc10_lzd_mon_carnosaur_boss"] = {a=95,ai=0,al=35,c="inf_mel",cat="inf_melee",cb=73,hp=15850,lg=true,ma=73,mcp=1600,md=42,men=1,rcp=0,spd=12}
C.units["wh2_dlc10_nor_mon_phoenix_flamespyre_boss"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=54,hp=16850,lg=true,ma=54,mcp=1400,md=55,men=1,rcp=0,spd=11}
C.units["wh2_dlc10_skv_mon_hell_pit_abomination_boss"] = {a=100,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=25,hp=17100,lg=true,ma=38,mcp=1800,md=60,men=1,rcp=0,spd=9}
C.units["wh2_dlc11_cst_art_carronade"] = {a=20,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2464,ma=10,mcp=80,md=6,men=44,rcp=670,spd=2.3}
C.units["wh2_dlc11_cst_art_mortar"] = {a=20,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2464,ma=10,mcp=60,md=6,men=44,rcp=540,spd=2.3}
C.units["wh2_dlc11_cst_art_queen_bess"] = {a=30,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=4800,ma=14,mcp=160,md=9,men=48,rcp=1440,spd=2.3}
C.units["wh2_dlc11_cst_cav_deck_droppers_0"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=16,hp=4224,lg=true,ma=26,mcp=150,md=22,men=24,rcp=300,spd=4.8}
C.units["wh2_dlc11_cst_cav_deck_droppers_1"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=16,hp=4224,lg=true,ma=26,mcp=150,md=22,men=24,rcp=400,spd=4.8}
C.units["wh2_dlc11_cst_cav_deck_droppers_2"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=16,hp=4224,lg=true,ma=26,mcp=150,md=22,men=24,rcp=550,spd=4.8}
C.units["wh2_dlc11_cst_cav_deck_droppers_ror_0"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=16,hp=4224,lg=true,ma=34,mcp=225,md=29,men=24,rcp=575,spd=4.8}
C.units["wh2_dlc11_cst_cav_knights_errant_0"] = {a=0,ai=0,al=0,c="cav_shk",cat="cavalry",cb=55,hp=6480,lg=true,ma=28,mcp=700,md=28,men=60,rcp=0,spd=7.5}
C.units["wh2_dlc11_cst_cav_knights_errant_1"] = {a=0,ai=0,al=0,c="cav_shk",cat="cavalry",cb=65,hp=6480,lg=true,ma=36,mcp=500,md=28,men=60,rcp=0,spd=7.5}
C.units["wh2_dlc11_cst_cav_knights_errant_2"] = {a=0,ai=0,al=0,c="cav_shk",cat="cavalry",cb=65,hp=8100,lg=true,ma=36,mcp=550,md=28,men=75,rcp=0,spd=7.5}
C.units["wh2_dlc11_cst_cav_knights_of_the_realm"] = {a=0,ai=0,al=10,c="cav_shk",cat="cavalry",cb=75,hp=8700,lg=true,ma=42,mcp=950,md=28,men=75,rcp=0,spd=7.5}
C.units["wh2_dlc11_cst_cav_questing_knights_0"] = {a=0,ai=0,al=0,c="cav_shk",cat="cavalry",cb=51,hp=9075,lg=true,ma=50,mcp=1100,md=38,men=75,rcp=0,spd=7.5}
C.units["wh2_dlc11_cst_cha_aranessa_0"] = {a=20,ai=0,al=35,c="com",cat="inf_melee",cb=35,hp=4288,ma=60,mcp=800,md=60,men=1,rcp=0,spd=4.4}
C.units["wh2_dlc11_cst_cha_aranessa_1"] = {a=120,ai=0,al=35,c="com",cat="war_beast",cb=35,hp=5208,lg=true,ma=50,mcp=1100,md=60,men=1,rcp=0,spd=4.5}
C.units["wh2_dlc11_cst_cha_cylostra_direfin_0"] = {a=0,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4532,ma=44,mcp=750,md=35,men=1,rcp=0,spd=4}
C.units["wh2_dlc11_cst_cha_cylostra_direfin_1"] = {a=150,ai=15,al=0,c="com",cat="war_beast",cb=24,hp=9854,lg=true,ma=52,mcp=2200,md=42,men=1,rcp=100,spd=5}
C.units["wh2_dlc11_cst_cha_damned_paladin_0"] = {a=0,ai=0,al=20,c="com",cat="inf_melee",cb=40,hp=4242,ma=45,mcp=900,md=40,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc11_cst_cha_damned_paladin_1"] = {a=0,ai=0,al=20,c="com",cat="cavalry",cb=70,hp=4766,lg=true,ma=45,mcp=1100,md=40,men=1,rcp=0,spd=7.5}
C.units["wh2_dlc11_cst_cha_gunnery_wight_0"] = {a=30,ai=0,al=0,c="com",cat="inf_ranged",cb=15,hp=3972,ma=34,mcp=150,md=38,men=1,rcp=450,spd=4}
C.units["wh2_dlc11_cst_cha_gunnery_wight_1"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=30,hp=4972,lg=true,ma=38,mcp=550,md=46,men=1,rcp=550,spd=4.5}
C.units["wh2_dlc11_cst_cha_luthor_harkon_0"] = {a=90,ai=0,al=0,c="com",cat="inf_ranged",cb=20,hp=4208,ma=70,mcp=500,md=50,men=1,rcp=400,spd=4}
C.units["wh2_dlc11_cst_cha_luthor_harkon_1"] = {a=80,ai=0,al=25,c="com",cat="war_beast",cb=40,hp=8489,lg=true,ma=45,mcp=1900,md=47,men=1,rcp=500,spd=6.5}
C.units["wh2_dlc11_cst_cha_mourngul_haunter"] = {a=40,ai=25,al=0,c="com",cat="inf_melee",cb=40,hp=6568,lg=true,ma=48,mcp=1450,md=38,men=1,rcp=0,spd=5.4}
C.units["wh2_dlc11_cst_cha_vampire_fleet_admiral_0"] = {a=70,ai=0,al=25,c="com",cat="inf_melee",cb=25,hp=4068,ma=45,mcp=950,md=60,men=1,rcp=0,spd=3.8}
C.units["wh2_dlc11_cst_cha_vampire_fleet_admiral_1"] = {a=120,ai=0,al=25,c="com",cat="war_beast",cb=25,hp=4972,lg=true,ma=35,mcp=1250,md=60,men=1,rcp=0,spd=4.5}
C.units["wh2_dlc11_cst_cha_vampire_fleet_admiral_death_0"] = {a=70,ai=0,al=25,c="com",cat="inf_melee",cb=25,hp=4068,ma=45,mcp=950,md=60,men=1,rcp=0,spd=3.8}
C.units["wh2_dlc11_cst_cha_vampire_fleet_admiral_death_1"] = {a=120,ai=0,al=25,c="com",cat="war_beast",cb=25,hp=4972,lg=true,ma=35,mcp=1250,md=60,men=1,rcp=0,spd=4.5}
C.units["wh2_dlc11_cst_cha_vampire_fleet_admiral_deeps_0"] = {a=70,ai=0,al=25,c="com",cat="inf_melee",cb=25,hp=4068,ma=45,mcp=950,md=60,men=1,rcp=0,spd=3.8}
C.units["wh2_dlc11_cst_cha_vampire_fleet_admiral_deeps_1"] = {a=120,ai=0,al=25,c="com",cat="war_beast",cb=25,hp=4972,lg=true,ma=35,mcp=1250,md=60,men=1,rcp=0,spd=4.5}
C.units["wh2_dlc11_cst_cha_vampire_fleet_admiral_female_0"] = {a=70,ai=0,al=0,c="com",cat="inf_ranged",cb=35,hp=4068,ma=65,mcp=550,md=45,men=1,rcp=400,spd=4}
C.units["wh2_dlc11_cst_cha_vampire_fleet_admiral_female_1"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=35,hp=4972,lg=true,ma=55,mcp=850,md=50,men=1,rcp=400,spd=4.5}
C.units["wh2_dlc11_cst_cha_vampire_fleet_admiral_female_death_0"] = {a=70,ai=0,al=0,c="com",cat="inf_ranged",cb=35,hp=4068,ma=65,mcp=550,md=45,men=1,rcp=400,spd=4}
C.units["wh2_dlc11_cst_cha_vampire_fleet_admiral_female_death_1"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=35,hp=4972,lg=true,ma=55,mcp=850,md=50,men=1,rcp=400,spd=4.5}
C.units["wh2_dlc11_cst_cha_vampire_fleet_admiral_female_deeps_0"] = {a=70,ai=0,al=0,c="com",cat="inf_ranged",cb=35,hp=4068,ma=65,mcp=550,md=45,men=1,rcp=400,spd=4}
C.units["wh2_dlc11_cst_cha_vampire_fleet_admiral_female_deeps_1"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=35,hp=4972,lg=true,ma=55,mcp=850,md=50,men=1,rcp=400,spd=4.5}
C.units["wh2_dlc11_cst_cha_vampire_fleet_captain_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=3572,ma=60,mcp=600,md=40,men=1,rcp=0,spd=3.8}
C.units["wh2_dlc11_cst_cha_vampire_fleet_captain_1"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=35,hp=4572,lg=true,ma=50,mcp=1000,md=48,men=1,rcp=0,spd=4.5}
C.units["wh2_dlc11_cst_cha_vampire_fleet_captain_death_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=3572,ma=60,mcp=600,md=40,men=1,rcp=0,spd=3.8}
C.units["wh2_dlc11_cst_cha_vampire_fleet_captain_death_1"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=35,hp=4572,lg=true,ma=50,mcp=1000,md=48,men=1,rcp=0,spd=4.5}
C.units["wh2_dlc11_cst_cha_vampire_fleet_captain_deeps_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=3572,ma=60,mcp=600,md=40,men=1,rcp=0,spd=3.8}
C.units["wh2_dlc11_cst_cha_vampire_fleet_captain_deeps_1"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=35,hp=4572,lg=true,ma=50,mcp=1000,md=48,men=1,rcp=0,spd=4.5}
C.units["wh2_dlc11_cst_inf_count_noctilus_0"] = {a=95,ai=0,al=20,c="com",cat="inf_melee",cb=25,hp=4996,ma=45,mcp=1400,md=60,men=1,rcp=0,spd=3.8}
C.units["wh2_dlc11_cst_inf_count_noctilus_1"] = {a=75,ai=0,al=0,c="com",cat="war_beast",cb=20,hp=9867,lg=true,ma=46,mcp=1100,md=34,men=1,rcp=1000,spd=4.5}
C.units["wh2_dlc11_cst_inf_deck_gunners_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=1,hp=3888,ma=5,mcp=80,md=10,men=36,rcp=720,spd=2.3}
C.units["wh2_dlc11_cst_inf_deck_gunners_0_summoned"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=1,hp=3888,ma=5,mcp=80,md=10,men=36,rcp=720,spd=2.3}
C.units["wh2_dlc11_cst_inf_deck_gunners_ror_0"] = {a=0,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=1,hp=3888,ma=17,mcp=105,md=18,men=36,rcp=945,spd=2.3}
C.units["wh2_dlc11_cst_inf_depth_guard_0"] = {a=90,ai=5,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=7800,ma=50,mcp=1200,md=36,men=60,rcp=0,spd=3.6}
C.units["wh2_dlc11_cst_inf_depth_guard_1"] = {a=90,ai=0,al=28,c="inf_mel",cat="inf_melee",cb=20,hp=7800,ma=42,mcp=1300,md=44,men=60,rcp=0,spd=3.6}
C.units["wh2_dlc11_cst_inf_depth_guard_ror_0"] = {a=90,ai=0,al=28,c="inf_mel",cat="inf_melee",cb=20,hp=7800,ma=52,mcp=1600,md=54,men=60,rcp=0,spd=3.6}
C.units["wh2_dlc11_cst_inf_sartosa_free_company_0"] = {a=25,ai=6,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=7920,ma=32,mcp=450,md=26,men=120,rcp=0,spd=3.6}
C.units["wh2_dlc11_cst_inf_sartosa_militia_0"] = {a=25,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=14,hp=7320,ma=28,mcp=250,md=25,men=120,rcp=200,spd=3.6}
C.units["wh2_dlc11_cst_inf_syreens"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=6720,ma=26,mcp=850,md=34,men=60,rcp=0,spd=4.8}
C.units["wh2_dlc11_cst_inf_zombie_deckhands_mob_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=12000,ma=17,mcp=250,md=15,men=160,rcp=0,spd=2.3}
C.units["wh2_dlc11_cst_inf_zombie_deckhands_mob_1"] = {a=15,ai=0,al=13,c="inf_mel",cat="inf_melee",cb=3,hp=12000,ma=14,mcp=400,md=20,men=160,rcp=0,spd=2.3}
C.units["wh2_dlc11_cst_inf_zombie_deckhands_mob_necrofex_summoned_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=6000,ma=17,mcp=150,md=15,men=80,rcp=0,spd=2.3}
C.units["wh2_dlc11_cst_inf_zombie_deckhands_mob_ror_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=12000,ma=25,mcp=425,md=20,men=160,rcp=0,spd=2.3}
C.units["wh2_dlc11_cst_inf_zombie_deckhands_mob_summoned_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=12000,ma=10,mcp=150,md=8,men=160,rcp=0,spd=2.3}
C.units["wh2_dlc11_cst_inf_zombie_gunnery_mob_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=7,hp=7560,ma=14,mcp=75,md=6,men=120,rcp=225,spd=2.3}
C.units["wh2_dlc11_cst_inf_zombie_gunnery_mob_1"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=7560,ma=8,mcp=137,md=6,men=120,rcp=413,spd=2.3}
C.units["wh2_dlc11_cst_inf_zombie_gunnery_mob_2"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=7560,ma=8,mcp=150,md=6,men=120,rcp=450,spd=2.3}
C.units["wh2_dlc11_cst_inf_zombie_gunnery_mob_3"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=7,hp=7560,ma=14,mcp=75,md=6,men=120,rcp=375,spd=2.3}
C.units["wh2_dlc11_cst_inf_zombie_gunnery_mob_ror_0"] = {a=15,ai=0,al=13,c="inf_mis",cat="inf_ranged",cb=2,hp=7560,ma=20,mcp=200,md=14,men=120,rcp=600,spd=2.3}
C.units["wh2_dlc11_cst_inf_zombie_gunnery_mob_summoned_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=7560,ma=14,mcp=50,md=6,men=120,rcp=150,spd=2.3}
C.units["wh2_dlc11_cst_mon_animated_hulks_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=9632,lg=true,ma=28,mcp=750,md=24,men=16,rcp=0,spd=4.2}
C.units["wh2_dlc11_cst_mon_bloated_corpse_0"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=34,hp=1608,lg=true,ma=75,mcp=400,md=40,men=1,rcp=0,spd=3.8}
C.units["wh2_dlc11_cst_mon_fell_bats"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=4200,ma=19,mcp=375,md=44,men=60,rcp=0,spd=7}
C.units["wh2_dlc11_cst_mon_mournguls_0"] = {a=30,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=28,hp=8960,lg=true,ma=36,mcp=1000,md=26,men=16,rcp=0,spd=5.4}
C.units["wh2_dlc11_cst_mon_mournguls_ror_0"] = {a=30,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=34,hp=8960,lg=true,ma=52,mcp=1200,md=33,men=16,rcp=0,spd=5.4}
C.units["wh2_dlc11_cst_mon_necrofex_colossus_0"] = {a=75,ai=0,al=0,c="inf_mis",cat="war_beast",cb=20,hp=47335,lg=true,ma=42,mcp=900,md=34,men=5,rcp=1000,spd=4.5}
C.units["wh2_dlc11_cst_mon_necrofex_colossus_ror_0"] = {a=75,ai=25,al=0,c="inf_mis",cat="war_beast",cb=20,hp=47335,lg=true,ma=52,mcp=1400,md=43,men=5,rcp=600,spd=4.5}
C.units["wh2_dlc11_cst_mon_rotting_leviathan_0"] = {a=150,ai=15,al=0,c="inf_mel",cat="war_beast",cb=24,hp=49270,lg=true,ma=52,mcp=2000,md=42,men=5,rcp=100,spd=5}
C.units["wh2_dlc11_cst_mon_rotting_prometheans_0"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=7920,lg=true,ma=38,mcp=1000,md=48,men=12,rcp=0,spd=4.5}
C.units["wh2_dlc11_cst_mon_rotting_prometheans_gunnery_mob_0"] = {a=120,ai=0,al=0,c="inf_mis",cat="war_beast",cb=22,hp=15840,lg=true,ma=38,mcp=1000,md=48,men=24,rcp=300,spd=4.5}
C.units["wh2_dlc11_cst_mon_rotting_prometheans_gunnery_mob_ror"] = {a=120,ai=0,al=0,c="inf_mis",cat="war_beast",cb=22,hp=15840,lg=true,ma=48,mcp=1400,md=59,men=24,rcp=300,spd=4.5}
C.units["wh2_dlc11_cst_mon_rotting_prometheans_summoned_0"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=7920,lg=true,ma=38,mcp=1100,md=48,men=12,rcp=0,spd=4.5}
C.units["wh2_dlc11_cst_mon_scurvy_dogs"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=28,hp=6080,ma=26,mcp=500,md=14,men=80,rcp=0,spd=9.5}
C.units["wh2_dlc11_cst_mon_terrorgheist"] = {a=80,ai=0,al=25,c="inf_mel",cat="inf_melee",cb=40,hp=8289,lg=true,ma=41,mcp=2000,md=47,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc11_def_cha_lokhir_fellheart_0"] = {a=110,ai=30,al=0,c="com",cat="inf_melee",cb=50,hp=4288,ma=60,mcp=900,md=60,men=1,rcp=0,spd=4.6}
C.units["wh2_dlc11_def_cha_lokhir_fellheart_1"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=60,mcp=2100,md=46,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc11_vmp_cha_bloodline_blood_dragon_lord_0"] = {a=90,ai=20,al=0,c="com",cat="inf_melee",cb=35,hp=4068,ma=70,mcp=1050,md=40,men=1,rcp=0,spd=3.8}
C.units["wh2_dlc11_vmp_cha_bloodline_blood_dragon_lord_1"] = {a=110,ai=20,al=0,c="com",cat="cavalry",cb=60,hp=4672,lg=true,ma=70,mcp=1300,md=40,men=1,rcp=0,spd=7.8}
C.units["wh2_dlc11_vmp_cha_bloodline_blood_dragon_lord_2"] = {a=90,ai=20,al=0,c="com",cat="cavalry",cb=60,hp=4672,lg=true,ma=70,mcp=1500,md=40,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc11_vmp_cha_bloodline_blood_dragon_lord_3"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=8236,lg=true,ma=52,mcp=2200,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc11_vmp_cha_bloodline_lahmian_lord_0"] = {a=70,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4068,ma=65,mcp=950,md=50,men=1,rcp=0,spd=4.6}
C.units["wh2_dlc11_vmp_cha_bloodline_lahmian_lord_1"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4668,lg=true,ma=65,mcp=1200,md=50,men=1,rcp=0,spd=7.8}
C.units["wh2_dlc11_vmp_cha_bloodline_lahmian_lord_2"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4668,lg=true,ma=65,mcp=1400,md=50,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc11_vmp_cha_bloodline_lahmian_lord_3"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=8236,lg=true,ma=50,mcp=2100,md=50,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc11_vmp_cha_bloodline_necrarch_lord_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=5068,ma=40,mcp=750,md=50,men=1,rcp=0,spd=3.8}
C.units["wh2_dlc11_vmp_cha_bloodline_necrarch_lord_1"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=45,hp=5672,lg=true,ma=40,mcp=1000,md=50,men=1,rcp=0,spd=7.8}
C.units["wh2_dlc11_vmp_cha_bloodline_necrarch_lord_2"] = {a=70,ai=0,al=0,c="com",cat="cavalry",cb=45,hp=5672,lg=true,ma=40,mcp=1200,md=50,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc11_vmp_cha_bloodline_necrarch_lord_3"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=8236,lg=true,ma=42,mcp=2050,md=50,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc11_vmp_cha_bloodline_strigoi_lord_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=5776,ma=75,mcp=1200,md=50,men=1,rcp=0,spd=5}
C.units["wh2_dlc11_vmp_cha_bloodline_strigoi_lord_1"] = {a=80,ai=0,al=35,c="com",cat="war_beast",cb=45,hp=8289,lg=true,ma=52,mcp=2200,md=47,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc11_vmp_cha_bloodline_von_carstein_lord_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=25,hp=4068,ma=70,mcp=950,md=45,men=1,rcp=0,spd=3.8}
C.units["wh2_dlc11_vmp_cha_bloodline_von_carstein_lord_1"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4672,lg=true,ma=70,mcp=1200,md=45,men=1,rcp=0,spd=7.8}
C.units["wh2_dlc11_vmp_cha_bloodline_von_carstein_lord_2"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4672,lg=true,ma=70,mcp=1400,md=45,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc11_vmp_cha_bloodline_von_carstein_lord_3"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=8236,lg=true,ma=52,mcp=2100,md=48,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc11_vmp_cha_heinrich_kemmler_1"] = {a=35,ai=0,al=0,c="com",cat="cavalry",cb=40,hp=4672,lg=true,ma=38,mcp=650,md=45,men=1,rcp=0,spd=7.8}
C.units["wh2_dlc11_vmp_inf_crossbowmen"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=6210,ma=14,mcp=100,md=17,men=90,rcp=400,spd=3.3}
C.units["wh2_dlc11_vmp_inf_handgunners"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=6750,ma=16,mcp=120,md=17,men=90,rcp=480,spd=3.3}
C.units["wh2_dlc11_vmp_mon_varghulf_summoned"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=8248,lg=true,ma=50,mcp=700,md=42,men=1,rcp=0,spd=8}
C.units["wh2_dlc12_lzd_cav_cold_one_spearriders_ror_0"] = {a=90,ai=0,al=14,c="cav_mel",cat="cavalry",cb=32,hp=6096,lg=true,ma=34,mcp=1300,md=36,men=48,rcp=0,spd=6.6}
C.units["wh2_dlc12_lzd_cav_ripperdactyl_riders_0"] = {a=45,ai=15,al=0,c="cav_mel",cat="cavalry",cb=52,hp=6170,lg=true,ma=44,mcp=1150,md=25,men=10,rcp=0,spd=6}
C.units["wh2_dlc12_lzd_cav_ripperdactyl_riders_0_blessed"] = {a=65,ai=15,al=0,c="cav_mel",cat="cavalry",cb=52,hp=7080,lg=true,ma=55,mcp=1150,md=25,men=10,rcp=0,spd=6}
C.units["wh2_dlc12_lzd_cav_ripperdactyl_riders_ror_0"] = {a=45,ai=0,al=15,c="cav_mel",cat="cavalry",cb=52,hp=6170,lg=true,ma=54,mcp=1450,md=32,men=10,rcp=0,spd=6}
C.units["wh2_dlc12_lzd_cav_terradon_riders_0_tlaqua"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=16,hp=3640,lg=true,ma=26,mcp=96,md=22,men=10,rcp=384,spd=6}
C.units["wh2_dlc12_lzd_cav_terradon_riders_1_tlaqua"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=16,hp=3640,lg=true,ma=26,mcp=120,md=22,men=10,rcp=480,spd=6}
C.units["wh2_dlc12_lzd_cav_terradon_riders_ror_0"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=16,hp=3640,lg=true,ma=34,mcp=200,md=29,men=10,rcp=650,spd=6}
C.units["wh2_dlc12_lzd_cha_skink_chief_red_crested_0"] = {a=50,ai=0,al=30,c="com",cat="inf_melee",cb=40,hp=3772,ma=55,mcp=650,md=45,men=1,rcp=0,spd=4.6}
C.units["wh2_dlc12_lzd_cha_skink_chief_red_crested_1"] = {a=80,ai=0,al=30,c="com",cat="cavalry",cb=65,hp=4372,lg=true,ma=55,mcp=1050,md=45,men=1,rcp=0,spd=7.8}
C.units["wh2_dlc12_lzd_cha_skink_chief_red_crested_2"] = {a=50,ai=20,al=0,c="com",cat="cavalry",cb=55,hp=4372,lg=true,ma=55,mcp=1150,md=45,men=1,rcp=0,spd=6}
C.units["wh2_dlc12_lzd_cha_skink_chief_red_crested_3"] = {a=130,ai=18,al=0,c="com",cat="war_beast",cb=70,hp=49280,lg=true,ma=26,mcp=1100,md=32,men=5,rcp=1100,spd=5}
C.units["wh2_dlc12_lzd_cha_skink_priest_beasts_4"] = {a=130,ai=18,al=0,c="com",cat="war_beast",cb=70,hp=49280,lg=true,ma=26,mcp=1100,md=32,men=5,rcp=1100,spd=5}
C.units["wh2_dlc12_lzd_cha_skink_priest_heavens_4"] = {a=130,ai=18,al=0,c="com",cat="war_beast",cb=70,hp=49280,lg=true,ma=26,mcp=1100,md=32,men=5,rcp=1100,spd=5}
C.units["wh2_dlc12_lzd_cha_tehenhauin_0"] = {a=75,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=4348,ma=55,mcp=1000,md=45,men=1,rcp=0,spd=4.6}
C.units["wh2_dlc12_lzd_cha_tehenhauin_1"] = {a=100,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4948,lg=true,ma=55,mcp=1300,md=45,men=1,rcp=0,spd=7.8}
C.units["wh2_dlc12_lzd_cha_tehenhauin_2"] = {a=75,ai=20,al=0,c="com",cat="cavalry",cb=55,hp=4948,lg=true,ma=55,mcp=1500,md=45,men=1,rcp=0,spd=6}
C.units["wh2_dlc12_lzd_cha_tehenhauin_3"] = {a=130,ai=18,al=0,c="com",cat="war_beast",cb=70,hp=50380,lg=true,ma=26,mcp=1100,md=32,men=5,rcp=1100,spd=5}
C.units["wh2_dlc12_lzd_cha_tiktaqto_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=3772,ma=55,mcp=700,md=50,men=1,rcp=0,spd=4.6}
C.units["wh2_dlc12_lzd_cha_tiktaqto_1"] = {a=30,ai=0,al=0,c="com",cat="cavalry",cb=75,hp=4400,lg=true,ma=55,mcp=800,md=50,men=1,rcp=0,spd=6}
C.units["wh2_dlc12_lzd_inf_saurus_warriors_ror_0"] = {a=75,ai=0,al=16,c="inf_mel",cat="inf_melee",cb=10,hp=10200,ma=31,mcp=1000,md=48,men=100,rcp=0,spd=3.1}
C.units["wh2_dlc12_lzd_inf_skink_red_crested_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=25,hp=8040,ma=26,mcp=525,md=20,men=120,rcp=0,spd=4.6}
C.units["wh2_dlc12_lzd_inf_skink_red_crested_ror_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=25,hp=8040,ma=34,mcp=775,md=27,men=120,rcp=0,spd=4.6}
C.units["wh2_dlc12_lzd_inf_temple_guards_ror_0"] = {a=85,ai=0,al=16,c="inf_mel",cat="inf_melee",cb=14,hp=10700,ma=39,mcp=1550,md=48,men=100,rcp=0,spd=3.1}
C.units["wh2_dlc12_lzd_lzd_cha_kroak_0"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=4,hp=6794,lg=true,ma=26,mcp=1400,md=12,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc12_lzd_lzd_cha_kroak_0_boss"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=4,hp=6794,lg=true,ma=26,mcp=1200,md=12,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc12_lzd_mon_ancient_salamander_0"] = {a=95,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=30,hp=6168,lg=true,ma=32,mcp=300,md=29,men=1,rcp=750,spd=7.5}
C.units["wh2_dlc12_lzd_mon_ancient_salamander_0_blessed"] = {a=95,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=30,hp=7092,lg=true,ma=32,mcp=300,md=29,men=1,rcp=750,spd=7.5}
C.units["wh2_dlc12_lzd_mon_ancient_stegadon_1"] = {a=130,ai=18,al=0,c="inf_mel",cat="war_beast",cb=70,hp=49270,lg=true,ma=26,mcp=1200,md=32,men=5,rcp=750,spd=5}
C.units["wh2_dlc12_lzd_mon_ancient_stegadon_ror_0"] = {a=130,ai=18,al=0,c="inf_mel",cat="war_beast",cb=70,hp=49270,lg=true,ma=34,mcp=1600,md=41,men=5,rcp=850,spd=5}
C.units["wh2_dlc12_lzd_mon_bastiladon_3"] = {a=140,ai=15,al=0,c="inf_mel",cat="war_beast",cb=34,hp=30792,lg=true,ma=22,mcp=1000,md=28,men=4,rcp=0,spd=4}
C.units["wh2_dlc12_lzd_mon_salamander_pack_0"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=28,hp=4160,ma=25,mcp=250,md=22,men=32,rcp=600,spd=7}
C.units["wh2_dlc12_lzd_mon_salamander_pack_0_blessed"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=28,hp=4736,ma=25,mcp=250,md=22,men=32,rcp=600,spd=7}
C.units["wh2_dlc12_lzd_mon_salamander_pack_ror_0"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=28,hp=4160,ma=32,mcp=300,md=29,men=32,rcp=800,spd=7}
C.units["wh2_dlc12_skv_art_warp_lightning_cannon_ror_0"] = {a=30,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=2688,ma=22,mcp=120,md=22,men=56,rcp=1080,spd=4.2}
C.units["wh2_dlc12_skv_art_warplock_jezzails_ror_tech_lab_0"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=3936,ma=22,mcp=250,md=22,men=32,rcp=1250,spd=4.2}
C.units["wh2_dlc12_skv_cha_ikit_claw_0"] = {a=110,ai=0,al=22,c="com",cat="inf_melee",cb=30,hp=4288,ma=45,mcp=500,md=56,men=1,rcp=500,spd=4}
C.units["wh2_dlc12_skv_cha_ikit_claw_1"] = {a=110,ai=35,al=0,c="com",cat="war_machine",cb=55,hp=5288,ma=40,mcp=1250,md=36,men=1,rcp=0,spd=4}
C.units["wh2_dlc12_skv_cha_ikit_claw_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=50,hp=158200,lg=true,ma=28,mcp=1000,md=36,men=25,rcp=750,spd=3.3}
C.units["wh2_dlc12_skv_cha_warlock_master_0"] = {a=90,ai=25,al=0,c="com",cat="inf_melee",cb=18,hp=3920,ma=40,mcp=700,md=52,men=1,rcp=0,spd=4.2}
C.units["wh2_dlc12_skv_cha_warlock_master_1"] = {a=100,ai=35,al=0,c="com",cat="war_machine",cb=55,hp=4920,ma=35,mcp=1200,md=32,men=1,rcp=0,spd=4.2}
C.units["wh2_dlc12_skv_cha_warlock_master_2"] = {a=100,ai=30,al=0,c="com",cat="war_machine",cb=50,hp=155500,ma=26,mcp=1500,md=37,men=25,rcp=0,spd=4.2}
C.units["wh2_dlc12_skv_inf_clanrats_ror_0"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=9600,ma=31,mcp=500,md=29,men=160,rcp=0,spd=4.2}
C.units["wh2_dlc12_skv_inf_plague_monk_censer_bearer_ror_0"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=34,hp=9600,ma=43,mcp=1250,md=38,men=120,rcp=0,spd=4.2}
C.units["wh2_dlc12_skv_inf_ratling_gun_0"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=3936,ma=16,mcp=50,md=16,men=32,rcp=750,spd=3.8}
C.units["wh2_dlc12_skv_inf_ratling_gun_ror_0"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=3936,ma=22,mcp=100,md=22,men=32,rcp=950,spd=3.8}
C.units["wh2_dlc12_skv_inf_ratling_gun_ror_tech_lab_0"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=3936,ma=22,mcp=120,md=22,men=32,rcp=1130,spd=3.8}
C.units["wh2_dlc12_skv_inf_stormvermin_ror_0"] = {a=90,ai=0,al=17,c="inf_mel",cat="inf_melee",cb=10,hp=9920,ma=41,mcp=1400,md=43,men=160,rcp=0,spd=3.8}
C.units["wh2_dlc12_skv_inf_warpfire_thrower_ror_tech_lab_0"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=5904,ma=32,mcp=70,md=34,men=48,rcp=630,spd=3.8}
C.units["wh2_dlc12_skv_inf_warplock_jezzails_0"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=3936,ma=16,mcp=150,md=16,men=32,rcp=1050,spd=4.2}
C.units["wh2_dlc12_skv_inf_warplock_jezzails_ror_0"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=3936,ma=22,mcp=200,md=22,men=32,rcp=1250,spd=4.2}
C.units["wh2_dlc12_skv_veh_doom_flayer_0"] = {a=90,ai=35,al=0,c="chariot",cat="war_machine",cb=40,hp=6064,lg=true,ma=25,mcp=1200,md=26,men=8,rcp=0,spd=4.2}
C.units["wh2_dlc12_skv_veh_doom_flayer_ror_0"] = {a=90,ai=35,al=0,c="chariot",cat="war_machine",cb=40,hp=6064,lg=true,ma=32,mcp=1400,md=34,men=8,rcp=0,spd=4.2}
C.units["wh2_dlc12_skv_veh_doom_flayer_ror_tech_lab_0"] = {a=90,ai=35,al=0,c="chariot",cat="war_machine",cb=40,hp=6064,lg=true,ma=32,mcp=1300,md=34,men=8,rcp=0,spd=4.2}
C.units["wh2_dlc12_skv_veh_doomwheel_ror_0"] = {a=100,ai=30,al=0,c="chariot",cat="war_machine",cb=50,hp=155500,lg=true,ma=34,mcp=1100,md=46,men=25,rcp=550,spd=4.2}
C.units["wh2_dlc12_skv_veh_doomwheel_ror_tech_lab_0"] = {a=100,ai=30,al=0,c="chariot",cat="war_machine",cb=50,hp=182200,lg=true,ma=34,mcp=980,md=46,men=25,rcp=420,spd=4.2}
C.units["wh2_dlc13_emp_art_mortar_ror_0"] = {a=20,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2464,ma=10,mcp=60,md=6,men=44,rcp=740,spd=3}
C.units["wh2_dlc13_emp_cav_empire_knights_ror_0"] = {a=110,ai=0,al=0,c="cav_shk",cat="cavalry",cb=48,hp=6000,lg=true,ma=26,mcp=900,md=34,men=60,rcp=0,spd=7.8}
C.units["wh2_dlc13_emp_cav_empire_knights_ror_1"] = {a=120,ai=0,al=0,c="cav_shk",cat="cavalry",cb=48,hp=6000,lg=true,ma=30,mcp=1000,md=30,men=60,rcp=0,spd=7.8}
C.units["wh2_dlc13_emp_cav_empire_knights_ror_2"] = {a=110,ai=0,al=0,c="cav_shk",cat="cavalry",cb=34,hp=6000,lg=true,ma=32,mcp=1000,md=32,men=60,rcp=0,spd=7.8}
C.units["wh2_dlc13_emp_cav_outriders_ror_0"] = {a=30,ai=0,al=0,c="cav_mis",cat="cavalry",cb=12,hp=4980,lg=true,ma=18,mcp=128,md=14,men=60,rcp=512,spd=8.4}
C.units["wh2_dlc13_emp_cav_pistoliers_ror_0"] = {a=50,ai=0,al=0,c="cav_mis",cat="cavalry",cb=30,hp=4080,lg=true,ma=26,mcp=300,md=24,men=60,rcp=400,spd=9}
C.units["wh2_dlc13_emp_cha_hunter_doctor_hertwig_van_hal_0"] = {a=45,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=3988,ma=40,mcp=240,md=38,men=1,rcp=360,spd=3.4}
C.units["wh2_dlc13_emp_cha_hunter_jorek_grimm_0"] = {a=120,ai=0,al=0,c="com",cat="inf_ranged",cb=14,hp=4188,ma=40,mcp=300,md=35,men=1,rcp=450,spd=3.2}
C.units["wh2_dlc13_emp_cha_hunter_kalara_of_wydrioth_0"] = {a=50,ai=0,al=0,c="com",cat="inf_ranged",cb=28,hp=3988,ma=58,mcp=140,md=48,men=1,rcp=560,spd=4.2}
C.units["wh2_dlc13_emp_cha_hunter_rodrik_l_anguille_0"] = {a=95,ai=0,al=20,c="com",cat="inf_melee",cb=45,hp=4088,ma=50,mcp=475,md=45,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc13_emp_cha_huntsmarshal_0"] = {a=45,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=3908,ma=43,mcp=250,md=40,men=1,rcp=500,spd=3.6}
C.units["wh2_dlc13_emp_cha_markus_wulfhart_0"] = {a=50,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=4268,ma=58,mcp=300,md=45,men=1,rcp=700,spd=3.6}
C.units["wh2_dlc13_emp_inf_archers_0"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=6210,ma=14,mcp=100,md=17,men=90,rcp=250,spd=3.3}
C.units["wh2_dlc13_emp_inf_archers_ror_0"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=6210,ma=19,mcp=100,md=23,men=90,rcp=450,spd=3.3}
C.units["wh2_dlc13_emp_inf_crossbowmen_ror_0"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=6210,ma=14,mcp=100,md=17,men=90,rcp=375,spd=3.3}
C.units["wh2_dlc13_emp_inf_greatswords_ror_0"] = {a=95,ai=14,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9120,ma=32,mcp=1000,md=30,men=120,rcp=0,spd=2.8}
C.units["wh2_dlc13_emp_inf_halberdiers_ror_0"] = {a=30,ai=0,al=16,c="inf_mel",cat="inf_melee",cb=8,hp=8760,ma=30,mcp=700,md=46,men=120,rcp=0,spd=3.6}
C.units["wh2_dlc13_emp_inf_handgunners_ror_0"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=6210,ma=28,mcp=120,md=25,men=90,rcp=680,spd=3.3}
C.units["wh2_dlc13_emp_inf_huntsmen_0"] = {a=25,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=6210,ma=16,mcp=225,md=17,men=90,rcp=425,spd=3.6}
C.units["wh2_dlc13_emp_inf_huntsmen_ror_0"] = {a=25,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=14,hp=6210,ma=36,mcp=275,md=32,men=90,rcp=525,spd=3.6}
C.units["wh2_dlc13_emp_inf_spearmen_ror_0"] = {a=70,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=4,hp=8280,ma=20,mcp=600,md=42,men=120,rcp=0,spd=3}
C.units["wh2_dlc13_emp_inf_swordsmen_ror_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8280,ma=34,mcp=550,md=32,men=120,rcp=0,spd=3}
C.units["wh2_dlc13_emp_veh_steam_tank_driver_ror_0"] = {a=160,ai=15,al=0,c="chariot",cat="war_machine",cb=80,hp=27180,lg=true,ma=36,mcp=800,md=20,men=3,rcp=1600,spd=4}
C.units["wh2_dlc13_emp_veh_war_wagon_0"] = {a=80,ai=0,al=0,c="chariot",cat="war_machine",cb=29,hp=27072,lg=true,ma=18,mcp=250,md=12,men=24,rcp=600,spd=6}
C.units["wh2_dlc13_emp_veh_war_wagon_1"] = {a=80,ai=0,al=0,c="chariot",cat="war_machine",cb=29,hp=9024,lg=true,ma=18,mcp=250,md=12,men=8,rcp=700,spd=6}
C.units["wh2_dlc13_emp_veh_war_wagon_ror_0"] = {a=80,ai=0,al=0,c="chariot",cat="war_machine",cb=29,hp=9024,lg=true,ma=24,mcp=350,md=17,men=8,rcp=1550,spd=6}
C.units["wh2_dlc13_huntmarshall_veh_obsinite_gyrocopter_0"] = {a=120,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=25,hp=4488,lg=true,ma=30,mcp=140,md=15,men=12,rcp=590,spd=7}
C.units["wh2_dlc13_lzd_cha_gor_rok_0"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=5136,ma=45,mcp=900,md=60,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc13_lzd_cha_kroxigor_ancient_0"] = {a=120,ai=25,al=0,c="com",cat="inf_melee",cb=24,hp=6368,lg=true,ma=49,mcp=1200,md=32,men=1,rcp=0,spd=4.6}
C.units["wh2_dlc13_lzd_cha_nakai_0"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=32,hp=7368,lg=true,ma=60,mcp=1550,md=40,men=1,rcp=0,spd=5}
C.units["wh2_dlc13_lzd_cha_slann_mage_priest_beasts_0"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=14,hp=6544,lg=true,ma=24,mcp=650,md=32,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc13_lzd_cha_slann_mage_priest_death_0"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=14,hp=6544,lg=true,ma=24,mcp=650,md=32,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc13_lzd_cha_slann_mage_priest_fire_0"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=14,hp=6544,lg=true,ma=24,mcp=650,md=32,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc13_lzd_cha_slann_mage_priest_life_0"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=14,hp=6544,lg=true,ma=24,mcp=650,md=32,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc13_lzd_cha_slann_mage_priest_metal_0"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=14,hp=6544,lg=true,ma=24,mcp=650,md=32,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc13_lzd_cha_slann_mage_priest_shadows_0"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=14,hp=6544,lg=true,ma=24,mcp=650,md=32,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc13_lzd_mon_dread_saurian_0"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=14992,lg=true,ma=52,mcp=2400,md=32,men=1,rcp=0,spd=6}
C.units["wh2_dlc13_lzd_mon_dread_saurian_1"] = {a=120,ai=0,al=0,c="inf_mel",cat="war_beast",cb=30,hp=179904,lg=true,ma=52,mcp=2400,md=32,men=12,rcp=700,spd=6}
C.units["wh2_dlc13_lzd_mon_dread_saurian_ror_0"] = {a=120,ai=0,al=0,c="inf_mel",cat="war_beast",cb=30,hp=179904,lg=true,ma=64,mcp=2700,md=41,men=12,rcp=1000,spd=6}
C.units["wh2_dlc13_lzd_mon_razordon_pack_0"] = {a=90,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=20,hp=4160,ma=20,mcp=250,md=29,men=32,rcp=550,spd=7}
C.units["wh2_dlc13_lzd_mon_razordon_pack_0_blessed"] = {a=110,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=20,hp=4736,ma=20,mcp=250,md=29,men=32,rcp=550,spd=7}
C.units["wh2_dlc13_lzd_mon_razordon_pack_ror_0"] = {a=90,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=20,hp=4160,ma=27,mcp=350,md=37,men=32,rcp=725,spd=7}
C.units["wh2_dlc13_lzd_mon_razordon_pack_summoned_0"] = {a=90,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=20,hp=4160,ma=20,mcp=250,md=29,men=32,rcp=550,spd=7}
C.units["wh2_dlc13_lzd_mon_sacred_kroxigors_0"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=8992,lg=true,ma=38,mcp=1250,md=32,men=16,rcp=0,spd=4.6}
C.units["wh2_dlc13_lzd_mon_sacred_kroxigors_0_blessed"] = {a=140,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=10320,lg=true,ma=38,mcp=1250,md=32,men=16,rcp=0,spd=4.6}
C.units["wh2_dlc13_lzd_mon_sacred_kroxigors_ror_0"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=8992,lg=true,ma=47,mcp=1700,md=41,men=16,rcp=0,spd=4.6}
C.units["wh2_dlc14_brt_cha_henri_le_massif_0"] = {a=85,ai=0,al=20,c="com",cat="inf_melee",cb=40,hp=3788,ma=45,mcp=600,md=45,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc14_brt_cha_henri_le_massif_3"] = {a=90,ai=0,al=20,c="com",cat="war_beast",cb=75,hp=6156,lg=true,ma=45,mcp=1550,md=35,men=1,rcp=0,spd=7}
C.units["wh2_dlc14_brt_cha_henri_le_massif_4"] = {a=105,ai=0,al=20,c="com",cat="cavalry",cb=70,hp=4468,lg=true,ma=45,mcp=850,md=45,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc14_brt_cha_repanse_de_lyonesse_0"] = {a=90,ai=20,al=0,c="com",cat="inf_melee",cb=40,hp=4168,ma=45,mcp=850,md=57,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc14_brt_cha_repanse_de_lyonesse_1"] = {a=110,ai=20,al=0,c="com",cat="cavalry",cb=65,hp=4808,lg=true,ma=45,mcp=1100,md=57,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc14_def_cav_scourgerunner_chariot_0"] = {a=80,ai=18,al=0,c="chariot",cat="war_machine",cb=40,hp=14088,lg=true,ma=24,mcp=400,md=23,men=12,rcp=550,spd=8.4}
C.units["wh2_dlc14_def_cav_scourgerunner_chariot_ror_0"] = {a=80,ai=18,al=0,c="chariot",cat="war_machine",cb=40,hp=14088,lg=true,ma=31,mcp=550,md=30,men=12,rcp=650,spd=8.4}
C.units["wh2_dlc14_def_cha_high_beastmaster_0"] = {a=50,ai=0,al=25,c="com",cat="inf_melee",cb=40,hp=3928,ma=50,mcp=750,md=55,men=1,rcp=0,spd=4.6}
C.units["wh2_dlc14_def_cha_high_beastmaster_1"] = {a=80,ai=28,al=0,c="com",cat="war_machine",cb=40,hp=15624,lg=true,ma=36,mcp=300,md=25,men=3,rcp=900,spd=8.4}
C.units["wh2_dlc14_def_cha_high_beastmaster_2"] = {a=80,ai=0,al=15,c="com",cat="war_beast",cb=65,hp=5468,lg=true,ma=55,mcp=1400,md=45,men=1,rcp=0,spd=7}
C.units["wh2_dlc14_def_cha_malus_darkblade_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=4288,ma=60,mcp=1600,md=60,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc14_def_cha_malus_darkblade_0_mp"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=4288,ma=60,mcp=1600,md=60,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc14_def_cha_malus_darkblade_1"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=65,hp=4972,lg=true,ma=60,mcp=1950,md=60,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc14_def_cha_malus_darkblade_1_mp"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=65,hp=4972,lg=true,ma=60,mcp=1950,md=60,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc14_def_cha_malus_darkblade_tzarkan_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=4856,ma=72,mcp=1600,md=50,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc14_def_cha_malus_darkblade_tzarkan_0_final_battle"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=4856,ma=72,mcp=1600,md=50,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc14_def_cha_malus_darkblade_tzarkan_1"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=65,hp=5540,lg=true,ma=72,mcp=1950,md=50,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc14_def_cha_master_0"] = {a=90,ai=0,al=30,c="com",cat="inf_melee",cb=20,hp=3700,ma=36,mcp=600,md=50,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc14_def_cha_master_1"] = {a=90,ai=0,al=30,c="com",cat="cavalry",cb=55,hp=4288,lg=true,ma=36,mcp=800,md=50,men=1,rcp=0,spd=9.2}
C.units["wh2_dlc14_def_cha_master_2"] = {a=110,ai=0,al=30,c="com",cat="cavalry",cb=55,hp=4478,lg=true,ma=36,mcp=950,md=50,men=1,rcp=0,spd=6.8}
C.units["wh2_dlc14_def_cha_master_3"] = {a=90,ai=0,al=30,c="com",cat="cavalry",cb=60,hp=4606,lg=true,ma=36,mcp=1150,md=50,men=1,rcp=0,spd=8.2}
C.units["wh2_dlc14_def_cha_master_4"] = {a=110,ai=20,al=0,c="com",cat="war_machine",cb=85,hp=10180,lg=true,ma=32,mcp=1100,md=28,men=2,rcp=0,spd=6.6}
C.units["wh2_dlc14_def_inf_harpies_ror_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=5220,ma=29,mcp=850,md=48,men=60,rcp=0,spd=4.8}
C.units["wh2_dlc14_def_mon_bloodwrack_medusa_0"] = {a=30,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=52,hp=6420,lg=true,ma=45,mcp=500,md=40,men=1,rcp=900,spd=5.8}
C.units["wh2_dlc14_def_mon_bloodwrack_medusa_ror_0"] = {a=30,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=52,hp=6420,lg=true,ma=56,mcp=550,md=50,men=1,rcp=1200,spd=5.8}
C.units["wh2_dlc14_def_veh_bloodwrack_shrine_0"] = {a=80,ai=20,al=0,c="chariot",cat="war_machine",cb=39,hp=21276,lg=true,ma=22,mcp=600,md=26,men=3,rcp=1000,spd=5.8}
C.units["wh2_dlc14_skv_cha_deathmaster_snikch_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=60,hp=3920,ma=70,mcp=1050,md=50,men=1,rcp=0,spd=5.4}
C.units["wh2_dlc14_skv_cha_deathmaster_snikch_tzarkan_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=60,hp=4856,ma=80,mcp=1050,md=50,men=1,rcp=0,spd=5.4}
C.units["wh2_dlc14_skv_cha_eshin_sorcerer_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3600,ma=35,mcp=350,md=40,men=1,rcp=0,spd=4.2}
C.units["wh2_dlc14_skv_cha_master_assassin_0"] = {a=30,ai=20,al=0,c="com",cat="inf_ranged",cb=60,hp=3688,ma=60,mcp=900,md=45,men=1,rcp=0,spd=5.4}
C.units["wh2_dlc14_skv_inf_death_runners_ror_0"] = {a=20,ai=10,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=5760,ma=41,mcp=1150,md=36,men=72,rcp=0,spd=5.4}
C.units["wh2_dlc14_skv_inf_eshin_triads_0"] = {a=20,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=10,hp=5760,ma=30,mcp=750,md=28,men=72,rcp=0,spd=5.4}
C.units["wh2_dlc14_skv_inf_eshin_triads_ror_0"] = {a=20,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=10,hp=5760,ma=38,mcp=950,md=36,men=72,rcp=0,spd=5.4}
C.units["wh2_dlc14_skv_inf_eshin_triads_ror_summoned_0"] = {a=20,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=0,hp=5760,ma=0,mcp=950,md=0,men=72,rcp=0,spd=5.4}
C.units["wh2_dlc14_skv_inf_poison_wind_mortar_0"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=3936,ma=14,mcp=50,md=16,men=12,rcp=1000,spd=3.8}
C.units["wh2_dlc14_skv_inf_poison_wind_mortar_ror_0"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=3936,ma=19,mcp=50,md=22,men=12,rcp=1450,spd=3.8}
C.units["wh2_dlc14_skv_inf_stormvermin_1_summoned"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9920,ma=38,mcp=950,md=36,men=160,rcp=0,spd=3.8}
C.units["wh2_dlc14_skv_inf_warp_grinder_0"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=4416,ma=20,mcp=240,md=18,men=24,rcp=0,spd=3.8}
C.units["wh2_dlc15_grn_cav_forest_goblin_spider_riders_waaagh_0"] = {a=45,ai=0,al=0,c="cav_mis",cat="cavalry",cb=14,hp=4620,lg=true,ma=15,mcp=100,md=22,men=60,rcp=375,spd=7.8}
C.units["wh2_dlc15_grn_cav_squig_hoppers_waaagh_0"] = {a=55,ai=10,al=0,c="cav_mel",cat="cavalry",cb=30,hp=5400,lg=true,ma=28,mcp=650,md=30,men=60,rcp=0,spd=8.2}
C.units["wh2_dlc15_grn_cha_grom_the_paunch_0"] = {a=100,ai=30,al=0,c="com",cat="war_machine",cb=90,hp=5724,lg=true,ma=40,mcp=1250,md=30,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_grn_cha_night_goblin_warboss_0_big"] = {a=25,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=5948,lg=true,ma=45,mcp=550,md=53,men=1,rcp=0,spd=6}
C.units["wh2_dlc15_grn_cha_river_troll_hag_0"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=24,hp=5619,lg=true,ma=25,mcp=700,md=32,men=1,rcp=0,spd=5.4}
C.units["wh2_dlc15_grn_mon_arachnarok_spider_waaagh_0"] = {a=120,ai=0,al=20,c="inf_mel",cat="war_beast",cb=40,hp=79720,lg=true,ma=70,mcp=1900,md=38,men=8,rcp=0,spd=5.7}
C.units["wh2_dlc15_grn_mon_feral_hydra_waaagh_0"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=10400,lg=true,ma=52,mcp=1600,md=32,men=1,rcp=0,spd=4.6}
C.units["wh2_dlc15_grn_mon_river_trolls_0"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=7904,lg=true,ma=34,mcp=900,md=40,men=16,rcp=0,spd=5.4}
C.units["wh2_dlc15_grn_mon_river_trolls_ror_0"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=7904,lg=true,ma=43,mcp=1200,md=50,men=16,rcp=0,spd=5.4}
C.units["wh2_dlc15_grn_mon_rogue_idol_0"] = {a=150,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=16000,lg=true,ma=60,mcp=2100,md=24,men=1,rcp=0,spd=3.1}
C.units["wh2_dlc15_grn_mon_rogue_idol_ror_0"] = {a=150,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=16000,lg=true,ma=73,mcp=2000,md=31,men=1,rcp=600,spd=3.1}
C.units["wh2_dlc15_grn_mon_rogue_idol_summoned_0"] = {a=150,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=16000,lg=true,ma=60,mcp=2100,md=24,men=1,rcp=0,spd=3.1}
C.units["wh2_dlc15_grn_mon_stone_trolls_0"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=34,hp=7904,lg=true,ma=36,mcp=1100,md=32,men=16,rcp=0,spd=5.4}
C.units["wh2_dlc15_grn_mon_wyvern_waaagh_0"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=80,hp=6640,lg=true,ma=44,mcp=1300,md=28,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_grn_veh_snotling_pump_wagon_0"] = {a=50,ai=15,al=0,c="chariot",cat="war_machine",cb=30,hp=9792,lg=true,ma=20,mcp=450,md=22,men=24,rcp=0,spd=6}
C.units["wh2_dlc15_grn_veh_snotling_pump_wagon_flappas_0"] = {a=50,ai=15,al=0,c="chariot",cat="war_machine",cb=45,hp=9792,lg=true,ma=26,mcp=650,md=24,men=24,rcp=0,spd=7}
C.units["wh2_dlc15_grn_veh_snotling_pump_wagon_roller_0"] = {a=60,ai=15,al=0,c="chariot",cat="war_machine",cb=35,hp=12192,lg=true,ma=30,mcp=900,md=22,men=24,rcp=0,spd=6}
C.units["wh2_dlc15_grn_veh_snotling_pump_wagon_ror_0"] = {a=50,ai=15,al=0,c="chariot",cat="war_machine",cb=30,hp=9792,lg=true,ma=27,mcp=800,md=29,men=24,rcp=0,spd=6}
C.units["wh2_dlc15_hef_cha_alastar_1"] = {a=110,ai=25,al=0,c="com",cat="war_machine",cb=68,hp=10944,lg=true,ma=42,mcp=1650,md=24,men=2,rcp=0,spd=8.2}
C.units["wh2_dlc15_hef_cha_archmage_beasts_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=36,mcp=450,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc15_hef_cha_archmage_beasts_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4140,lg=true,ma=36,mcp=700,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_beasts_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8896,lg=true,ma=24,mcp=950,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_beasts_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=5072,lg=true,ma=44,mcp=1000,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_cha_archmage_beasts_4"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=50,mcp=2200,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_cha_archmage_death_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=36,mcp=450,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc15_hef_cha_archmage_death_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4140,lg=true,ma=36,mcp=700,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_death_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8896,lg=true,ma=24,mcp=950,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_death_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=5072,lg=true,ma=44,mcp=1000,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_cha_archmage_death_4"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=50,mcp=2200,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_cha_archmage_fire_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=36,mcp=450,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc15_hef_cha_archmage_fire_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4140,lg=true,ma=36,mcp=700,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_fire_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8896,lg=true,ma=24,mcp=950,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_fire_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=5072,lg=true,ma=44,mcp=1000,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_cha_archmage_fire_4"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=50,mcp=2200,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_cha_archmage_heavens_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=36,mcp=450,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc15_hef_cha_archmage_heavens_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4140,lg=true,ma=36,mcp=700,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_heavens_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8896,lg=true,ma=24,mcp=950,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_heavens_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=5072,lg=true,ma=44,mcp=1000,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_cha_archmage_heavens_4"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=50,mcp=2200,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_cha_archmage_high_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=36,mcp=450,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc15_hef_cha_archmage_high_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4140,lg=true,ma=36,mcp=700,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_high_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8896,lg=true,ma=24,mcp=950,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_high_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=5072,lg=true,ma=44,mcp=1000,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_cha_archmage_high_4"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=50,mcp=2200,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_cha_archmage_life_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=36,mcp=450,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc15_hef_cha_archmage_life_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4140,lg=true,ma=36,mcp=700,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_life_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8896,lg=true,ma=24,mcp=950,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_life_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=5072,lg=true,ma=44,mcp=1000,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_cha_archmage_life_4"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=50,mcp=2200,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_cha_archmage_light_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=36,mcp=450,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc15_hef_cha_archmage_light_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4140,lg=true,ma=36,mcp=700,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_light_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8896,lg=true,ma=24,mcp=950,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_light_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=5072,lg=true,ma=44,mcp=1000,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_cha_archmage_light_4"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=50,mcp=2200,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_cha_archmage_metal_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=36,mcp=450,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc15_hef_cha_archmage_metal_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4140,lg=true,ma=36,mcp=700,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_metal_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8896,lg=true,ma=24,mcp=950,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_metal_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=5072,lg=true,ma=44,mcp=1000,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_cha_archmage_metal_4"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=50,mcp=2200,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_cha_archmage_shadows_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3820,ma=36,mcp=450,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc15_hef_cha_archmage_shadows_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4140,lg=true,ma=36,mcp=700,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_shadows_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8896,lg=true,ma=24,mcp=950,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_archmage_shadows_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=5072,lg=true,ma=44,mcp=1000,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_cha_archmage_shadows_4"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=50,mcp=2200,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_cha_eltharion_the_grim_0"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4288,ma=65,mcp=1100,md=55,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc15_hef_cha_eltharion_the_grim_1"] = {a=100,ai=0,al=0,c="com",cat="cavalry",cb=55,hp=4892,lg=true,ma=65,mcp=1350,md=55,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_eltharion_the_grim_2"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6676,lg=true,ma=56,mcp=2000,md=44,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_cha_imrik_0"] = {a=110,ai=0,al=30,c="com",cat="inf_melee",cb=45,hp=4130,ma=60,mcp=1200,md=60,men=1,rcp=0,spd=3.6}
C.units["wh2_dlc15_hef_cha_imrik_1"] = {a=110,ai=0,al=30,c="com",cat="cavalry",cb=90,hp=4856,lg=true,ma=60,mcp=1600,md=60,men=1,rcp=0,spd=7.8}
C.units["wh2_dlc15_hef_cha_imrik_2"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=9570,lg=true,ma=74,mcp=2750,md=56,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_cha_mage_beasts_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=36,mcp=300,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc15_hef_cha_mage_beasts_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=36,mcp=550,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_mage_beasts_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8296,lg=true,ma=24,mcp=800,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_mage_death_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=36,mcp=300,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc15_hef_cha_mage_death_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=36,mcp=550,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_mage_death_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8296,lg=true,ma=24,mcp=800,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_mage_fire_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=36,mcp=300,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc15_hef_cha_mage_fire_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=36,mcp=550,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_mage_fire_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8296,lg=true,ma=24,mcp=800,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_mage_fire_3"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=7116,lg=true,ma=50,mcp=1850,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_cha_mage_metal_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=36,mcp=300,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc15_hef_cha_mage_metal_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=36,mcp=550,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_mage_metal_2"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8296,lg=true,ma=24,mcp=800,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_dlc15_hef_cha_prince_6"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=70,hp=6104,lg=true,ma=54,mcp=1550,md=42,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_cha_princess_6"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=70,hp=6104,lg=true,ma=50,mcp=1050,md=38,men=1,rcp=500,spd=7}
C.units["wh2_dlc15_hef_cha_teclis_2"] = {a=50,ai=0,al=0,c="com",cat="war_beast",cb=58,hp=6898,lg=true,ma=46,mcp=2200,md=40,men=1,rcp=0,spd=8}
C.units["wh2_dlc15_hef_inf_archers_ror_0"] = {a=40,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=5670,ma=22,mcp=110,md=24,men=90,rcp=440,spd=3.6}
C.units["wh2_dlc15_hef_inf_mistwalkers_faithbearers_0"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=15,hp=8760,ma=34,mcp=1000,md=30,men=120,rcp=0,spd=3.3}
C.units["wh2_dlc15_hef_inf_mistwalkers_griffon_knights_0"] = {a=80,ai=0,al=0,c="cav_shk",cat="war_beast",cb=45,hp=11400,lg=true,ma=50,mcp=2600,md=32,men=4,rcp=0,spd=7}
C.units["wh2_dlc15_hef_inf_mistwalkers_sentinels_0"] = {a=80,ai=0,al=16,c="inf_mis",cat="inf_ranged",cb=4,hp=5440,ma=22,mcp=187,md=40,men=80,rcp=563,spd=3.3}
C.units["wh2_dlc15_hef_inf_mistwalkers_skyhawks_0"] = {a=80,ai=7,al=0,c="inf_mis",cat="inf_ranged",cb=24,hp=4920,ma=42,mcp=325,md=22,men=60,rcp=875,spd=4}
C.units["wh2_dlc15_hef_inf_mistwalkers_spireguard_0"] = {a=80,ai=0,al=16,c="inf_mis",cat="inf_ranged",cb=2,hp=6400,ma=28,mcp=213,md=32,men=80,rcp=637,spd=3.3}
C.units["wh2_dlc15_hef_inf_rangers_0"] = {a=30,ai=8,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=7560,ma=30,mcp=600,md=24,men=120,rcp=0,spd=4}
C.units["wh2_dlc15_hef_inf_silverin_guard_0"] = {a=75,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=4,hp=8160,ma=28,mcp=800,md=42,men=120,rcp=0,spd=3.3}
C.units["wh2_dlc15_hef_mon_arcane_phoenix_0"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=58,hp=6898,lg=true,ma=46,mcp=1850,md=40,men=1,rcp=0,spd=8}
C.units["wh2_dlc15_hef_mon_arcane_phoenix_ror_0"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=58,hp=6898,lg=true,ma=57,mcp=2250,md=50,men=1,rcp=0,spd=8}
C.units["wh2_dlc15_hef_mon_black_dragon_imrik"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=10824,lg=true,ma=54,mcp=2100,md=56,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_mon_black_dragon_imrik_boss"] = {a=100,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=70,hp=14868,lg=true,ma=68,mcp=2100,md=62,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_mon_forest_dragon_0"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=60,hp=7508,lg=true,ma=46,mcp=1800,md=38,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_mon_forest_dragon_imrik"] = {a=80,ai=10,al=0,c="inf_mel",cat="inf_melee",cb=60,hp=8408,lg=true,ma=46,mcp=2000,md=48,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_mon_forest_dragon_imrik_boss"] = {a=80,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=72,hp=13468,lg=true,ma=65,mcp=2000,md=58,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_mon_moon_dragon_imrik"] = {a=85,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=55,hp=9904,lg=true,ma=50,mcp=2000,md=56,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_mon_moon_dragon_imrik_boss"] = {a=85,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=74,hp=14278,lg=true,ma=64,mcp=2000,md=68,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_mon_star_dragon_imrik"] = {a=110,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=55,hp=11166,lg=true,ma=80,mcp=2400,md=64,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_mon_star_dragon_imrik_boss"] = {a=110,ai=40,al=20,c="inf_mel",cat="inf_melee",cb=78,hp=15308,lg=true,ma=88,mcp=2400,md=76,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_mon_sun_dragon_imrik"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=65,hp=8460,lg=true,ma=52,mcp=1900,md=50,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc15_hef_mon_sun_dragon_imrik_boss"] = {a=80,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=70,hp=13848,lg=true,ma=72,mcp=1900,md=60,men=1,rcp=0,spd=7}
C.units["wh2_dlc15_hef_mon_war_lions_of_chrace_0"] = {a=35,ai=12,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=6336,ma=34,mcp=800,md=30,men=24,rcp=0,spd=8.2}
C.units["wh2_dlc15_hef_mon_war_lions_of_chrace_ror_0"] = {a=35,ai=12,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=6336,ma=43,mcp=1050,md=38,men=24,rcp=0,spd=8.2}
C.units["wh2_dlc15_hef_veh_lion_chariot_of_chrace_0"] = {a=80,ai=25,al=0,c="chariot",cat="war_machine",cb=70,hp=12864,lg=true,ma=34,mcp=1250,md=28,men=8,rcp=0,spd=8.2}
C.units["wh2_dlc16_skv_cha_chieftain_0"] = {a=90,ai=0,al=25,c="com",cat="inf_melee",cb=15,hp=3783,ma=40,mcp=550,md=45,men=1,rcp=0,spd=4}
C.units["wh2_dlc16_skv_cha_chieftain_1"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=6091,lg=true,ma=50,mcp=100,md=40,men=1,rcp=0,spd=6}
C.units["wh2_dlc16_skv_cha_ghoritch_0"] = {a=70,ai=30,al=0,c="com",cat="inf_melee",cb=70,hp=7708,lg=true,ma=60,mcp=1600,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc16_skv_cha_ghoritch_0_boss"] = {a=70,ai=30,al=0,c="com",cat="inf_melee",cb=70,hp=7708,lg=true,ma=60,mcp=1600,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc16_skv_cha_packmaster_0"] = {a=20,ai=0,al=20,c="com",cat="inf_melee",cb=20,hp=3572,ma=35,mcp=500,md=40,men=1,rcp=0,spd=4.2}
C.units["wh2_dlc16_skv_cha_packmaster_2"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=65,hp=6003,lg=true,ma=40,mcp=1200,md=30,men=1,rcp=0,spd=9.5}
C.units["wh2_dlc16_skv_cha_throt_the_unclean_0"] = {a=45,ai=0,al=25,c="com",cat="inf_melee",cb=25,hp=5107,ma=50,mcp=800,md=55,men=1,rcp=0,spd=4}
C.units["wh2_dlc16_skv_cha_throt_the_unclean_2"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=65,hp=6609,lg=true,ma=50,mcp=1300,md=45,men=1,rcp=0,spd=9.5}
C.units["wh2_dlc16_skv_cha_warlord_2"] = {a=60,ai=0,al=0,c="com",cat="cavalry",cb=65,hp=6016,lg=true,ma=50,mcp=1250,md=40,men=1,rcp=0,spd=9.5}
C.units["wh2_dlc16_skv_mon_brood_horror_0"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=65,hp=6009,lg=true,ma=40,mcp=1100,md=30,men=1,rcp=0,spd=9.5}
C.units["wh2_dlc16_skv_mon_hell_pit_abomination_ror_0"] = {a=50,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=25,hp=12100,lg=true,ma=52,mcp=2200,md=38,men=1,rcp=0,spd=5.8}
C.units["wh2_dlc16_skv_mon_rat_ogre_mutant"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=60,hp=6508,lg=true,ma=52,mcp=1000,md=38,men=1,rcp=0,spd=7}
C.units["wh2_dlc16_skv_mon_rat_ogre_mutant_ror_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=60,hp=6508,lg=true,ma=63,mcp=1000,md=48,men=1,rcp=0,spd=7}
C.units["wh2_dlc16_skv_mon_rat_ogres_ror_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=46,hp=7728,lg=true,ma=34,mcp=800,md=34,men=16,rcp=0,spd=6}
C.units["wh2_dlc16_skv_mon_rat_ogres_summoned"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=46,hp=7728,lg=true,ma=26,mcp=400,md=26,men=16,rcp=0,spd=6}
C.units["wh2_dlc16_skv_mon_wolf_rats_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=6640,ma=28,mcp=1000,md=19,men=80,rcp=0,spd=9.5}
C.units["wh2_dlc16_skv_mon_wolf_rats_0_summoned"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=6640,ma=28,mcp=500,md=19,men=80,rcp=0,spd=9.5}
C.units["wh2_dlc16_skv_mon_wolf_rats_1"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=6640,ma=28,mcp=1000,md=19,men=80,rcp=0,spd=9.5}
C.units["wh2_dlc16_skv_mon_wolf_rats_1_summoned"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=6640,ma=28,mcp=500,md=19,men=80,rcp=0,spd=9.5}
C.units["wh2_dlc16_wef_cav_glade_riders_2"] = {a=15,ai=0,al=0,c="cav_shk",cat="cavalry",cb=40,hp=4980,lg=true,ma=28,mcp=550,md=32,men=60,rcp=0,spd=9.4}
C.units["wh2_dlc16_wef_cav_great_stag_knights_0"] = {a=60,ai=0,al=0,c="cav_shk",cat="cavalry",cb=70,hp=6784,lg=true,ma=35,mcp=1450,md=32,men=32,rcp=0,spd=9}
C.units["wh2_dlc16_wef_cav_great_stag_knights_ror_0"] = {a=0,ai=0,al=0,c="cav_shk",cat="cavalry",cb=70,hp=6784,lg=true,ma=44,mcp=1850,md=41,men=32,rcp=0,spd=9}
C.units["wh2_dlc16_wef_cha_ancient_treeman_coeddil_0"] = {a=110,ai=0,al=25,c="com",cat="inf_melee",cb=40,hp=10328,lg=true,ma=65,mcp=1800,md=52,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc16_wef_cha_ariel_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=6660,lg=true,ma=40,mcp=1150,md=50,men=1,rcp=0,spd=5.5}
C.units["wh2_dlc16_wef_cha_drycha_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=48,hp=4918,ma=60,mcp=1000,md=40,men=1,rcp=0,spd=4.3}
C.units["wh2_dlc16_wef_cha_female_glade_lord_4"] = {a=60,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=4784,lg=true,ma=65,mcp=550,md=60,men=1,rcp=650,spd=9}
C.units["wh2_dlc16_wef_cha_glade_lord_4"] = {a=60,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=4784,lg=true,ma=65,mcp=550,md=60,men=1,rcp=650,spd=9}
C.units["wh2_dlc16_wef_cha_malicious_ancient_treeman_beasts_0"] = {a=110,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=9828,lg=true,ma=42,mcp=1350,md=48,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc16_wef_cha_malicious_ancient_treeman_life_0"] = {a=110,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=9828,lg=true,ma=42,mcp=1350,md=48,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc16_wef_cha_malicious_ancient_treeman_shadows_0"] = {a=110,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=9828,lg=true,ma=42,mcp=1350,md=48,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc16_wef_cha_malicious_branchwraith_beasts_0"] = {a=60,ai=0,al=0,c="com",cat="inf_melee",cb=32,hp=4168,ma=49,mcp=450,md=35,men=1,rcp=0,spd=4.3}
C.units["wh2_dlc16_wef_cha_malicious_branchwraith_life_0"] = {a=60,ai=0,al=0,c="com",cat="inf_melee",cb=32,hp=4168,ma=49,mcp=450,md=35,men=1,rcp=0,spd=4.3}
C.units["wh2_dlc16_wef_cha_malicious_branchwraith_shadows_0"] = {a=60,ai=0,al=0,c="com",cat="inf_melee",cb=32,hp=4168,ma=49,mcp=450,md=35,men=1,rcp=0,spd=4.3}
C.units["wh2_dlc16_wef_cha_sisters_of_twilight_0"] = {a=50,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=9544,lg=true,ma=60,mcp=650,md=40,men=2,rcp=1000,spd=7}
C.units["wh2_dlc16_wef_cha_sisters_of_twilight_1"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=15344,lg=true,ma=48,mcp=1450,md=42,men=2,rcp=1000,spd=6.5}
C.units["wh2_dlc16_wef_cha_spellweaver_beasts_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3720,ma=33,mcp=400,md=34,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc16_wef_cha_spellweaver_beasts_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=34,hp=4140,lg=true,ma=33,mcp=600,md=34,men=1,rcp=0,spd=9.4}
C.units["wh2_dlc16_wef_cha_spellweaver_beasts_2"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4696,lg=true,ma=40,mcp=700,md=34,men=1,rcp=0,spd=9.5}
C.units["wh2_dlc16_wef_cha_spellweaver_beasts_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=4972,lg=true,ma=44,mcp=950,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc16_wef_cha_spellweaver_dark_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3720,ma=33,mcp=400,md=34,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc16_wef_cha_spellweaver_dark_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=34,hp=4140,lg=true,ma=33,mcp=600,md=34,men=1,rcp=0,spd=9.4}
C.units["wh2_dlc16_wef_cha_spellweaver_dark_2"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4696,lg=true,ma=40,mcp=700,md=34,men=1,rcp=0,spd=9.5}
C.units["wh2_dlc16_wef_cha_spellweaver_dark_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=4972,lg=true,ma=44,mcp=950,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc16_wef_cha_spellweaver_high_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3720,ma=33,mcp=400,md=34,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc16_wef_cha_spellweaver_high_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=34,hp=4140,lg=true,ma=33,mcp=600,md=34,men=1,rcp=0,spd=9.4}
C.units["wh2_dlc16_wef_cha_spellweaver_high_2"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4696,lg=true,ma=40,mcp=700,md=34,men=1,rcp=0,spd=9.5}
C.units["wh2_dlc16_wef_cha_spellweaver_high_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=4972,lg=true,ma=44,mcp=950,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc16_wef_cha_spellweaver_life_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3720,ma=33,mcp=400,md=34,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc16_wef_cha_spellweaver_life_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=34,hp=4140,lg=true,ma=33,mcp=600,md=34,men=1,rcp=0,spd=9.4}
C.units["wh2_dlc16_wef_cha_spellweaver_life_2"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4696,lg=true,ma=40,mcp=700,md=34,men=1,rcp=0,spd=9.5}
C.units["wh2_dlc16_wef_cha_spellweaver_life_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=4972,lg=true,ma=44,mcp=950,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc16_wef_cha_spellweaver_shadows_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3720,ma=33,mcp=400,md=34,men=1,rcp=0,spd=3.4}
C.units["wh2_dlc16_wef_cha_spellweaver_shadows_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=34,hp=4140,lg=true,ma=33,mcp=600,md=34,men=1,rcp=0,spd=9.4}
C.units["wh2_dlc16_wef_cha_spellweaver_shadows_2"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4696,lg=true,ma=40,mcp=700,md=34,men=1,rcp=0,spd=9.5}
C.units["wh2_dlc16_wef_cha_spellweaver_shadows_3"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=4972,lg=true,ma=44,mcp=950,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc16_wef_inf_bladesingers_0"] = {a=15,ai=12,al=0,c="inf_mel",cat="inf_melee",cb=34,hp=8400,ma=48,mcp=1200,md=42,men=100,rcp=0,spd=4.6}
C.units["wh2_dlc16_wef_inf_dryads_0_summoned"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=7000,ma=35,mcp=275,md=25,men=100,rcp=0,spd=4.3}
C.units["wh2_dlc16_wef_inf_dryads_ror_0"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=7000,ma=44,mcp=825,md=32,men=100,rcp=0,spd=4.3}
C.units["wh2_dlc16_wef_inf_malicious_dryads_0"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=7000,ma=35,mcp=550,md=25,men=100,rcp=0,spd=4.3}
C.units["wh2_dlc16_wef_mon_cave_bats"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=4200,ma=19,mcp=375,md=44,men=60,rcp=0,spd=7}
C.units["wh2_dlc16_wef_mon_ceithin_har_summoned"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=60,hp=7116,lg=true,ma=46,mcp=1800,md=38,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc16_wef_mon_feral_manticore"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=5103,lg=true,ma=40,mcp=800,md=34,men=1,rcp=0,spd=7}
C.units["wh2_dlc16_wef_mon_giant_spiders_0"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=5880,ma=32,mcp=550,md=30,men=60,rcp=0,spd=7.8}
C.units["wh2_dlc16_wef_mon_gwindalor_summoned"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=62,hp=4848,lg=true,ma=44,mcp=800,md=30,men=1,rcp=0,spd=7}
C.units["wh2_dlc16_wef_mon_harpies_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=5220,ma=22,mcp=600,md=38,men=60,rcp=0,spd=4.8}
C.units["wh2_dlc16_wef_mon_hawks_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=46,hp=4368,ma=30,mcp=800,md=24,men=24,rcp=0,spd=6.5}
C.units["wh2_dlc16_wef_mon_malicious_treekin_0"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=8768,lg=true,ma=28,mcp=950,md=46,men=16,rcp=0,spd=3.4}
C.units["wh2_dlc16_wef_mon_malicious_treeman_0"] = {a=110,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=9828,lg=true,ma=52,mcp=1550,md=56,men=1,rcp=0,spd=3.5}
C.units["wh2_dlc16_wef_mon_spider_hatchlings_0"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=19,hp=4380,ma=22,mcp=250,md=20,men=60,rcp=0,spd=7.6}
C.units["wh2_dlc16_wef_mon_wolves_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=38,hp=6864,ma=26,mcp=650,md=21,men=48,rcp=0,spd=9.5}
C.units["wh2_dlc16_wef_mon_zoats"] = {a=60,ai=0,al=26,c="inf_mel",cat="inf_melee",cb=28,hp=8416,lg=true,ma=30,mcp=1600,md=40,men=16,rcp=0,spd=6.4}
C.units["wh2_dlc16_wef_mon_zoats_ror_0"] = {a=60,ai=0,al=26,c="inf_mel",cat="inf_melee",cb=28,hp=8416,lg=true,ma=38,mcp=2000,md=50,men=16,rcp=0,spd=6.4}
C.units["wh2_dlc17_bst_cav_tuskgor_chariot_0"] = {a=80,ai=18,al=0,c="chariot",cat="war_machine",cb=64,hp=11152,lg=true,ma=28,mcp=850,md=24,men=8,rcp=0,spd=7}
C.units["wh2_dlc17_bst_cha_beastlord_2"] = {a=80,ai=20,al=0,c="com",cat="war_machine",cb=74,hp=11032,lg=true,ma=32,mcp=1050,md=26,men=2,rcp=0,spd=7}
C.units["wh2_dlc17_bst_cha_bray_shaman_beasts_2"] = {a=80,ai=20,al=0,c="com",cat="war_machine",cb=64,hp=8864,lg=true,ma=28,mcp=650,md=24,men=2,rcp=0,spd=7}
C.units["wh2_dlc17_bst_cha_bray_shaman_death_2"] = {a=80,ai=20,al=0,c="com",cat="war_machine",cb=64,hp=8864,lg=true,ma=28,mcp=650,md=24,men=2,rcp=0,spd=7}
C.units["wh2_dlc17_bst_cha_bray_shaman_shadows_2"] = {a=80,ai=20,al=0,c="com",cat="war_machine",cb=64,hp=8864,lg=true,ma=28,mcp=650,md=24,men=2,rcp=0,spd=7}
C.units["wh2_dlc17_bst_cha_bray_shaman_wild_2"] = {a=80,ai=20,al=0,c="com",cat="war_machine",cb=64,hp=8864,lg=true,ma=28,mcp=650,md=24,men=2,rcp=0,spd=7}
C.units["wh2_dlc17_bst_cha_doombull_0"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=6668,lg=true,ma=47,mcp=1250,md=38,men=1,rcp=0,spd=6.4}
C.units["wh2_dlc17_bst_cha_khazrak_one_eye_2"] = {a=100,ai=25,al=0,c="com",cat="war_machine",cb=84,hp=11496,lg=true,ma=34,mcp=1250,md=28,men=2,rcp=0,spd=7}
C.units["wh2_dlc17_bst_cha_taurox_the_brass_bull_0"] = {a=130,ai=0,al=0,c="com",cat="inf_melee",cb=54,hp=7368,lg=true,ma=53,mcp=1500,md=47,men=1,rcp=0,spd=6.4}
C.units["wh2_dlc17_bst_cha_wargor_0"] = {a=80,ai=20,al=0,c="com",cat="inf_melee",cb=50,hp=4056,ma=50,mcp=600,md=40,men=1,rcp=0,spd=3.8}
C.units["wh2_dlc17_bst_cha_wargor_1"] = {a=100,ai=25,al=0,c="com",cat="war_machine",cb=90,hp=10232,lg=true,ma=38,mcp=1100,md=32,men=2,rcp=0,spd=7}
C.units["wh2_dlc17_bst_cha_wargor_2"] = {a=80,ai=20,al=0,c="com",cat="war_machine",cb=74,hp=9832,lg=true,ma=32,mcp=900,md=26,men=2,rcp=0,spd=7}
C.units["wh2_dlc17_bst_inf_centigors_ror_1"] = {a=35,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=30,hp=5880,ma=29,mcp=450,md=27,men=60,rcp=675,spd=8.4}
C.units["wh2_dlc17_bst_mon_ghorgon_0"] = {a=50,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=46,hp=10888,lg=true,ma=57,mcp=2000,md=34,men=1,rcp=0,spd=6.4}
C.units["wh2_dlc17_bst_mon_ghorgon_boss_0"] = {a=70,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=46,hp=10888,lg=true,ma=69,mcp=2550,md=38,men=1,rcp=0,spd=9.6}
C.units["wh2_dlc17_bst_mon_ghorgon_ror_0"] = {a=70,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=46,hp=10888,lg=true,ma=69,mcp=2550,md=38,men=1,rcp=0,spd=6.4}
C.units["wh2_dlc17_bst_mon_jabberslythe_0"] = {a=60,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=9220,lg=true,ma=36,mcp=1700,md=42,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc17_bst_mon_jabberslythe_ror_0"] = {a=60,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=9220,lg=true,ma=45,mcp=2100,md=52,men=1,rcp=0,spd=6.5}
C.units["wh2_dlc17_dwf_cha_thane_ghost_2"] = {a=0,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=4168,ma=65,mcp=1000,md=50,men=1,rcp=0,spd=3.2}
C.units["wh2_dlc17_dwf_cha_thorek_ironbrow_0"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=16,hp=5424,ma=45,mcp=1000,md=45,men=1,rcp=0,spd=3.2}
C.units["wh2_dlc17_dwf_cha_thorek_ironbrow_1"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=18,hp=6628,lg=true,ma=45,mcp=1400,md=50,men=1,rcp=0,spd=3}
C.units["wh2_dlc17_dwf_mon_carnosaur_thorek_0"] = {a=95,ai=0,al=35,c="inf_mel",cat="inf_melee",cb=50,hp=7944,lg=true,ma=45,mcp=1500,md=40,men=1,rcp=0,spd=7.5}
C.units["wh2_dlc17_emp_inf_prisoners_0"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=5,hp=6720,ma=10,mcp=450,md=6,men=120,rcp=0,spd=4}
C.units["wh2_dlc17_lzd_cha_oxyotl_0"] = {a=30,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=3688,ma=50,mcp=200,md=45,men=1,rcp=800,spd=5.4}
C.units["wh2_dlc17_lzd_cha_skink_oracle_troglodon_0"] = {a=95,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=7520,lg=true,ma=39,mcp=1000,md=46,men=1,rcp=800,spd=7.5}
C.units["wh2_dlc17_lzd_inf_chameleon_stalkers_0"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=25,hp=5940,ma=26,mcp=400,md=36,men=90,rcp=200,spd=4.8}
C.units["wh2_dlc17_lzd_inf_chameleon_stalkers_0_blessed"] = {a=40,ai=15,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=3392,ma=34,mcp=400,md=46,men=32,rcp=200,spd=4.8}
C.units["wh2_dlc17_lzd_mon_carnosaur_ror_0"] = {a=95,ai=0,al=35,c="inf_mel",cat="inf_melee",cb=50,hp=7944,lg=true,ma=56,mcp=1800,md=50,men=1,rcp=0,spd=7.5}
C.units["wh2_dlc17_lzd_mon_coatl_0"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=7620,lg=true,ma=40,mcp=1850,md=48,men=1,rcp=0,spd=4.6}
C.units["wh2_dlc17_lzd_mon_coatl_ror_0"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=7620,lg=true,ma=50,mcp=2100,md=59,men=1,rcp=0,spd=4.6}
C.units["wh2_dlc17_lzd_mon_dread_saurian_qb_boss"] = {a=120,ai=0,al=50,c="inf_mel",cat="inf_melee",cb=80,hp=50008,lg=true,ma=60,mcp=2300,md=40,men=1,rcp=0,spd=6}
C.units["wh2_dlc17_lzd_mon_troglodon_0"] = {a=95,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=7520,lg=true,ma=39,mcp=800,md=46,men=1,rcp=650,spd=7.5}
C.units["wh2_dlc17_lzd_mon_troglodon_ror_0"] = {a=95,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=7520,lg=true,ma=49,mcp=1000,md=57,men=1,rcp=850,spd=7.5}
C.units["wh2_main_def_art_reaper_bolt_thrower"] = {a=30,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=2016,ma=10,mcp=70,md=15,men=32,rcp=630,spd=3.3}
C.units["wh2_main_def_cav_cold_one_chariot"] = {a=110,ai=22,al=0,c="chariot",cat="war_machine",cb=65,hp=18048,lg=true,ma=30,mcp=550,md=26,men=12,rcp=550,spd=6.6}
C.units["wh2_main_def_cav_cold_one_knights_0"] = {a=90,ai=0,al=14,c="cav_shk",cat="cavalry",cb=44,hp=6096,lg=true,ma=28,mcp=1000,md=30,men=48,rcp=0,spd=6.6}
C.units["wh2_main_def_cav_cold_one_knights_1"] = {a=120,ai=0,al=0,c="cav_mel",cat="cavalry",cb=40,hp=6816,lg=true,ma=40,mcp=1300,md=44,men=48,rcp=0,spd=6.6}
C.units["wh2_main_def_cav_dark_riders_0"] = {a=30,ai=0,al=0,c="cav_shk",cat="cavalry",cb=40,hp=5040,lg=true,ma=24,mcp=450,md=24,men=60,rcp=0,spd=9.2}
C.units["wh2_main_def_cav_dark_riders_1"] = {a=30,ai=0,al=0,c="cav_shk",cat="cavalry",cb=40,hp=5040,lg=true,ma=24,mcp=500,md=30,men=60,rcp=0,spd=9.2}
C.units["wh2_main_def_cav_dark_riders_2"] = {a=30,ai=0,al=0,c="cav_mis",cat="cavalry",cb=20,hp=4860,lg=true,ma=18,mcp=104,md=16,men=60,rcp=416,spd=9.2}
C.units["wh2_main_def_cha_death_hag_0"] = {a=10,ai=20,al=0,c="com",cat="inf_melee",cb=35,hp=3688,ma=62,mcp=600,md=35,men=1,rcp=0,spd=4.4}
C.units["wh2_main_def_cha_death_hag_1"] = {a=80,ai=20,al=0,c="com",cat="war_machine",cb=35,hp=17124,ma=34,mcp=1350,md=28,men=3,rcp=0,spd=3.6}
C.units["wh2_main_def_cha_dreadlord_0"] = {a=90,ai=0,al=0,c="com",cat="inf_ranged",cb=35,hp=4068,ma=60,mcp=450,md=45,men=1,rcp=400,spd=3.6}
C.units["wh2_main_def_cha_dreadlord_1"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=55,hp=4568,lg=true,ma=60,mcp=650,md=45,men=1,rcp=450,spd=9.2}
C.units["wh2_main_def_cha_dreadlord_2"] = {a=115,ai=0,al=0,c="com",cat="cavalry",cb=55,hp=4784,lg=true,ma=60,mcp=750,md=45,men=1,rcp=450,spd=6.8}
C.units["wh2_main_def_cha_dreadlord_4"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=52,mcp=2100,md=46,men=1,rcp=200,spd=6.5}
C.units["wh2_main_def_cha_dreadlord_5"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=65,hp=4972,lg=true,ma=60,mcp=900,md=45,men=1,rcp=500,spd=8.2}
C.units["wh2_main_def_cha_dreadlord_female_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=4068,ma=65,mcp=850,md=55,men=1,rcp=0,spd=3.6}
C.units["wh2_main_def_cha_dreadlord_female_1"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=65,hp=4568,lg=true,ma=65,mcp=1050,md=55,men=1,rcp=0,spd=9.2}
C.units["wh2_main_def_cha_dreadlord_female_2"] = {a=115,ai=0,al=0,c="com",cat="cavalry",cb=65,hp=4784,lg=true,ma=65,mcp=1200,md=55,men=1,rcp=0,spd=6.8}
C.units["wh2_main_def_cha_dreadlord_female_4"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=52,mcp=2100,md=46,men=1,rcp=0,spd=6.5}
C.units["wh2_main_def_cha_dreadlord_female_5"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=75,hp=4972,lg=true,ma=65,mcp=1400,md=55,men=1,rcp=0,spd=8.2}
C.units["wh2_main_def_cha_khainite_assassin_0"] = {a=30,ai=0,al=0,c="com",cat="inf_ranged",cb=18,hp=3688,ma=70,mcp=400,md=42,men=1,rcp=250,spd=4.5}
C.units["wh2_main_def_cha_malekith_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=4288,ma=65,mcp=1300,md=55,men=1,rcp=0,spd=3.6}
C.units["wh2_main_def_cha_malekith_1"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=65,hp=4972,lg=true,ma=65,mcp=1650,md=55,men=1,rcp=0,spd=6.8}
C.units["wh2_main_def_cha_malekith_2"] = {a=110,ai=28,al=0,c="com",cat="war_machine",cb=90,hp=5708,lg=true,ma=38,mcp=1800,md=27,men=1,rcp=0,spd=6.6}
C.units["wh2_main_def_cha_malekith_3"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=60,mcp=2500,md=50,men=1,rcp=0,spd=6.5}
C.units["wh2_main_def_cha_morathi_0"] = {a=15,ai=0,al=15,c="com",cat="inf_melee",cb=55,hp=3688,ma=55,mcp=750,md=40,men=1,rcp=0,spd=4.3}
C.units["wh2_main_def_cha_morathi_1"] = {a=40,ai=0,al=15,c="com",cat="cavalry",cb=85,hp=4568,lg=true,ma=55,mcp=1150,md=40,men=1,rcp=0,spd=8.2}
C.units["wh2_main_def_cha_sorceress_dark_0"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=39,mcp=300,md=30,men=1,rcp=0,spd=3.6}
C.units["wh2_main_def_cha_sorceress_dark_1"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=39,mcp=500,md=30,men=1,rcp=0,spd=9.2}
C.units["wh2_main_def_cha_sorceress_dark_2"] = {a=60,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4008,lg=true,ma=39,mcp=650,md=30,men=1,rcp=0,spd=6.8}
C.units["wh2_main_def_cha_sorceress_dark_3"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4168,lg=true,ma=39,mcp=850,md=30,men=1,rcp=0,spd=8.2}
C.units["wh2_main_def_cha_sorceress_fire_0"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=39,mcp=300,md=30,men=1,rcp=0,spd=3.6}
C.units["wh2_main_def_cha_sorceress_fire_1"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=39,mcp=500,md=30,men=1,rcp=0,spd=9.2}
C.units["wh2_main_def_cha_sorceress_fire_2"] = {a=60,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4008,lg=true,ma=39,mcp=650,md=30,men=1,rcp=0,spd=6.8}
C.units["wh2_main_def_cha_sorceress_fire_3"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4168,lg=true,ma=39,mcp=850,md=30,men=1,rcp=0,spd=8.2}
C.units["wh2_main_def_cha_sorceress_shadow_0"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=39,mcp=300,md=30,men=1,rcp=0,spd=3.6}
C.units["wh2_main_def_cha_sorceress_shadow_1"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=39,mcp=500,md=30,men=1,rcp=0,spd=9.2}
C.units["wh2_main_def_cha_sorceress_shadow_2"] = {a=60,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4008,lg=true,ma=39,mcp=650,md=30,men=1,rcp=0,spd=6.8}
C.units["wh2_main_def_cha_sorceress_shadow_3"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4168,lg=true,ma=39,mcp=850,md=30,men=1,rcp=0,spd=8.2}
C.units["wh2_main_def_inf_black_ark_corsairs_0"] = {a=80,ai=8,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=6900,ma=36,mcp=650,md=28,men=100,rcp=0,spd=4}
C.units["wh2_main_def_inf_black_ark_corsairs_1"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=16,hp=6900,ma=32,mcp=375,md=28,men=100,rcp=375,spd=4}
C.units["wh2_main_def_inf_black_guard_0"] = {a=100,ai=0,al=24,c="inf_mel",cat="inf_melee",cb=18,hp=9000,ma=36,mcp=1300,md=48,men=100,rcp=0,spd=3.1}
C.units["wh2_main_def_inf_bleakswords_0"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=16,hp=7560,ma=36,mcp=450,md=32,men=120,rcp=0,spd=3.3}
C.units["wh2_main_def_inf_darkshards_0"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=5670,ma=18,mcp=100,md=16,men=90,rcp=450,spd=3.3}
C.units["wh2_main_def_inf_darkshards_1"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=5670,ma=18,mcp=200,md=24,men=90,rcp=450,spd=3.3}
C.units["wh2_main_def_inf_dreadspears_0"] = {a=40,ai=0,al=14,c="inf_mel",cat="inf_melee",cb=8,hp=7560,ma=26,mcp=450,md=42,men=120,rcp=0,spd=3.3}
C.units["wh2_main_def_inf_har_ganeth_executioners_0"] = {a=100,ai=14,al=0,c="inf_mel",cat="inf_melee",cb=32,hp=8400,ma=46,mcp=1150,md=34,men=100,rcp=0,spd=3.1}
C.units["wh2_main_def_inf_harpies"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=5220,ma=22,mcp=600,md=38,men=60,rcp=0,spd=4.8}
C.units["wh2_main_def_inf_shades_0"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=16,hp=6720,ma=40,mcp=285,md=32,men=80,rcp=665,spd=4.2}
C.units["wh2_main_def_inf_shades_1"] = {a=30,ai=8,al=0,c="inf_mis",cat="inf_ranged",cb=20,hp=6720,ma=44,mcp=330,md=30,men=80,rcp=720,spd=4.2}
C.units["wh2_main_def_inf_shades_2"] = {a=30,ai=14,al=0,c="inf_mis",cat="inf_ranged",cb=20,hp=6720,ma=40,mcp=360,md=34,men=80,rcp=790,spd=4.2}
C.units["wh2_main_def_inf_witch_elves_0"] = {a=5,ai=8,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=6500,ma=38,mcp=800,md=26,men=100,rcp=0,spd=4.4}
C.units["wh2_main_def_mon_black_dragon"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=8324,lg=true,ma=50,mcp=2100,md=46,men=1,rcp=0,spd=6.5}
C.units["wh2_main_def_mon_war_hydra_0"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=10400,lg=true,ma=52,mcp=1600,md=32,men=1,rcp=0,spd=4.6}
C.units["wh2_main_hef_art_eagle_claw_bolt_thrower"] = {a=40,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=2016,ma=10,mcp=70,md=15,men=32,rcp=630,spd=3.3}
C.units["wh2_main_hef_cav_dragon_princes"] = {a=120,ai=0,al=0,c="cav_shk",cat="cavalry",cb=80,hp=6360,lg=true,ma=36,mcp=1400,md=32,men=60,rcp=0,spd=8.4}
C.units["wh2_main_hef_cav_ellyrian_reavers_0"] = {a=40,ai=0,al=0,c="cav_shk",cat="cavalry",cb=40,hp=5220,lg=true,ma=30,mcp=550,md=26,men=60,rcp=0,spd=9.2}
C.units["wh2_main_hef_cav_ellyrian_reavers_1"] = {a=40,ai=0,al=0,c="cav_mis",cat="cavalry",cb=24,hp=5040,lg=true,ma=30,mcp=150,md=22,men=60,rcp=450,spd=9.2}
C.units["wh2_main_hef_cav_ithilmar_chariot"] = {a=110,ai=24,al=0,c="chariot",cat="war_machine",cb=70,hp=11152,lg=true,ma=32,mcp=950,md=30,men=8,rcp=0,spd=8.4}
C.units["wh2_main_hef_cav_silver_helms_0"] = {a=100,ai=0,al=0,c="cav_shk",cat="cavalry",cb=64,hp=5760,lg=true,ma=34,mcp=900,md=24,men=60,rcp=0,spd=8.4}
C.units["wh2_main_hef_cav_silver_helms_1"] = {a=100,ai=0,al=0,c="cav_shk",cat="cavalry",cb=64,hp=5760,lg=true,ma=34,mcp=1000,md=32,men=60,rcp=0,spd=8.4}
C.units["wh2_main_hef_cav_tiranoc_chariot"] = {a=80,ai=18,al=0,c="chariot",cat="war_machine",cb=55,hp=14088,lg=true,ma=22,mcp=230,md=22,men=12,rcp=500,spd=8.4}
C.units["wh2_main_hef_cha_alastar_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=4068,ma=63,mcp=1000,md=40,men=1,rcp=0,spd=3.8}
C.units["wh2_main_hef_cha_alastar_3"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=75,hp=4848,lg=true,ma=63,mcp=1400,md=40,men=1,rcp=0,spd=7}
C.units["wh2_main_hef_cha_alastar_4"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=6868,lg=true,ma=50,mcp=2050,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_main_hef_cha_alastar_5"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=45,hp=9436,lg=true,ma=64,mcp=2750,md=50,men=1,rcp=0,spd=6.5}
C.units["wh2_main_hef_cha_loremaster_of_hoeth_0"] = {a=100,ai=16,al=0,c="com",cat="inf_melee",cb=35,hp=3688,ma=55,mcp=800,md=45,men=1,rcp=0,spd=3.6}
C.units["wh2_main_hef_cha_mage_high_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=36,mcp=300,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_main_hef_cha_mage_high_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=36,mcp=550,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_main_hef_cha_mage_high_4"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8296,lg=true,ma=24,mcp=800,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_main_hef_cha_mage_life_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=36,mcp=300,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_main_hef_cha_mage_life_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=36,mcp=550,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_main_hef_cha_mage_life_4"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8296,lg=true,ma=24,mcp=800,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_main_hef_cha_mage_light_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=36,mcp=300,md=28,men=1,rcp=0,spd=3.5}
C.units["wh2_main_hef_cha_mage_light_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=36,mcp=550,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_main_hef_cha_mage_light_4"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=64,hp=8296,lg=true,ma=24,mcp=800,md=18,men=2,rcp=0,spd=8.4}
C.units["wh2_main_hef_cha_noble_0"] = {a=80,ai=0,al=35,c="com",cat="inf_melee",cb=22,hp=3688,ma=42,mcp=600,md=50,men=1,rcp=0,spd=3.6}
C.units["wh2_main_hef_cha_noble_2"] = {a=100,ai=0,al=35,c="com",cat="cavalry",cb=42,hp=4168,lg=true,ma=42,mcp=850,md=50,men=1,rcp=0,spd=8.4}
C.units["wh2_main_hef_cha_noble_3"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=72,hp=4760,lg=true,ma=47,mcp=1100,md=35,men=1,rcp=0,spd=7}
C.units["wh2_main_hef_cha_noble_4"] = {a=110,ai=20,al=0,c="com",cat="war_machine",cb=74,hp=9944,lg=true,ma=32,mcp=1050,md=24,men=2,rcp=0,spd=8.4}
C.units["wh2_main_hef_cha_prince_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4068,ma=60,mcp=850,md=60,men=1,rcp=0,spd=3.6}
C.units["wh2_main_hef_cha_prince_2"] = {a=100,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4672,lg=true,ma=60,mcp=1100,md=60,men=1,rcp=0,spd=8.4}
C.units["wh2_main_hef_cha_prince_3"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=4848,lg=true,ma=60,mcp=1400,md=50,men=1,rcp=0,spd=7}
C.units["wh2_main_hef_cha_prince_4"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=7116,lg=true,ma=50,mcp=1900,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_main_hef_cha_prince_5"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=45,hp=9436,lg=true,ma=68,mcp=2600,md=54,men=1,rcp=0,spd=6.5}
C.units["wh2_main_hef_cha_princess_0"] = {a=50,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=4068,ma=65,mcp=450,md=45,men=1,rcp=400,spd=4}
C.units["wh2_main_hef_cha_princess_1"] = {a=80,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4672,lg=true,ma=65,mcp=650,md=45,men=1,rcp=450,spd=8.4}
C.units["wh2_main_hef_cha_princess_3"] = {a=50,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=4848,lg=true,ma=65,mcp=900,md=35,men=1,rcp=500,spd=7}
C.units["wh2_main_hef_cha_princess_4"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=50,mcp=1700,md=44,men=1,rcp=500,spd=6.5}
C.units["wh2_main_hef_cha_princess_5"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=45,hp=9436,lg=true,ma=64,mcp=2100,md=50,men=1,rcp=500,spd=6.5}
C.units["wh2_main_hef_cha_teclis_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3688,ma=36,mcp=450,md=28,men=1,rcp=0,spd=3.6}
C.units["wh2_main_hef_cha_teclis_1"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4176,lg=true,ma=36,mcp=700,md=28,men=1,rcp=0,spd=8.4}
C.units["wh2_main_hef_cha_tyrion_0"] = {a=125,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=4288,ma=75,mcp=1300,md=60,men=1,rcp=0,spd=3.6}
C.units["wh2_main_hef_cha_tyrion_1"] = {a=125,ai=0,al=0,c="com",cat="cavalry",cb=90,hp=4892,lg=true,ma=75,mcp=1600,md=60,men=1,rcp=0,spd=9.5}
C.units["wh2_main_hef_inf_archers_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=5670,ma=16,mcp=95,md=14,men=90,rcp=380,spd=3.6}
C.units["wh2_main_hef_inf_archers_1"] = {a=40,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=5670,ma=16,mcp=110,md=18,men=90,rcp=440,spd=3.6}
C.units["wh2_main_hef_inf_gate_guard"] = {a=50,ai=0,al=16,c="inf_mis",cat="inf_ranged",cb=4,hp=6120,ma=28,mcp=212,md=32,men=90,rcp=638,spd=3.3}
C.units["wh2_main_hef_inf_lothern_sea_guard_0"] = {a=40,ai=0,al=16,c="inf_mis",cat="inf_ranged",cb=4,hp=6120,ma=22,mcp=162,md=32,men=90,rcp=488,spd=3.6}
C.units["wh2_main_hef_inf_lothern_sea_guard_1"] = {a=40,ai=0,al=16,c="inf_mis",cat="inf_ranged",cb=4,hp=6120,ma=22,mcp=187,md=40,men=90,rcp=563,spd=3.3}
C.units["wh2_main_hef_inf_phoenix_guard"] = {a=110,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=10,hp=8400,ma=38,mcp=1400,md=40,men=100,rcp=0,spd=3.3}
C.units["wh2_main_hef_inf_spearmen_0"] = {a=40,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=4,hp=7560,ma=20,mcp=500,md=38,men=120,rcp=0,spd=3.3}
C.units["wh2_main_hef_inf_swordmasters_of_hoeth_0"] = {a=100,ai=14,al=0,c="inf_mel",cat="inf_melee",cb=28,hp=8400,ma=46,mcp=1250,md=36,men=100,rcp=0,spd=3.3}
C.units["wh2_main_hef_inf_white_lions_of_chrace_0"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8000,ma=36,mcp=800,md=28,men=100,rcp=0,spd=3.3}
C.units["wh2_main_hef_mon_great_eagle"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=62,hp=4663,lg=true,ma=44,mcp=750,md=30,men=1,rcp=0,spd=7}
C.units["wh2_main_hef_mon_great_eagle_summoned"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=62,hp=4663,lg=true,ma=44,mcp=800,md=30,men=1,rcp=0,spd=7}
C.units["wh2_main_hef_mon_moon_dragon"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=8324,lg=true,ma=50,mcp=2000,md=46,men=1,rcp=0,spd=6.5}
C.units["wh2_main_hef_mon_phoenix_flamespyre"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=54,hp=5828,lg=true,ma=42,mcp=1400,md=30,men=1,rcp=0,spd=8}
C.units["wh2_main_hef_mon_phoenix_frostheart"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=6598,lg=true,ma=40,mcp=1650,md=48,men=1,rcp=0,spd=8}
C.units["wh2_main_hef_mon_star_dragon"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=9424,lg=true,ma=64,mcp=2400,md=50,men=1,rcp=0,spd=6.5}
C.units["wh2_main_hef_mon_sun_dragon"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=65,hp=7008,lg=true,ma=46,mcp=1700,md=44,men=1,rcp=0,spd=6.5}
C.units["wh2_main_lzd_cav_cold_one_spearriders_1"] = {a=90,ai=0,al=14,c="cav_shk",cat="cavalry",cb=32,hp=6096,lg=true,ma=26,mcp=1000,md=28,men=48,rcp=0,spd=6.6}
C.units["wh2_main_lzd_cav_cold_one_spearriders_blessed_0"] = {a=100,ai=0,al=14,c="cav_shk",cat="cavalry",cb=40,hp=6960,lg=true,ma=36,mcp=1100,md=28,men=48,rcp=0,spd=8}
C.units["wh2_main_lzd_cav_cold_ones_1"] = {a=90,ai=0,al=0,c="cav_mel",cat="cavalry",cb=32,hp=6096,lg=true,ma=31,mcp=850,md=28,men=48,rcp=0,spd=6.6}
C.units["wh2_main_lzd_cav_cold_ones_feral_0"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=28,hp=5024,ma=25,mcp=500,md=24,men=32,rcp=0,spd=6.6}
C.units["wh2_main_lzd_cav_cold_ones_feral_0_summoned"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=28,hp=5024,ma=25,mcp=225,md=24,men=32,rcp=0,spd=6.6}
C.units["wh2_main_lzd_cav_horned_ones_0"] = {a=100,ai=0,al=0,c="cav_shk",cat="cavalry",cb=43,hp=7056,lg=true,ma=45,mcp=1500,md=34,men=48,rcp=0,spd=7.8}
C.units["wh2_main_lzd_cav_horned_ones_blessed_0"] = {a=100,ai=0,al=0,c="cav_shk",cat="cavalry",cb=43,hp=8064,lg=true,ma=60,mcp=1550,md=40,men=48,rcp=0,spd=7.8}
C.units["wh2_main_lzd_cav_terradon_riders_0"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=16,hp=3640,lg=true,ma=26,mcp=96,md=22,men=10,rcp=384,spd=6}
C.units["wh2_main_lzd_cav_terradon_riders_0_blessed"] = {a=15,ai=20,al=0,c="cav_mis",cat="cavalry",cb=16,hp=4170,lg=true,ma=26,mcp=96,md=22,men=10,rcp=384,spd=8.4}
C.units["wh2_main_lzd_cav_terradon_riders_1"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=16,hp=3640,lg=true,ma=26,mcp=120,md=22,men=10,rcp=480,spd=6}
C.units["wh2_main_lzd_cav_terradon_riders_blessed_1"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=16,hp=4140,lg=true,ma=26,mcp=132,md=22,men=10,rcp=528,spd=8.4}
C.units["wh2_main_lzd_cha_kroq_gar_0"] = {a=95,ai=0,al=30,c="com",cat="inf_melee",cb=50,hp=5136,ma=57,mcp=900,md=44,men=1,rcp=0,spd=3.4}
C.units["wh2_main_lzd_cha_kroq_gar_1"] = {a=95,ai=0,al=35,c="com",cat="war_beast",cb=67,hp=8668,lg=true,ma=55,mcp=1850,md=40,men=1,rcp=0,spd=7.5}
C.units["wh2_main_lzd_cha_kroq_gar_2"] = {a=110,ai=0,al=30,c="com",cat="cavalry",cb=70,hp=5548,lg=true,ma=57,mcp=1200,md=44,men=1,rcp=0,spd=6.8}
C.units["wh2_main_lzd_cha_kroq_gar_3"] = {a=120,ai=0,al=30,c="com",cat="cavalry",cb=85,hp=5816,lg=true,ma=57,mcp=1300,md=44,men=1,rcp=0,spd=7.8}
C.units["wh2_main_lzd_cha_lord_mazdamundi_0"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=14,hp=7544,lg=true,ma=26,mcp=650,md=32,men=1,rcp=0,spd=3}
C.units["wh2_main_lzd_cha_lord_mazdamundi_1"] = {a=130,ai=18,al=0,c="com",cat="war_beast",cb=70,hp=30228,lg=true,ma=26,mcp=1900,md=32,men=3,rcp=0,spd=5}
C.units["wh2_main_lzd_cha_saurus_old_blood_0"] = {a=95,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4640,ma=49,mcp=800,md=52,men=1,rcp=0,spd=3.4}
C.units["wh2_main_lzd_cha_saurus_old_blood_1"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=55,hp=5220,lg=true,ma=49,mcp=1100,md=52,men=1,rcp=0,spd=6.8}
C.units["wh2_main_lzd_cha_saurus_old_blood_2"] = {a=95,ai=0,al=35,c="com",cat="war_beast",cb=50,hp=8552,lg=true,ma=45,mcp=1800,md=44,men=1,rcp=0,spd=7.5}
C.units["wh2_main_lzd_cha_saurus_scar_veteran_0"] = {a=85,ai=0,al=30,c="com",cat="inf_melee",cb=32,hp=4168,ma=38,mcp=650,md=47,men=1,rcp=0,spd=3.4}
C.units["wh2_main_lzd_cha_saurus_scar_veteran_1"] = {a=100,ai=0,al=30,c="com",cat="cavalry",cb=52,hp=4628,lg=true,ma=43,mcp=950,md=42,men=1,rcp=0,spd=6.8}
C.units["wh2_main_lzd_cha_saurus_scar_veteran_2"] = {a=95,ai=0,al=35,c="com",cat="war_beast",cb=50,hp=7944,lg=true,ma=45,mcp=1750,md=40,men=1,rcp=0,spd=7.5}
C.units["wh2_main_lzd_cha_skink_chief_0"] = {a=30,ai=0,al=0,c="com",cat="inf_ranged",cb=16,hp=3572,ma=33,mcp=50,md=36,men=1,rcp=300,spd=4.6}
C.units["wh2_main_lzd_cha_skink_chief_1"] = {a=30,ai=0,al=0,c="com",cat="cavalry",cb=26,hp=4000,lg=true,ma=33,mcp=350,md=36,men=1,rcp=400,spd=6}
C.units["wh2_main_lzd_cha_skink_chief_2"] = {a=110,ai=18,al=0,c="com",cat="war_beast",cb=70,hp=46020,lg=true,ma=30,mcp=850,md=32,men=5,rcp=900,spd=5}
C.units["wh2_main_lzd_cha_skink_chief_3"] = {a=130,ai=18,al=0,c="com",cat="war_beast",cb=70,hp=49280,lg=true,ma=26,mcp=1000,md=32,men=5,rcp=1000,spd=5}
C.units["wh2_main_lzd_cha_skink_priest_0_summoned"] = {a=0,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=2858,ma=22,mcp=200,md=26,men=1,rcp=0,spd=4.6}
C.units["wh2_main_lzd_cha_skink_priest_beasts_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3256,ma=22,mcp=250,md=26,men=1,rcp=0,spd=4.6}
C.units["wh2_main_lzd_cha_skink_priest_beasts_1"] = {a=30,ai=0,al=0,c="com",cat="cavalry",cb=20,hp=3684,lg=true,ma=22,mcp=700,md=26,men=1,rcp=0,spd=6}
C.units["wh2_main_lzd_cha_skink_priest_beasts_2"] = {a=110,ai=18,al=0,c="com",cat="war_beast",cb=70,hp=46020,lg=true,ma=30,mcp=900,md=32,men=5,rcp=900,spd=5}
C.units["wh2_main_lzd_cha_skink_priest_beasts_3"] = {a=130,ai=18,al=0,c="com",cat="war_beast",cb=70,hp=49280,lg=true,ma=26,mcp=1050,md=32,men=5,rcp=1050,spd=5}
C.units["wh2_main_lzd_cha_skink_priest_heavens_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3256,ma=22,mcp=250,md=26,men=1,rcp=0,spd=4.6}
C.units["wh2_main_lzd_cha_skink_priest_heavens_1"] = {a=30,ai=0,al=0,c="com",cat="cavalry",cb=20,hp=3684,lg=true,ma=22,mcp=700,md=26,men=1,rcp=0,spd=6}
C.units["wh2_main_lzd_cha_skink_priest_heavens_2"] = {a=110,ai=18,al=0,c="com",cat="war_beast",cb=70,hp=46020,lg=true,ma=30,mcp=900,md=32,men=5,rcp=900,spd=5}
C.units["wh2_main_lzd_cha_skink_priest_heavens_3"] = {a=130,ai=18,al=0,c="com",cat="war_beast",cb=70,hp=49280,lg=true,ma=26,mcp=1050,md=32,men=5,rcp=1050,spd=5}
C.units["wh2_main_lzd_cha_slann_mage_priest_campaign_0"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=14,hp=6544,lg=true,ma=24,mcp=650,md=32,men=1,rcp=0,spd=3.4}
C.units["wh2_main_lzd_cha_slann_mage_priest_heavens_0"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=14,hp=6544,lg=true,ma=24,mcp=650,md=32,men=1,rcp=0,spd=3.4}
C.units["wh2_main_lzd_cha_slann_mage_priest_high_0"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=14,hp=6544,lg=true,ma=24,mcp=650,md=32,men=1,rcp=0,spd=3.4}
C.units["wh2_main_lzd_cha_slann_mage_priest_life_0_qb"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=14,hp=6544,lg=true,ma=24,mcp=650,md=32,men=1,rcp=0,spd=3.4}
C.units["wh2_main_lzd_cha_slann_mage_priest_light_0"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=14,hp=6544,lg=true,ma=24,mcp=650,md=32,men=1,rcp=0,spd=3.4}
C.units["wh2_main_lzd_inf_chameleon_skinks_0"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=4860,ma=20,mcp=150,md=22,men=90,rcp=500,spd=4.8}
C.units["wh2_main_lzd_inf_chameleon_skinks_blessed_0"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=20,hp=5850,ma=20,mcp=150,md=22,men=90,rcp=550,spd=4.8}
C.units["wh2_main_lzd_inf_saurus_spearmen_0"] = {a=60,ai=0,al=16,c="inf_mel",cat="inf_melee",cb=10,hp=10200,ma=24,mcp=750,md=32,men=100,rcp=0,spd=3.1}
C.units["wh2_main_lzd_inf_saurus_spearmen_1"] = {a=60,ai=0,al=16,c="inf_mel",cat="inf_melee",cb=10,hp=10200,ma=24,mcp=800,md=38,men=100,rcp=0,spd=3.1}
C.units["wh2_main_lzd_inf_saurus_spearmen_blessed_1"] = {a=70,ai=0,al=16,c="inf_mel",cat="inf_melee",cb=10,hp=11500,ma=24,mcp=800,md=46,men=100,rcp=0,spd=3.1}
C.units["wh2_main_lzd_inf_saurus_warriors_0"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=16,hp=10200,ma=32,mcp=750,md=28,men=100,rcp=0,spd=3.1}
C.units["wh2_main_lzd_inf_saurus_warriors_1"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=16,hp=10200,ma=32,mcp=800,md=34,men=100,rcp=0,spd=3.1}
C.units["wh2_main_lzd_inf_saurus_warriors_blessed_1"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=11500,ma=40,mcp=800,md=34,men=100,rcp=0,spd=3.1}
C.units["wh2_main_lzd_inf_skink_cohort_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=8000,ma=20,mcp=200,md=24,men=160,rcp=125,spd=4.6}
C.units["wh2_main_lzd_inf_skink_cohort_1"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=8000,ma=20,mcp=320,md=24,men=160,rcp=130,spd=4.6}
C.units["wh2_main_lzd_inf_skink_cohort_1_blessed"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=8960,ma=20,mcp=320,md=24,men=160,rcp=130,spd=4.6}
C.units["wh2_main_lzd_inf_skink_skirmishers_0"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=8,hp=6000,ma=16,mcp=40,md=14,men=120,rcp=385,spd=4.8}
C.units["wh2_main_lzd_inf_skink_skirmishers_blessed_0"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=8,hp=6960,ma=16,mcp=44,md=14,men=120,rcp=396,spd=4.8}
C.units["wh2_main_lzd_inf_temple_guards"] = {a=85,ai=0,al=16,c="inf_mel",cat="inf_melee",cb=14,hp=10700,ma=31,mcp=1200,md=38,men=100,rcp=0,spd=3.1}
C.units["wh2_main_lzd_inf_temple_guards_blessed"] = {a=95,ai=0,al=16,c="inf_mel",cat="inf_melee",cb=28,hp=12000,ma=31,mcp=1320,md=46,men=100,rcp=0,spd=3.1}
C.units["wh2_main_lzd_mon_ancient_stegadon"] = {a=130,ai=18,al=0,c="inf_mel",cat="war_beast",cb=70,hp=49270,lg=true,ma=26,mcp=1200,md=32,men=5,rcp=750,spd=5}
C.units["wh2_main_lzd_mon_ancient_stegadon_blessed"] = {a=130,ai=0,al=30,c="inf_mel",cat="war_beast",cb=70,hp=56655,lg=true,ma=35,mcp=1200,md=32,men=5,rcp=750,spd=5}
C.units["wh2_main_lzd_mon_bastiladon_0"] = {a=140,ai=15,al=0,c="inf_mel",cat="inf_melee",cb=34,hp=7698,lg=true,ma=22,mcp=775,md=28,men=1,rcp=0,spd=4}
C.units["wh2_main_lzd_mon_bastiladon_1"] = {a=140,ai=15,al=0,c="inf_mel",cat="war_beast",cb=34,hp=30792,lg=true,ma=22,mcp=1000,md=28,men=4,rcp=0,spd=4}
C.units["wh2_main_lzd_mon_bastiladon_2"] = {a=140,ai=15,al=0,c="inf_mis",cat="war_beast",cb=34,hp=30792,lg=true,ma=22,mcp=450,md=28,men=4,rcp=750,spd=4}
C.units["wh2_main_lzd_mon_bastiladon_blessed_2"] = {a=155,ai=15,al=0,c="inf_mis",cat="war_beast",cb=34,hp=34732,lg=true,ma=22,mcp=450,md=28,men=4,rcp=650,spd=4}
C.units["wh2_main_lzd_mon_carnosaur_0"] = {a=95,ai=0,al=35,c="inf_mel",cat="inf_melee",cb=50,hp=7944,lg=true,ma=45,mcp=1500,md=40,men=1,rcp=0,spd=7.5}
C.units["wh2_main_lzd_mon_carnosaur_blessed_0"] = {a=95,ai=0,al=35,c="inf_mel",cat="inf_melee",cb=60,hp=8468,lg=true,ma=57,mcp=1600,md=40,men=1,rcp=0,spd=9.9}
C.units["wh2_main_lzd_mon_kroxigors"] = {a=100,ai=15,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=8160,lg=true,ma=30,mcp=1000,md=32,men=16,rcp=0,spd=4.6}
C.units["wh2_main_lzd_mon_kroxigors_blessed"] = {a=100,ai=15,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=9184,lg=true,ma=30,mcp=1100,md=32,men=16,rcp=0,spd=4.6}
C.units["wh2_main_lzd_mon_stegadon_0"] = {a=110,ai=18,al=0,c="inf_mel",cat="inf_melee",cb=70,hp=9040,lg=true,ma=30,mcp=1100,md=32,men=1,rcp=0,spd=5}
C.units["wh2_main_lzd_mon_stegadon_1"] = {a=110,ai=18,al=0,c="inf_mis",cat="war_beast",cb=70,hp=46020,lg=true,ma=30,mcp=1050,md=32,men=5,rcp=500,spd=5}
C.units["wh2_main_lzd_mon_stegadon_blessed_1"] = {a=110,ai=18,al=0,c="inf_mis",cat="war_beast",cb=70,hp=52730,lg=true,ma=30,mcp=1050,md=32,men=5,rcp=500,spd=5}
C.units["wh2_main_skv_art_plagueclaw_catapult"] = {a=30,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=2856,ma=15,mcp=90,md=17,men=56,rcp=810,spd=4.2}
C.units["wh2_main_skv_art_warp_lightning_cannon"] = {a=30,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=2688,ma=16,mcp=100,md=16,men=56,rcp=850,spd=4.2}
C.units["wh2_main_skv_cha_assassin"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=3572,ma=60,mcp=500,md=35,men=1,rcp=0,spd=5.4}
C.units["wh2_main_skv_cha_grey_seer_plague_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3688,ma=30,mcp=350,md=34,men=1,rcp=0,spd=4.2}
C.units["wh2_main_skv_cha_grey_seer_plague_1"] = {a=100,ai=20,al=0,c="com",cat="war_machine",cb=15,hp=6268,ma=30,mcp=1150,md=34,men=1,rcp=0,spd=4.2}
C.units["wh2_main_skv_cha_grey_seer_ruin_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3688,ma=30,mcp=350,md=34,men=1,rcp=0,spd=4.2}
C.units["wh2_main_skv_cha_grey_seer_ruin_1"] = {a=100,ai=20,al=0,c="com",cat="war_machine",cb=15,hp=6268,ma=30,mcp=1150,md=34,men=1,rcp=0,spd=4.2}
C.units["wh2_main_skv_cha_lord_skrolk"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4672,ma=54,mcp=850,md=45,men=1,rcp=0,spd=4.2}
C.units["wh2_main_skv_cha_plague_priest_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3840,ma=40,mcp=500,md=32,men=1,rcp=0,spd=4.2}
C.units["wh2_main_skv_cha_plague_priest_2"] = {a=90,ai=20,al=0,c="com",cat="war_machine",cb=20,hp=5868,ma=30,mcp=1400,md=26,men=1,rcp=0,spd=4.2}
C.units["wh2_main_skv_cha_queek_headtaker"] = {a=110,ai=35,al=0,c="com",cat="inf_melee",cb=50,hp=4672,ma=66,mcp=900,md=46,men=1,rcp=0,spd=4}
C.units["wh2_main_skv_cha_warlock_engineer"] = {a=45,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3420,ma=25,mcp=400,md=32,men=1,rcp=0,spd=4.2}
C.units["wh2_main_skv_cha_warlord_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4068,ma=50,mcp=550,md=55,men=1,rcp=0,spd=4}
C.units["wh2_main_skv_cha_warlord_1"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=55,hp=6376,lg=true,ma=50,mcp=1000,md=55,men=1,rcp=0,spd=6}
C.units["wh2_main_skv_inf_clanrat_spearmen_0"] = {a=25,ai=0,al=9,c="inf_mel",cat="inf_melee",cb=6,hp=9600,ma=18,mcp=325,md=24,men=160,rcp=0,spd=4.2}
C.units["wh2_main_skv_inf_clanrat_spearmen_1"] = {a=25,ai=0,al=9,c="inf_mel",cat="inf_melee",cb=6,hp=9600,ma=18,mcp=375,md=28,men=160,rcp=0,spd=4.2}
C.units["wh2_main_skv_inf_clanrats_0"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=9600,ma=24,mcp=300,md=18,men=160,rcp=0,spd=4.2}
C.units["wh2_main_skv_inf_clanrats_0_summoned"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=9600,ma=24,mcp=150,md=18,men=160,rcp=0,spd=4.2}
C.units["wh2_main_skv_inf_clanrats_0_summoned_small"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=7200,ma=24,mcp=125,md=18,men=120,rcp=0,spd=4.2}
C.units["wh2_main_skv_inf_clanrats_1"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=9600,ma=24,mcp=350,md=22,men=160,rcp=0,spd=4.2}
C.units["wh2_main_skv_inf_death_globe_bombardiers"] = {a=100,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=3648,ma=18,mcp=50,md=16,men=48,rcp=850,spd=3.8}
C.units["wh2_main_skv_inf_death_runners_0"] = {a=20,ai=10,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=5760,ma=32,mcp=950,md=28,men=72,rcp=0,spd=5.4}
C.units["wh2_main_skv_inf_death_runners_0_summoned"] = {a=20,ai=10,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=5760,ma=32,mcp=950,md=28,men=72,rcp=0,spd=5.4}
C.units["wh2_main_skv_inf_gutter_runner_slingers_0"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=6960,ma=26,mcp=200,md=20,men=120,rcp=500,spd=5.4}
C.units["wh2_main_skv_inf_gutter_runner_slingers_1"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=6960,ma=26,mcp=200,md=20,men=120,rcp=550,spd=5.4}
C.units["wh2_main_skv_inf_gutter_runners_0"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=14,hp=6960,ma=26,mcp=200,md=20,men=120,rcp=500,spd=5.4}
C.units["wh2_main_skv_inf_gutter_runners_1"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=14,hp=6960,ma=26,mcp=200,md=20,men=120,rcp=550,spd=5.4}
C.units["wh2_main_skv_inf_night_runners_0"] = {a=10,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=6720,ma=24,mcp=150,md=14,men=120,rcp=350,spd=5.4}
C.units["wh2_main_skv_inf_night_runners_1"] = {a=10,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=6720,ma=24,mcp=150,md=14,men=120,rcp=350,spd=5.4}
C.units["wh2_main_skv_inf_plague_monk_censer_bearer"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=34,hp=9600,ma=34,mcp=1000,md=30,men=120,rcp=0,spd=4.2}
C.units["wh2_main_skv_inf_plague_monks"] = {a=10,ai=7,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=9120,ma=28,mcp=650,md=25,men=120,rcp=0,spd=4.2}
C.units["wh2_main_skv_inf_plague_monks_summoned"] = {a=10,ai=7,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=9120,ma=28,mcp=325,md=25,men=120,rcp=0,spd=4.2}
C.units["wh2_main_skv_inf_poison_wind_globadiers"] = {a=100,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=3648,ma=18,mcp=50,md=16,men=48,rcp=500,spd=3.8}
C.units["wh2_main_skv_inf_skavenslave_slingers_0"] = {a=0,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=6720,ma=6,mcp=65,md=7,men=140,rcp=160,spd=4.2}
C.units["wh2_main_skv_inf_skavenslave_spearmen_0"] = {a=0,ai=0,al=6,c="inf_mel",cat="inf_melee",cb=3,hp=9000,ma=9,mcp=175,md=16,men=180,rcp=0,spd=4.2}
C.units["wh2_main_skv_inf_skavenslave_spearmen_0_summoned"] = {a=0,ai=0,al=6,c="inf_mel",cat="inf_melee",cb=3,hp=6000,ma=9,mcp=88,md=16,men=120,rcp=0,spd=4.2}
C.units["wh2_main_skv_inf_skavenslaves_0"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=5,hp=9000,ma=12,mcp=125,md=10,men=180,rcp=0,spd=4.2}
C.units["wh2_main_skv_inf_stormvermin_0"] = {a=90,ai=0,al=17,c="inf_mel",cat="inf_melee",cb=10,hp=9920,ma=32,mcp=1050,md=34,men=160,rcp=0,spd=3.8}
C.units["wh2_main_skv_inf_stormvermin_0_quest"] = {a=90,ai=0,al=17,c="inf_mel",cat="inf_melee",cb=10,hp=9920,ma=32,mcp=1000,md=34,men=160,rcp=0,spd=3.8}
C.units["wh2_main_skv_inf_stormvermin_0_summoned"] = {a=90,ai=0,al=17,c="inf_mel",cat="inf_melee",cb=10,hp=9920,ma=32,mcp=500,md=34,men=160,rcp=0,spd=3.8}
C.units["wh2_main_skv_inf_stormvermin_1"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9920,ma=38,mcp=950,md=36,men=160,rcp=0,spd=3.8}
C.units["wh2_main_skv_inf_warpfire_thrower"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=3936,ma=16,mcp=70,md=16,men=32,rcp=630,spd=3.8}
C.units["wh2_main_skv_mon_hell_pit_abomination"] = {a=50,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=25,hp=12100,lg=true,ma=42,mcp=1800,md=30,men=1,rcp=0,spd=5.8}
C.units["wh2_main_skv_mon_hell_pit_abomination_summoned"] = {a=50,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=25,hp=12100,lg=true,ma=42,mcp=1800,md=30,men=1,rcp=0,spd=5.8}
C.units["wh2_main_skv_mon_rat_ogres"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=46,hp=7728,lg=true,ma=26,mcp=800,md=26,men=16,rcp=0,spd=6}
C.units["wh2_main_skv_veh_doomwheel"] = {a=100,ai=30,al=0,c="chariot",cat="war_machine",cb=50,hp=155500,lg=true,ma=26,mcp=980,md=37,men=25,rcp=420,spd=4.2}
C.units["wh2_pro06_tmb_mon_bone_giant_0"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=20,hp=12620,lg=true,ma=30,mcp=420,md=28,men=1,rcp=1280,spd=3.2}
C.units["wh2_pro07_emp_cha_wizard_death_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=25,mcp=250,md=30,men=1,rcp=0,spd=3.5}
C.units["wh2_pro07_emp_cha_wizard_death_1"] = {a=20,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=25,mcp=450,md=30,men=1,rcp=0,spd=7.8}
C.units["wh2_pro07_emp_cha_wizard_death_2"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4008,lg=true,ma=25,mcp=650,md=30,men=1,rcp=0,spd=8.2}
C.units["wh2_pro07_emp_cha_wizard_death_3"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=25,mcp=500,md=30,men=1,rcp=0,spd=7.8}
C.units["wh2_pro08_neu_cha_felix"] = {a=70,ai=20,al=0,c="com",cat="inf_melee",cb=35,hp=4168,ma=50,mcp=800,md=55,men=1,rcp=0,spd=3.4}
C.units["wh2_pro08_neu_cha_gotrek"] = {a=0,ai=0,al=35,c="com",cat="inf_melee",cb=65,hp=5902,ma=70,mcp=1150,md=50,men=1,rcp=0,spd=4.2}
C.units["wh2_pro09_grn_cha_black_orc_big_boss_0"] = {a=110,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=4178,ma=55,mcp=750,md=55,men=1,rcp=0,spd=3.3}
C.units["wh2_pro09_grn_cha_black_orc_big_boss_1"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=65,hp=4673,lg=true,ma=55,mcp=950,md=55,men=1,rcp=0,spd=7}
C.units["wh2_twa01_grn_cha_goblin_great_shaman_3"] = {a=120,ai=0,al=20,c="com",cat="war_beast",cb=40,hp=79720,lg=true,ma=58,mcp=1850,md=30,men=8,rcp=0,spd=5.7}
C.units["wh2_twa02_wef_cha_glade_captain_0"] = {a=50,ai=0,al=35,c="com",cat="inf_melee",cb=30,hp=3688,ma=50,mcp=300,md=45,men=1,rcp=350,spd=4.6}
C.units["wh2_twa02_wef_cha_glade_captain_1"] = {a=50,ai=0,al=35,c="com",cat="cavalry",cb=45,hp=4168,lg=true,ma=50,mcp=400,md=45,men=1,rcp=450,spd=9.4}
C.units["wh2_twa02_wef_cha_glade_captain_2"] = {a=50,ai=0,al=35,c="com",cat="war_beast",cb=70,hp=4760,lg=true,ma=50,mcp=600,md=35,men=1,rcp=600,spd=7}
C.units["wh2_twa02_wef_cha_glade_captain_3"] = {a=60,ai=0,al=35,c="com",cat="cavalry",cb=60,hp=4648,lg=true,ma=50,mcp=500,md=45,men=1,rcp=500,spd=9}
C.units["wh2_twa03_def_cha_rakarth_0"] = {a=90,ai=0,al=30,c="com",cat="inf_melee",cb=45,hp=4288,ma=55,mcp=900,md=50,men=1,rcp=0,spd=4.6}
C.units["wh2_twa03_def_cha_rakarth_1"] = {a=90,ai=28,al=0,c="com",cat="war_machine",cb=45,hp=17124,lg=true,ma=36,mcp=350,md=25,men=3,rcp=1000,spd=8.4}
C.units["wh2_twa03_def_cha_rakarth_2"] = {a=80,ai=0,al=15,c="com",cat="war_beast",cb=65,hp=5468,lg=true,ma=55,mcp=1650,md=45,men=1,rcp=0,spd=7}
C.units["wh2_twa03_def_cha_rakarth_3"] = {a=90,ai=0,al=15,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=55,mcp=2200,md=50,men=1,rcp=0,spd=6.5}
C.units["wh2_twa03_def_mon_war_mammoth_0"] = {a=50,ai=34,al=0,c="inf_mel",cat="inf_melee",cb=68,hp=12988,lg=true,ma=30,mcp=1450,md=28,men=1,rcp=0,spd=5.6}
C.units["wh2_twa03_def_mon_wolves_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=38,hp=6864,ma=26,mcp=650,md=21,men=48,rcp=0,spd=9.5}
C.units["wh2_twa04_bst_cha_great_bray_shaman_beasts_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=38,hp=4568,ma=30,mcp=550,md=28,men=1,rcp=0,spd=3.8}
C.units["wh2_twa04_bst_cha_great_bray_shaman_beasts_1"] = {a=100,ai=25,al=0,c="com",cat="war_machine",cb=80,hp=10064,lg=true,ma=34,mcp=1050,md=30,men=2,rcp=0,spd=7}
C.units["wh2_twa04_bst_cha_great_bray_shaman_beasts_2"] = {a=80,ai=20,al=0,c="com",cat="war_machine",cb=64,hp=9664,lg=true,ma=28,mcp=850,md=24,men=2,rcp=0,spd=7}
C.units["wh2_twa04_bst_cha_great_bray_shaman_death_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=38,hp=4568,ma=30,mcp=550,md=28,men=1,rcp=0,spd=3.8}
C.units["wh2_twa04_bst_cha_great_bray_shaman_death_1"] = {a=100,ai=25,al=0,c="com",cat="war_machine",cb=80,hp=10064,lg=true,ma=34,mcp=1050,md=30,men=2,rcp=0,spd=7}
C.units["wh2_twa04_bst_cha_great_bray_shaman_death_2"] = {a=80,ai=20,al=0,c="com",cat="war_machine",cb=64,hp=9664,lg=true,ma=28,mcp=850,md=24,men=2,rcp=0,spd=7}
C.units["wh2_twa04_bst_cha_great_bray_shaman_shadows_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=38,hp=4568,ma=30,mcp=550,md=28,men=1,rcp=0,spd=3.8}
C.units["wh2_twa04_bst_cha_great_bray_shaman_shadows_1"] = {a=100,ai=25,al=0,c="com",cat="war_machine",cb=80,hp=10064,lg=true,ma=34,mcp=1050,md=30,men=2,rcp=0,spd=7}
C.units["wh2_twa04_bst_cha_great_bray_shaman_shadows_2"] = {a=80,ai=20,al=0,c="com",cat="war_machine",cb=64,hp=9664,lg=true,ma=28,mcp=850,md=24,men=2,rcp=0,spd=7}
C.units["wh2_twa04_bst_cha_great_bray_shaman_wild_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=38,hp=4568,ma=30,mcp=550,md=28,men=1,rcp=0,spd=3.8}
C.units["wh2_twa04_bst_cha_great_bray_shaman_wild_1"] = {a=100,ai=25,al=0,c="com",cat="war_machine",cb=80,hp=10064,lg=true,ma=34,mcp=1050,md=30,men=2,rcp=0,spd=7}
C.units["wh2_twa04_bst_cha_great_bray_shaman_wild_2"] = {a=80,ai=20,al=0,c="com",cat="war_machine",cb=64,hp=9664,lg=true,ma=28,mcp=850,md=24,men=2,rcp=0,spd=7}
C.units["wh3_cp1_cth_cha_bhashiva"] = {a=60,ai=20,al=0,c="com",cat="inf_melee",cb=50,hp=5248,ma=65,mcp=1200,md=50,men=1,rcp=0,spd=5.2}
C.units["wh3_cp1_cth_cha_clawspeaker_beasts"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=4548,ma=42,mcp=800,md=40,men=1,rcp=0,spd=4.4}
C.units["wh3_cp1_cth_cha_clawspeaker_life"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=4548,ma=42,mcp=800,md=40,men=1,rcp=0,spd=4.4}
C.units["wh3_cp1_cth_cha_clawspeaker_shadows"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=4548,ma=42,mcp=800,md=40,men=1,rcp=0,spd=4.4}
C.units["wh3_cp1_cth_cha_sawai"] = {a=40,ai=0,al=30,c="com",cat="inf_melee",cb=45,hp=5076,ma=50,mcp=900,md=55,men=1,rcp=0,spd=4.4}
C.units["wh3_cp1_cth_cha_taoyan"] = {a=90,ai=0,al=25,c="com",cat="inf_melee",cb=30,hp=4588,ma=50,mcp=1000,md=60,men=1,rcp=0,spd=3.4}
C.units["wh3_cp1_cth_inf_iron_claw_guandao"] = {a=60,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=35,hp=8800,ma=40,mcp=1500,md=46,men=80,rcp=0,spd=4.4}
C.units["wh3_cp1_cth_inf_iron_claw_guandao_summoned"] = {a=60,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=35,hp=8800,ma=40,mcp=1500,md=46,men=80,rcp=0,spd=4.4}
C.units["wh3_cp1_cth_inf_stalkers_throwing_disc"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=35,hp=6000,ma=42,mcp=400,md=40,men=60,rcp=700,spd=5.2}
C.units["wh3_cp1_cth_inf_tiger_warriors_dual_axe"] = {a=30,ai=5,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=8000,ma=42,mcp=800,md=34,men=80,rcp=0,spd=4.4}
C.units["wh3_cp1_cth_mon_celestial_lion_summoned"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=65,hp=6176,lg=true,ma=42,mcp=1300,md=36,men=1,rcp=0,spd=6.2}
C.units["wh3_cp1_tze_cha_qb_exalted_lord_of_change_boss"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=10828,lg=true,ma=60,mcp=1900,md=60,men=1,rcp=0,spd=5.4}
C.units["wh3_dlc20_chs_cav_chaos_chariot_mkho"] = {a=120,ai=18,al=0,c="chariot",cat="war_machine",cb=76,hp=11152,lg=true,ma=22,mcp=850,md=23,men=8,rcp=0,spd=7.8}
C.units["wh3_dlc20_chs_cav_chaos_chariot_mnur"] = {a=110,ai=18,al=0,c="chariot",cat="war_machine",cb=76,hp=12264,lg=true,ma=17,mcp=850,md=33,men=8,rcp=0,spd=7.8}
C.units["wh3_dlc20_chs_cav_chaos_chariot_msla"] = {a=110,ai=18,al=0,c="chariot",cat="war_machine",cb=76,hp=11152,lg=true,ma=22,mcp=850,md=28,men=8,rcp=0,spd=8.3}
C.units["wh3_dlc20_chs_cav_chaos_chariot_msla_ror"] = {a=110,ai=18,al=0,c="chariot",cat="war_machine",cb=76,hp=11152,lg=true,ma=29,mcp=1000,md=36,men=8,rcp=0,spd=10}
C.units["wh3_dlc20_chs_cav_chaos_chariot_mtze"] = {a=110,ai=18,al=0,c="chariot",cat="war_machine",cb=76,hp=11152,lg=true,ma=22,mcp=850,md=28,men=8,rcp=0,spd=7.8}
C.units["wh3_dlc20_chs_cav_chaos_knights_mkho"] = {a=130,ai=0,al=0,c="cav_mel",cat="war_beast",cb=44,hp=7620,lg=true,ma=42,mcp=1400,md=45,men=60,rcp=0,spd=7}
C.units["wh3_dlc20_chs_cav_chaos_knights_mkho_lances"] = {a=130,ai=0,al=0,c="cav_shk",cat="war_beast",cb=80,hp=7620,lg=true,ma=42,mcp=1500,md=33,men=60,rcp=0,spd=7}
C.units["wh3_dlc20_chs_cav_chaos_knights_mnur"] = {a=120,ai=0,al=0,c="cav_mel",cat="war_beast",cb=44,hp=8280,lg=true,ma=37,mcp=1500,md=55,men=60,rcp=0,spd=7}
C.units["wh3_dlc20_chs_cav_chaos_knights_mnur_lances"] = {a=120,ai=0,al=0,c="cav_shk",cat="war_beast",cb=80,hp=8280,lg=true,ma=37,mcp=1600,md=43,men=60,rcp=0,spd=7}
C.units["wh3_dlc20_chs_cav_chaos_knights_msla"] = {a=120,ai=0,al=0,c="cav_mel",cat="war_beast",cb=44,hp=7620,lg=true,ma=42,mcp=1500,md=50,men=60,rcp=0,spd=7.5}
C.units["wh3_dlc20_chs_cav_chaos_knights_msla_lances"] = {a=120,ai=0,al=0,c="cav_shk",cat="war_beast",cb=80,hp=7620,lg=true,ma=42,mcp=1600,md=38,men=60,rcp=0,spd=7.5}
C.units["wh3_dlc20_chs_cav_chaos_knights_mtze_lances"] = {a=120,ai=0,al=0,c="cav_shk",cat="war_beast",cb=80,hp=7620,lg=true,ma=42,mcp=1600,md=38,men=60,rcp=0,spd=7}
C.units["wh3_dlc20_chs_cav_marauder_horsemen_mkho_throwing_axes"] = {a=35,ai=5,al=0,c="cav_mis",cat="war_beast",cb=36,hp=4980,lg=true,ma=22,mcp=275,md=21,men=60,rcp=400,spd=9}
C.units["wh3_dlc20_chs_cav_marauder_horsemen_mnur_throwing_axes"] = {a=15,ai=0,al=0,c="cav_mis",cat="war_beast",cb=24,hp=5460,lg=true,ma=17,mcp=200,md=31,men=60,rcp=450,spd=9}
C.units["wh3_dlc20_chs_cav_marauder_horsemen_msla_javelins"] = {a=15,ai=0,al=0,c="cav_mis",cat="war_beast",cb=24,hp=4980,lg=true,ma=22,mcp=225,md=20,men=60,rcp=400,spd=9.5}
C.units["wh3_dlc20_chs_cav_marauder_horsemen_mtze_javelins"] = {a=15,ai=0,al=0,c="cav_mis",cat="war_beast",cb=24,hp=4980,lg=true,ma=22,mcp=300,md=20,men=60,rcp=400,spd=9}
C.units["wh3_dlc20_chs_cha_chaos_lord_mkho"] = {a=110,ai=15,al=0,c="com",cat="inf_melee",cb=45,hp=4640,ma=65,mcp=1100,md=50,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc20_chs_cha_chaos_lord_mkho_chaos_steed"] = {a=120,ai=15,al=0,c="com",cat="war_beast",cb=50,hp=5220,lg=true,ma=65,mcp=1300,md=50,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc20_chs_cha_chaos_lord_mkho_gorebeast_chariot"] = {a=130,ai=30,al=0,c="com",cat="war_machine",cb=80,hp=11340,lg=true,ma=40,mcp=1450,md=30,men=2,rcp=0,spd=6.6}
C.units["wh3_dlc20_chs_cha_chaos_lord_mkho_juggernaut"] = {a=130,ai=20,al=0,c="com",cat="cavalry",cb=70,hp=5848,lg=true,ma=68,mcp=1500,md=52,men=1,rcp=0,spd=7}
C.units["wh3_dlc20_chs_cha_chaos_lord_msla"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4640,ma=65,mcp=1050,md=55,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_lord_msla_chaos_chariot"] = {a=110,ai=20,al=0,c="com",cat="war_machine",cb=80,hp=10864,lg=true,ma=40,mcp=1350,md=35,men=2,rcp=0,spd=8.3}
C.units["wh3_dlc20_chs_cha_chaos_lord_msla_chaos_steed"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5220,lg=true,ma=65,mcp=1250,md=55,men=1,rcp=0,spd=8.3}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_death_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1200,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_fire_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1200,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_death_mnur"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=4188,ma=43,mcp=800,md=49,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_death_mnur_chaos_steed"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4716,lg=true,ma=43,mcp=1000,md=49,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_death_mnur_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=12698,lg=true,ma=30,mcp=1600,md=35,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_death_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11542,lg=true,ma=35,mcp=1500,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_fire_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11542,lg=true,ma=35,mcp=1500,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_metal_mtze"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3808,ma=48,mcp=800,md=44,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_metal_mtze_chaos_steed"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4288,lg=true,ma=48,mcp=1000,md=44,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_metal_mtze_disc"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4288,ma=48,mcp=1200,md=44,men=1,rcp=0,spd=9.5}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_metal_mtze_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11542,lg=true,ma=35,mcp=1400,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_metal_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11542,lg=true,ma=35,mcp=1500,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_nurgle_mnur"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=4188,ma=43,mcp=800,md=49,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_nurgle_mnur_chaos_steed"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4716,lg=true,ma=43,mcp=1000,md=49,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_nurgle_mnur_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=12698,lg=true,ma=30,mcp=1600,md=35,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_shadows_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11542,lg=true,ma=35,mcp=1500,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_tzeentch_mtze"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3808,ma=48,mcp=800,md=44,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_tzeentch_mtze_chaos_steed"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4288,lg=true,ma=48,mcp=1000,md=44,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_tzeentch_mtze_disc"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4288,ma=48,mcp=1200,md=44,men=1,rcp=0,spd=9.5}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_lord_tzeentch_mtze_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11542,lg=true,ma=35,mcp=1400,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_metal_mtze"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3520,ma=42,mcp=500,md=40,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_metal_mtze_chaos_steed"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=3968,lg=true,ma=42,mcp=700,md=40,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_metal_mtze_disc"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=3968,ma=48,mcp=900,md=44,men=1,rcp=0,spd=9.5}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_metal_mtze_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1300,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_metal_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1200,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_shadows_msla"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3520,ma=42,mcp=500,md=40,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_shadows_msla_chaos_steed"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=3968,lg=true,ma=42,mcp=700,md=40,men=1,rcp=0,spd=8.3}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_shadows_msla_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1300,md=30,men=1,rcp=0,spd=4.3}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_shadows_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1200,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_slaanesh_msla"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3520,ma=42,mcp=500,md=40,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_slaanesh_msla_chaos_steed"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=3968,lg=true,ma=42,mcp=700,md=40,men=1,rcp=0,spd=8.3}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_slaanesh_msla_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1300,md=30,men=1,rcp=0,spd=4.3}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_tzeentch_mtze"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3520,ma=42,mcp=500,md=40,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_tzeentch_mtze_chaos_steed"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=3968,lg=true,ma=42,mcp=700,md=40,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_tzeentch_mtze_disc"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=3968,ma=48,mcp=900,md=44,men=1,rcp=0,spd=9.5}
C.units["wh3_dlc20_chs_cha_chaos_sorcerer_tzeentch_mtze_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1300,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_cha_cultist_msla_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1100,md=30,men=1,rcp=0,spd=4.3}
C.units["wh3_dlc20_chs_cha_daemon_prince"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=7600,lg=true,ma=55,mcp=1800,md=55,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc20_chs_cha_daemon_prince_mkho"] = {a=60,ai=15,al=0,c="com",cat="inf_melee",cb=50,hp=7600,lg=true,ma=55,mcp=1900,md=50,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc20_chs_cha_daemon_prince_mnur"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=8360,lg=true,ma=50,mcp=2000,md=60,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc20_chs_cha_daemon_prince_msla"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=7600,lg=true,ma=55,mcp=2000,md=55,men=1,rcp=0,spd=7}
C.units["wh3_dlc20_chs_cha_daemon_prince_mtze"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=7600,lg=true,ma=55,mcp=1900,md=55,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc20_chs_cha_exalted_hero_mkho"] = {a=110,ai=15,al=0,c="com",cat="inf_melee",cb=45,hp=4068,ma=60,mcp=800,md=40,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc20_chs_cha_exalted_hero_mkho_chaos_steed"] = {a=130,ai=15,al=0,c="com",cat="war_beast",cb=60,hp=4672,lg=true,ma=60,mcp=1000,md=40,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc20_chs_cha_exalted_hero_mkho_gorebeast_chariot"] = {a=130,ai=30,al=0,c="com",cat="war_machine",cb=80,hp=10040,lg=true,ma=40,mcp=1150,md=15,men=2,rcp=0,spd=6.6}
C.units["wh3_dlc20_chs_cha_exalted_hero_mkho_juggernaut"] = {a=130,ai=20,al=0,c="com",cat="cavalry",cb=70,hp=5268,lg=true,ma=63,mcp=1200,md=42,men=1,rcp=0,spd=7}
C.units["wh3_dlc20_chs_cha_exalted_hero_mnur"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4474,ma=50,mcp=900,md=50,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc20_chs_cha_exalted_hero_mnur_chaos_chariot"] = {a=110,ai=20,al=0,c="com",cat="war_machine",cb=75,hp=10680,lg=true,ma=35,mcp=1200,md=25,men=2,rcp=0,spd=7.8}
C.units["wh3_dlc20_chs_cha_exalted_hero_mnur_chaos_steed"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5138,lg=true,ma=50,mcp=1100,md=50,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc20_chs_inf_aspiring_champions_mtze_ror"] = {a=120,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=16,hp=9040,ma=40,mcp=1500,md=52,men=16,rcp=0,spd=3.2}
C.units["wh3_dlc20_chs_inf_chaos_marauders_mkho"] = {a=35,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9360,ma=34,mcp=400,md=23,men=120,rcp=0,spd=3.5}
C.units["wh3_dlc20_chs_inf_chaos_marauders_mkho_dualweapons"] = {a=35,ai=5,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=9360,ma=34,mcp=550,md=17,men=120,rcp=0,spd=3.5}
C.units["wh3_dlc20_chs_inf_chaos_marauders_mnur"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=10200,ma=29,mcp=425,md=33,men=120,rcp=0,spd=3.5}
C.units["wh3_dlc20_chs_inf_chaos_marauders_mnur_greatweapons"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=10200,ma=29,mcp=500,md=25,men=120,rcp=0,spd=3.5}
C.units["wh3_dlc20_chs_inf_chaos_marauders_msla"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9360,ma=34,mcp=450,md=28,men=120,rcp=0,spd=4}
C.units["wh3_dlc20_chs_inf_chaos_marauders_msla_hellscourges"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9360,ma=30,mcp=550,md=38,men=120,rcp=0,spd=4}
C.units["wh3_dlc20_chs_inf_chaos_marauders_mtze"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9360,ma=34,mcp=425,md=28,men=120,rcp=0,spd=3.5}
C.units["wh3_dlc20_chs_inf_chaos_marauders_mtze_spears"] = {a=15,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=6,hp=9360,ma=25,mcp=500,md=37,men=120,rcp=0,spd=3.5}
C.units["wh3_dlc20_chs_inf_chaos_warriors_mnur"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=9800,ma=31,mcp=800,md=49,men=100,rcp=0,spd=2.8}
C.units["wh3_dlc20_chs_inf_chaos_warriors_mnur_greatweapons"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=9800,ma=33,mcp=875,md=37,men=100,rcp=0,spd=2.8}
C.units["wh3_dlc20_chs_inf_chaos_warriors_msla"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=9000,ma=36,mcp=800,md=44,men=100,rcp=0,spd=3.3}
C.units["wh3_dlc20_chs_inf_chaos_warriors_msla_hellscourges"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=9000,ma=32,mcp=950,md=54,men=100,rcp=0,spd=3.3}
C.units["wh3_dlc20_chs_inf_chaos_warriors_mtze"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=9000,ma=36,mcp=825,md=44,men=100,rcp=0,spd=2.8}
C.units["wh3_dlc20_chs_inf_chaos_warriors_mtze_halberds"] = {a=100,ai=0,al=19,c="inf_mel",cat="inf_melee",cb=10,hp=9000,ma=30,mcp=925,md=42,men=100,rcp=0,spd=2.8}
C.units["wh3_dlc20_chs_inf_chosen_mkho"] = {a=130,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=10480,ma=46,mcp=1300,md=55,men=80,rcp=0,spd=2.8}
C.units["wh3_dlc20_chs_inf_chosen_mkho_dualweapons"] = {a=130,ai=10,al=0,c="inf_mel",cat="inf_melee",cb=38,hp=10480,ma=46,mcp=1450,md=49,men=80,rcp=0,spd=2.8}
C.units["wh3_dlc20_chs_inf_chosen_mnur"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=11440,ma=41,mcp=1350,md=65,men=80,rcp=0,spd=2.8}
C.units["wh3_dlc20_chs_inf_chosen_mnur_greatweapons"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=32,hp=11440,ma=43,mcp=1450,md=51,men=80,rcp=0,spd=2.8}
C.units["wh3_dlc20_chs_inf_chosen_msla"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=10480,ma=46,mcp=1350,md=60,men=80,rcp=0,spd=3.3}
C.units["wh3_dlc20_chs_inf_chosen_msla_hellscourges"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=10480,ma=42,mcp=1500,md=70,men=80,rcp=0,spd=3.3}
C.units["wh3_dlc20_chs_inf_chosen_mtze"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=10480,ma=46,mcp=1350,md=60,men=80,rcp=0,spd=2.8}
C.units["wh3_dlc20_chs_inf_chosen_mtze_halberds"] = {a=120,ai=0,al=26,c="inf_mel",cat="inf_melee",cb=16,hp=10480,ma=36,mcp=1500,md=56,men=80,rcp=0,spd=2.8}
C.units["wh3_dlc20_chs_inf_forsaken_mkho"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=36,hp=8000,ma=32,mcp=800,md=15,men=80,rcp=0,spd=4.6}
C.units["wh3_dlc20_chs_inf_forsaken_msla"] = {a=85,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=36,hp=8000,ma=32,mcp=800,md=20,men=80,rcp=0,spd=5.1}
C.units["wh3_dlc20_chs_mon_giant_mnur_ror"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=13882,lg=true,ma=73,mcp=1700,md=43,men=1,rcp=0,spd=3.9}
C.units["wh3_dlc20_chs_mon_warshrine"] = {a=60,ai=0,al=0,c="inf_mel",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1200,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_mon_warshrine_mkho"] = {a=70,ai=0,al=0,c="inf_mel",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1300,md=25,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_mon_warshrine_mnur"] = {a=60,ai=0,al=0,c="inf_mel",cat="war_beast",cb=25,hp=12368,lg=true,ma=30,mcp=1300,md=35,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_chs_mon_warshrine_msla"] = {a=60,ai=0,al=0,c="inf_mel",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1300,md=30,men=1,rcp=0,spd=4.3}
C.units["wh3_dlc20_chs_mon_warshrine_mtze"] = {a=60,ai=0,al=0,c="inf_mel",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1300,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_kho_cav_skullcrushers_mkho_ror"] = {a=130,ai=10,al=0,c="cav_shk",cat="cavalry",cb=70,hp=8096,lg=true,ma=54,mcp=1900,md=52,men=32,rcp=0,spd=7}
C.units["wh3_dlc20_kho_cha_cultist_mkho_warshrine"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1400,md=25,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_kho_cha_valkia"] = {a=100,ai=0,al=20,c="com",cat="inf_melee",cb=50,hp=5600,ma=54,mcp=1300,md=55,men=1,rcp=0,spd=4}
C.units["wh3_dlc20_nur_cha_cultist_mnur_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=12368,lg=true,ma=30,mcp=1400,md=35,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_nur_cha_festus"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=6220,ma=45,mcp=850,md=50,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc20_sla_cha_azazel"] = {a=5,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=6400,ma=70,mcp=1600,md=55,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc20_tze_cha_cultist_mtze_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1300,md=30,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc20_tze_cha_vilitch"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=5000,ma=55,mcp=1000,md=55,men=1,rcp=0,spd=3.5}
C.units["wh3_dlc23_chd_cav_bull_centaurs_axe"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=9856,lg=true,ma=32,mcp=1550,md=48,men=16,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cav_bull_centaurs_dual_axe"] = {a=50,ai=18,al=0,c="inf_mel",cat="inf_melee",cb=52,hp=9856,lg=true,ma=36,mcp=1600,md=42,men=16,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cav_bull_centaurs_dual_axe_ror"] = {a=50,ai=18,al=0,c="inf_mel",cat="inf_melee",cb=52,hp=9856,lg=true,ma=46,mcp=1500,md=52,men=16,rcp=400,spd=6.2}
C.units["wh3_dlc23_chd_cav_bull_centaurs_greatweapons"] = {a=50,ai=0,al=25,c="inf_mel",cat="inf_melee",cb=46,hp=9856,lg=true,ma=34,mcp=1600,md=36,men=16,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cav_hobgoblin_wolf_raiders_bows"] = {a=45,ai=0,al=0,c="cav_mis",cat="cavalry",cb=20,hp=3660,lg=true,ma=18,mcp=225,md=18,men=60,rcp=350,spd=9.2}
C.units["wh3_dlc23_chd_cav_hobgoblin_wolf_raiders_ror"] = {a=60,ai=0,al=0,c="cav_mis",cat="cavalry",cb=40,hp=3780,lg=true,ma=34,mcp=425,md=34,men=60,rcp=350,spd=9.2}
C.units["wh3_dlc23_chd_cav_hobgoblin_wolf_raiders_spears"] = {a=45,ai=0,al=0,c="cav_mel",cat="cavalry",cb=40,hp=3780,lg=true,ma=26,mcp=500,md=26,men=60,rcp=0,spd=9.2}
C.units["wh3_dlc23_chd_cha_astragoth_ironhand"] = {a=130,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=6824,ma=60,mcp=1500,md=50,men=1,rcp=0,spd=6}
C.units["wh3_dlc23_chd_cha_bull_centaur_taurruk"] = {a=70,ai=0,al=30,c="com",cat="inf_melee",cb=50,hp=6280,lg=true,ma=48,mcp=1100,md=42,men=1,rcp=0,spd=7}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_death"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=16,hp=3748,ma=38,mcp=550,md=36,men=1,rcp=0,spd=3.2}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_death_bale_taurus"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=8258,lg=true,ma=56,mcp=1900,md=40,men=1,rcp=0,spd=7.4}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_death_great_taurus"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6668,lg=true,ma=46,mcp=1200,md=28,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_death_lammasu"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=6048,lg=true,ma=40,mcp=1300,md=48,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_fire"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=16,hp=3748,ma=38,mcp=550,md=36,men=1,rcp=0,spd=3.2}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_fire_bale_taurus"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=8258,lg=true,ma=56,mcp=1900,md=40,men=1,rcp=0,spd=7.4}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_fire_great_taurus"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6668,lg=true,ma=46,mcp=1200,md=28,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_fire_lammasu"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=6048,lg=true,ma=40,mcp=1300,md=48,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_hashut"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=16,hp=3748,ma=38,mcp=550,md=36,men=1,rcp=0,spd=3.2}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_hashut_bale_taurus"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=8258,lg=true,ma=56,mcp=1900,md=40,men=1,rcp=0,spd=7.4}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_hashut_great_taurus"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6668,lg=true,ma=46,mcp=1200,md=28,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_hashut_lammasu"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=6048,lg=true,ma=40,mcp=1300,md=48,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_metal"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=16,hp=3748,ma=38,mcp=550,md=36,men=1,rcp=0,spd=3.2}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_metal_bale_taurus"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=8258,lg=true,ma=56,mcp=1900,md=40,men=1,rcp=0,spd=7.4}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_metal_great_taurus"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6668,lg=true,ma=46,mcp=1200,md=28,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_daemonsmith_sorcerer_metal_lammasu"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=6048,lg=true,ma=40,mcp=1300,md=48,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_drazhoath_the_ashen"] = {a=125,ai=20,al=0,c="com",cat="inf_melee",cb=30,hp=5520,ma=45,mcp=900,md=65,men=1,rcp=0,spd=3.2}
C.units["wh3_dlc23_chd_cha_drazhoath_the_ashen_bale_taurus_cinderbreath"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=8656,lg=true,ma=64,mcp=2300,md=46,men=1,rcp=0,spd=7.4}
C.units["wh3_dlc23_chd_cha_gorduz_backstabber"] = {a=45,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=3864,ma=50,mcp=500,md=58,men=1,rcp=0,spd=4}
C.units["wh3_dlc23_chd_cha_gorduz_backstabber_giant_wolf"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4268,lg=true,ma=50,mcp=650,md=58,men=1,rcp=0,spd=9.2}
C.units["wh3_dlc23_chd_cha_infernal_castellan"] = {a=120,ai=0,al=15,c="com",cat="inf_ranged",cb=20,hp=3908,ma=45,mcp=300,md=42,men=1,rcp=350,spd=3.2}
C.units["wh3_dlc23_chd_cha_overseer"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4958,ma=55,mcp=900,md=55,men=1,rcp=0,spd=3.2}
C.units["wh3_dlc23_chd_cha_overseer_great_taurus"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6668,lg=true,ma=46,mcp=1300,md=28,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_overseer_lammasu"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6048,lg=true,ma=54,mcp=1400,md=34,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_death"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=16,hp=4048,ma=44,mcp=900,md=42,men=1,rcp=0,spd=3.2}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_death_bale_taurus"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=8258,lg=true,ma=56,mcp=2200,md=40,men=1,rcp=0,spd=7.4}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_death_great_taurus"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6668,lg=true,ma=46,mcp=1500,md=28,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_death_lammasu"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=6048,lg=true,ma=40,mcp=1600,md=48,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_fire"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=16,hp=4048,ma=44,mcp=900,md=42,men=1,rcp=0,spd=3.2}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_fire_bale_taurus"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=8258,lg=true,ma=56,mcp=2200,md=40,men=1,rcp=0,spd=7.4}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_fire_great_taurus"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6668,lg=true,ma=46,mcp=1500,md=28,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_fire_lammasu"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=6048,lg=true,ma=40,mcp=1600,md=48,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_hashut"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=16,hp=4048,ma=44,mcp=900,md=42,men=1,rcp=0,spd=3.2}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_hashut_bale_taurus"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=8258,lg=true,ma=56,mcp=2200,md=40,men=1,rcp=0,spd=7.4}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_hashut_great_taurus"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6668,lg=true,ma=46,mcp=1500,md=28,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_hashut_lammasu"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=6048,lg=true,ma=40,mcp=1600,md=48,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_metal"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=16,hp=4048,ma=44,mcp=900,md=42,men=1,rcp=0,spd=3.2}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_metal_bale_taurus"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=8258,lg=true,ma=56,mcp=2200,md=40,men=1,rcp=0,spd=7.4}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_metal_great_taurus"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6668,lg=true,ma=46,mcp=1500,md=28,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_sorcerer_prophet_metal_lammasu"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=6048,lg=true,ma=40,mcp=1600,md=48,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_zhatan_the_black"] = {a=125,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=5820,ma=62,mcp=850,md=55,men=1,rcp=0,spd=3.2}
C.units["wh3_dlc23_chd_cha_zhatan_the_black_great_taurus"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6668,lg=true,ma=46,mcp=1450,md=28,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_cha_zhatan_the_black_lammasu"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=6848,lg=true,ma=44,mcp=1550,md=52,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_inf_chaos_dwarf_blunderbusses"] = {a=85,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=6160,ma=28,mcp=300,md=32,men=80,rcp=600,spd=2.8}
C.units["wh3_dlc23_chd_inf_chaos_dwarf_blunderbusses_ror"] = {a=100,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=18,hp=6800,ma=38,mcp=450,md=46,men=80,rcp=750,spd=2.6}
C.units["wh3_dlc23_chd_inf_chaos_dwarf_warriors"] = {a=85,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=8200,ma=30,mcp=600,md=44,men=100,rcp=0,spd=2.8}
C.units["wh3_dlc23_chd_inf_chaos_dwarf_warriors_great_weapons"] = {a=85,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8200,ma=30,mcp=650,md=34,men=100,rcp=0,spd=2.8}
C.units["wh3_dlc23_chd_inf_chaos_dwarf_warriors_ror"] = {a=85,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=8200,ma=38,mcp=750,md=54,men=100,rcp=200,spd=2.8}
C.units["wh3_dlc23_chd_inf_goblin_labourers"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=9000,ma=12,mcp=150,md=16,men=180,rcp=0,spd=3.3}
C.units["wh3_dlc23_chd_inf_hobgoblin_archers"] = {a=25,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=6960,ma=18,mcp=200,md=24,men=120,rcp=300,spd=3.5}
C.units["wh3_dlc23_chd_inf_hobgoblin_cutthroats"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=15,hp=8120,ma=32,mcp=400,md=28,men=140,rcp=0,spd=3.5}
C.units["wh3_dlc23_chd_inf_hobgoblin_cutthroats_summoned"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=15,hp=8120,ma=32,mcp=400,md=28,men=140,rcp=0,spd=3.5}
C.units["wh3_dlc23_chd_inf_hobgoblin_sneaky_gits"] = {a=25,ai=7,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=6960,ma=32,mcp=425,md=20,men=120,rcp=150,spd=3.5}
C.units["wh3_dlc23_chd_inf_infernal_guard"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=9000,ma=32,mcp=950,md=56,men=100,rcp=0,spd=2.6}
C.units["wh3_dlc23_chd_inf_infernal_guard_fireglaives"] = {a=100,ai=0,al=5,c="inf_mis",cat="inf_ranged",cb=8,hp=6800,ma=30,mcp=500,md=42,men=80,rcp=700,spd=2.6}
C.units["wh3_dlc23_chd_inf_infernal_guard_great_weapons"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9000,ma=32,mcp=1000,md=46,men=100,rcp=0,spd=2.6}
C.units["wh3_dlc23_chd_inf_infernal_ironsworn"] = {a=125,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=10600,ma=42,mcp=1400,md=64,men=100,rcp=0,spd=2.6}
C.units["wh3_dlc23_chd_inf_infernal_ironsworn_ror"] = {a=125,ai=14,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=10600,ma=52,mcp=1650,md=60,men=100,rcp=0,spd=2.6}
C.units["wh3_dlc23_chd_inf_orc_labourers"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=10640,ma=22,mcp=300,md=12,men=140,rcp=0,spd=3.1}
C.units["wh3_dlc23_chd_mon_bale_taurus"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=80,hp=8258,lg=true,ma=56,mcp=1700,md=40,men=1,rcp=0,spd=7.4}
C.units["wh3_dlc23_chd_mon_great_taurus"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=80,hp=6668,lg=true,ma=46,mcp=1100,md=28,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_mon_kdaai_destroyer"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=10240,lg=true,ma=56,mcp=2200,md=38,men=1,rcp=0,spd=6}
C.units["wh3_dlc23_chd_mon_kdaai_fireborn"] = {a=80,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=7872,lg=true,ma=32,mcp=1500,md=40,men=16,rcp=0,spd=5.4}
C.units["wh3_dlc23_chd_mon_kdaai_fireborn_summoned"] = {a=80,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=7872,lg=true,ma=32,mcp=550,md=40,men=16,rcp=0,spd=5.4}
C.units["wh3_dlc23_chd_mon_lammasu"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=6048,lg=true,ma=36,mcp=1200,md=44,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc23_chd_veh_deathshrieker_rocket_launcher"] = {a=70,ai=0,al=0,c="chariot",cat="war_machine",cb=5,hp=510,lg=true,ma=20,mcp=200,md=10,men=1,rcp=1100,spd=1.5}
C.units["wh3_dlc23_chd_veh_dreadquake_mortar"] = {a=70,ai=0,al=0,c="chariot",cat="war_machine",cb=5,hp=1020,lg=true,ma=20,mcp=200,md=10,men=2,rcp=1600,spd=2}
C.units["wh3_dlc23_chd_veh_iron_daemon"] = {a=120,ai=20,al=0,c="chariot",cat="war_machine",cb=50,hp=2550,lg=true,ma=30,mcp=500,md=25,men=5,rcp=600,spd=6}
C.units["wh3_dlc23_chd_veh_iron_daemon_1dreadquake"] = {a=120,ai=20,al=0,c="chariot",cat="war_machine",cb=50,hp=4080,lg=true,ma=30,mcp=1150,md=25,men=8,rcp=1150,spd=5.5}
C.units["wh3_dlc23_chd_veh_iron_daemon_3payload_qb"] = {a=120,ai=20,al=0,c="chariot",cat="war_machine",cb=50,hp=9060,lg=true,ma=30,mcp=1000,md=25,men=6,rcp=0,spd=5.5}
C.units["wh3_dlc23_chd_veh_iron_daemon_ror"] = {a=120,ai=20,al=0,c="chariot",cat="war_machine",cb=50,hp=2550,lg=true,ma=38,mcp=700,md=32,men=5,rcp=1000,spd=6}
C.units["wh3_dlc23_chd_veh_iron_daemon_ror_1dreadquake"] = {a=120,ai=20,al=0,c="chariot",cat="war_machine",cb=50,hp=4080,lg=true,ma=38,mcp=1300,md=32,men=8,rcp=2000,spd=5.5}
C.units["wh3_dlc23_chd_veh_magma_cannon"] = {a=70,ai=0,al=0,c="chariot",cat="war_machine",cb=5,hp=510,lg=true,ma=20,mcp=200,md=10,men=1,rcp=850,spd=1.5}
C.units["wh3_dlc23_chd_veh_skullcracker"] = {a=120,ai=20,al=0,c="chariot",cat="war_machine",cb=50,hp=510,lg=true,ma=40,mcp=1200,md=25,men=1,rcp=0,spd=6}
C.units["wh3_dlc23_chd_veh_skullcracker_1dreadquake"] = {a=120,ai=20,al=0,c="chariot",cat="war_machine",cb=50,hp=2040,lg=true,ma=40,mcp=1200,md=25,men=4,rcp=1200,spd=5.5}
C.units["wh3_dlc23_neu_cha_ulrika"] = {a=50,ai=30,al=0,c="com",cat="inf_melee",cb=25,hp=3968,ma=50,mcp=950,md=46,men=1,rcp=0,spd=4}
C.units["wh3_dlc23_neu_cha_ulrika_warhorse"] = {a=80,ai=30,al=0,c="com",cat="cavalry",cb=50,hp=4572,lg=true,ma=50,mcp=1150,md=46,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc24_chs_cha_chaos_lord_mtze"] = {a=100,ai=0,al=30,c="com",cat="inf_melee",cb=20,hp=4640,ma=50,mcp=1100,md=60,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc24_chs_cha_chaos_lord_mtze_chaos_chariot"] = {a=110,ai=20,al=0,c="com",cat="war_machine",cb=80,hp=10864,lg=true,ma=40,mcp=1400,md=35,men=2,rcp=0,spd=7.8}
C.units["wh3_dlc24_chs_cha_chaos_lord_mtze_chaos_steed"] = {a=120,ai=0,al=30,c="com",cat="war_beast",cb=50,hp=5220,lg=true,ma=50,mcp=1300,md=60,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc24_chs_cha_chaos_lord_mtze_disc"] = {a=100,ai=0,al=30,c="com",cat="inf_melee",cb=40,hp=5220,ma=50,mcp=1500,md=60,men=1,rcp=0,spd=9.5}
C.units["wh3_dlc24_chs_cha_exalted_hero_mtze"] = {a=100,ai=0,al=25,c="com",cat="inf_melee",cb=15,hp=4068,ma=45,mcp=850,md=50,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc24_chs_cha_exalted_hero_mtze_chaos_chariot"] = {a=110,ai=20,al=0,c="com",cat="war_machine",cb=80,hp=10680,lg=true,ma=40,mcp=1150,md=35,men=2,rcp=0,spd=7.8}
C.units["wh3_dlc24_chs_cha_exalted_hero_mtze_chaos_steed"] = {a=120,ai=0,al=25,c="com",cat="war_beast",cb=40,hp=4672,lg=true,ma=45,mcp=1050,md=50,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc24_chs_cha_exalted_hero_mtze_disc"] = {a=100,ai=0,al=25,c="com",cat="inf_melee",cb=35,hp=4672,ma=45,mcp=1250,md=50,men=1,rcp=0,spd=9.5}
C.units["wh3_dlc24_cth_cha_astromancer_great_moon_bird"] = {a=40,ai=0,al=0,c="com",cat="war_beast",cb=46,hp=7298,lg=true,ma=44,mcp=1800,md=50,men=1,rcp=0,spd=8}
C.units["wh3_dlc24_cth_cha_celestial_general_yang"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4868,ma=60,mcp=550,md=40,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc24_cth_cha_celestial_general_yang_cathayan_horse"] = {a=110,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5480,lg=true,ma=60,mcp=700,md=45,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc24_cth_cha_celestial_general_yang_celestial_lion"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=6576,lg=true,ma=50,mcp=1550,md=36,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc24_cth_cha_celestial_general_yang_longma"] = {a=110,ai=0,al=0,c="com",cat="war_beast",cb=70,hp=6080,lg=true,ma=60,mcp=1000,md=45,men=1,rcp=0,spd=8.2}
C.units["wh3_dlc24_cth_cha_gate_master"] = {a=95,ai=0,al=0,c="com",cat="inf_melee",cb=25,hp=4128,ma=46,mcp=400,md=50,men=1,rcp=250,spd=3.4}
C.units["wh3_dlc24_cth_cha_gate_master_warhorse"] = {a=115,ai=0,al=0,c="com",cat="war_beast",cb=55,hp=4528,lg=true,ma=46,mcp=500,md=50,men=1,rcp=350,spd=7.8}
C.units["wh3_dlc24_cth_cha_saytang_the_watcher"] = {a=100,ai=0,al=0,c="com",cat="inf_ranged",cb=20,hp=12620,lg=true,ma=42,mcp=2000,md=28,men=1,rcp=0,spd=4.8}
C.units["wh3_dlc24_cth_cha_yuan_bo_dragon"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=8424,lg=true,ma=60,mcp=2000,md=40,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc24_cth_cha_yuan_bo_human"] = {a=120,ai=14,al=0,c="com",cat="inf_melee",cb=40,hp=8424,ma=65,mcp=2000,md=45,men=1,rcp=0,spd=4.6}
C.units["wh3_dlc24_cth_inf_dragon_guard_crossbowmen_ror"] = {a=95,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=8,hp=7040,ma=34,mcp=400,md=41,men=80,rcp=950,spd=3}
C.units["wh3_dlc24_cth_inf_onyx_crowmen"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=5220,ma=30,mcp=700,md=32,men=60,rcp=0,spd=4.8}
C.units["wh3_dlc24_cth_inf_onyx_crowmen_ror"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=5220,ma=38,mcp=1000,md=41,men=60,rcp=0,spd=5}
C.units["wh3_dlc24_cth_mon_celestial_lion"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=65,hp=6176,lg=true,ma=42,mcp=1300,md=36,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc24_cth_mon_great_moon_bird"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=46,hp=7298,lg=true,ma=44,mcp=1600,md=50,men=1,rcp=0,spd=8}
C.units["wh3_dlc24_cth_mon_jade_lion"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=5808,lg=true,ma=55,mcp=800,md=40,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc24_cth_mon_jet_lion"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=5808,lg=true,ma=40,mcp=800,md=60,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc24_cth_veh_zhangu_war_drum"] = {a=80,ai=0,al=0,c="chariot",cat="war_machine",cb=20,hp=12384,lg=true,ma=30,mcp=500,md=20,men=2,rcp=600,spd=3}
C.units["wh3_dlc24_cth_veh_zhangu_war_drum_ror"] = {a=95,ai=0,al=0,c="chariot",cat="war_machine",cb=20,hp=12384,lg=true,ma=38,mcp=675,md=27,men=2,rcp=675,spd=3}
C.units["wh3_dlc24_grn_cha_grimgor_ironhide_quest_battle"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=70,hp=7123,ma=70,mcp=1400,md=45,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc24_ksl_cha_druzhina"] = {a=65,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4268,ma=50,mcp=900,md=40,men=1,rcp=0,spd=3.4}
C.units["wh3_dlc24_ksl_cha_druzhina_warhorse"] = {a=95,ai=0,al=0,c="com",cat="war_beast",cb=45,hp=4668,lg=true,ma=50,mcp=1100,md=40,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc24_ksl_cha_golden_knight"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=4668,ma=55,mcp=1000,md=55,men=1,rcp=0,spd=3}
C.units["wh3_dlc24_ksl_cha_golden_knight_warhorse"] = {a=130,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=5054,lg=true,ma=55,mcp=1200,md=55,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc24_ksl_cha_hag_witch_beast"] = {a=30,ai=0,al=0,c="com",cat="war_machine",cb=62,hp=4608,lg=true,ma=36,mcp=1000,md=28,men=1,rcp=300,spd=7}
C.units["wh3_dlc24_ksl_cha_hag_witch_death"] = {a=30,ai=0,al=0,c="com",cat="war_machine",cb=62,hp=4608,lg=true,ma=36,mcp=1000,md=28,men=1,rcp=300,spd=7}
C.units["wh3_dlc24_ksl_cha_hag_witch_hag"] = {a=30,ai=0,al=0,c="com",cat="war_machine",cb=62,hp=4608,lg=true,ma=36,mcp=1000,md=28,men=1,rcp=300,spd=7}
C.units["wh3_dlc24_ksl_cha_hag_witch_shadow"] = {a=30,ai=0,al=0,c="com",cat="war_machine",cb=62,hp=4608,lg=true,ma=36,mcp=1000,md=28,men=1,rcp=300,spd=7}
C.units["wh3_dlc24_ksl_cha_ice_witch_ice_frost_wyrm"] = {a=90,ai=0,al=25,c="com",cat="war_beast",cb=50,hp=8130,lg=true,ma=48,mcp=1650,md=35,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc24_ksl_cha_ice_witch_tempest_frost_wyrm"] = {a=90,ai=0,al=25,c="com",cat="war_beast",cb=50,hp=8130,lg=true,ma=48,mcp=1650,md=35,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc24_ksl_cha_katarin_frost_wyrm"] = {a=90,ai=0,al=25,c="com",cat="war_beast",cb=50,hp=8354,lg=true,ma=48,mcp=1650,md=35,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc24_ksl_cha_katarin_ice_court_sled"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=80,hp=29072,lg=true,ma=50,mcp=1000,md=25,men=4,rcp=750,spd=8.4}
C.units["wh3_dlc24_ksl_cha_mother_ostankya"] = {a=40,ai=30,al=0,c="com",cat="war_machine",cb=56,hp=10792,lg=true,ma=44,mcp=1450,md=32,men=2,rcp=450,spd=7}
C.units["wh3_dlc24_ksl_inf_akshina_ambushers"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=6930,ma=26,mcp=350,md=26,men=90,rcp=500,spd=3.6}
C.units["wh3_dlc24_ksl_inf_akshina_ambushers_ror"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=6930,ma=34,mcp=400,md=34,men=90,rcp=750,spd=3.6}
C.units["wh3_dlc24_ksl_inf_kislevite_warriors"] = {a=30,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=8,hp=8400,ma=23,mcp=525,md=36,men=120,rcp=0,spd=3.3}
C.units["wh3_dlc24_ksl_inf_streltsi_ror"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=16,hp=7470,ma=45,mcp=650,md=38,men=90,rcp=500,spd=3}
C.units["wh3_dlc24_ksl_mon_frost_wyrm"] = {a=90,ai=0,al=25,c="inf_mel",cat="inf_melee",cb=50,hp=7980,lg=true,ma=48,mcp=1500,md=35,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc24_ksl_mon_incarnate_elemental_of_beasts"] = {a=50,ai=10,al=0,c="inf_mel",cat="inf_melee",cb=64,hp=9008,lg=true,ma=62,mcp=1800,md=30,men=1,rcp=0,spd=6}
C.units["wh3_dlc24_ksl_mon_incarnate_elemental_of_beasts_summoned"] = {a=50,ai=10,al=0,c="inf_mel",cat="inf_melee",cb=64,hp=9008,lg=true,ma=62,mcp=1800,md=30,men=1,rcp=0,spd=6}
C.units["wh3_dlc24_ksl_mon_the_things_in_the_woods"] = {a=35,ai=16,al=0,c="spcl",cat="inf_melee",cb=46,hp=6168,ma=38,mcp=875,md=32,men=24,rcp=0,spd=7}
C.units["wh3_dlc24_ksl_mon_the_things_in_the_woods_ror"] = {a=35,ai=16,al=0,c="spcl",cat="inf_melee",cb=56,hp=6552,ma=48,mcp=1125,md=41,men=24,rcp=0,spd=7}
C.units["wh3_dlc24_ksl_mon_the_things_in_the_woods_summoned"] = {a=0,ai=16,al=0,c="spcl",cat="inf_melee",cb=46,hp=3084,ma=36,mcp=1200,md=32,men=12,rcp=0,spd=7}
C.units["wh3_dlc24_qb_cst_cav_knights_errant_0"] = {a=0,ai=0,al=0,c="cav_shk",cat="cavalry",cb=55,hp=6480,lg=true,ma=28,mcp=700,md=28,men=60,rcp=0,spd=7.5}
C.units["wh3_dlc24_qb_cst_cav_knights_of_the_realm"] = {a=0,ai=0,al=10,c="cav_shk",cat="cavalry",cb=78,hp=8700,lg=true,ma=42,mcp=950,md=28,men=75,rcp=0,spd=7.5}
C.units["wh3_dlc24_qb_cst_cav_questing_knights_0"] = {a=0,ai=0,al=0,c="cav_shk",cat="cavalry",cb=51,hp=9075,lg=true,ma=50,mcp=1100,md=38,men=75,rcp=0,spd=7.5}
C.units["wh3_dlc24_tze_cha_aekold_helbrass"] = {a=120,ai=15,al=0,c="com",cat="inf_melee",cb=50,hp=5808,ma=60,mcp=1350,md=40,men=1,rcp=0,spd=3.5}
C.units["wh3_dlc24_tze_cha_blue_scribes"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=22,hp=3520,ma=35,mcp=300,md=25,men=1,rcp=800,spd=9.5}
C.units["wh3_dlc24_tze_cha_changeling"] = {a=25,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4321,ma=30,mcp=200,md=50,men=1,rcp=250,spd=5}
C.units["wh3_dlc24_tze_cha_changeling_quest_battle"] = {a=25,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4321,ma=30,mcp=200,md=50,men=1,rcp=250,spd=5}
C.units["wh3_dlc24_tze_cha_changeling_summoned_0"] = {a=25,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4321,ma=30,mcp=200,md=50,men=1,rcp=250,spd=5}
C.units["wh3_dlc24_tze_inf_centigors_great_weapons"] = {a=35,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=42,hp=6720,ma=22,mcp=1150,md=22,men=60,rcp=0,spd=8.4}
C.units["wh3_dlc24_tze_inf_pink_horrors_ror"] = {a=25,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=7200,ma=29,mcp=250,md=34,men=80,rcp=600,spd=3.8}
C.units["wh3_dlc24_tze_inf_tzaangors"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=9600,ma=26,mcp=650,md=38,men=120,rcp=0,spd=3.8}
C.units["wh3_dlc24_tze_mon_cockatrice"] = {a=35,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=6120,lg=true,ma=46,mcp=1300,md=38,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc24_tze_mon_flamers_changebringers"] = {a=10,ai=0,al=0,c="inf_mis",cat="inf_melee",cb=25,hp=3216,lg=true,ma=28,mcp=500,md=12,men=12,rcp=1000,spd=9.5}
C.units["wh3_dlc24_tze_mon_mutalith_vortex_beast"] = {a=70,ai=20,al=0,c="spcl",cat="inf_melee",cb=32,hp=8088,lg=true,ma=45,mcp=2100,md=40,men=1,rcp=0,spd=6.6}
C.units["wh3_dlc24_tze_mon_mutalith_vortex_beast_ror"] = {a=70,ai=20,al=0,c="spcl",cat="inf_melee",cb=32,hp=8088,lg=true,ma=56,mcp=2600,md=50,men=1,rcp=0,spd=6.6}
C.units["wh3_dlc24_tze_mon_screamers_ror"] = {a=30,ai=0,al=25,c="inf_mel",cat="inf_melee",cb=26,hp=4880,ma=34,mcp=950,md=29,men=16,rcp=0,spd=8}
C.units["wh3_dlc25_bst_mon_jabberslythe_qb_boss"] = {a=100,ai=50,al=25,c="inf_mel",cat="inf_melee",cb=50,hp=30008,lg=true,ma=75,mcp=1700,md=50,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc25_chs_cha_chaos_lord_mnur"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=5104,ma=60,mcp=1050,md=60,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc25_chs_cha_chaos_lord_mnur_chaos_chariot"] = {a=110,ai=20,al=0,c="com",cat="war_machine",cb=75,hp=11948,lg=true,ma=35,mcp=1350,md=40,men=2,rcp=0,spd=7.8}
C.units["wh3_dlc25_chs_cha_chaos_lord_mnur_chaos_steed"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5742,lg=true,ma=60,mcp=1250,md=60,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc25_chs_cha_chaos_lord_mnur_rot_beast"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=6432,lg=true,ma=63,mcp=1450,md=62,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc25_chs_cha_chaos_sorcerer_death_mnur"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3874,ma=37,mcp=500,md=45,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc25_chs_cha_chaos_sorcerer_death_mnur_chaos_steed"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4364,lg=true,ma=37,mcp=700,md=45,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc25_chs_cha_chaos_sorcerer_death_mnur_rot_beast"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=5038,lg=true,ma=40,mcp=700,md=48,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc25_chs_cha_chaos_sorcerer_death_mnur_warshrine"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=12365,lg=true,ma=30,mcp=1300,md=35,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc25_chs_cha_chaos_sorcerer_lord_death_mnur_rot_beast"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=5494,lg=true,ma=46,mcp=700,md=52,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc25_chs_cha_chaos_sorcerer_lord_nurgle_mnur_rot_beast"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=5494,lg=true,ma=46,mcp=700,md=52,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc25_chs_cha_chaos_sorcerer_nurgle_mnur"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3874,ma=37,mcp=500,md=45,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc25_chs_cha_chaos_sorcerer_nurgle_mnur_chaos_steed"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4364,lg=true,ma=37,mcp=700,md=45,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc25_chs_cha_chaos_sorcerer_nurgle_mnur_rot_beast"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=5038,lg=true,ma=40,mcp=700,md=48,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc25_chs_cha_chaos_sorcerer_nurgle_mnur_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=12365,lg=true,ma=30,mcp=1300,md=35,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc25_chs_cha_exalted_hero_mnur_rot_beast"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=5638,lg=true,ma=53,mcp=1300,md=52,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc25_dwf_art_flame_cannon_grudge_unit"] = {a=125,ai=0,al=0,c="art_fld",cat="artillery",cb=6,hp=4096,ma=20,mcp=140,md=27,men=32,rcp=1260,spd=2.8}
C.units["wh3_dlc25_dwf_art_goblin_hewer"] = {a=0,ai=0,al=24,c="art_fld",cat="artillery",cb=26,hp=4320,ma=38,mcp=450,md=32,men=40,rcp=500,spd=4}
C.units["wh3_dlc25_dwf_art_grudge_thrower_grudge_unit"] = {a=40,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=2496,ma=16,mcp=70,md=20,men=32,rcp=630,spd=2.8}
C.units["wh3_dlc25_dwf_cha_daemon_slayer"] = {a=0,ai=0,al=25,c="com",cat="inf_melee",cb=45,hp=5302,ma=60,mcp=900,md=45,men=1,rcp=0,spd=4.2}
C.units["wh3_dlc25_dwf_cha_dragon_slayer"] = {a=0,ai=0,al=35,c="com",cat="inf_melee",cb=40,hp=4502,ma=55,mcp=700,md=45,men=1,rcp=0,spd=4.2}
C.units["wh3_dlc25_dwf_cha_garagrim_ironfist"] = {a=0,ai=15,al=0,c="com",cat="inf_melee",cb=50,hp=5084,ma=60,mcp=800,md=50,men=1,rcp=0,spd=4.2}
C.units["wh3_dlc25_dwf_cha_malakai_makaisson"] = {a=0,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4620,ma=55,mcp=300,md=45,men=1,rcp=750,spd=4.2}
C.units["wh3_dlc25_dwf_inf_doomseekers"] = {a=0,ai=15,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=8960,ma=54,mcp=1350,md=48,men=32,rcp=0,spd=4}
C.units["wh3_dlc25_dwf_inf_doomseekers_ror"] = {a=0,ai=15,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=8960,ma=66,mcp=1600,md=59,men=32,rcp=0,spd=4}
C.units["wh3_dlc25_dwf_inf_hammerers_grudge_unit"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=10000,ma=46,mcp=1200,md=38,men=100,rcp=0,spd=2.8}
C.units["wh3_dlc25_dwf_inf_irondrakes_0_grudge_unit"] = {a=125,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=3584,ma=20,mcp=90,md=27,men=28,rcp=810,spd=2.6}
C.units["wh3_dlc25_dwf_inf_longbeards_1_grudge_unit"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8600,ma=30,mcp=750,md=38,men=100,rcp=0,spd=2.6}
C.units["wh3_dlc25_dwf_inf_miners_1_summoned"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=7600,ma=20,mcp=325,md=18,men=100,rcp=100,spd=2.8}
C.units["wh3_dlc25_dwf_inf_quarrellers_1_grudge_unit"] = {a=80,ai=8,al=0,c="inf_mis",cat="inf_ranged",cb=16,hp=5600,ma=24,mcp=215,md=22,men=80,rcp=385,spd=2.8}
C.units["wh3_dlc25_dwf_inf_slayer_pirates"] = {a=0,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=26,hp=8640,ma=38,mcp=450,md=32,men=80,rcp=300,spd=4}
C.units["wh3_dlc25_dwf_inf_slayer_pirates_ror"] = {a=0,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=26,hp=8640,ma=48,mcp=600,md=41,men=80,rcp=300,spd=4}
C.units["wh3_dlc25_dwf_inf_slayers_grudge_unit"] = {a=0,ai=0,al=24,c="inf_mel",cat="inf_melee",cb=26,hp=8640,ma=38,mcp=900,md=32,men=80,rcp=0,spd=4}
C.units["wh3_dlc25_dwf_inf_thunderers_grudge_rakers"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=5680,ma=20,mcp=210,md=28,men=80,rcp=640,spd=2.8}
C.units["wh3_dlc25_dwf_inf_thunderers_ror"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=5680,ma=27,mcp=210,md=36,men=80,rcp=740,spd=2.8}
C.units["wh3_dlc25_dwf_veh_gyrocopter_1_grudge_unit"] = {a=100,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=25,hp=4248,lg=true,ma=30,mcp=160,md=6,men=12,rcp=640,spd=7}
C.units["wh3_dlc25_dwf_veh_gyrocopter_summoned_0"] = {a=100,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=25,hp=4248,lg=true,ma=30,mcp=70,md=6,men=12,rcp=280,spd=7}
C.units["wh3_dlc25_dwf_veh_thunderbarge"] = {a=80,ai=0,al=0,c="inf_mis",cat="war_beast",cb=15,hp=328512,lg=true,ma=20,mcp=0,md=4,men=29,rcp=3400,spd=3}
C.units["wh3_dlc25_dwf_veh_thunderbarge_grungni"] = {a=80,ai=0,al=0,c="inf_mis",cat="war_beast",cb=15,hp=358092,lg=true,ma=20,mcp=0,md=4,men=29,rcp=3800,spd=3}
C.units["wh3_dlc25_dwf_veh_thunderbarge_grungni_mp"] = {a=80,ai=0,al=0,c="inf_mis",cat="war_beast",cb=15,hp=358092,lg=true,ma=20,mcp=0,md=4,men=29,rcp=3800,spd=3}
C.units["wh3_dlc25_emp_art_helstorm_rocket_battery_morr"] = {a=20,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2464,ma=10,mcp=130,md=6,men=44,rcp=1070,spd=3}
C.units["wh3_dlc25_emp_cav_knights_of_the_black_rose"] = {a=120,ai=8,al=0,c="cav_mel",cat="cavalry",cb=34,hp=7080,lg=true,ma=36,mcp=1250,md=50,men=60,rcp=0,spd=7.8}
C.units["wh3_dlc25_emp_cav_outriders_morr"] = {a=110,ai=0,al=0,c="cav_mis",cat="cavalry",cb=32,hp=6480,lg=true,ma=26,mcp=200,md=30,men=60,rcp=800,spd=8.4}
C.units["wh3_dlc25_emp_cha_elspeth_von_draken"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3688,ma=38,mcp=550,md=44,men=1,rcp=0,spd=3.5}
C.units["wh3_dlc25_emp_cha_elspeth_von_draken_carmine_dragon"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=55,hp=8222,lg=true,ma=50,mcp=2550,md=44,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc25_emp_cha_elspeth_von_draken_warhorse"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=3788,lg=true,ma=38,mcp=800,md=44,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc25_emp_cha_engineer"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3548,ma=34,mcp=150,md=32,men=1,rcp=550,spd=3.4}
C.units["wh3_dlc25_emp_cha_engineer_mechanical_steed"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4548,lg=true,ma=38,mcp=450,md=36,men=1,rcp=550,spd=7.2}
C.units["wh3_dlc25_emp_cha_engineer_warhorse"] = {a=70,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=3978,lg=true,ma=34,mcp=350,md=32,men=1,rcp=550,spd=7.8}
C.units["wh3_dlc25_emp_cha_master_engineer"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3854,ma=34,mcp=150,md=32,men=1,rcp=750,spd=3.4}
C.units["wh3_dlc25_emp_cha_master_engineer_mechanical_steed"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4854,lg=true,ma=38,mcp=450,md=36,men=1,rcp=750,spd=7.2}
C.units["wh3_dlc25_emp_cha_master_engineer_steam_tank"] = {a=160,ai=15,al=0,c="com",cat="war_machine",cb=80,hp=27180,lg=true,ma=36,mcp=700,md=20,men=3,rcp=2000,spd=4}
C.units["wh3_dlc25_emp_cha_master_engineer_warhorse"] = {a=70,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4292,lg=true,ma=34,mcp=350,md=32,men=1,rcp=750,spd=7.8}
C.units["wh3_dlc25_emp_cha_theodore_bruckner"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=4660,ma=60,mcp=700,md=50,men=1,rcp=0,spd=3.5}
C.units["wh3_dlc25_emp_cha_theodore_bruckner_demigryph_reaper"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=5672,lg=true,ma=55,mcp=1100,md=40,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc25_emp_cha_wizard_metal"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=25,mcp=250,md=30,men=1,rcp=0,spd=3.5}
C.units["wh3_dlc25_emp_cha_wizard_metal_pegasus"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4008,lg=true,ma=25,mcp=650,md=30,men=1,rcp=0,spd=8.2}
C.units["wh3_dlc25_emp_cha_wizard_metal_warhorse"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=25,mcp=450,md=30,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc25_emp_inf_hochland_long_rifles"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=3840,ma=18,mcp=100,md=20,men=32,rcp=800,spd=3.3}
C.units["wh3_dlc25_emp_inf_hochland_long_rifles_ror"] = {a=60,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=3840,ma=24,mcp=150,md=27,men=32,rcp=1050,spd=3.3}
C.units["wh3_dlc25_emp_inf_nuln_ironsides"] = {a=60,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=6240,ma=32,mcp=400,md=26,men=60,rcp=475,spd=3.3}
C.units["wh3_dlc25_emp_inf_nuln_ironsides_morr"] = {a=90,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=14,hp=6240,ma=32,mcp=625,md=32,men=60,rcp=625,spd=3.3}
C.units["wh3_dlc25_emp_inf_spearmen_shields_ror"] = {a=30,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=4,hp=8280,ma=27,mcp=550,md=52,men=120,rcp=0,spd=3}
C.units["wh3_dlc25_emp_mon_hawks_summoned"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=46,hp=4368,ma=30,mcp=400,md=24,men=24,rcp=0,spd=6.5}
C.units["wh3_dlc25_emp_mon_incarnate_elemental_of_beasts_summoned"] = {a=50,ai=10,al=0,c="inf_mel",cat="inf_melee",cb=64,hp=9008,lg=true,ma=62,mcp=900,md=30,men=1,rcp=0,spd=6}
C.units["wh3_dlc25_emp_veh_marienburg_land_ship"] = {a=90,ai=10,al=0,c="chariot",cat="war_machine",cb=80,hp=230184,lg=true,ma=24,mcp=350,md=18,men=23,rcp=1650,spd=5}
C.units["wh3_dlc25_emp_veh_marienburg_land_ship_morr"] = {a=90,ai=10,al=0,c="chariot",cat="war_machine",cb=80,hp=230184,lg=true,ma=24,mcp=350,md=18,men=23,rcp=1650,spd=5}
C.units["wh3_dlc25_emp_veh_marienburg_land_ship_ror"] = {a=90,ai=10,al=0,c="chariot",cat="war_machine",cb=80,hp=220176,lg=true,ma=31,mcp=350,md=24,men=22,rcp=1650,spd=5}
C.units["wh3_dlc25_emp_veh_steam_tank_volley_gun"] = {a=160,ai=15,al=0,c="chariot",cat="war_machine",cb=80,hp=27180,lg=true,ma=36,mcp=700,md=20,men=3,rcp=1400,spd=4}
C.units["wh3_dlc25_grn_mon_arachnarok_spider_boss"] = {a=120,ai=0,al=20,c="inf_mel",cat="war_beast",cb=45,hp=79720,lg=true,ma=76,mcp=2400,md=60,men=8,rcp=0,spd=5.7}
C.units["wh3_dlc25_grn_mon_rogue_idol_qb_boss"] = {a=150,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=80,hp=20008,lg=true,ma=70,mcp=2400,md=40,men=1,rcp=0,spd=3.1}
C.units["wh3_dlc25_hef_mon_sun_dragon_boss"] = {a=80,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=70,hp=13848,lg=true,ma=72,mcp=1900,md=60,men=1,rcp=0,spd=7}
C.units["wh3_dlc25_nur_cav_plague_drones_1_ror"] = {a=50,ai=0,al=0,c="cav_mis",cat="cavalry",cb=32,hp=7032,lg=true,ma=45,mcp=1300,md=45,men=12,rcp=300,spd=7}
C.units["wh3_dlc25_nur_cav_rot_knights"] = {a=100,ai=0,al=10,c="cav_shk",cat="war_beast",cb=60,hp=8064,lg=true,ma=42,mcp=1800,md=48,men=32,rcp=0,spd=7.5}
C.units["wh3_dlc25_nur_cav_rot_knights_ror"] = {a=100,ai=0,al=10,c="cav_shk",cat="war_beast",cb=70,hp=8064,lg=true,ma=52,mcp=2200,md=59,men=32,rcp=0,spd=7.5}
C.units["wh3_dlc25_nur_cha_bray_shaman_wild_chieftain"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=38,hp=4168,ma=30,mcp=350,md=28,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc25_nur_cha_bray_shaman_wild_chieftain_razorgor_chariot"] = {a=100,ai=25,al=0,c="com",cat="war_machine",cb=80,hp=9264,lg=true,ma=34,mcp=850,md=30,men=2,rcp=0,spd=7}
C.units["wh3_dlc25_nur_cha_bray_shaman_wild_chieftain_tuskgor_chariot"] = {a=80,ai=20,al=0,c="com",cat="war_machine",cb=64,hp=8864,lg=true,ma=28,mcp=650,md=24,men=2,rcp=0,spd=7}
C.units["wh3_dlc25_nur_cha_epidemius"] = {a=80,ai=0,al=0,c="com",cat="cavalry",cb=20,hp=7992,lg=true,ma=50,mcp=1150,md=50,men=1,rcp=0,spd=2.8}
C.units["wh3_dlc25_nur_cha_exalted_great_unclean_one_nurgle_qb_boss"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=10008,lg=true,ma=100,mcp=2200,md=80,men=1,rcp=0,spd=3.6}
C.units["wh3_dlc25_nur_cha_exalted_hero_chieftain"] = {a=100,ai=20,al=0,c="com",cat="inf_melee",cb=30,hp=5068,ma=60,mcp=600,md=45,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc25_nur_cha_exalted_hero_chieftain_chaos_chariot"] = {a=110,ai=20,al=0,c="com",cat="war_machine",cb=75,hp=11712,lg=true,ma=40,mcp=900,md=20,men=2,rcp=0,spd=7.8}
C.units["wh3_dlc25_nur_cha_exalted_hero_chieftain_chaos_dragon"] = {a=70,ai=20,al=0,c="com",cat="war_beast",cb=50,hp=7436,lg=true,ma=54,mcp=2100,md=44,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc25_nur_cha_exalted_hero_chieftain_chaos_steed"] = {a=120,ai=20,al=0,c="com",cat="war_beast",cb=30,hp=5672,lg=true,ma=60,mcp=800,md=45,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc25_nur_cha_fimir_balefiend_shadow_chieftain"] = {a=70,ai=0,al=0,c="com",cat="inf_melee",cb=25,hp=5040,lg=true,ma=47,mcp=550,md=44,men=1,rcp=0,spd=5.4}
C.units["wh3_dlc25_nur_cha_infernal_castellan_chieftain"] = {a=120,ai=0,al=5,c="com",cat="inf_ranged",cb=20,hp=4508,ma=52,mcp=700,md=44,men=1,rcp=400,spd=3.2}
C.units["wh3_dlc25_nur_cha_kayzk_the_befouled"] = {a=70,ai=20,al=0,c="com",cat="war_beast",cb=75,hp=6132,lg=true,ma=60,mcp=900,md=56,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc25_nur_cha_skin_wolf_werekin_chieftain"] = {a=70,ai=34,al=0,c="com",cat="inf_melee",cb=40,hp=6040,lg=true,ma=58,mcp=1100,md=44,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc25_nur_cha_tamurkhan"] = {a=60,ai=0,al=30,c="com",cat="inf_melee",cb=50,hp=8500,lg=true,ma=56,mcp=1450,md=42,men=1,rcp=0,spd=5.5}
C.units["wh3_dlc25_nur_cha_tamurkhan_bubebolos"] = {a=60,ai=25,al=0,c="com",cat="war_beast",cb=42,hp=13962,lg=true,ma=62,mcp=2300,md=36,men=1,rcp=0,spd=6}
C.units["wh3_dlc25_nur_inf_nurglings_summoned"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=14,hp=6200,ma=26,mcp=350,md=24,men=40,rcp=0,spd=3.4}
C.units["wh3_dlc25_nur_inf_pestigors"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=28,hp=10560,ma=24,mcp=675,md=25,men=120,rcp=0,spd=3.8}
C.units["wh3_dlc25_nur_inf_plague_ogres"] = {a=50,ai=26,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=10112,lg=true,ma=35,mcp=1300,md=47,men=16,rcp=0,spd=4.8}
C.units["wh3_dlc25_nur_inf_plague_ogres_great_weapons"] = {a=50,ai=0,al=26,c="inf_mel",cat="inf_melee",cb=54,hp=10112,lg=true,ma=35,mcp=1400,md=47,men=16,rcp=0,spd=4.8}
C.units["wh3_dlc25_nur_mon_bile_trolls"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=8672,lg=true,ma=29,mcp=1050,md=45,men=16,rcp=0,spd=5.4}
C.units["wh3_dlc25_nur_mon_soul_grinder_0_ror"] = {a=90,ai=0,al=0,c="spcl",cat="inf_ranged",cb=30,hp=8188,lg=true,ma=52,mcp=1000,md=44,men=1,rcp=2200,spd=7.5}
C.units["wh3_dlc25_nur_mon_toad_dragon"] = {a=60,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=42,hp=13970,lg=true,ma=51,mcp=2100,md=36,men=1,rcp=0,spd=6}
C.units["wh3_dlc26_chs_inf_chosen_mkho_ror"] = {a=130,ai=0,al=26,c="inf_mel",cat="inf_melee",cb=16,hp=10480,ma=45,mcp=1800,md=63,men=80,rcp=0,spd=2.8}
C.units["wh3_dlc26_grn_art_bolt_throwa"] = {a=15,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2968,ma=10,mcp=60,md=6,men=56,rcp=540,spd=3.3}
C.units["wh3_dlc26_grn_art_bolt_throwa_ror"] = {a=15,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2968,ma=14,mcp=80,md=9,men=56,rcp=920,spd=3.3}
C.units["wh3_dlc26_grn_cav_mangler_squig"] = {a=40,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=65,hp=6152,lg=true,ma=40,mcp=950,md=22,men=4,rcp=0,spd=8.2}
C.units["wh3_dlc26_grn_cha_gorbad_ironclaw"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=60,hp=5648,ma=65,mcp=1100,md=50,men=1,rcp=0,spd=3.6}
C.units["wh3_dlc26_grn_cha_gorbad_ironclaw_gnarla"] = {a=100,ai=0,al=0,c="com",cat="cavalry",cb=80,hp=6248,lg=true,ma=65,mcp=1300,md=50,men=1,rcp=0,spd=7}
C.units["wh3_dlc26_grn_cha_night_goblin_big_boss"] = {a=25,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3485,ma=35,mcp=400,md=45,men=1,rcp=0,spd=3.5}
C.units["wh3_dlc26_grn_cha_night_goblin_big_boss_squig"] = {a=55,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4044,lg=true,ma=35,mcp=600,md=45,men=1,rcp=0,spd=8.2}
C.units["wh3_dlc26_grn_cha_savage_orc_great_shaman"] = {a=0,ai=0,al=0,c="com",cat="inf_melee",cb=55,hp=4186,ma=42,mcp=650,md=25,men=1,rcp=0,spd=3.7}
C.units["wh3_dlc26_grn_cha_savage_orc_great_shaman_boar"] = {a=25,ai=0,al=0,c="com",cat="cavalry",cb=80,hp=4788,lg=true,ma=42,mcp=900,md=25,men=1,rcp=0,spd=7}
C.units["wh3_dlc26_grn_cha_savage_orc_great_shaman_wyvern"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6640,lg=true,ma=45,mcp=1600,md=32,men=1,rcp=0,spd=7}
C.units["wh3_dlc26_grn_cha_snagla_grobspit"] = {a=55,ai=0,al=0,c="com",cat="cavalry",cb=40,hp=4500,lg=true,ma=52,mcp=750,md=54,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc26_grn_inf_black_orcs_shield"] = {a=110,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=10800,ma=34,mcp=1000,md=42,men=80,rcp=0,spd=2.9}
C.units["wh3_dlc26_grn_inf_rugluds_armoured_orcs"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=20,hp=7380,ma=36,mcp=275,md=32,men=90,rcp=450,spd=3.1}
C.units["wh3_dlc26_grn_inf_squig_herd_0_summoned"] = {a=50,ai=11,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=5320,ma=26,mcp=400,md=20,men=40,rcp=0,spd=5.8}
C.units["wh3_dlc26_grn_mon_arachnarok_spider_flinger"] = {a=120,ai=0,al=20,c="inf_mel",cat="war_beast",cb=40,hp=39860,lg=true,ma=58,mcp=1700,md=30,men=4,rcp=250,spd=5.7}
C.units["wh3_dlc26_grn_mon_colossal_squig"] = {a=60,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=75,hp=8654,lg=true,ma=52,mcp=1600,md=28,men=1,rcp=0,spd=9}
C.units["wh3_dlc26_grn_mon_colossal_squig_ror"] = {a=60,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=75,hp=8654,lg=true,ma=64,mcp=2000,md=36,men=1,rcp=0,spd=9}
C.units["wh3_dlc26_grn_mon_wyvern_summoned"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=80,hp=6640,lg=true,ma=44,mcp=800,md=28,men=1,rcp=0,spd=7}
C.units["wh3_dlc26_kho_cha_arbaal"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=5470,ma=65,mcp=1250,md=55,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc26_kho_cha_arbaal_flesh_hound"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=55,hp=6048,lg=true,ma=65,mcp=1650,md=45,men=1,rcp=0,spd=9.5}
C.units["wh3_dlc26_kho_cha_bloodspeaker"] = {a=60,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4188,ma=48,mcp=750,md=44,men=1,rcp=0,spd=3.5}
C.units["wh3_dlc26_kho_cha_bloodspeaker_chaos_steed"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4716,lg=true,ma=48,mcp=950,md=44,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc26_kho_cha_bloodspeaker_warshrine"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11542,lg=true,ma=35,mcp=1450,md=25,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc26_kho_cha_scyla_anfingrimm"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=60,hp=7270,lg=true,ma=52,mcp=1300,md=30,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc26_kho_cha_skarr_bloodwrath"] = {a=80,ai=20,al=0,c="com",cat="inf_melee",cb=50,hp=5600,ma=60,mcp=1400,md=48,men=1,rcp=0,spd=4.6}
C.units["wh3_dlc26_kho_cha_skulltaker"] = {a=60,ai=20,al=0,c="com",cat="inf_melee",cb=50,hp=5848,ma=70,mcp=1100,md=55,men=1,rcp=0,spd=4.8}
C.units["wh3_dlc26_kho_cha_skulltaker_bloodthrone"] = {a=130,ai=25,al=0,c="com",cat="war_beast",cb=50,hp=6948,lg=true,ma=45,mcp=1600,md=25,men=1,rcp=0,spd=6.8}
C.units["wh3_dlc26_kho_cha_skulltaker_juggernaut"] = {a=120,ai=20,al=0,c="com",cat="cavalry",cb=70,hp=6448,lg=true,ma=73,mcp=1500,md=57,men=1,rcp=0,spd=7}
C.units["wh3_dlc26_kho_inf_khorngors"] = {a=60,ai=0,al=18,c="inf_mel",cat="inf_melee",cb=16,hp=9600,ma=18,mcp=725,md=26,men=120,rcp=0,spd=3.8}
C.units["wh3_dlc26_kho_inf_skullreapers"] = {a=60,ai=10,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=9480,ma=54,mcp=1100,md=42,men=60,rcp=0,spd=3.5}
C.units["wh3_dlc26_kho_inf_wrathmongers"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=44,hp=10080,ma=60,mcp=1500,md=46,men=32,rcp=0,spd=4}
C.units["wh3_dlc26_kho_inf_wrathmongers_ror"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=44,hp=10080,ma=73,mcp=1750,md=57,men=32,rcp=0,spd=4}
C.units["wh3_dlc26_kho_mon_bloodbeast_of_khorne"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=8256,lg=true,ma=38,mcp=1100,md=28,men=16,rcp=0,spd=6.5}
C.units["wh3_dlc26_kho_mon_slaughterbrute"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=60,hp=9888,lg=true,ma=65,mcp=2000,md=45,men=1,rcp=0,spd=6.6}
C.units["wh3_dlc26_kho_mon_spawn_of_khorne_0_summoned"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=8768,lg=true,ma=36,mcp=525,md=23,men=16,rcp=0,spd=4.2}
C.units["wh3_dlc26_kho_veh_skullcannon_ror"] = {a=110,ai=25,al=0,c="chariot",cat="war_beast",cb=60,hp=4692,lg=true,ma=50,mcp=950,md=32,men=1,rcp=650,spd=6.8}
C.units["wh3_dlc26_ogr_cha_bragg_the_gutsman"] = {a=50,ai=0,al=30,c="com",cat="inf_melee",cb=50,hp=7472,lg=true,ma=65,mcp=1200,md=42,men=1,rcp=0,spd=5.7}
C.units["wh3_dlc26_ogr_cha_bruiser"] = {a=100,ai=20,al=0,c="com",cat="inf_melee",cb=50,hp=6216,lg=true,ma=55,mcp=900,md=38,men=1,rcp=0,spd=5.4}
C.units["wh3_dlc26_ogr_cha_butcher_death"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=44,hp=5508,lg=true,ma=40,mcp=550,md=40,men=1,rcp=0,spd=5.4}
C.units["wh3_dlc26_ogr_cha_butcher_heavens"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=44,hp=5508,lg=true,ma=40,mcp=550,md=40,men=1,rcp=0,spd=5.4}
C.units["wh3_dlc26_ogr_cha_golgfag_maneater"] = {a=80,ai=25,al=0,c="com",cat="inf_melee",cb=50,hp=7808,lg=true,ma=65,mcp=1250,md=50,men=1,rcp=0,spd=5.4}
C.units["wh3_dlc26_ogr_cha_paymaster"] = {a=40,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=6850,lg=true,ma=45,mcp=1350,md=50,men=1,rcp=0,spd=5.4}
C.units["wh3_dlc26_ogr_cha_slaughtermaster_death"] = {a=40,ai=0,al=0,c="com",cat="inf_melee",cb=44,hp=6508,lg=true,ma=40,mcp=800,md=48,men=1,rcp=0,spd=5.4}
C.units["wh3_dlc26_ogr_cha_slaughtermaster_heavens"] = {a=40,ai=0,al=0,c="com",cat="inf_melee",cb=44,hp=6508,lg=true,ma=40,mcp=800,md=48,men=1,rcp=0,spd=5.4}
C.units["wh3_dlc26_ogr_inf_eshin_maneater_ror"] = {a=40,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=6516,lg=true,ma=55,mcp=1250,md=50,men=1,rcp=0,spd=5.7}
C.units["wh3_dlc26_ogr_inf_golgfags_maneaters"] = {a=80,ai=16,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=10400,lg=true,ma=48,mcp=1600,md=36,men=16,rcp=0,spd=5.4}
C.units["wh3_dlc26_ogr_inf_pigback_riders"] = {a=15,ai=0,al=9,c="inf_mel",cat="inf_melee",cb=26,hp=7200,ma=25,mcp=400,md=26,men=100,rcp=0,spd=3.5}
C.units["wh3_dlc26_ogr_inf_pigback_riders_ror"] = {a=35,ai=0,al=9,c="inf_mel",cat="inf_melee",cb=36,hp=7200,ma=32,mcp=550,md=34,men=100,rcp=0,spd=3.5}
C.units["wh3_dlc26_ogr_mon_blood_vultures"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=5760,ma=34,mcp=500,md=28,men=48,rcp=0,spd=8}
C.units["wh3_dlc26_ogr_mon_sabretusk_pack_0_summoned"] = {a=30,ai=0,al=0,c="spcl",cat="inf_melee",cb=36,hp=5792,ma=38,mcp=250,md=28,men=32,rcp=0,spd=9.5}
C.units["wh3_dlc26_ogr_mon_thundertusk"] = {a=100,ai=20,al=0,c="inf_mel",cat="war_beast",cb=50,hp=20216,lg=true,ma=44,mcp=1800,md=30,men=2,rcp=500,spd=6}
C.units["wh3_dlc26_ogr_mon_yhetees"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=8288,lg=true,ma=40,mcp=1200,md=34,men=16,rcp=0,spd=6.2}
C.units["wh3_dlc26_ogr_mon_yhetees_ror"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=8768,lg=true,ma=50,mcp=1600,md=43,men=16,rcp=0,spd=6.2}
C.units["wh3_dlc27_bst_mon_ghorgon_boss"] = {a=50,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=46,hp=14868,lg=true,ma=71,mcp=2000,md=45,men=1,rcp=0,spd=6.4}
C.units["wh3_dlc27_bst_mon_jabberslythe_boss"] = {a=60,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=14868,lg=true,ma=47,mcp=1700,md=52,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc27_chd_mon_bale_taurus_boss"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=80,hp=13848,lg=true,ma=70,mcp=1700,md=52,men=1,rcp=0,spd=7.4}
C.units["wh3_dlc27_chd_mon_lammasu_boss"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=13848,lg=true,ma=47,mcp=1200,md=56,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc27_chs_cha_chaos_lord_msla_daemonic_steed"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=5702,lg=true,ma=65,mcp=1250,md=55,men=1,rcp=0,spd=10}
C.units["wh3_dlc27_chs_cha_chaos_sorcerer_shadows_msla_daemonic_steed"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4582,lg=true,ma=42,mcp=700,md=55,men=1,rcp=0,spd=10}
C.units["wh3_dlc27_chs_cha_chaos_sorcerer_slaanesh_msla_daemonic_steed"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4582,lg=true,ma=42,mcp=700,md=55,men=1,rcp=0,spd=10}
C.units["wh3_dlc27_chs_cha_daemon_prince_mkho_qb"] = {a=100,ai=15,al=0,c="com",cat="inf_melee",cb=50,hp=11600,lg=true,ma=65,mcp=1900,md=50,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc27_chs_cha_exalted_hero_msla"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4068,ma=55,mcp=900,md=55,men=1,rcp=0,spd=4.2}
C.units["wh3_dlc27_chs_cha_exalted_hero_msla_chaos_chariot"] = {a=110,ai=20,al=0,c="com",cat="war_machine",cb=80,hp=10680,lg=true,ma=42,mcp=1200,md=35,men=2,rcp=0,spd=8.3}
C.units["wh3_dlc27_chs_cha_exalted_hero_msla_chaos_steed"] = {a=110,ai=0,al=0,c="com",cat="war_beast",cb=55,hp=4672,lg=true,ma=55,mcp=1100,md=55,men=1,rcp=0,spd=8.3}
C.units["wh3_dlc27_chs_cha_exalted_hero_msla_daemonic_steed"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=5132,lg=true,ma=55,mcp=1150,md=55,men=1,rcp=0,spd=10}
C.units["wh3_dlc27_chs_cha_sorcerer_lord_shadows_msla"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3808,ma=48,mcp=800,md=44,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc27_chs_cha_sorcerer_lord_shadows_msla_chaos_steed"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=45,hp=4288,lg=true,ma=48,mcp=1000,md=44,men=1,rcp=0,spd=8.3}
C.units["wh3_dlc27_chs_cha_sorcerer_lord_shadows_msla_daemonic_steed"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4872,lg=true,ma=48,mcp=1250,md=55,men=1,rcp=0,spd=10}
C.units["wh3_dlc27_chs_cha_sorcerer_lord_shadows_msla_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1700,md=30,men=1,rcp=0,spd=4.3}
C.units["wh3_dlc27_chs_cha_sorcerer_lord_slaanesh_msla"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3808,ma=48,mcp=800,md=44,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc27_chs_cha_sorcerer_lord_slaanesh_msla_chaos_steed"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=45,hp=4288,lg=true,ma=48,mcp=1000,md=44,men=1,rcp=0,spd=8.3}
C.units["wh3_dlc27_chs_cha_sorcerer_lord_slaanesh_msla_daemonic_steed"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4872,lg=true,ma=48,mcp=1250,md=55,men=1,rcp=0,spd=10}
C.units["wh3_dlc27_chs_cha_sorcerer_lord_slaanesh_msla_warshrine"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=25,hp=11242,lg=true,ma=35,mcp=1700,md=30,men=1,rcp=0,spd=4.3}
C.units["wh3_dlc27_chs_feral_manticore_boss"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=13848,lg=true,ma=52,mcp=800,md=43,men=1,rcp=0,spd=7}
C.units["wh3_dlc27_cth_mon_celestial_lion_boss"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=65,hp=13848,lg=true,ma=54,mcp=1300,md=47,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc27_def_mon_black_dragon_boss"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=14868,lg=true,ma=68,mcp=2100,md=64,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc27_hef_cha_caradryan"] = {a=110,ai=0,al=25,c="com",cat="inf_melee",cb=30,hp=4068,ma=48,mcp=900,md=53,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc27_hef_cha_caradryan_ashtari"] = {a=80,ai=0,al=25,c="com",cat="war_beast",cb=45,hp=6998,lg=true,ma=43,mcp=1750,md=51,men=1,rcp=0,spd=8}
C.units["wh3_dlc27_hef_cha_caradryan_chariot"] = {a=110,ai=20,al=0,c="com",cat="war_machine",cb=82,hp=10796,lg=true,ma=38,mcp=1350,md=27,men=2,rcp=0,spd=8.4}
C.units["wh3_dlc27_hef_cha_caradryan_steed"] = {a=130,ai=0,al=25,c="com",cat="cavalry",cb=50,hp=4556,lg=true,ma=48,mcp=1150,md=53,men=1,rcp=0,spd=8.4}
C.units["wh3_dlc27_hef_cha_mist_mage"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3420,ma=40,mcp=400,md=32,men=1,rcp=0,spd=3.5}
C.units["wh3_dlc27_hef_cha_mist_mage_eagle"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=4760,lg=true,ma=44,mcp=900,md=30,men=1,rcp=0,spd=7}
C.units["wh3_dlc27_hef_cha_mist_mage_skycutter"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=12888,lg=true,ma=45,mcp=1150,md=30,men=2,rcp=0,spd=8}
C.units["wh3_dlc27_hef_cha_sea_helm"] = {a=70,ai=0,al=35,c="com",cat="inf_melee",cb=20,hp=4118,ma=40,mcp=800,md=60,men=1,rcp=0,spd=3.6}
C.units["wh3_dlc27_hef_cha_sea_helm_eagle"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=70,hp=4848,lg=true,ma=40,mcp=1350,md=48,men=1,rcp=0,spd=7}
C.units["wh3_dlc27_hef_cha_sea_helm_skycutter"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=75,hp=12888,lg=true,ma=48,mcp=1550,md=38,men=2,rcp=0,spd=8}
C.units["wh3_dlc27_hef_cha_sea_lord_aislinn"] = {a=90,ai=28,al=0,c="com",cat="inf_melee",cb=50,hp=4288,ma=55,mcp=1300,md=65,men=1,rcp=0,spd=3.6}
C.units["wh3_dlc27_hef_cha_sea_lord_aislinn_dragon"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=9442,lg=true,ma=69,mcp=2600,md=57,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc27_hef_cha_sea_lord_aislinn_skycutter"] = {a=80,ai=28,al=0,c="com",cat="war_beast",cb=75,hp=13488,lg=true,ma=52,mcp=2300,md=35,men=2,rcp=0,spd=8}
C.units["wh3_dlc27_hef_inf_militia_qb"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=4,hp=2160,ma=12,mcp=95,md=8,men=90,rcp=380,spd=3.6}
C.units["wh3_dlc27_hef_inf_oceanids"] = {a=0,ai=14,al=0,c="inf_mel",cat="inf_melee",cb=16,hp=9440,lg=true,ma=24,mcp=1100,md=55,men=16,rcp=0,spd=5.4}
C.units["wh3_dlc27_hef_inf_oceanids_split_up_summoned"] = {a=0,ai=14,al=0,c="inf_mel",cat="inf_melee",cb=16,hp=4720,lg=true,ma=24,mcp=550,md=55,men=8,rcp=0,spd=5.4}
C.units["wh3_dlc27_hef_inf_oceanids_summoned"] = {a=0,ai=14,al=0,c="inf_mel",cat="inf_melee",cb=16,hp=9440,lg=true,ma=24,mcp=1100,md=55,men=16,rcp=0,spd=5.4}
C.units["wh3_dlc27_hef_inf_ships_company"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=14,hp=7560,ma=28,mcp=400,md=24,men=120,rcp=0,spd=3.3}
C.units["wh3_dlc27_hef_inf_ships_company_ror"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=7560,ma=36,mcp=625,md=23,men=120,rcp=0,spd=3.3}
C.units["wh3_dlc27_hef_inf_swordmasters_of_hoeth_ror"] = {a=100,ai=14,al=0,c="inf_mel",cat="inf_melee",cb=28,hp=8400,ma=57,mcp=1600,md=45,men=100,rcp=0,spd=3.3}
C.units["wh3_dlc27_hef_mon_merwyrm"] = {a=70,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=42,hp=12600,lg=true,ma=59,mcp=2200,md=38,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc27_hef_mon_merwyrm_ror"] = {a=70,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=42,hp=12600,lg=true,ma=71,mcp=2700,md=48,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc27_hef_mon_merwyrm_summoned"] = {a=70,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=42,hp=12600,lg=true,ma=59,mcp=2200,md=38,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc27_hef_mon_sea_elemental"] = {a=0,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=32,hp=10400,lg=true,ma=45,mcp=1650,md=70,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc27_hef_veh_skycutter_bolt_thrower"] = {a=80,ai=0,al=0,c="chariot",cat="war_beast",cb=60,hp=12256,lg=true,ma=30,mcp=500,md=26,men=8,rcp=700,spd=8}
C.units["wh3_dlc27_hef_veh_skycutter_bows"] = {a=80,ai=0,al=0,c="chariot",cat="war_beast",cb=60,hp=18288,lg=true,ma=30,mcp=500,md=26,men=12,rcp=500,spd=8}
C.units["wh3_dlc27_hef_veh_skycutter_ror"] = {a=80,ai=0,al=15,c="chariot",cat="war_beast",cb=75,hp=12992,lg=true,ma=44,mcp=1000,md=38,men=8,rcp=0,spd=8}
C.units["wh3_dlc27_lzd_mon_dread_saurian_boss"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=14992,lg=true,ma=62,mcp=2400,md=42,men=1,rcp=0,spd=6}
C.units["wh3_dlc27_nor_cav_chaos_chariot_ror"] = {a=90,ai=18,al=0,c="chariot",cat="war_machine",cb=76,hp=10944,lg=true,ma=29,mcp=1000,md=36,men=8,rcp=0,spd=7.8}
C.units["wh3_dlc27_nor_cav_kurgan_horsemen_dualweapons"] = {a=15,ai=15,al=0,c="cav_shk",cat="war_beast",cb=40,hp=5400,lg=true,ma=29,mcp=750,md=29,men=60,rcp=0,spd=9}
C.units["wh3_dlc27_nor_cav_kurgan_horsemen_greatweapons"] = {a=15,ai=0,al=0,c="cav_shk",cat="war_beast",cb=44,hp=5400,lg=true,ma=29,mcp=700,md=24,men=60,rcp=0,spd=9}
C.units["wh3_dlc27_nor_cav_marauder_horsemen_ror"] = {a=15,ai=0,al=0,c="cav_mis",cat="war_beast",cb=24,hp=4980,lg=true,ma=29,mcp=350,md=27,men=60,rcp=400,spd=9.5}
C.units["wh3_dlc27_nor_cha_beorg_bearstruck"] = {a=90,ai=0,al=20,c="com",cat="inf_melee",cb=35,hp=6170,lg=true,ma=40,mcp=1300,md=53,men=1,rcp=0,spd=5.6}
C.units["wh3_dlc27_nor_cha_fimir_noble"] = {a=110,ai=0,al=20,c="com",cat="inf_melee",cb=40,hp=5440,lg=true,ma=52,mcp=1000,md=30,men=1,rcp=0,spd=5}
C.units["wh3_dlc27_nor_cha_great_shaman_sorcerer_death"] = {a=35,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3660,ma=35,mcp=300,md=35,men=1,rcp=0,spd=3.5}
C.units["wh3_dlc27_nor_cha_great_shaman_sorcerer_death_chariot"] = {a=90,ai=26,al=0,c="com",cat="war_machine",cb=52,hp=8832,lg=true,ma=35,mcp=800,md=29,men=2,rcp=0,spd=7.8}
C.units["wh3_dlc27_nor_cha_great_shaman_sorcerer_death_mammoth"] = {a=80,ai=34,al=0,c="com",cat="war_beast",cb=68,hp=13596,lg=true,ma=34,mcp=1200,md=30,men=1,rcp=0,spd=5.6}
C.units["wh3_dlc27_nor_cha_great_shaman_sorcerer_death_warhorse"] = {a=35,ai=0,al=0,c="com",cat="cavalry",cb=45,hp=4040,lg=true,ma=35,mcp=500,md=35,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc27_nor_cha_great_shaman_sorcerer_fire"] = {a=35,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3660,ma=35,mcp=300,md=35,men=1,rcp=0,spd=3.5}
C.units["wh3_dlc27_nor_cha_great_shaman_sorcerer_fire_chariot"] = {a=90,ai=26,al=0,c="com",cat="war_machine",cb=52,hp=8832,lg=true,ma=35,mcp=800,md=29,men=2,rcp=0,spd=7.8}
C.units["wh3_dlc27_nor_cha_great_shaman_sorcerer_fire_mammoth"] = {a=80,ai=34,al=0,c="com",cat="war_beast",cb=68,hp=13596,lg=true,ma=34,mcp=1200,md=30,men=1,rcp=0,spd=5.6}
C.units["wh3_dlc27_nor_cha_great_shaman_sorcerer_fire_warhorse"] = {a=35,ai=0,al=0,c="com",cat="cavalry",cb=45,hp=4040,lg=true,ma=35,mcp=500,md=35,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc27_nor_cha_great_shaman_sorcerer_metal"] = {a=35,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3660,ma=35,mcp=300,md=35,men=1,rcp=0,spd=3.5}
C.units["wh3_dlc27_nor_cha_great_shaman_sorcerer_metal_chariot"] = {a=90,ai=26,al=0,c="com",cat="war_machine",cb=52,hp=8832,lg=true,ma=35,mcp=800,md=29,men=2,rcp=0,spd=7.8}
C.units["wh3_dlc27_nor_cha_great_shaman_sorcerer_metal_mammoth"] = {a=80,ai=34,al=0,c="com",cat="war_beast",cb=68,hp=13596,lg=true,ma=34,mcp=1200,md=30,men=1,rcp=0,spd=5.6}
C.units["wh3_dlc27_nor_cha_great_shaman_sorcerer_metal_warhorse"] = {a=35,ai=0,al=0,c="com",cat="cavalry",cb=45,hp=4040,lg=true,ma=35,mcp=500,md=35,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc27_nor_cha_sayl_the_faithless"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=4030,ma=43,mcp=400,md=36,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc27_nor_cha_sayl_the_faithless_chariot"] = {a=90,ai=26,al=0,c="com",cat="war_machine",cb=50,hp=9380,lg=true,ma=43,mcp=900,md=28,men=2,rcp=0,spd=7.8}
C.units["wh3_dlc27_nor_cha_sayl_the_faithless_mammoth"] = {a=80,ai=34,al=0,c="com",cat="war_beast",cb=68,hp=13766,lg=true,ma=34,mcp=1300,md=30,men=1,rcp=0,spd=5.6}
C.units["wh3_dlc27_nor_cha_sayl_the_faithless_warhorse"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=35,hp=4390,lg=true,ma=43,mcp=600,md=36,men=1,rcp=0,spd=9}
C.units["wh3_dlc27_nor_cha_shaman_sorcerer_death_2_summoned"] = {a=90,ai=26,al=0,c="com",cat="war_machine",cb=52,hp=8232,lg=true,ma=30,mcp=775,md=24,men=2,rcp=0,spd=7.8}
C.units["wh3_dlc27_nor_cha_shaman_sorcerer_fire_2_summoned"] = {a=90,ai=26,al=0,c="com",cat="war_machine",cb=52,hp=8232,lg=true,ma=30,mcp=775,md=24,men=2,rcp=0,spd=7.8}
C.units["wh3_dlc27_nor_cha_shaman_sorcerer_metal_2_summoned"] = {a=90,ai=26,al=0,c="com",cat="war_machine",cb=52,hp=8232,lg=true,ma=30,mcp=775,md=24,men=2,rcp=0,spd=7.8}
C.units["wh3_dlc27_nor_inf_chaos_marauders_great_weapons_ror"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=10200,ma=38,mcp=650,md=32,men=120,rcp=0,spd=3.5}
C.units["wh3_dlc27_nor_inf_marauder_bearmen"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=11200,ma=32,mcp=550,md=35,men=100,rcp=0,spd=3.1}
C.units["wh3_dlc27_nor_inf_marauder_bearmen_greatweapons"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=11200,ma=32,mcp=625,md=29,men=100,rcp=0,spd=3.1}
C.units["wh3_dlc27_nor_mon_chimera"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=6390,lg=true,ma=52,mcp=1500,md=38,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc27_nor_mon_chimera_boss"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=9260,lg=true,ma=70,mcp=1750,md=53,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc27_nor_mon_chimera_ror"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=6390,lg=true,ma=64,mcp=1900,md=48,men=1,rcp=0,spd=6.2}
C.units["wh3_dlc27_nor_mon_cursd_ettin"] = {a=35,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=14320,lg=true,ma=65,mcp=1500,md=40,men=1,rcp=0,spd=3.9}
C.units["wh3_dlc27_nor_mon_cursd_ettin_runecaller"] = {a=35,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=11820,lg=true,ma=60,mcp=1700,md=35,men=1,rcp=0,spd=3.9}
C.units["wh3_dlc27_nor_mon_dread_maw"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=0,hp=9640,lg=true,ma=65,mcp=1000,md=33,men=1,rcp=0,spd=0}
C.units["wh3_dlc27_nor_mon_dread_maw_underground"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=0,hp=9640,lg=true,ma=65,mcp=1000,md=33,men=1,rcp=0,spd=5}
C.units["wh3_dlc27_nur_mon_toad_dragon_boss"] = {a=60,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=42,hp=14868,lg=true,ma=64,mcp=2100,md=47,men=1,rcp=0,spd=6}
C.units["wh3_dlc27_ogr_mon_thundertusk_boss"] = {a=100,ai=20,al=0,c="inf_mel",cat="war_beast",cb=50,hp=29736,lg=true,ma=56,mcp=1800,md=40,men=2,rcp=500,spd=6.6}
C.units["wh3_dlc27_sla_cav_pleasureseekers"] = {a=30,ai=0,al=0,c="cav_shk",cat="war_beast",cb=60,hp=7040,lg=true,ma=46,mcp=1700,md=51,men=32,rcp=0,spd=10}
C.units["wh3_dlc27_sla_cha_alluress_shadow_daemonic_steed"] = {a=15,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=4632,lg=true,ma=55,mcp=1250,md=55,men=1,rcp=0,spd=10}
C.units["wh3_dlc27_sla_cha_alluress_slaanesh_daemonic_steed"] = {a=15,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=4632,lg=true,ma=55,mcp=1250,md=55,men=1,rcp=0,spd=10}
C.units["wh3_dlc27_sla_cha_dechala"] = {a=15,ai=30,al=0,c="com",cat="inf_melee",cb=45,hp=6808,lg=true,ma=69,mcp=1400,md=60,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc27_sla_cha_druchii_anointed"] = {a=80,ai=30,al=0,c="com",cat="inf_melee",cb=20,hp=3834,ma=60,mcp=700,md=42,men=1,rcp=0,spd=4.5}
C.units["wh3_dlc27_sla_cha_druchii_anointed_cold_one"] = {a=110,ai=30,al=0,c="com",cat="cavalry",cb=40,hp=4268,lg=true,ma=60,mcp=1050,md=42,men=1,rcp=0,spd=6.8}
C.units["wh3_dlc27_sla_cha_druchii_anointed_daemonic_steed"] = {a=80,ai=30,al=0,c="com",cat="war_beast",cb=50,hp=4892,lg=true,ma=60,mcp=1150,md=55,men=1,rcp=0,spd=10}
C.units["wh3_dlc27_sla_cha_herald_of_slaanesh_shadow_daemonic_steed"] = {a=15,ai=0,al=0,c="com",cat="war_beast",cb=70,hp=5032,lg=true,ma=60,mcp=1350,md=55,men=1,rcp=0,spd=10}
C.units["wh3_dlc27_sla_cha_herald_of_slaanesh_slaanesh_daemonic_steed"] = {a=15,ai=0,al=0,c="com",cat="war_beast",cb=70,hp=5032,lg=true,ma=60,mcp=1350,md=55,men=1,rcp=0,spd=10}
C.units["wh3_dlc27_sla_cha_masque_of_slaanesh"] = {a=25,ai=25,al=0,c="com",cat="inf_melee",cb=50,hp=4930,ma=65,mcp=1100,md=55,men=1,rcp=0,spd=7}
C.units["wh3_dlc27_sla_cha_styrkaar_the_sortsvinaer"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=4688,ma=45,mcp=1000,md=60,men=1,rcp=0,spd=4.2}
C.units["wh3_dlc27_sla_cha_styrkaar_the_sortsvinaer_daemonic_steed"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=5752,lg=true,ma=45,mcp=1450,md=60,men=1,rcp=0,spd=10}
C.units["wh3_dlc27_sla_cha_styrkaar_the_sortsvinaer_steed_of_slaanesh"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4868,lg=true,ma=45,mcp=1200,md=55,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc27_sla_inf_chaos_furies_summoned"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=5280,ma=36,mcp=650,md=18,men=60,rcp=0,spd=10}
C.units["wh3_dlc27_sla_inf_devotees_of_slaanesh"] = {a=30,ai=10,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=7040,ma=42,mcp=1085,md=46,men=80,rcp=0,spd=4.4}
C.units["wh3_dlc27_sla_inf_devotees_of_slaanesh_crossbows"] = {a=30,ai=10,al=0,c="inf_mis",cat="inf_ranged",cb=30,hp=7040,ma=38,mcp=1085,md=44,men=80,rcp=700,spd=4.4}
C.units["wh3_dlc27_sla_inf_slaangors"] = {a=30,ai=8,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=9000,ma=34,mcp=675,md=26,men=120,rcp=0,spd=5}
C.units["wh3_dlc27_sla_inf_vengeful_furies_summoned"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=5280,ma=36,mcp=650,md=12,men=60,rcp=0,spd=10}
C.units["wh3_dlc27_sla_mon_champions_of_slaanesh"] = {a=60,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=7840,lg=true,ma=52,mcp=1500,md=55,men=16,rcp=0,spd=6.5}
C.units["wh3_dlc27_sla_mon_champions_of_slaanesh_ror"] = {a=60,ai=25,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=7840,lg=true,ma=64,mcp=1500,md=67,men=16,rcp=0,spd=6.5}
C.units["wh3_dlc27_sla_mon_giant_spawn_of_sla_summoned_i"] = {a=30,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=28,hp=8008,lg=true,ma=48,mcp=1050,md=36,men=1,rcp=0,spd=5.4}
C.units["wh3_dlc27_sla_mon_preyton"] = {a=60,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=40,hp=7289,lg=true,ma=50,mcp=1650,md=28,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc27_sla_mon_preyton_boss"] = {a=60,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=40,hp=13848,lg=true,ma=63,mcp=1850,md=38,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc27_sla_mon_preyton_ror"] = {a=60,ai=0,al=25,c="inf_mel",cat="inf_melee",cb=40,hp=7289,lg=true,ma=61,mcp=1850,md=36,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc27_sla_veh_seeker_chariot_ror"] = {a=50,ai=22,al=0,c="chariot",cat="war_machine",cb=80,hp=9792,lg=true,ma=36,mcp=800,md=34,men=8,rcp=0,spd=10}
C.units["wh3_dlc27_tmb_mon_carrion_boss"] = {a=50,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=60,hp=11208,lg=true,ma=58,mcp=350,md=52,men=1,rcp=0,spd=8}
C.units["wh3_dlc27_tze_mon_cockatrice_boss"] = {a=35,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=13848,lg=true,ma=64,mcp=1300,md=55,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_chs_cav_nur_plague_drones_1_summoned"] = {a=50,ai=0,al=0,c="cav_mis",cat="cavalry",cb=32,hp=7032,lg=true,ma=36,mcp=1300,md=36,men=12,rcp=300,spd=7}
C.units["wh3_dlc29_chs_cav_nur_plague_drones_summoned"] = {a=50,ai=0,al=0,c="cav_mel",cat="cavalry",cb=32,hp=7032,lg=true,ma=36,mcp=1300,md=36,men=12,rcp=0,spd=7}
C.units["wh3_dlc29_chs_cha_bloab"] = {a=70,ai=20,al=0,c="com",cat="inf_melee",cb=16,hp=4890,ma=41,mcp=1200,md=42,men=1,rcp=0,spd=3.4}
C.units["wh3_dlc29_chs_cha_bloab_bilespurter"] = {a=60,ai=15,al=0,c="com",cat="war_beast",cb=36,hp=9092,lg=true,ma=41,mcp=2200,md=38,men=1,rcp=0,spd=5.8}
C.units["wh3_dlc29_chs_cha_glottkin"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=30,hp=32568,lg=true,ma=65,mcp=2500,md=40,men=2,rcp=0,spd=4}
C.units["wh3_dlc29_chs_cha_gutrot_spume"] = {a=90,ai=0,al=30,c="com",cat="inf_melee",cb=34,hp=5970,ma=50,mcp=1200,md=48,men=1,rcp=0,spd=3.2}
C.units["wh3_dlc29_chs_cha_gutrot_spume_warshrine"] = {a=60,ai=0,al=10,c="com",cat="war_beast",cb=39,hp=12782,lg=true,ma=40,mcp=1650,md=48,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc29_chs_cha_morbidex"] = {a=80,ai=20,al=0,c="com",cat="inf_melee",cb=20,hp=5610,ma=47,mcp=1200,md=56,men=1,rcp=0,spd=3.4}
C.units["wh3_dlc29_chs_cha_morbidex_tripletongue"] = {a=60,ai=15,al=0,c="com",cat="war_beast",cb=40,hp=10102,lg=true,ma=47,mcp=2100,md=52,men=1,rcp=0,spd=5.8}
C.units["wh3_dlc29_chs_cha_orghotts"] = {a=110,ai=0,al=0,c="com",cat="inf_melee",cb=36,hp=6100,ma=66,mcp=1200,md=42,men=1,rcp=0,spd=3.4}
C.units["wh3_dlc29_chs_cha_orghotts_whippermaw"] = {a=80,ai=0,al=15,c="com",cat="war_beast",cb=56,hp=10592,lg=true,ma=66,mcp=2100,md=38,men=1,rcp=0,spd=5.8}
C.units["wh3_dlc29_chs_cha_plagues_champion_mnur_summoned"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=2200,ma=60,mcp=600,md=40,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc29_chs_inf_chaos_warriors_mnur_summoned_small"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=3920,ma=31,mcp=350,md=49,men=40,rcp=0,spd=2.8}
C.units["wh3_dlc29_chs_inf_chosen_mnur_ror"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=32,hp=11440,ma=53,mcp=1800,md=62,men=80,rcp=0,spd=2.8}
C.units["wh3_dlc29_chs_inf_flayerkin"] = {a=15,ai=8,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=8460,ma=35,mcp=625,md=28,men=90,rcp=0,spd=3.9}
C.units["wh3_dlc29_chs_inf_putrid_blightkings_axe_shield"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=11840,ma=48,mcp=1500,md=67,men=32,rcp=0,spd=3.1}
C.units["wh3_dlc29_chs_inf_putrid_blightkings_dual_axe"] = {a=120,ai=12,al=0,c="inf_mel",cat="inf_melee",cb=36,hp=11840,ma=54,mcp=1600,md=51,men=32,rcp=0,spd=3.1}
C.units["wh3_dlc29_chs_inf_putrid_blightkings_dual_axe_ror"] = {a=80,ai=16,al=0,c="inf_mel",cat="inf_melee",cb=41,hp=11840,ma=66,mcp=1900,md=62,men=32,rcp=0,spd=3.4}
C.units["wh3_dlc29_chs_inf_putrid_blightkings_great_weapons"] = {a=120,ai=0,al=10,c="inf_mel",cat="inf_melee",cb=33,hp=11840,ma=50,mcp=1650,md=47,men=32,rcp=0,spd=3.1}
C.units["wh3_dlc29_chs_mon_basilisk"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=38,hp=7800,lg=true,ma=42,mcp=1600,md=44,men=1,rcp=0,spd=8.2}
C.units["wh3_dlc29_chs_mon_chaos_siege_giant"] = {a=110,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=12620,lg=true,ma=70,mcp=2000,md=34,men=1,rcp=0,spd=3.5}
C.units["wh3_dlc29_chs_mon_giant_spined_chaos_beast"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=56,hp=6780,lg=true,ma=49,mcp=1350,md=27,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc29_chs_mon_giant_spined_chaos_beast_ror"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=56,hp=6780,lg=true,ma=60,mcp=1700,md=35,men=1,rcp=0,spd=7.5}
C.units["wh3_dlc29_cst_cha_gunnery_wight_0_summoned"] = {a=30,ai=0,al=0,c="com",cat="inf_ranged",cb=15,hp=3972,ma=34,mcp=150,md=38,men=1,rcp=450,spd=4}
C.units["wh3_dlc29_cst_cha_vampire_fleet_admiral_female_undeath"] = {a=70,ai=0,al=0,c="com",cat="inf_ranged",cb=35,hp=4068,ma=65,mcp=550,md=45,men=1,rcp=400,spd=4}
C.units["wh3_dlc29_cst_cha_vampire_fleet_admiral_female_undeath_rotting_promethean"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=35,hp=4972,lg=true,ma=55,mcp=850,md=50,men=1,rcp=400,spd=4.5}
C.units["wh3_dlc29_cst_cha_vampire_fleet_admiral_undeath"] = {a=70,ai=0,al=25,c="com",cat="inf_melee",cb=25,hp=4068,ma=45,mcp=950,md=60,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc29_cst_cha_vampire_fleet_admiral_undeath_rotting_promethean"] = {a=120,ai=0,al=25,c="com",cat="war_beast",cb=25,hp=4972,lg=true,ma=35,mcp=1250,md=60,men=1,rcp=0,spd=4.5}
C.units["wh3_dlc29_cst_cha_vampire_fleet_captain_undeath"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=3572,ma=60,mcp=600,md=40,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc29_cst_cha_vampire_fleet_captain_undeath_rotting_promethean"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=35,hp=4572,lg=true,ma=50,mcp=1000,md=48,men=1,rcp=0,spd=4.5}
C.units["wh3_dlc29_cst_inf_zombie_pirate_gunnery_mob_bombers_summoned"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=7,hp=7560,ma=14,mcp=75,md=6,men=120,rcp=375,spd=2.3}
C.units["wh3_dlc29_cst_mon_mournguls_0_summoned"] = {a=30,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=28,hp=8960,lg=true,ma=36,mcp=1000,md=26,men=16,rcp=0,spd=5.4}
C.units["wh3_dlc29_cst_mon_necrofex_colossus_0_summoned"] = {a=75,ai=0,al=0,c="inf_mis",cat="war_beast",cb=20,hp=47335,lg=true,ma=42,mcp=900,md=34,men=5,rcp=1000,spd=4.5}
C.units["wh3_dlc29_cst_mon_rotting_prometheans_gunnery_mob_summoned"] = {a=120,ai=0,al=0,c="inf_mis",cat="war_beast",cb=22,hp=15840,lg=true,ma=38,mcp=1000,md=48,men=24,rcp=300,spd=4.5}
C.units["wh3_dlc29_emp_cav_knights_of_the_white_wolf"] = {a=100,ai=0,al=0,c="cav_mel",cat="cavalry",cb=35,hp=6480,lg=true,ma=39,mcp=1200,md=40,men=60,rcp=0,spd=7.8}
C.units["wh3_dlc29_emp_cav_knights_of_the_white_wolf_ror"] = {a=100,ai=0,al=0,c="cav_mel",cat="cavalry",cb=35,hp=6480,lg=true,ma=49,mcp=1300,md=50,men=60,rcp=0,spd=7.8}
C.units["wh3_dlc29_emp_cav_knights_panther"] = {a=110,ai=0,al=9,c="cav_shk",cat="cavalry",cb=60,hp=6720,lg=true,ma=42,mcp=1250,md=44,men=60,rcp=0,spd=7.8}
C.units["wh3_dlc29_emp_cha_boris_todbringer_toddy_0"] = {a=95,ai=0,al=0,c="com",cat="inf_melee",cb=55,hp=4287,ma=62,mcp=850,md=53,men=1,rcp=0,spd=3.4}
C.units["wh3_dlc29_emp_cha_boris_todbringer_toddy_1"] = {a=115,ai=0,al=0,c="com",cat="cavalry",cb=80,hp=4892,lg=true,ma=62,mcp=1100,md=53,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc29_emp_cha_boris_todbringer_toddy_2"] = {a=100,ai=0,al=0,c="com",cat="cavalry",cb=80,hp=5192,lg=true,ma=62,mcp=1350,md=53,men=1,rcp=0,spd=8.2}
C.units["wh3_dlc29_emp_cha_boris_todbringer_toddy_3"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6827,lg=true,ma=45,mcp=1600,md=46,men=1,rcp=0,spd=7}
C.units["wh3_dlc29_emp_cha_emil_valgeir"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=38,hp=4268,ma=48,mcp=1000,md=46,men=1,rcp=0,spd=3.1}
C.units["wh3_dlc29_emp_cha_emil_valgeir_warhorse"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=58,hp=4868,lg=true,ma=48,mcp=1200,md=46,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc29_emp_cha_priest_of_ulric"] = {a=85,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=4068,ma=41,mcp=900,md=38,men=1,rcp=0,spd=3.1}
C.units["wh3_dlc29_emp_cha_priest_of_ulric_warhorse"] = {a=105,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=4548,lg=true,ma=41,mcp=1100,md=38,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc29_emp_cha_seneschal_of_the_white_wolf"] = {a=95,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=4288,ma=50,mcp=1100,md=44,men=1,rcp=0,spd=3.4}
C.units["wh3_dlc29_emp_cha_seneschal_of_the_white_wolf_warhorse"] = {a=115,ai=0,al=0,c="com",cat="cavalry",cb=75,hp=4898,lg=true,ma=50,mcp=1100,md=44,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc29_emp_inf_hunting_hounds"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=6000,ma=28,mcp=400,md=20,men=80,rcp=0,spd=9.5}
C.units["wh3_dlc29_emp_inf_hunting_hounds_ror"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=6000,ma=36,mcp=450,md=27,men=80,rcp=0,spd=9.5}
C.units["wh3_dlc29_emp_inf_teutogen_guard"] = {a=95,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=16,hp=9840,ma=43,mcp=1250,md=46,men=80,rcp=0,spd=2.8}
C.units["wh3_dlc29_emp_inf_teutogen_guard_ror"] = {a=95,ai=10,al=0,c="inf_mel",cat="inf_melee",cb=16,hp=9840,ma=53,mcp=1550,md=58,men=80,rcp=0,spd=2.8}
C.units["wh3_dlc29_emp_inf_warriors_of_ulric"] = {a=30,ai=6,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=7920,ma=34,mcp=450,md=21,men=120,rcp=200,spd=3.6}
C.units["wh3_dlc29_emp_inf_wolf_kin"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=28,hp=8760,ma=39,mcp=750,md=28,men=120,rcp=0,spd=3.6}
C.units["wh3_dlc29_emp_veh_celestial_hurricanum_0"] = {a=55,ai=0,al=0,c="chariot",cat="war_machine",cb=22,hp=12856,lg=true,ma=30,mcp=550,md=25,men=2,rcp=1000,spd=5}
C.units["wh3_dlc29_qb_brt_cha_lord_warhorse"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=75,hp=4672,lg=true,ma=54,mcp=850,md=48,men=1,rcp=0,spd=8.4}
C.units["wh3_dlc29_skv_art_plagueclaw_catapult_ror"] = {a=30,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=2856,ma=20,mcp=90,md=23,men=56,rcp=810,spd=4.2}
C.units["wh3_dlc29_skv_art_warp_doom_magma_cannon"] = {a=30,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=2304,ma=16,mcp=400,md=16,men=48,rcp=1600,spd=4.2}
C.units["wh3_dlc29_skv_cha_lord_skrolk_cauldron"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=10,hp=6868,lg=true,ma=25,mcp=1300,md=35,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc29_skv_cha_plague_priest_cauldron"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=10,hp=5868,lg=true,ma=25,mcp=1300,md=35,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc29_skv_cha_skreech_verminking"] = {a=55,ai=0,al=25,c="com",cat="inf_melee",cb=70,hp=9248,lg=true,ma=62,mcp=2500,md=67,men=1,rcp=0,spd=7}
C.units["wh3_dlc29_skv_cha_thanquol"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=4220,ma=34,mcp=600,md=38,men=1,rcp=0,spd=4.2}
C.units["wh3_dlc29_skv_cha_thanquol_boneripper_warpfire_braziers"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=8200,lg=true,ma=60,mcp=1300,md=40,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_skv_cha_thanquol_boneripper_warpfire_projectors"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=8200,lg=true,ma=45,mcp=700,md=40,men=1,rcp=700,spd=6.5}
C.units["wh3_dlc29_skv_cha_verminlord_corruptor"] = {a=30,ai=25,al=0,c="com",cat="inf_melee",cb=65,hp=8188,lg=true,ma=55,mcp=2100,md=50,men=1,rcp=0,spd=7}
C.units["wh3_dlc29_skv_cha_verminlord_deceiver"] = {a=30,ai=0,al=0,c="com",cat="inf_ranged",cb=50,hp=8188,lg=true,ma=60,mcp=2100,md=50,men=1,rcp=0,spd=8}
C.units["wh3_dlc29_skv_cha_verminlord_warbringer"] = {a=50,ai=0,al=25,c="com",cat="inf_melee",cb=70,hp=9248,lg=true,ma=55,mcp=2100,md=65,men=1,rcp=0,spd=7}
C.units["wh3_dlc29_skv_cha_verminlord_warpseer"] = {a=30,ai=0,al=25,c="com",cat="inf_melee",cb=50,hp=8188,lg=true,ma=50,mcp=2100,md=50,men=1,rcp=0,spd=7}
C.units["wh3_dlc29_skv_inf_clanrat_spearmen_vermintide"] = {a=25,ai=0,al=9,c="inf_mel",cat="inf_melee",cb=6,hp=9600,ma=18,mcp=375,md=28,men=320,rcp=0,spd=4.2}
C.units["wh3_dlc29_skv_inf_clanrats_vermintide"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=9600,ma=24,mcp=350,md=22,men=320,rcp=0,spd=4.2}
C.units["wh3_dlc29_skv_inf_deathvermin_ror"] = {a=90,ai=0,al=10,c="inf_mel",cat="inf_melee",cb=10,hp=9920,ma=41,mcp=1400,md=45,men=160,rcp=0,spd=3.8}
C.units["wh3_dlc29_skv_inf_poison_wind_mortar_0_summoned"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=3936,ma=14,mcp=50,md=16,men=12,rcp=1000,spd=3.8}
C.units["wh3_dlc29_skv_inf_pusbags"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=5,hp=7740,ma=12,mcp=200,md=5,men=180,rcp=0,spd=4.2}
C.units["wh3_dlc29_skv_inf_skavenslave_slingers_vermintide"] = {a=0,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=6720,ma=6,mcp=65,md=7,men=280,rcp=160,spd=4.2}
C.units["wh3_dlc29_skv_inf_skavenslave_spearmen_vermintide"] = {a=0,ai=0,al=6,c="inf_mel",cat="inf_melee",cb=3,hp=9000,ma=9,mcp=150,md=16,men=360,rcp=0,spd=4.2}
C.units["wh3_dlc29_skv_inf_skavenslaves_vermintide"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=5,hp=9000,ma=12,mcp=125,md=10,men=360,rcp=0,spd=4.2}
C.units["wh3_dlc29_skv_mon_brood_horror_0_summoned"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=65,hp=6009,lg=true,ma=40,mcp=1100,md=30,men=1,rcp=0,spd=9.5}
C.units["wh3_dlc29_skv_mon_stormfiend_doomflayer_gauntlets"] = {a=90,ai=15,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=8772,lg=true,ma=45,mcp=1300,md=31,men=12,rcp=0,spd=5}
C.units["wh3_dlc29_skv_mon_stormfiend_grinderfists"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=8772,lg=true,ma=38,mcp=1200,md=31,men=12,rcp=0,spd=5}
C.units["wh3_dlc29_skv_mon_stormfiend_ratling_cannons"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=30,hp=8772,lg=true,ma=30,mcp=1350,md=26,men=12,rcp=675,spd=5}
C.units["wh3_dlc29_skv_mon_stormfiend_shock_gauntlets"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=8772,lg=true,ma=48,mcp=1400,md=31,men=12,rcp=0,spd=5}
C.units["wh3_dlc29_skv_mon_stormfiend_warpfire_projectors"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=30,hp=8772,lg=true,ma=30,mcp=1300,md=26,men=12,rcp=650,spd=5}
C.units["wh3_dlc29_skv_mon_stormfiend_windlaunchers"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=30,hp=8772,lg=true,ma=30,mcp=1400,md=26,men=12,rcp=700,spd=5}
C.units["wh3_dlc29_skv_mon_stormfiends_ratling_cannons_ror"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=30,hp=8772,lg=true,ma=38,mcp=1800,md=34,men=12,rcp=900,spd=6}
C.units["wh3_dlc29_skv_veh_cauldron_of_a_thousand_poxes"] = {a=60,ai=0,al=0,c="inf_mel",cat="war_beast",cb=10,hp=5400,lg=true,ma=25,mcp=1300,md=35,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc29_skv_veh_doom_flayer_0_summoned"] = {a=90,ai=35,al=0,c="chariot",cat="war_machine",cb=40,hp=6064,lg=true,ma=25,mcp=1200,md=26,men=8,rcp=0,spd=4.2}
C.units["wh3_dlc29_tmb_cha_arkhan_dread_abyssal"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=6536,lg=true,ma=50,mcp=2150,md=50,men=1,rcp=0,spd=6.8}
C.units["wh3_dlc29_tmb_cha_arkhan_the_black_mp"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=12,hp=4840,ma=40,mcp=1100,md=50,men=1,rcp=0,spd=3.1}
C.units["wh3_dlc29_tmb_cha_arkhan_the_black_skeletal_steed_mp"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=32,hp=5240,lg=true,ma=40,mcp=1000,md=50,men=1,rcp=0,spd=7.6}
C.units["wh3_dlc29_tmb_cha_arkhan_the_black_skeleton_chariot_mp"] = {a=110,ai=28,al=0,c="com",cat="war_machine",cb=75,hp=33576,lg=true,ma=30,mcp=1400,md=36,men=6,rcp=0,spd=8.4}
C.units["wh3_dlc29_tmb_cha_liche_high_priest_death"] = {a=40,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3888,ma=32,mcp=300,md=38,men=1,rcp=0,spd=3.1}
C.units["wh3_dlc29_tmb_cha_liche_high_priest_death_skeletal_steed"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=4376,lg=true,ma=32,mcp=500,md=38,men=1,rcp=0,spd=7.6}
C.units["wh3_dlc29_tmb_cha_liche_high_priest_light"] = {a=40,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3888,ma=32,mcp=300,md=38,men=1,rcp=0,spd=3.1}
C.units["wh3_dlc29_tmb_cha_liche_high_priest_light_skeletal_steed"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=4376,lg=true,ma=32,mcp=500,md=38,men=1,rcp=0,spd=7.6}
C.units["wh3_dlc29_tmb_cha_liche_high_priest_nehekhara"] = {a=40,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3888,ma=32,mcp=300,md=38,men=1,rcp=0,spd=3.1}
C.units["wh3_dlc29_tmb_cha_liche_high_priest_nehekhara_skeletal_steed"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=4376,lg=true,ma=32,mcp=500,md=38,men=1,rcp=0,spd=7.6}
C.units["wh3_dlc29_tmb_cha_liche_high_priest_shadow"] = {a=40,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3888,ma=32,mcp=300,md=38,men=1,rcp=0,spd=3.1}
C.units["wh3_dlc29_tmb_cha_liche_high_priest_shadow_skeletal_steed"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=4376,lg=true,ma=32,mcp=500,md=38,men=1,rcp=0,spd=7.6}
C.units["wh3_dlc29_tmb_cha_liche_high_priest_undeath"] = {a=40,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3888,ma=32,mcp=300,md=38,men=1,rcp=0,spd=3.1}
C.units["wh3_dlc29_tmb_cha_liche_high_priest_undeath_skeletal_steed"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=4376,lg=true,ma=32,mcp=500,md=38,men=1,rcp=0,spd=7.6}
C.units["wh3_dlc29_tmb_cha_liche_priest_undeath"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3520,ma=25,mcp=300,md=30,men=1,rcp=0,spd=3.1}
C.units["wh3_dlc29_tmb_cha_liche_priest_undeath_skeletal_steed"] = {a=30,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=3940,lg=true,ma=25,mcp=500,md=30,men=1,rcp=0,spd=7.6}
C.units["wh3_dlc29_tmb_cha_tomb_herald"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3968,ma=45,mcp=600,md=40,men=1,rcp=0,spd=3.1}
C.units["wh3_dlc29_tmb_cha_tomb_herald_skeletal_steed"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=45,hp=4440,lg=true,ma=45,mcp=800,md=40,men=1,rcp=0,spd=7.6}
C.units["wh3_dlc29_tmb_cha_tomb_herald_skeleton_chariot"] = {a=80,ai=28,al=0,c="com",cat="war_machine",cb=80,hp=9792,lg=true,ma=30,mcp=850,md=24,men=2,rcp=0,spd=7.4}
C.units["wh3_dlc29_tmb_cha_tomb_prince_0_summoned"] = {a=70,ai=0,al=25,c="com",cat="inf_melee",cb=15,hp=4268,ma=38,mcp=600,md=48,men=1,rcp=0,spd=3.1}
C.units["wh3_dlc29_tmb_inf_nehekhara_warriors_0_summoned"] = {a=45,ai=7,al=0,c="inf_mel",cat="inf_melee",cb=15,hp=9120,ma=32,mcp=525,md=22,men=120,rcp=0,spd=2.8}
C.units["wh3_dlc29_tmb_mon_khemrian_warsphinx_0_summoned"] = {a=95,ai=15,al=0,c="inf_mel",cat="war_beast",cb=64,hp=38480,lg=true,ma=38,mcp=1900,md=38,men=4,rcp=0,spd=6.8}
C.units["wh3_dlc29_tmb_mon_khemric_titan"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=15000,lg=true,ma=58,mcp=2000,md=40,men=1,rcp=0,spd=6.8}
C.units["wh3_dlc29_tmb_mon_khemric_titan_ror"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=15000,lg=true,ma=70,mcp=2000,md=50,men=1,rcp=0,spd=6.8}
C.units["wh3_dlc29_tmb_mon_khemric_titan_summoned"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=15000,lg=true,ma=58,mcp=2000,md=40,men=1,rcp=0,spd=6.8}
C.units["wh3_dlc29_tmb_mon_ushabti_ror_sepulchrex"] = {a=90,ai=15,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8128,lg=true,ma=30,mcp=900,md=44,men=16,rcp=0,spd=5.4}
C.units["wh3_dlc29_tmb_veh_skeleton_archer_chariot_0_summoned"] = {a=80,ai=12,al=0,c="chariot",cat="war_machine",cb=58,hp=13104,lg=true,ma=22,mcp=667,md=24,men=24,rcp=283,spd=7.4}
C.units["wh3_dlc29_vmp_cav_drakenhof_templars"] = {a=110,ai=0,al=10,c="cav_shk",cat="cavalry",cb=58,hp=6912,lg=true,ma=38,mcp=1750,md=48,men=32,rcp=0,spd=7}
C.units["wh3_dlc29_vmp_cha_bloodline_lahmian_lord_coven_throne"] = {a=40,ai=20,al=0,c="com",cat="war_machine",cb=30,hp=120564,ma=30,mcp=1400,md=32,men=17,rcp=0,spd=3.8}
C.units["wh3_dlc29_vmp_cha_dieter_helsnicht"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=25,hp=3808,ma=40,mcp=400,md=45,men=1,rcp=0,spd=3.4}
C.units["wh3_dlc29_vmp_cha_dieter_helsnicht_undead_manticore"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5508,lg=true,ma=40,mcp=2150,md=36,men=1,rcp=0,spd=7}
C.units["wh3_dlc29_vmp_cha_krell"] = {a=100,ai=0,al=20,c="com",cat="inf_melee",cb=45,hp=5000,ma=55,mcp=1000,md=42,men=1,rcp=0,spd=3.3}
C.units["wh3_dlc29_vmp_cha_lahmian_vampire"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=3572,ma=50,mcp=650,md=60,men=1,rcp=0,spd=4.6}
C.units["wh3_dlc29_vmp_cha_lahmian_vampire_barded_nightmare"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=3908,lg=true,ma=50,mcp=900,md=60,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc29_vmp_cha_lahmian_vampire_hellsteed"] = {a=20,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=3908,lg=true,ma=50,mcp=1100,md=60,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_cha_mannfred_von_carstein_barded_nightmare_mp"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4852,lg=true,ma=70,mcp=1200,md=50,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc29_vmp_cha_mannfred_von_carstein_dread_abyssal"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=7008,lg=true,ma=60,mcp=2150,md=50,men=1,rcp=0,spd=6.8}
C.units["wh3_dlc29_vmp_cha_mannfred_von_carstein_hellsteed_mp"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4852,lg=true,ma=70,mcp=1400,md=50,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_cha_mannfred_von_carstein_mp"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=25,hp=4208,ma=70,mcp=950,md=50,men=1,rcp=0,spd=4}
C.units["wh3_dlc29_vmp_cha_mannfred_von_carstein_zombie_dragon_mp"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=8236,lg=true,ma=52,mcp=2150,md=50,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_cha_master_necromancer_undeath"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3688,ma=30,mcp=350,md=38,men=1,rcp=0,spd=3.4}
C.units["wh3_dlc29_vmp_cha_master_necromancer_undeath_barded_nightmare"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4160,lg=true,ma=30,mcp=600,md=38,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc29_vmp_cha_master_necromancer_undeath_corpse_cart"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=12,hp=5660,lg=true,ma=33,mcp=450,md=33,men=1,rcp=0,spd=2.3}
C.units["wh3_dlc29_vmp_cha_master_necromancer_undeath_corpse_cart_balefire"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=12,hp=5660,lg=true,ma=33,mcp=550,md=33,men=1,rcp=0,spd=2.3}
C.units["wh3_dlc29_vmp_cha_master_necromancer_undeath_corpse_cart_lodestone"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=12,hp=5660,lg=true,ma=33,mcp=650,md=33,men=1,rcp=0,spd=2.3}
C.units["wh3_dlc29_vmp_cha_master_necromancer_undeath_hellsteed"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4160,lg=true,ma=30,mcp=750,md=38,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_cha_nagash"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=9408,lg=true,ma=60,mcp=1100,md=46,men=1,rcp=0,spd=6.8}
C.units["wh3_dlc29_vmp_cha_nagash_vampire_lord"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=25,hp=4068,ma=70,mcp=900,md=50,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc29_vmp_cha_nagash_vampire_lord_barded_nightmare"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4672,lg=true,ma=70,mcp=1150,md=50,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc29_vmp_cha_nagash_vampire_lord_coven_throne"] = {a=40,ai=20,al=0,c="com",cat="war_machine",cb=30,hp=120564,ma=30,mcp=1400,md=32,men=17,rcp=0,spd=3.8}
C.units["wh3_dlc29_vmp_cha_nagash_vampire_lord_hellsteed"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4672,lg=true,ma=70,mcp=1350,md=50,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_cha_nagash_vampire_lord_zombie_dragon"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=8236,lg=true,ma=52,mcp=2050,md=50,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_cha_necromancer_undeath"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=25,mcp=200,md=30,men=1,rcp=0,spd=3.4}
C.units["wh3_dlc29_vmp_cha_necromancer_undeath_barded_nightmare"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3908,lg=true,ma=25,mcp=400,md=30,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc29_vmp_cha_necromancer_undeath_corpse_cart"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=12,hp=5660,lg=true,ma=33,mcp=400,md=33,men=1,rcp=0,spd=2.3}
C.units["wh3_dlc29_vmp_cha_necromancer_undeath_corpse_cart_balefire"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=12,hp=5660,lg=true,ma=33,mcp=500,md=33,men=1,rcp=0,spd=2.3}
C.units["wh3_dlc29_vmp_cha_necromancer_undeath_corpse_cart_lodestone"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=12,hp=5660,lg=true,ma=33,mcp=600,md=33,men=1,rcp=0,spd=2.3}
C.units["wh3_dlc29_vmp_cha_neferata"] = {a=70,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4768,ma=70,mcp=950,md=60,men=1,rcp=0,spd=5}
C.units["wh3_dlc29_vmp_cha_neferata_barded_nightmare"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=5272,lg=true,ma=70,mcp=1200,md=60,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc29_vmp_cha_neferata_barded_nightmare_mp"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=5272,lg=true,ma=70,mcp=1200,md=60,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc29_vmp_cha_neferata_coven_throne"] = {a=40,ai=20,al=0,c="com",cat="war_machine",cb=30,hp=120564,ma=30,mcp=1400,md=32,men=17,rcp=0,spd=5}
C.units["wh3_dlc29_vmp_cha_neferata_coven_throne_mp"] = {a=40,ai=20,al=0,c="com",cat="war_machine",cb=30,hp=120564,ma=30,mcp=1400,md=32,men=17,rcp=0,spd=5}
C.units["wh3_dlc29_vmp_cha_neferata_dread_abyssal"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=6536,lg=true,ma=65,mcp=2150,md=55,men=1,rcp=0,spd=6.8}
C.units["wh3_dlc29_vmp_cha_neferata_hellsteed"] = {a=70,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=5272,lg=true,ma=70,mcp=1400,md=60,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_cha_neferata_hellsteed_mp"] = {a=70,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=5272,lg=true,ma=70,mcp=1400,md=60,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_cha_neferata_mp"] = {a=70,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4768,ma=70,mcp=950,md=60,men=1,rcp=0,spd=5}
C.units["wh3_dlc29_vmp_cha_neferata_zombie_dragon"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=8236,lg=true,ma=52,mcp=2150,md=54,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_cha_neferata_zombie_dragon_mp"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=8236,lg=true,ma=52,mcp=2150,md=54,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_cha_vampire_lord_coven_throne"] = {a=40,ai=20,al=0,c="com",cat="war_machine",cb=30,hp=120564,ma=30,mcp=1400,md=32,men=17,rcp=0,spd=3.8}
C.units["wh3_dlc29_vmp_cha_walach_harkon"] = {a=90,ai=20,al=0,c="com",cat="inf_melee",cb=35,hp=5068,ma=65,mcp=1050,md=45,men=1,rcp=0,spd=3.8}
C.units["wh3_dlc29_vmp_cha_walach_harkon_barded_nightmare"] = {a=110,ai=20,al=0,c="com",cat="cavalry",cb=60,hp=5668,lg=true,ma=65,mcp=1300,md=45,men=1,rcp=0,spd=7.8}
C.units["wh3_dlc29_vmp_cha_wight_king_barded_nightmare_summoned"] = {a=110,ai=14,al=0,c="com",cat="cavalry",cb=35,hp=5260,lg=true,ma=44,mcp=750,md=48,men=1,rcp=0,spd=7.2}
C.units["wh3_dlc29_vmp_inf_grave_guard_0_the_awakening"] = {a=90,ai=8,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=9840,ma=26,mcp=850,md=36,men=120,rcp=0,spd=2.7}
C.units["wh3_dlc29_vmp_inf_grave_guard_1_the_awakening"] = {a=90,ai=13,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=9840,ma=26,mcp=950,md=26,men=120,rcp=0,spd=2.7}
C.units["wh3_dlc29_vmp_inf_grave_guard_2_the_awakening"] = {a=90,ai=0,al=19,c="inf_mel",cat="inf_melee",cb=4,hp=9840,ma=22,mcp=900,md=36,men=120,rcp=0,spd=2.7}
C.units["wh3_dlc29_vmp_inf_lahmian_handmaidens_death"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=25,hp=6656,ma=48,mcp=1100,md=56,men=32,rcp=0,spd=4.6}
C.units["wh3_dlc29_vmp_inf_lahmian_handmaidens_shadow"] = {a=50,ai=15,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=6656,ma=48,mcp=1100,md=48,men=32,rcp=0,spd=4.6}
C.units["wh3_dlc29_vmp_inf_skeleton_warriors_0_raise_legion"] = {a=20,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=19520,ma=18,mcp=150,md=22,men=320,rcp=0,spd=3.1}
C.units["wh3_dlc29_vmp_inf_skeleton_warriors_0_raise_legion_upgraded"] = {a=20,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=19520,ma=18,mcp=850,md=22,men=320,rcp=0,spd=3.1}
C.units["wh3_dlc29_vmp_inf_skeleton_warriors_0_the_awakening"] = {a=20,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=26047,ma=18,mcp=150,md=22,men=427,rcp=0,spd=3.1}
C.units["wh3_dlc29_vmp_inf_spirit_host"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=9200,ma=20,mcp=850,md=8,men=200,rcp=0,spd=4.8}
C.units["wh3_dlc29_vmp_inf_spirit_host_summoned"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=9200,ma=20,mcp=850,md=8,men=200,rcp=0,spd=4.8}
C.units["wh3_dlc29_vmp_inf_zombies_raise_legion"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=3,hp=24640,ma=5,mcp=50,md=6,men=320,rcp=0,spd=2.3}
C.units["wh3_dlc29_vmp_mon_morghast_archai"] = {a=100,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=40,hp=9096,lg=true,ma=40,mcp=900,md=45,men=12,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_mon_morghast_archai_ror"] = {a=100,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=40,hp=9096,lg=true,ma=50,mcp=900,md=56,men=12,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_mon_morghast_archai_summon"] = {a=100,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=40,hp=9096,lg=true,ma=40,mcp=900,md=45,men=12,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_mon_morghast_harbingers"] = {a=80,ai=30,al=0,c="inf_mel",cat="inf_melee",cb=45,hp=9096,lg=true,ma=45,mcp=900,md=35,men=12,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_mon_terrorgheist_summoned"] = {a=80,ai=0,al=25,c="inf_mel",cat="inf_melee",cb=40,hp=8289,lg=true,ma=41,mcp=2000,md=47,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_mon_zombie_dragon"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=8236,lg=true,ma=46,mcp=2000,md=50,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_mon_zombie_dragon_summoned"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=8236,lg=true,ma=46,mcp=2000,md=50,men=1,rcp=0,spd=6.5}
C.units["wh3_dlc29_vmp_veh_coven_throne"] = {a=40,ai=20,al=0,c="chariot",cat="war_machine",cb=35,hp=120564,lg=true,ma=38,mcp=1400,md=38,men=17,rcp=0,spd=3}
C.units["wh3_main_chd_art_hobgob_bolt_thrower"] = {a=25,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=3080,ma=10,mcp=60,md=6,men=56,rcp=540,spd=3.3}
C.units["wh3_main_chs_art_hellcannon_prologue"] = {a=30,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=1860,ma=18,mcp=96,md=14,men=12,rcp=864,spd=2.8}
C.units["wh3_main_cth_art_fire_rain_rocket_battery_0"] = {a=20,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2464,lg=true,ma=10,mcp=100,md=6,men=44,rcp=1200,spd=3}
C.units["wh3_main_cth_art_grand_cannon_0"] = {a=20,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2464,lg=true,ma=10,mcp=100,md=6,men=44,rcp=800,spd=3}
C.units["wh3_main_cth_cav_jade_lancers_0"] = {a=100,ai=0,al=0,c="cav_shk",cat="war_beast",cb=55,hp=6000,lg=true,ma=26,mcp=800,md=28,men=60,rcp=0,spd=7.8}
C.units["wh3_main_cth_cav_jade_longma_riders_0"] = {a=110,ai=0,al=0,c="cav_shk",cat="war_beast",cb=75,hp=6072,lg=true,ma=36,mcp=1350,md=34,men=24,rcp=0,spd=9.2}
C.units["wh3_main_cth_cav_peasant_horsemen_0"] = {a=15,ai=0,al=0,c="cav_mel",cat="war_beast",cb=36,hp=5040,lg=true,ma=26,mcp=550,md=26,men=60,rcp=0,spd=9}
C.units["wh3_main_cth_cha_alchemist_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=35,mcp=300,md=30,men=1,rcp=0,spd=3.4}
C.units["wh3_main_cth_cha_alchemist_1"] = {a=50,ai=0,al=0,c="com",cat="war_beast",cb=35,hp=3840,lg=true,ma=35,mcp=500,md=30,men=1,rcp=0,spd=7.8}
C.units["wh3_main_cth_cha_alchemist_2"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=1,hp=32540,lg=true,ma=20,mcp=20,md=20,men=5,rcp=880,spd=3}
C.units["wh3_main_cth_cha_astromancer_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=10,hp=3420,ma=40,mcp=300,md=25,men=1,rcp=0,spd=3.4}
C.units["wh3_main_cth_cha_astromancer_1"] = {a=50,ai=0,al=0,c="com",cat="war_beast",cb=30,hp=3840,lg=true,ma=40,mcp=500,md=25,men=1,rcp=0,spd=7.8}
C.units["wh3_main_cth_cha_astromancer_2"] = {a=80,ai=0,al=0,c="com",cat="war_machine",cb=20,hp=6608,lg=true,ma=30,mcp=850,md=20,men=1,rcp=0,spd=3}
C.units["wh3_main_cth_cha_dragon_blooded_shugengan_lord_yang_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4368,ma=55,mcp=500,md=40,men=1,rcp=0,spd=3.8}
C.units["wh3_main_cth_cha_dragon_blooded_shugengan_lord_yang_1"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4972,lg=true,ma=55,mcp=700,md=40,men=1,rcp=0,spd=7.8}
C.units["wh3_main_cth_cha_dragon_blooded_shugengan_lord_yang_2"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=70,hp=5572,lg=true,ma=55,mcp=1000,md=40,men=1,rcp=0,spd=8.2}
C.units["wh3_main_cth_cha_dragon_blooded_shugengan_lord_yin_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4368,ma=55,mcp=500,md=40,men=1,rcp=0,spd=3.8}
C.units["wh3_main_cth_cha_dragon_blooded_shugengan_lord_yin_1"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4972,lg=true,ma=55,mcp=700,md=40,men=1,rcp=0,spd=7.8}
C.units["wh3_main_cth_cha_dragon_blooded_shugengan_lord_yin_2"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=70,hp=5572,lg=true,ma=55,mcp=1000,md=40,men=1,rcp=0,spd=8.2}
C.units["wh3_main_cth_cha_iron_dragon_0"] = {a=70,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=8424,ma=55,mcp=1700,md=60,men=1,rcp=0,spd=4.6}
C.units["wh3_main_cth_cha_iron_dragon_1"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=8424,lg=true,ma=50,mcp=1700,md=50,men=1,rcp=0,spd=6.5}
C.units["wh3_main_cth_cha_lord_magistrate_0"] = {a=40,ai=0,al=0,c="com",cat="inf_melee",cb=25,hp=4568,ma=45,mcp=750,md=45,men=1,rcp=0,spd=3.4}
C.units["wh3_main_cth_cha_lord_magistrate_1"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=45,hp=5172,lg=true,ma=45,mcp=750,md=45,men=1,rcp=0,spd=7.8}
C.units["wh3_main_cth_cha_lord_magistrate_2"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=1,hp=35040,lg=true,ma=20,mcp=20,md=20,men=5,rcp=880,spd=3}
C.units["wh3_main_cth_cha_storm_dragon_0"] = {a=70,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=8424,ma=65,mcp=1700,md=55,men=1,rcp=0,spd=4.6}
C.units["wh3_main_cth_cha_storm_dragon_1"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=8424,lg=true,ma=60,mcp=1700,md=45,men=1,rcp=0,spd=6.5}
C.units["wh3_main_cth_inf_ancestral_warriors_summoned_0"] = {a=0,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=10,hp=8560,ma=34,mcp=550,md=42,men=80,rcp=0,spd=2.8}
C.units["wh3_main_cth_inf_crane_gunners_0"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=2,hp=4320,ma=12,mcp=150,md=18,men=32,rcp=1050,spd=3}
C.units["wh3_main_cth_inf_dragon_guard_0"] = {a=95,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=10,hp=8800,ma=34,mcp=1100,md=43,men=100,rcp=0,spd=2.8}
C.units["wh3_main_cth_inf_dragon_guard_crossbowmen_0"] = {a=95,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=8,hp=7040,ma=26,mcp=400,md=32,men=80,rcp=700,spd=2.8}
C.units["wh3_main_cth_inf_grenadiers"] = {a=40,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=6210,ma=24,mcp=120,md=24,men=90,rcp=380,spd=3.3}
C.units["wh3_main_cth_inf_iron_hail_gunners_0"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=6210,ma=16,mcp=80,md=16,men=90,rcp=420,spd=3.3}
C.units["wh3_main_cth_inf_jade_warrior_crossbowmen_0"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=6210,ma=16,mcp=200,md=16,men=90,rcp=400,spd=3}
C.units["wh3_main_cth_inf_jade_warrior_crossbowmen_1"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=6210,ma=16,mcp=200,md=24,men=90,rcp=450,spd=3}
C.units["wh3_main_cth_inf_jade_warriors_0"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=8280,ma=24,mcp=550,md=34,men=120,rcp=0,spd=2.8}
C.units["wh3_main_cth_inf_jade_warriors_1"] = {a=70,ai=0,al=16,c="inf_mel",cat="inf_melee",cb=8,hp=8280,ma=22,mcp=650,md=38,men=120,rcp=0,spd=2.8}
C.units["wh3_main_cth_inf_peasant_archers_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=3,hp=6480,ma=10,mcp=45,md=13,men=120,rcp=405,spd=3.3}
C.units["wh3_main_cth_inf_peasant_spearmen_1"] = {a=15,ai=0,al=17,c="inf_mel",cat="inf_melee",cb=3,hp=8960,ma=20,mcp=350,md=24,men=160,rcp=0,spd=3}
C.units["wh3_main_cth_mon_terracotta_sentinel_0"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=12620,lg=true,ma=65,mcp=1600,md=30,men=1,rcp=0,spd=4.8}
C.units["wh3_main_cth_veh_sky_junk_0"] = {a=80,ai=0,al=0,c="inf_mis",cat="war_beast",cb=1,hp=50040,lg=true,ma=8,mcp=100,md=8,men=5,rcp=1400,spd=3}
C.units["wh3_main_cth_veh_sky_lantern_0"] = {a=30,ai=0,al=0,c="inf_mis",cat="war_beast",cb=1,hp=30040,lg=true,ma=8,mcp=20,md=8,men=5,rcp=880,spd=3}
C.units["wh3_main_cth_veh_war_compass_0"] = {a=80,ai=0,al=0,c="chariot",cat="war_machine",cb=20,hp=6192,lg=true,ma=30,mcp=800,md=20,men=1,rcp=0,spd=3}
C.units["wh3_main_dae_cha_be_lakor_0"] = {a=45,ai=0,al=0,c="com",cat="inf_melee",cb=55,hp=9304,lg=true,ma=70,mcp=2600,md=55,men=1,rcp=0,spd=7}
C.units["wh3_main_dae_cha_daemon_prince_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=8588,lg=true,ma=55,mcp=1800,md=45,men=1,rcp=0,spd=6.5}
C.units["wh3_main_dae_cha_daemon_prince_MP"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=8288,lg=true,ma=50,mcp=1800,md=45,men=1,rcp=0,spd=6.5}
C.units["wh3_main_dae_cha_daemon_prince_khorne_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=8588,lg=true,ma=25,mcp=2600,md=20,men=1,rcp=0,spd=6.5}
C.units["wh3_main_dae_cha_daemon_prince_khorne_MP"] = {a=90,ai=0,al=25,c="com",cat="inf_melee",cb=50,hp=8588,lg=true,ma=50,mcp=2200,md=50,men=1,rcp=0,spd=6.5}
C.units["wh3_main_dae_cha_daemon_prince_nurgle_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=8588,lg=true,ma=25,mcp=2200,md=20,men=1,rcp=0,spd=6.5}
C.units["wh3_main_dae_cha_daemon_prince_nurgle_MP"] = {a=60,ai=25,al=0,c="com",cat="inf_melee",cb=30,hp=9588,lg=true,ma=45,mcp=2000,md=55,men=1,rcp=0,spd=6.5}
C.units["wh3_main_dae_cha_daemon_prince_slaanesh_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=8588,lg=true,ma=25,mcp=2200,md=20,men=1,rcp=0,spd=6.5}
C.units["wh3_main_dae_cha_daemon_prince_slaanesh_MP"] = {a=50,ai=0,al=25,c="com",cat="inf_melee",cb=35,hp=7828,lg=true,ma=50,mcp=1850,md=60,men=1,rcp=0,spd=6.5}
C.units["wh3_main_dae_cha_daemon_prince_tzeentch_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=8588,lg=true,ma=25,mcp=2200,md=20,men=1,rcp=0,spd=6.5}
C.units["wh3_main_dae_cha_daemon_prince_tzeentch_MP"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=7728,lg=true,ma=45,mcp=1850,md=45,men=1,rcp=0,spd=6.5}
C.units["wh3_main_dae_inf_chaos_furies_0"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=5280,ma=36,mcp=600,md=18,men=60,rcp=0,spd=10}
C.units["wh3_main_dae_inf_chaos_furies_summoned_0"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=5280,ma=36,mcp=300,md=18,men=60,rcp=0,spd=10}
C.units["wh3_main_grn_inf_goblins_sword_shield"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=8960,ma=24,mcp=300,md=24,men=160,rcp=0,spd=3.3}
C.units["wh3_main_grn_inf_orc_boyz_spear_shield"] = {a=30,ai=0,al=14,c="inf_mel",cat="inf_melee",cb=12,hp=9720,ma=20,mcp=450,md=28,men=120,rcp=0,spd=3.1}
C.units["wh3_main_ie_nor_cha_exalted_great_unclean_one_burplesmirk_spewpit"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=13620,lg=true,ma=60,mcp=2200,md=50,men=1,rcp=0,spd=3.6}
C.units["wh3_main_ie_nor_cha_exalted_hero_mkho_killgore_slaymaim"] = {a=130,ai=20,al=0,c="com",cat="cavalry",cb=70,hp=7508,lg=true,ma=65,mcp=1400,md=45,men=1,rcp=0,spd=7}
C.units["wh3_main_kho_cav_bloodcrushers_0"] = {a=100,ai=18,al=0,c="cav_shk",cat="cavalry",cb=55,hp=7648,lg=true,ma=40,mcp=1500,md=34,men=32,rcp=0,spd=7}
C.units["wh3_main_kho_cav_gorebeast_chariot"] = {a=130,ai=30,al=0,c="chariot",cat="war_machine",cb=80,hp=12864,lg=true,ma=35,mcp=1300,md=27,men=8,rcp=0,spd=6.6}
C.units["wh3_main_kho_cav_skullcrushers_0"] = {a=130,ai=0,al=10,c="cav_shk",cat="cavalry",cb=70,hp=8096,lg=true,ma=44,mcp=1700,md=42,men=32,rcp=0,spd=7}
C.units["wh3_main_kho_cha_bloodreaper_0"] = {a=40,ai=20,al=0,c="com",cat="inf_melee",cb=45,hp=4048,ma=60,mcp=800,md=35,men=1,rcp=0,spd=4.6}
C.units["wh3_main_kho_cha_bloodreaper_1"] = {a=100,ai=20,al=0,c="com",cat="cavalry",cb=65,hp=4648,lg=true,ma=60,mcp=1150,md=35,men=1,rcp=0,spd=7}
C.units["wh3_main_kho_cha_bloodreaper_2"] = {a=110,ai=25,al=0,c="com",cat="war_beast",cb=50,hp=5148,lg=true,ma=35,mcp=1600,md=20,men=1,rcp=0,spd=6.8}
C.units["wh3_main_kho_cha_cultist_0"] = {a=75,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=4068,ma=55,mcp=600,md=40,men=1,rcp=0,spd=4.4}
C.units["wh3_main_kho_cha_cultist_1"] = {a=95,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=4468,lg=true,ma=55,mcp=800,md=40,men=1,rcp=0,spd=7.8}
C.units["wh3_main_kho_cha_exalted_bloodthirster_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=55,hp=8588,lg=true,ma=70,mcp=2300,md=46,men=1,rcp=0,spd=6.4}
C.units["wh3_main_kho_cha_herald_of_khorne_0"] = {a=40,ai=20,al=0,c="com",cat="inf_melee",cb=50,hp=4448,ma=65,mcp=900,md=40,men=1,rcp=0,spd=4.8}
C.units["wh3_main_kho_cha_herald_of_khorne_1"] = {a=100,ai=20,al=0,c="com",cat="cavalry",cb=70,hp=5048,lg=true,ma=65,mcp=1250,md=40,men=1,rcp=0,spd=7}
C.units["wh3_main_kho_cha_herald_of_khorne_2"] = {a=110,ai=25,al=0,c="com",cat="war_beast",cb=55,hp=5548,lg=true,ma=40,mcp=1400,md=20,men=1,rcp=0,spd=6.8}
C.units["wh3_main_kho_cha_skarbrand_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=65,hp=9448,lg=true,ma=75,mcp=2600,md=50,men=1,rcp=0,spd=8}
C.units["wh3_main_kho_inf_bloodletters_0"] = {a=35,ai=9,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=8000,ma=34,mcp=800,md=26,men=100,rcp=0,spd=3.8}
C.units["wh3_main_kho_inf_bloodletters_1"] = {a=40,ai=13,al=0,c="inf_mel",cat="inf_melee",cb=36,hp=9200,ma=42,mcp=1200,md=34,men=100,rcp=0,spd=3.8}
C.units["wh3_main_kho_inf_bloodletters_summoned_0"] = {a=35,ai=9,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=8000,ma=34,mcp=400,md=26,men=100,rcp=0,spd=3.8}
C.units["wh3_main_kho_inf_chaos_furies_0"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=5280,ma=36,mcp=650,md=18,men=60,rcp=0,spd=10}
C.units["wh3_main_kho_inf_chaos_warhounds_0"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=6080,ma=26,mcp=450,md=12,men=80,rcp=0,spd=9.5}
C.units["wh3_main_kho_inf_chaos_warriors_0"] = {a=110,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=9000,ma=36,mcp=800,md=39,men=100,rcp=0,spd=2.8}
C.units["wh3_main_kho_inf_chaos_warriors_1"] = {a=110,ai=0,al=19,c="inf_mel",cat="inf_melee",cb=10,hp=9000,ma=30,mcp=900,md=37,men=100,rcp=0,spd=2.8}
C.units["wh3_main_kho_inf_chaos_warriors_2"] = {a=110,ai=5,al=0,c="inf_mel",cat="inf_melee",cb=32,hp=9000,ma=36,mcp=950,md=33,men=100,rcp=0,spd=2.8}
C.units["wh3_main_kho_inf_flesh_hounds_of_khorne_0"] = {a=30,ai=0,al=0,c="spcl",cat="inf_melee",cb=46,hp=6176,ma=36,mcp=750,md=26,men=32,rcp=0,spd=9.5}
C.units["wh3_main_kho_mon_bloodthirster_0"] = {a=70,ai=0,al=35,c="inf_mel",cat="inf_melee",cb=55,hp=7732,lg=true,ma=60,mcp=2000,md=44,men=1,rcp=0,spd=5.5}
C.units["wh3_main_kho_mon_bloodthirster_summoned_0"] = {a=70,ai=0,al=35,c="inf_mel",cat="inf_melee",cb=55,hp=7732,lg=true,ma=60,mcp=1000,md=44,men=1,rcp=0,spd=5.5}
C.units["wh3_main_kho_mon_khornataurs_0"] = {a=70,ai=18,al=0,c="inf_mel",cat="inf_melee",cb=34,hp=8704,lg=true,ma=34,mcp=1350,md=27,men=16,rcp=0,spd=5.6}
C.units["wh3_main_kho_mon_khornataurs_1"] = {a=70,ai=0,al=25,c="inf_mel",cat="inf_melee",cb=40,hp=8704,lg=true,ma=34,mcp=1350,md=27,men=16,rcp=0,spd=5.6}
C.units["wh3_main_kho_mon_soul_grinder_0"] = {a=90,ai=0,al=0,c="spcl",cat="inf_ranged",cb=50,hp=8188,lg=true,ma=55,mcp=1450,md=35,men=1,rcp=300,spd=7.5}
C.units["wh3_main_kho_mon_spawn_of_khorne_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=8768,lg=true,ma=36,mcp=1050,md=23,men=16,rcp=0,spd=4.2}
C.units["wh3_main_kho_veh_blood_shrine_0"] = {a=110,ai=25,al=0,c="chariot",cat="war_beast",cb=45,hp=4688,lg=true,ma=34,mcp=950,md=18,men=1,rcp=0,spd=6.8}
C.units["wh3_main_kho_veh_skullcannon_0"] = {a=110,ai=25,al=0,c="chariot",cat="war_beast",cb=45,hp=4692,lg=true,ma=30,mcp=700,md=18,men=1,rcp=400,spd=6.8}
C.units["wh3_main_ksl_cav_gryphon_legion_0"] = {a=110,ai=0,al=0,c="cav_shk",cat="war_beast",cb=72,hp=6480,lg=true,ma=34,mcp=1250,md=32,men=60,rcp=0,spd=7.5}
C.units["wh3_main_ksl_cav_horse_archers_0"] = {a=25,ai=0,al=0,c="cav_mis",cat="war_beast",cb=30,hp=4980,lg=true,ma=26,mcp=300,md=24,men=60,rcp=300,spd=9.2}
C.units["wh3_main_ksl_cav_kossovite_dervishes_0"] = {a=25,ai=0,al=0,c="cav_mel",cat="war_beast",cb=40,hp=5160,lg=true,ma=28,mcp=525,md=24,men=60,rcp=0,spd=9.2}
C.units["wh3_main_ksl_cav_war_bear_riders_1"] = {a=100,ai=0,al=23,c="cav_mel",cat="war_beast",cb=44,hp=8128,lg=true,ma=46,mcp=1600,md=34,men=16,rcp=0,spd=7.5}
C.units["wh3_main_ksl_cav_winged_lancers_0"] = {a=80,ai=0,al=0,c="cav_shk",cat="war_beast",cb=70,hp=6000,lg=true,ma=26,mcp=1000,md=26,men=60,rcp=0,spd=8.4}
C.units["wh3_main_ksl_cha_ataman"] = {a=95,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4068,ma=40,mcp=500,md=60,men=1,rcp=200,spd=3.4}
C.units["wh3_main_ksl_cha_boris_0"] = {a=85,ai=0,al=25,c="com",cat="inf_melee",cb=40,hp=4672,ma=50,mcp=1100,md=55,men=1,rcp=0,spd=3.4}
C.units["wh3_main_ksl_cha_boris_1"] = {a=115,ai=0,al=25,c="com",cat="war_beast",cb=65,hp=5072,lg=true,ma=50,mcp=1300,md=55,men=1,rcp=0,spd=7.8}
C.units["wh3_main_ksl_cha_boris_2"] = {a=115,ai=0,al=25,c="com",cat="war_beast",cb=65,hp=6372,lg=true,ma=50,mcp=1500,md=55,men=1,rcp=0,spd=8.2}
C.units["wh3_main_ksl_cha_boyar_0"] = {a=85,ai=15,al=0,c="com",cat="inf_melee",cb=45,hp=4068,ma=55,mcp=700,md=45,men=1,rcp=0,spd=3.4}
C.units["wh3_main_ksl_cha_boyar_1"] = {a=115,ai=15,al=0,c="com",cat="war_beast",cb=65,hp=4672,lg=true,ma=55,mcp=900,md=45,men=1,rcp=0,spd=7.8}
C.units["wh3_main_ksl_cha_boyar_2"] = {a=115,ai=20,al=0,c="com",cat="war_beast",cb=65,hp=5308,lg=true,ma=55,mcp=1200,md=45,men=1,rcp=0,spd=7.5}
C.units["wh3_main_ksl_cha_frost_maiden_ice_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=35,mcp=300,md=30,men=1,rcp=0,spd=4.6}
C.units["wh3_main_ksl_cha_frost_maiden_ice_1"] = {a=45,ai=0,al=0,c="com",cat="war_beast",cb=35,hp=3820,lg=true,ma=35,mcp=500,md=30,men=1,rcp=0,spd=7.8}
C.units["wh3_main_ksl_cha_frost_maiden_ice_2"] = {a=75,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4420,lg=true,ma=45,mcp=850,md=30,men=1,rcp=0,spd=7.5}
C.units["wh3_main_ksl_cha_frost_maiden_tempest_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=35,mcp=300,md=30,men=1,rcp=0,spd=4.6}
C.units["wh3_main_ksl_cha_frost_maiden_tempest_1"] = {a=45,ai=0,al=0,c="com",cat="war_beast",cb=35,hp=3820,lg=true,ma=35,mcp=500,md=30,men=1,rcp=0,spd=7.8}
C.units["wh3_main_ksl_cha_frost_maiden_tempest_2"] = {a=75,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4420,lg=true,ma=45,mcp=850,md=30,men=1,rcp=0,spd=7.5}
C.units["wh3_main_ksl_cha_ice_witch_ice_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3688,ma=40,mcp=400,md=35,men=1,rcp=0,spd=3.8}
C.units["wh3_main_ksl_cha_ice_witch_ice_1"] = {a=45,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4088,lg=true,ma=40,mcp=600,md=35,men=1,rcp=0,spd=7.8}
C.units["wh3_main_ksl_cha_ice_witch_ice_2"] = {a=75,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4688,lg=true,ma=50,mcp=900,md=35,men=1,rcp=0,spd=7.5}
C.units["wh3_main_ksl_cha_ice_witch_tempest_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3688,ma=40,mcp=400,md=35,men=1,rcp=0,spd=3.8}
C.units["wh3_main_ksl_cha_ice_witch_tempest_1"] = {a=45,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4088,lg=true,ma=40,mcp=600,md=35,men=1,rcp=0,spd=7.8}
C.units["wh3_main_ksl_cha_ice_witch_tempest_2"] = {a=75,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4688,lg=true,ma=50,mcp=900,md=35,men=1,rcp=0,spd=7.5}
C.units["wh3_main_ksl_cha_katarin_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3888,ma=50,mcp=550,md=45,men=1,rcp=0,spd=4.6}
C.units["wh3_main_ksl_cha_katarin_1"] = {a=45,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4288,lg=true,ma=50,mcp=750,md=45,men=1,rcp=0,spd=7.8}
C.units["wh3_main_ksl_cha_katarin_2"] = {a=75,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5088,lg=true,ma=50,mcp=1000,md=45,men=1,rcp=0,spd=7.5}
C.units["wh3_main_ksl_cha_kostaltyn_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=5072,ma=60,mcp=900,md=40,men=1,rcp=0,spd=3.4}
C.units["wh3_main_ksl_cha_kostaltyn_1"] = {a=50,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5708,lg=true,ma=60,mcp=1100,md=40,men=1,rcp=0,spd=7.8}
C.units["wh3_main_ksl_cha_kostaltyn_2"] = {a=75,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=6108,lg=true,ma=60,mcp=1300,md=40,men=1,rcp=0,spd=7.5}
C.units["wh3_main_ksl_cha_patriarch_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3420,ma=35,mcp=350,md=30,men=1,rcp=0,spd=3.4}
C.units["wh3_main_ksl_cha_patriarch_1"] = {a=50,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=3820,lg=true,ma=35,mcp=550,md=30,men=1,rcp=0,spd=7.8}
C.units["wh3_main_ksl_cha_patriarch_2"] = {a=75,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4420,lg=true,ma=45,mcp=850,md=30,men=1,rcp=0,spd=7.5}
C.units["wh3_main_ksl_inf_armoured_kossars_0"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=8200,ma=32,mcp=500,md=40,men=100,rcp=150,spd=3}
C.units["wh3_main_ksl_inf_armoured_kossars_1"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=22,hp=8200,ma=34,mcp=550,md=34,men=100,rcp=150,spd=3}
C.units["wh3_main_ksl_inf_ice_guard_0"] = {a=50,ai=0,al=17,c="inf_mis",cat="inf_ranged",cb=10,hp=7040,ma=32,mcp=550,md=40,men=80,rcp=700,spd=3.6}
C.units["wh3_main_ksl_inf_ice_guard_1"] = {a=50,ai=9,al=0,c="inf_mis",cat="inf_ranged",cb=16,hp=7040,ma=42,mcp=450,md=36,men=80,rcp=700,spd=3.6}
C.units["wh3_main_ksl_inf_kossars_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=6390,ma=28,mcp=150,md=26,men=90,rcp=300,spd=3.3}
C.units["wh3_main_ksl_inf_kossars_1"] = {a=15,ai=0,al=15,c="inf_mis",cat="inf_ranged",cb=4,hp=6390,ma=20,mcp=200,md=30,men=90,rcp=300,spd=3.3}
C.units["wh3_main_ksl_inf_kossars_tutorial_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=6390,ma=28,mcp=450,md=26,men=90,rcp=0,spd=3.3}
C.units["wh3_main_ksl_inf_kossars_tutorial_1"] = {a=80,ai=0,al=15,c="inf_spr",cat="inf_melee",cb=14,hp=7380,ma=30,mcp=500,md=38,men=90,rcp=0,spd=3}
C.units["wh3_main_ksl_inf_streltsi_0"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=16,hp=7470,ma=32,mcp=350,md=26,men=90,rcp=500,spd=3}
C.units["wh3_main_ksl_inf_tzar_guard_0"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8800,ma=36,mcp=1000,md=50,men=80,rcp=0,spd=3}
C.units["wh3_main_ksl_inf_tzar_guard_1"] = {a=90,ai=14,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=8800,ma=40,mcp=1100,md=36,men=80,rcp=0,spd=3}
C.units["wh3_main_ksl_mon_elemental_bear_0"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=25,hp=10988,lg=true,ma=50,mcp=1800,md=34,men=1,rcp=0,spd=4.8}
C.units["wh3_main_ksl_mon_elemental_bear_summoned_0"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=25,hp=10988,lg=true,ma=50,mcp=1100,md=34,men=1,rcp=0,spd=4.8}
C.units["wh3_main_ksl_mon_snow_leopard_0"] = {a=20,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=55,hp=3180,ma=50,mcp=650,md=38,men=1,rcp=0,spd=10}
C.units["wh3_main_ksl_mon_snow_leopard_summoned_0"] = {a=20,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=55,hp=3180,ma=50,mcp=325,md=38,men=1,rcp=0,spd=10}
C.units["wh3_main_ksl_mon_snow_leopard_summoned_1"] = {a=20,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=55,hp=3480,ma=55,mcp=400,md=43,men=1,rcp=0,spd=10}
C.units["wh3_main_ksl_mon_snow_leopard_summoned_2"] = {a=20,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=55,hp=3780,ma=60,mcp=475,md=48,men=1,rcp=0,spd=10}
C.units["wh3_main_ksl_veh_heavy_war_sled_0"] = {a=110,ai=20,al=0,c="chariot",cat="war_machine",cb=46,hp=32160,lg=true,ma=38,mcp=1000,md=26,men=20,rcp=450,spd=6.6}
C.units["wh3_main_ksl_veh_light_war_sled_0"] = {a=50,ai=20,al=0,c="chariot",cat="war_machine",cb=38,hp=29160,lg=true,ma=34,mcp=600,md=26,men=20,rcp=450,spd=7.5}
C.units["wh3_main_ksl_veh_little_grom_0"] = {a=105,ai=20,al=0,c="chariot",cat="war_machine",cb=25,hp=10376,lg=true,ma=40,mcp=500,md=28,men=2,rcp=900,spd=3.5}
C.units["wh3_main_monster_feral_bears"] = {a=15,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=26,hp=7328,ma=50,mcp=650,md=40,men=16,rcp=0,spd=7.5}
C.units["wh3_main_monster_feral_ice_bears"] = {a=15,ai=0,al=35,c="inf_mel",cat="inf_melee",cb=32,hp=6696,ma=57,mcp=650,md=40,men=12,rcp=0,spd=7.5}
C.units["wh3_main_nur_cav_plague_drones_0"] = {a=50,ai=0,al=0,c="cav_mel",cat="cavalry",cb=32,hp=7032,lg=true,ma=36,mcp=1300,md=36,men=12,rcp=0,spd=7}
C.units["wh3_main_nur_cav_plague_drones_1"] = {a=50,ai=0,al=0,c="cav_mis",cat="cavalry",cb=32,hp=7032,lg=true,ma=36,mcp=1300,md=36,men=12,rcp=300,spd=7}
C.units["wh3_main_nur_cav_pox_riders_of_nurgle_0"] = {a=50,ai=12,al=0,c="cav_mel",cat="cavalry",cb=36,hp=7680,lg=true,ma=36,mcp=1050,md=36,men=24,rcp=0,spd=6.5}
C.units["wh3_main_nur_cha_cultist_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=4668,ma=50,mcp=500,md=35,men=1,rcp=0,spd=3.4}
C.units["wh3_main_nur_cha_cultist_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=5068,lg=true,ma=50,mcp=700,md=35,men=1,rcp=0,spd=7.8}
C.units["wh3_main_nur_cha_exalted_great_unclean_one_death_0"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=13620,lg=true,ma=60,mcp=2200,md=50,men=1,rcp=0,spd=3.6}
C.units["wh3_main_nur_cha_exalted_great_unclean_one_nurgle_0"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=13620,lg=true,ma=60,mcp=2200,md=50,men=1,rcp=0,spd=3.6}
C.units["wh3_main_nur_cha_herald_of_nurgle_death_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=4708,ma=45,mcp=1100,md=52,men=1,rcp=0,spd=2.7}
C.units["wh3_main_nur_cha_herald_of_nurgle_death_1"] = {a=80,ai=0,al=0,c="com",cat="cavalry",cb=20,hp=6708,lg=true,ma=45,mcp=1300,md=52,men=1,rcp=0,spd=2.8}
C.units["wh3_main_nur_cha_herald_of_nurgle_death_2"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=28,hp=5508,lg=true,ma=45,mcp=1600,md=52,men=1,rcp=0,spd=7}
C.units["wh3_main_nur_cha_herald_of_nurgle_nurgle_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=4708,ma=45,mcp=1100,md=52,men=1,rcp=0,spd=2.7}
C.units["wh3_main_nur_cha_herald_of_nurgle_nurgle_1"] = {a=80,ai=0,al=0,c="com",cat="cavalry",cb=20,hp=6708,lg=true,ma=45,mcp=1300,md=52,men=1,rcp=0,spd=2.8}
C.units["wh3_main_nur_cha_herald_of_nurgle_nurgle_2"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=28,hp=5508,lg=true,ma=45,mcp=1600,md=52,men=1,rcp=0,spd=7}
C.units["wh3_main_nur_cha_ku_gath_plaguefather_0"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=12,hp=14832,lg=true,ma=50,mcp=1700,md=55,men=1,rcp=700,spd=2.8}
C.units["wh3_main_nur_cha_plagueridden_death_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=4308,ma=40,mcp=750,md=47,men=1,rcp=0,spd=2.7}
C.units["wh3_main_nur_cha_plagueridden_death_1"] = {a=80,ai=0,al=0,c="com",cat="cavalry",cb=20,hp=6308,lg=true,ma=40,mcp=950,md=47,men=1,rcp=0,spd=2.8}
C.units["wh3_main_nur_cha_plagueridden_death_2"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=28,hp=5108,lg=true,ma=40,mcp=1250,md=47,men=1,rcp=0,spd=7}
C.units["wh3_main_nur_cha_plagueridden_nurgle_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=4308,ma=40,mcp=750,md=47,men=1,rcp=0,spd=2.7}
C.units["wh3_main_nur_cha_plagueridden_nurgle_1"] = {a=80,ai=0,al=0,c="com",cat="cavalry",cb=20,hp=6308,lg=true,ma=40,mcp=950,md=47,men=1,rcp=0,spd=2.8}
C.units["wh3_main_nur_cha_plagueridden_nurgle_2"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=28,hp=5108,lg=true,ma=40,mcp=1250,md=47,men=1,rcp=0,spd=7}
C.units["wh3_main_nur_inf_chaos_furies_0"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=5280,ma=36,mcp=650,md=18,men=60,rcp=0,spd=10}
C.units["wh3_main_nur_inf_forsaken_0"] = {a=85,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=36,hp=8720,ma=27,mcp=850,md=25,men=80,rcp=0,spd=4.6}
C.units["wh3_main_nur_inf_nurglings_0"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=14,hp=9300,ma=26,mcp=350,md=24,men=60,rcp=0,spd=3.4}
C.units["wh3_main_nur_inf_nurglings_summoned_0"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=14,hp=4650,ma=26,mcp=175,md=24,men=30,rcp=0,spd=3.4}
C.units["wh3_main_nur_inf_plaguebearers_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=11600,ma=30,mcp=750,md=32,men=100,rcp=0,spd=2.7}
C.units["wh3_main_nur_inf_plaguebearers_1"] = {a=35,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=13200,ma=38,mcp=1050,md=40,men=100,rcp=200,spd=2.7}
C.units["wh3_main_nur_inf_plaguebearers_1_summoned"] = {a=35,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=13200,ma=38,mcp=1050,md=40,men=100,rcp=200,spd=2.7}
C.units["wh3_main_nur_inf_plaguebearers_summoned_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=11600,ma=30,mcp=750,md=32,men=100,rcp=0,spd=2.7}
C.units["wh3_main_nur_mon_beast_of_nurgle_0"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=6388,lg=true,ma=42,mcp=600,md=34,men=1,rcp=0,spd=4.5}
C.units["wh3_main_nur_mon_great_unclean_one_0"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=12360,lg=true,ma=55,mcp=2000,md=45,men=1,rcp=0,spd=3.6}
C.units["wh3_main_nur_mon_great_unclean_one_summoned_0"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=12360,lg=true,ma=55,mcp=2000,md=45,men=1,rcp=0,spd=3.6}
C.units["wh3_main_nur_mon_plague_toads_0"] = {a=50,ai=7,al=0,c="inf_mel",cat="inf_melee",cb=36,hp=6192,ma=30,mcp=650,md=24,men=24,rcp=0,spd=6.5}
C.units["wh3_main_nur_mon_rot_flies_0"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=32,hp=6192,ma=34,mcp=900,md=24,men=12,rcp=0,spd=7}
C.units["wh3_main_nur_mon_soul_grinder_0"] = {a=90,ai=0,al=0,c="spcl",cat="inf_ranged",cb=30,hp=8188,lg=true,ma=42,mcp=1000,md=35,men=1,rcp=800,spd=7.5}
C.units["wh3_main_nur_mon_spawn_of_nurgle_0"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=9632,lg=true,ma=31,mcp=1050,md=33,men=16,rcp=0,spd=4.2}
C.units["wh3_main_nur_mon_spawn_of_nurgle_0_summoned"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=9632,lg=true,ma=31,mcp=1000,md=33,men=16,rcp=0,spd=4.2}
C.units["wh3_main_ogr_cav_crushers_0"] = {a=130,ai=0,al=0,c="inf_mel",cat="cavalry",cb=80,hp=8784,lg=true,ma=44,mcp=1800,md=38,men=12,rcp=0,spd=7.5}
C.units["wh3_main_ogr_cav_crushers_1"] = {a=120,ai=0,al=30,c="inf_mel",cat="cavalry",cb=80,hp=8784,lg=true,ma=44,mcp=1900,md=30,men=12,rcp=0,spd=7.5}
C.units["wh3_main_ogr_cav_mournfang_cavalry_0"] = {a=90,ai=0,al=0,c="inf_mel",cat="cavalry",cb=68,hp=7680,lg=true,ma=36,mcp=1100,md=30,men=12,rcp=0,spd=7.5}
C.units["wh3_main_ogr_cav_mournfang_cavalry_1"] = {a=100,ai=0,al=0,c="inf_mel",cat="cavalry",cb=68,hp=7680,lg=true,ma=36,mcp=1250,md=38,men=12,rcp=0,spd=7.5}
C.units["wh3_main_ogr_cav_mournfang_cavalry_2"] = {a=90,ai=0,al=30,c="inf_mel",cat="cavalry",cb=68,hp=7680,lg=true,ma=36,mcp=1350,md=30,men=12,rcp=0,spd=7.5}
C.units["wh3_main_ogr_cha_butcher_beasts_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=44,hp=5508,lg=true,ma=40,mcp=550,md=40,men=1,rcp=0,spd=5.4}
C.units["wh3_main_ogr_cha_butcher_great_maw_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=44,hp=5508,lg=true,ma=40,mcp=550,md=40,men=1,rcp=0,spd=5.4}
C.units["wh3_main_ogr_cha_firebelly_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=5508,lg=true,ma=48,mcp=750,md=32,men=1,rcp=0,spd=5.4}
C.units["wh3_main_ogr_cha_greasus_goldtooth_0"] = {a=55,ai=0,al=25,c="com",cat="inf_melee",cb=30,hp=8488,lg=true,ma=65,mcp=1400,md=38,men=1,rcp=0,spd=4}
C.units["wh3_main_ogr_cha_hunter_0"] = {a=30,ai=0,al=25,c="com",cat="inf_melee",cb=50,hp=5508,lg=true,ma=48,mcp=700,md=46,men=1,rcp=400,spd=5.7}
C.units["wh3_main_ogr_cha_hunter_1"] = {a=110,ai=20,al=0,c="com",cat="war_beast",cb=70,hp=10062,lg=true,ma=44,mcp=1800,md=32,men=1,rcp=400,spd=6.6}
C.units["wh3_main_ogr_cha_skrag_the_slaughterer_0"] = {a=40,ai=20,al=0,c="com",cat="inf_melee",cb=50,hp=7208,lg=true,ma=50,mcp=900,md=40,men=1,rcp=0,spd=4.8}
C.units["wh3_main_ogr_cha_slaughtermaster_beasts_0"] = {a=40,ai=0,al=0,c="com",cat="inf_melee",cb=44,hp=6508,lg=true,ma=40,mcp=800,md=48,men=1,rcp=0,spd=5.4}
C.units["wh3_main_ogr_cha_slaughtermaster_great_maw_0"] = {a=40,ai=0,al=0,c="com",cat="inf_melee",cb=44,hp=6508,lg=true,ma=40,mcp=800,md=48,men=1,rcp=0,spd=5.4}
C.units["wh3_main_ogr_cha_tyrant_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=7008,lg=true,ma=63,mcp=1350,md=40,men=1,rcp=0,spd=5.4}
C.units["wh3_main_ogr_feral_manticore_summoned"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=5103,lg=true,ma=40,mcp=400,md=34,men=1,rcp=0,spd=7}
C.units["wh3_main_ogr_inf_gnoblars_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=8960,ma=18,mcp=200,md=26,men=160,rcp=0,spd=3.5}
C.units["wh3_main_ogr_inf_gnoblars_1"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=8960,ma=18,mcp=250,md=26,men=160,rcp=250,spd=3.5}
C.units["wh3_main_ogr_inf_gnoblars_flingers"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=5,hp=6720,ma=14,mcp=150,md=12,men=120,rcp=350,spd=3.5}
C.units["wh3_main_ogr_inf_ironguts_0"] = {a=100,ai=5,al=0,c="inf_mel",cat="inf_melee",cb=46,hp=9280,lg=true,ma=36,mcp=1100,md=38,men=16,rcp=0,spd=5.4}
C.units["wh3_main_ogr_inf_leadbelchers_0"] = {a=50,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=24,hp=4928,lg=true,ma=26,mcp=400,md=26,men=16,rcp=600,spd=4.2}
C.units["wh3_main_ogr_inf_maneaters_0"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=9280,lg=true,ma=40,mcp=1200,md=42,men=16,rcp=0,spd=5.4}
C.units["wh3_main_ogr_inf_maneaters_1"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=9280,lg=true,ma=40,mcp=1300,md=50,men=16,rcp=0,spd=5.4}
C.units["wh3_main_ogr_inf_maneaters_2"] = {a=40,ai=0,al=26,c="inf_mel",cat="inf_melee",cb=54,hp=9280,lg=true,ma=40,mcp=1400,md=42,men=16,rcp=0,spd=5.4}
C.units["wh3_main_ogr_inf_maneaters_3"] = {a=40,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=50,hp=9280,lg=true,ma=40,mcp=1000,md=42,men=16,rcp=400,spd=5.4}
C.units["wh3_main_ogr_inf_maneaters_summoned_0"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=9280,lg=true,ma=40,mcp=600,md=42,men=16,rcp=0,spd=5.4}
C.units["wh3_main_ogr_inf_ogres_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=7992,lg=true,ma=28,mcp=550,md=26,men=24,rcp=0,spd=5.4}
C.units["wh3_main_ogr_inf_ogres_1"] = {a=30,ai=12,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=7992,lg=true,ma=28,mcp=650,md=26,men=24,rcp=0,spd=5.4}
C.units["wh3_main_ogr_inf_ogres_2"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=7992,lg=true,ma=28,mcp=650,md=34,men=24,rcp=0,spd=5.4}
C.units["wh3_main_ogr_mon_giant_0"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=12620,lg=true,ma=65,mcp=1500,md=30,men=1,rcp=0,spd=3.9}
C.units["wh3_main_ogr_mon_gorgers_0"] = {a=15,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=42,hp=7848,lg=true,ma=44,mcp=1100,md=28,men=12,rcp=0,spd=5.4}
C.units["wh3_main_ogr_mon_gorgers_summoned_0"] = {a=15,ai=20,al=0,c="inf_mel",cat="inf_melee",cb=42,hp=7848,lg=true,ma=44,mcp=550,md=28,men=12,rcp=0,spd=5.4}
C.units["wh3_main_ogr_mon_sabretusk_pack_0"] = {a=30,ai=0,al=0,c="spcl",cat="inf_melee",cb=36,hp=5792,ma=38,mcp=500,md=28,men=32,rcp=0,spd=9.5}
C.units["wh3_main_ogr_mon_stonehorn_0"] = {a=110,ai=20,al=0,c="inf_mel",cat="war_beast",cb=70,hp=9608,lg=true,ma=44,mcp=1800,md=32,men=1,rcp=0,spd=6.6}
C.units["wh3_main_ogr_mon_stonehorn_1"] = {a=110,ai=20,al=0,c="inf_mel",cat="war_beast",cb=70,hp=9608,lg=true,ma=44,mcp=1800,md=32,men=1,rcp=200,spd=6.6}
C.units["wh3_main_ogr_veh_gnoblar_scraplauncher_0"] = {a=80,ai=20,al=0,c="chariot",cat="war_machine",cb=48,hp=4588,lg=true,ma=26,mcp=400,md=16,men=1,rcp=500,spd=6.6}
C.units["wh3_main_ogr_veh_ironblaster_0"] = {a=90,ai=20,al=0,c="chariot",cat="war_machine",cb=48,hp=6088,lg=true,ma=26,mcp=800,md=20,men=1,rcp=900,spd=6.6}
C.units["wh3_main_pro_kho_cha_bloodreaper_0"] = {a=40,ai=20,al=0,c="com",cat="inf_melee",cb=45,hp=4048,ma=60,mcp=800,md=35,men=1,rcp=0,spd=4.6}
C.units["wh3_main_pro_kho_cha_bloodreaper_1"] = {a=100,ai=20,al=0,c="com",cat="cavalry",cb=65,hp=4648,lg=true,ma=63,mcp=1150,md=37,men=1,rcp=0,spd=7}
C.units["wh3_main_pro_kho_cha_bloodreaper_2"] = {a=110,ai=25,al=0,c="com",cat="war_beast",cb=50,hp=5148,lg=true,ma=35,mcp=1300,md=20,men=1,rcp=0,spd=6.8}
C.units["wh3_main_pro_kho_cha_cultist_0"] = {a=75,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=4068,ma=55,mcp=600,md=40,men=1,rcp=0,spd=4.4}
C.units["wh3_main_pro_kho_cha_cultist_1"] = {a=95,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=4468,lg=true,ma=55,mcp=800,md=40,men=1,rcp=0,spd=7.8}
C.units["wh3_main_pro_kho_cha_herald_of_khorne_0"] = {a=40,ai=20,al=0,c="com",cat="inf_melee",cb=50,hp=4448,ma=65,mcp=900,md=40,men=1,rcp=0,spd=4.8}
C.units["wh3_main_pro_kho_cha_herald_of_khorne_1"] = {a=100,ai=20,al=0,c="com",cat="cavalry",cb=70,hp=5048,lg=true,ma=68,mcp=1250,md=42,men=1,rcp=0,spd=7}
C.units["wh3_main_pro_kho_cha_herald_of_khorne_2"] = {a=110,ai=25,al=0,c="com",cat="war_beast",cb=55,hp=5548,lg=true,ma=40,mcp=1700,md=20,men=1,rcp=0,spd=6.8}
C.units["wh3_main_pro_kho_inf_bloodletters_0"] = {a=60,ai=9,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=8000,ma=34,mcp=800,md=26,men=100,rcp=0,spd=3.8}
C.units["wh3_main_pro_kho_inf_chaos_furies_0"] = {a=20,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=5160,ma=36,mcp=650,md=18,men=40,rcp=0,spd=10}
C.units["wh3_main_pro_kho_inf_chaos_warhounds_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=6080,ma=31,mcp=450,md=12,men=80,rcp=0,spd=9.5}
C.units["wh3_main_pro_kho_inf_chaos_warriors_0"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=9000,ma=41,mcp=850,md=39,men=100,rcp=0,spd=2.8}
C.units["wh3_main_pro_kho_inf_flesh_hounds_of_khorne_0"] = {a=30,ai=0,al=0,c="spcl",cat="inf_melee",cb=46,hp=6176,ma=38,mcp=700,md=26,men=32,rcp=0,spd=9.5}
C.units["wh3_main_pro_kho_inf_flesh_hounds_of_khorne_simaergul_0"] = {a=30,ai=0,al=0,c="spcl",cat="inf_melee",cb=46,hp=4000,lg=true,ma=60,mcp=700,md=40,men=1,rcp=0,spd=9.5}
C.units["wh3_main_pro_ksl_cav_kossovite_dervishes_0"] = {a=15,ai=0,al=0,c="cav_mel",cat="war_beast",cb=40,hp=5160,lg=true,ma=28,mcp=450,md=24,men=60,rcp=0,spd=9.2}
C.units["wh3_main_pro_ksl_cav_war_bear_riders_1"] = {a=95,ai=0,al=23,c="cav_mel",cat="war_beast",cb=38,hp=8128,lg=true,ma=46,mcp=1600,md=32,men=16,rcp=0,spd=7.5}
C.units["wh3_main_pro_ksl_cav_winged_lancers_0"] = {a=80,ai=0,al=0,c="cav_shk",cat="war_beast",cb=60,hp=6000,lg=true,ma=26,mcp=850,md=26,men=60,rcp=0,spd=8.4}
C.units["wh3_main_pro_ksl_cha_boyar_0"] = {a=85,ai=15,al=0,c="com",cat="inf_melee",cb=45,hp=4068,ma=50,mcp=750,md=40,men=1,rcp=0,spd=3.4}
C.units["wh3_main_pro_ksl_cha_boyar_1"] = {a=105,ai=15,al=0,c="com",cat="war_beast",cb=65,hp=4672,lg=true,ma=50,mcp=950,md=40,men=1,rcp=0,spd=7.8}
C.units["wh3_main_pro_ksl_cha_boyar_2"] = {a=105,ai=20,al=0,c="com",cat="war_beast",cb=65,hp=5308,lg=true,ma=55,mcp=1250,md=40,men=1,rcp=0,spd=7.5}
C.units["wh3_main_pro_ksl_cha_frost_maiden_ice_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=35,mcp=300,md=30,men=1,rcp=0,spd=4.6}
C.units["wh3_main_pro_ksl_cha_frost_maiden_ice_1"] = {a=45,ai=0,al=0,c="com",cat="war_beast",cb=35,hp=3820,lg=true,ma=35,mcp=500,md=30,men=1,rcp=0,spd=7.8}
C.units["wh3_main_pro_ksl_cha_frost_maiden_ice_2"] = {a=75,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4420,lg=true,ma=45,mcp=850,md=30,men=1,rcp=0,spd=7.5}
C.units["wh3_main_pro_ksl_cha_gerik_0"] = {a=80,ai=15,al=0,c="com",cat="inf_melee",cb=40,hp=4068,ma=55,mcp=1000,md=45,men=1,rcp=0,spd=3.4}
C.units["wh3_main_pro_ksl_cha_patriarch_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3420,ma=35,mcp=350,md=30,men=1,rcp=0,spd=3.4}
C.units["wh3_main_pro_ksl_cha_patriarch_1"] = {a=50,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=3820,lg=true,ma=35,mcp=550,md=30,men=1,rcp=0,spd=7.8}
C.units["wh3_main_pro_ksl_cha_patriarch_2"] = {a=75,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=4420,lg=true,ma=45,mcp=850,md=30,men=1,rcp=0,spd=7.5}
C.units["wh3_main_pro_ksl_cha_sergi_0"] = {a=35,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4268,ma=60,mcp=1000,md=50,men=1,rcp=0,spd=3.4}
C.units["wh3_main_pro_ksl_cha_slavin_0"] = {a=80,ai=34,al=0,c="com",cat="war_beast",cb=68,hp=14096,lg=true,ma=38,mcp=2300,md=34,men=1,rcp=0,spd=5.6}
C.units["wh3_main_pro_ksl_cha_yuri_0"] = {a=80,ai=15,al=0,c="com",cat="inf_melee",cb=40,hp=4068,ma=55,mcp=1000,md=45,men=1,rcp=0,spd=3.4}
C.units["wh3_main_pro_ksl_cha_yuri_1"] = {a=80,ai=15,al=0,c="com",cat="inf_melee",cb=40,hp=4068,ma=55,mcp=1000,md=45,men=1,rcp=0,spd=3.4}
C.units["wh3_main_pro_ksl_cha_yuri_2"] = {a=80,ai=15,al=0,c="com",cat="inf_melee",cb=40,hp=4068,ma=55,mcp=1000,md=45,men=1,rcp=0,spd=3.4}
C.units["wh3_main_pro_ksl_cha_yuri_3"] = {a=80,ai=15,al=0,c="com",cat="inf_melee",cb=40,hp=4068,ma=55,mcp=1000,md=45,men=1,rcp=0,spd=3.4}
C.units["wh3_main_pro_ksl_cha_yuri_4"] = {a=105,ai=15,al=0,c="com",cat="war_beast",cb=65,hp=4672,lg=true,ma=50,mcp=950,md=40,men=1,rcp=0,spd=7.8}
C.units["wh3_main_pro_ksl_cha_yuri_5"] = {a=105,ai=20,al=0,c="com",cat="war_beast",cb=65,hp=5308,lg=true,ma=55,mcp=1250,md=40,men=1,rcp=0,spd=7.5}
C.units["wh3_main_pro_ksl_cha_yuri_5_brazen_altar"] = {a=105,ai=20,al=0,c="com",cat="war_beast",cb=65,hp=5308,lg=true,ma=55,mcp=1250,md=40,men=1,rcp=0,spd=7.5}
C.units["wh3_main_pro_ksl_cha_yuri_5_howling_citadel"] = {a=105,ai=20,al=0,c="com",cat="war_beast",cb=65,hp=5308,lg=true,ma=55,mcp=1250,md=40,men=1,rcp=0,spd=7.5}
C.units["wh3_main_pro_ksl_inf_armoured_kossars_0"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=7380,ma=32,mcp=500,md=38,men=90,rcp=150,spd=3}
C.units["wh3_main_pro_ksl_inf_armoured_kossars_1"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=16,hp=7380,ma=36,mcp=500,md=30,men=90,rcp=150,spd=3}
C.units["wh3_main_pro_ksl_inf_kossars_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=6390,ma=28,mcp=150,md=26,men=90,rcp=300,spd=3.3}
C.units["wh3_main_pro_ksl_inf_kossars_1"] = {a=15,ai=0,al=15,c="inf_mis",cat="inf_ranged",cb=4,hp=6390,ma=20,mcp=200,md=30,men=90,rcp=300,spd=3.3}
C.units["wh3_main_pro_ksl_inf_streltsi_0"] = {a=70,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=7470,ma=28,mcp=350,md=28,men=90,rcp=500,spd=3}
C.units["wh3_main_pro_ksl_inf_tzar_guard_0"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8800,ma=34,mcp=1000,md=50,men=80,rcp=0,spd=3}
C.units["wh3_main_pro_ksl_mon_elemental_bear_ror_0"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=25,hp=10988,lg=true,ma=50,mcp=2200,md=24,men=1,rcp=0,spd=4.8}
C.units["wh3_main_pro_ksl_veh_little_grom_0"] = {a=105,ai=20,al=0,c="chariot",cat="war_machine",cb=25,hp=8376,lg=true,ma=40,mcp=500,md=28,men=2,rcp=900,spd=3.5}
C.units["wh3_main_pro_tze_cav_chaos_knights_0"] = {a=120,ai=0,al=0,c="cav_mel",cat="war_beast",cb=44,hp=7620,lg=true,ma=42,mcp=1500,md=50,men=60,rcp=0,spd=7}
C.units["wh3_main_pro_tze_cha_cultist_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3688,ma=25,mcp=300,md=30,men=1,rcp=0,spd=3.4}
C.units["wh3_main_pro_tze_cha_cultist_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=4088,lg=true,ma=25,mcp=500,md=30,men=1,rcp=0,spd=7.8}
C.units["wh3_main_pro_tze_cha_herald_of_tzeentch_tzeentch_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3808,ma=35,mcp=200,md=35,men=1,rcp=600,spd=3.8}
C.units["wh3_main_pro_tze_cha_herald_of_tzeentch_tzeentch_1"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4208,ma=35,mcp=350,md=35,men=1,rcp=850,spd=9.5}
C.units["wh3_main_pro_tze_cha_herald_of_tzeentch_tzeentch_2"] = {a=20,ai=20,al=0,c="com",cat="war_beast",cb=35,hp=16116,lg=true,ma=35,mcp=600,md=28,men=3,rcp=900,spd=8.5}
C.units["wh3_main_pro_tze_inf_blue_horrors_0"] = {a=5,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=7680,ma=20,mcp=300,md=22,men=160,rcp=100,spd=3.8}
C.units["wh3_main_pro_tze_inf_pink_horrors_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=6400,ma=22,mcp=200,md=26,men=80,rcp=500,spd=3.8}
C.units["wh3_main_pro_tze_mon_flamers_0"] = {a=10,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=8,hp=3084,lg=true,ma=28,mcp=150,md=12,men=12,rcp=700,spd=5}
C.units["wh3_main_pro_tze_mon_screamers_0"] = {a=20,ai=0,al=25,c="inf_mel",cat="inf_melee",cb=26,hp=4352,ma=26,mcp=700,md=22,men=16,rcp=0,spd=8}
C.units["wh3_main_sla_cav_heartseekers_of_slaanesh_0"] = {a=15,ai=0,al=0,c="cav_shk",cat="war_beast",cb=50,hp=5700,lg=true,ma=44,mcp=1400,md=38,men=60,rcp=0,spd=10}
C.units["wh3_main_sla_cav_hellstriders_0"] = {a=15,ai=0,al=10,c="cav_shk",cat="war_beast",cb=40,hp=5220,lg=true,ma=24,mcp=675,md=26,men=60,rcp=0,spd=10}
C.units["wh3_main_sla_cav_hellstriders_1"] = {a=15,ai=0,al=0,c="cav_shk",cat="war_beast",cb=40,hp=5220,lg=true,ma=28,mcp=725,md=34,men=60,rcp=0,spd=10}
C.units["wh3_main_sla_cav_seekers_of_slaanesh_0"] = {a=5,ai=0,al=0,c="cav_shk",cat="war_beast",cb=40,hp=5220,lg=true,ma=38,mcp=1000,md=34,men=60,rcp=0,spd=10}
C.units["wh3_main_sla_cha_alluress_shadow_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=3568,ma=55,mcp=750,md=50,men=1,rcp=0,spd=6.2}
C.units["wh3_main_sla_cha_alluress_shadow_1"] = {a=15,ai=0,al=0,c="com",cat="war_beast",cb=55,hp=4068,lg=true,ma=55,mcp=950,md=50,men=1,rcp=0,spd=10}
C.units["wh3_main_sla_cha_alluress_shadow_2"] = {a=50,ai=25,al=0,c="com",cat="war_machine",cb=80,hp=9136,lg=true,ma=30,mcp=1150,md=28,men=2,rcp=0,spd=10}
C.units["wh3_main_sla_cha_alluress_shadow_3"] = {a=50,ai=30,al=0,c="com",cat="war_machine",cb=100,hp=12136,lg=true,ma=36,mcp=1350,md=32,men=2,rcp=0,spd=10}
C.units["wh3_main_sla_cha_alluress_slaanesh_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=3568,ma=55,mcp=750,md=50,men=1,rcp=0,spd=6.2}
C.units["wh3_main_sla_cha_alluress_slaanesh_1"] = {a=15,ai=0,al=0,c="com",cat="war_beast",cb=55,hp=4068,lg=true,ma=55,mcp=950,md=50,men=1,rcp=0,spd=10}
C.units["wh3_main_sla_cha_alluress_slaanesh_2"] = {a=50,ai=25,al=0,c="com",cat="war_machine",cb=80,hp=9136,lg=true,ma=30,mcp=1150,md=28,men=2,rcp=0,spd=10}
C.units["wh3_main_sla_cha_alluress_slaanesh_3"] = {a=50,ai=30,al=0,c="com",cat="war_machine",cb=100,hp=12136,lg=true,ma=36,mcp=1350,md=32,men=2,rcp=0,spd=10}
C.units["wh3_main_sla_cha_cultist_0"] = {a=25,ai=25,al=0,c="com",cat="inf_melee",cb=30,hp=3688,ma=40,mcp=600,md=55,men=1,rcp=0,spd=4.4}
C.units["wh3_main_sla_cha_cultist_1"] = {a=55,ai=25,al=0,c="com",cat="cavalry",cb=45,hp=4088,lg=true,ma=40,mcp=800,md=55,men=1,rcp=0,spd=8.3}
C.units["wh3_main_sla_cha_exalted_keeper_of_secrets_shadow_0"] = {a=15,ai=0,al=25,c="com",cat="inf_melee",cb=70,hp=7828,lg=true,ma=50,mcp=2000,md=60,men=1,rcp=0,spd=8}
C.units["wh3_main_sla_cha_exalted_keeper_of_secrets_slaanesh_0"] = {a=15,ai=0,al=25,c="com",cat="inf_melee",cb=70,hp=7828,lg=true,ma=50,mcp=2000,md=60,men=1,rcp=0,spd=8}
C.units["wh3_main_sla_cha_herald_of_slaanesh_shadow_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=3968,ma=60,mcp=1000,md=55,men=1,rcp=0,spd=6.2}
C.units["wh3_main_sla_cha_herald_of_slaanesh_shadow_1"] = {a=15,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=4468,lg=true,ma=60,mcp=1200,md=55,men=1,rcp=0,spd=10}
C.units["wh3_main_sla_cha_herald_of_slaanesh_shadow_2"] = {a=50,ai=25,al=0,c="com",cat="war_machine",cb=85,hp=9936,lg=true,ma=34,mcp=1400,md=28,men=2,rcp=0,spd=10}
C.units["wh3_main_sla_cha_herald_of_slaanesh_shadow_3"] = {a=50,ai=30,al=0,c="com",cat="war_machine",cb=105,hp=12936,lg=true,ma=40,mcp=1600,md=34,men=2,rcp=0,spd=10}
C.units["wh3_main_sla_cha_herald_of_slaanesh_slaanesh_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=3968,ma=60,mcp=1000,md=55,men=1,rcp=0,spd=6.2}
C.units["wh3_main_sla_cha_herald_of_slaanesh_slaanesh_1"] = {a=15,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=4468,lg=true,ma=60,mcp=1200,md=55,men=1,rcp=0,spd=10}
C.units["wh3_main_sla_cha_herald_of_slaanesh_slaanesh_2"] = {a=50,ai=25,al=0,c="com",cat="war_machine",cb=85,hp=9936,lg=true,ma=34,mcp=1400,md=28,men=2,rcp=0,spd=10}
C.units["wh3_main_sla_cha_herald_of_slaanesh_slaanesh_3"] = {a=50,ai=30,al=0,c="com",cat="war_machine",cb=105,hp=12936,lg=true,ma=40,mcp=1600,md=34,men=2,rcp=0,spd=10}
C.units["wh3_main_sla_cha_nkari_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=75,hp=8048,lg=true,ma=70,mcp=2300,md=60,men=1,rcp=0,spd=10}
C.units["wh3_main_sla_inf_chaos_furies_0"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=5280,ma=36,mcp=650,md=18,men=60,rcp=0,spd=10}
C.units["wh3_main_sla_inf_daemonette_0"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=6800,ma=40,mcp=800,md=36,men=100,rcp=0,spd=5.4}
C.units["wh3_main_sla_inf_daemonette_1"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=7700,ma=48,mcp=1200,md=44,men=100,rcp=0,spd=5.4}
C.units["wh3_main_sla_inf_daemonette_summoned_0"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=6800,ma=38,mcp=400,md=36,men=100,rcp=0,spd=5.4}
C.units["wh3_main_sla_inf_marauders_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9360,ma=34,mcp=450,md=28,men=120,rcp=0,spd=4}
C.units["wh3_main_sla_inf_marauders_1"] = {a=15,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=6,hp=9360,ma=28,mcp=500,md=32,men=120,rcp=0,spd=4}
C.units["wh3_main_sla_inf_marauders_2"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9360,ma=30,mcp=550,md=38,men=120,rcp=0,spd=4}
C.units["wh3_main_sla_mon_fiends_of_slaanesh_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=38,hp=8128,lg=true,ma=36,mcp=1300,md=36,men=16,rcp=0,spd=9.5}
C.units["wh3_main_sla_mon_keeper_of_secrets_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=60,hp=7720,lg=true,ma=60,mcp=1700,md=54,men=1,rcp=0,spd=8}
C.units["wh3_main_sla_mon_keeper_of_secrets_summoned_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=60,hp=7720,lg=true,ma=60,mcp=2000,md=54,men=1,rcp=0,spd=8}
C.units["wh3_main_sla_mon_soul_grinder_0"] = {a=90,ai=0,al=35,c="inf_mel",cat="inf_melee",cb=40,hp=8188,lg=true,ma=55,mcp=1900,md=35,men=1,rcp=0,spd=7.5}
C.units["wh3_main_sla_mon_spawn_of_slaanesh_0"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=8768,lg=true,ma=36,mcp=1050,md=28,men=16,rcp=0,spd=4.7}
C.units["wh3_main_sla_veh_exalted_seeker_chariot_0"] = {a=50,ai=30,al=0,c="chariot",cat="war_machine",cb=95,hp=11336,lg=true,ma=34,mcp=1500,md=32,men=2,rcp=0,spd=10}
C.units["wh3_main_sla_veh_hellflayer_0"] = {a=50,ai=30,al=0,c="chariot",cat="war_machine",cb=90,hp=5816,lg=true,ma=34,mcp=1100,md=26,men=4,rcp=0,spd=10}
C.units["wh3_main_sla_veh_seeker_chariot_0"] = {a=50,ai=22,al=0,c="chariot",cat="war_machine",cb=80,hp=9792,lg=true,ma=28,mcp=800,md=26,men=8,rcp=0,spd=10}
C.units["wh3_main_tze_cav_chaos_knights_0"] = {a=120,ai=0,al=0,c="cav_mel",cat="war_beast",cb=44,hp=7620,lg=true,ma=42,mcp=1500,md=50,men=60,rcp=0,spd=7}
C.units["wh3_main_tze_cav_doom_knights_0"] = {a=120,ai=0,al=8,c="inf_mel",cat="inf_melee",cb=52,hp=5880,ma=44,mcp=1600,md=36,men=24,rcp=0,spd=9.5}
C.units["wh3_main_tze_cha_cultist_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3688,ma=25,mcp=300,md=30,men=1,rcp=0,spd=3.4}
C.units["wh3_main_tze_cha_cultist_1"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=4088,lg=true,ma=25,mcp=500,md=30,men=1,rcp=0,spd=7.8}
C.units["wh3_main_tze_cha_exalted_lord_of_change_metal_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=7828,lg=true,ma=50,mcp=1900,md=50,men=1,rcp=0,spd=5.4}
C.units["wh3_main_tze_cha_exalted_lord_of_change_tzeentch_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=7828,lg=true,ma=50,mcp=1900,md=50,men=1,rcp=0,spd=5.4}
C.units["wh3_main_tze_cha_herald_of_tzeentch_metal_0"] = {a=35,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3808,ma=35,mcp=200,md=35,men=1,rcp=600,spd=3.8}
C.units["wh3_main_tze_cha_herald_of_tzeentch_metal_1"] = {a=35,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4208,ma=35,mcp=350,md=35,men=1,rcp=850,spd=9.5}
C.units["wh3_main_tze_cha_herald_of_tzeentch_metal_2"] = {a=35,ai=20,al=0,c="com",cat="war_beast",cb=35,hp=16116,lg=true,ma=35,mcp=600,md=28,men=3,rcp=800,spd=8.5}
C.units["wh3_main_tze_cha_herald_of_tzeentch_tzeentch_0"] = {a=35,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3808,ma=35,mcp=200,md=35,men=1,rcp=600,spd=3.8}
C.units["wh3_main_tze_cha_herald_of_tzeentch_tzeentch_1"] = {a=35,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4208,ma=35,mcp=350,md=35,men=1,rcp=850,spd=9.5}
C.units["wh3_main_tze_cha_herald_of_tzeentch_tzeentch_2"] = {a=35,ai=20,al=0,c="com",cat="war_beast",cb=35,hp=16116,lg=true,ma=35,mcp=600,md=28,men=3,rcp=800,spd=8.5}
C.units["wh3_main_tze_cha_iridescent_horror_metal_0"] = {a=35,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3408,ma=30,mcp=100,md=30,men=1,rcp=450,spd=3.8}
C.units["wh3_main_tze_cha_iridescent_horror_metal_1"] = {a=35,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=3808,ma=30,mcp=300,md=30,men=1,rcp=650,spd=9.5}
C.units["wh3_main_tze_cha_iridescent_horror_metal_2"] = {a=35,ai=20,al=0,c="com",cat="war_beast",cb=35,hp=14916,lg=true,ma=35,mcp=450,md=28,men=3,rcp=700,spd=8.5}
C.units["wh3_main_tze_cha_iridescent_horror_tzeentch_0"] = {a=35,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3408,ma=30,mcp=100,md=30,men=1,rcp=450,spd=3.8}
C.units["wh3_main_tze_cha_iridescent_horror_tzeentch_1"] = {a=35,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=3808,ma=30,mcp=300,md=30,men=1,rcp=650,spd=9.5}
C.units["wh3_main_tze_cha_iridescent_horror_tzeentch_2"] = {a=35,ai=20,al=0,c="com",cat="war_beast",cb=35,hp=14916,lg=true,ma=35,mcp=450,md=28,men=3,rcp=700,spd=8.5}
C.units["wh3_main_tze_cha_kairos_fateweaver_0"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=8048,lg=true,ma=35,mcp=1500,md=20,men=1,rcp=0,spd=5.4}
C.units["wh3_main_tze_inf_blue_horrors_0"] = {a=5,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=7680,ma=20,mcp=300,md=22,men=160,rcp=200,spd=3.8}
C.units["wh3_main_tze_inf_blue_horrors_summoned_0"] = {a=5,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=7680,ma=20,mcp=300,md=22,men=160,rcp=200,spd=3.8}
C.units["wh3_main_tze_inf_chaos_furies_0"] = {a=25,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=5280,ma=36,mcp=650,md=18,men=60,rcp=0,spd=10}
C.units["wh3_main_tze_inf_forsaken_0"] = {a=85,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=36,hp=8000,ma=32,mcp=850,md=20,men=80,rcp=0,spd=4.6}
C.units["wh3_main_tze_inf_pink_horrors_0"] = {a=25,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=6400,ma=22,mcp=200,md=26,men=80,rcp=500,spd=3.8}
C.units["wh3_main_tze_inf_pink_horrors_1"] = {a=35,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=14,hp=7200,ma=30,mcp=250,md=38,men=80,rcp=750,spd=3.8}
C.units["wh3_main_tze_inf_pink_horrors_summoned_0"] = {a=25,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=6400,ma=22,mcp=200,md=26,men=80,rcp=500,spd=3.8}
C.units["wh3_main_tze_mon_exalted_flamer_0"] = {a=10,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=3180,lg=true,ma=34,mcp=200,md=20,men=1,rcp=900,spd=5}
C.units["wh3_main_tze_mon_flamers_0"] = {a=10,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=8,hp=3084,lg=true,ma=28,mcp=150,md=12,men=12,rcp=700,spd=5}
C.units["wh3_main_tze_mon_lord_of_change_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=7028,lg=true,ma=45,mcp=1700,md=45,men=1,rcp=0,spd=5.4}
C.units["wh3_main_tze_mon_lord_of_change_summoned_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=7028,lg=true,ma=45,mcp=850,md=45,men=1,rcp=0,spd=5.4}
C.units["wh3_main_tze_mon_screamers_0"] = {a=30,ai=0,al=25,c="inf_mel",cat="inf_melee",cb=26,hp=4880,ma=26,mcp=700,md=22,men=16,rcp=0,spd=8}
C.units["wh3_main_tze_mon_soul_grinder_0"] = {a=90,ai=0,al=0,c="spcl",cat="inf_ranged",cb=30,hp=8188,lg=true,ma=42,mcp=1100,md=35,men=1,rcp=800,spd=7.5}
C.units["wh3_main_tze_mon_spawn_of_tzeentch_0"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=8768,lg=true,ma=36,mcp=1050,md=28,men=16,rcp=0,spd=4.2}
C.units["wh3_main_tze_veh_burning_chariot_0"] = {a=20,ai=20,al=0,c="chariot",cat="war_beast",cb=35,hp=4972,lg=true,ma=35,mcp=500,md=28,men=1,rcp=1100,spd=8.5}
C.units["wh3_main_vmp_blood_knights_sword_shield"] = {a=110,ai=16,al=0,c="cav_mel",cat="cavalry",cb=48,hp=6720,lg=true,ma=36,mcp=1700,md=54,men=60,rcp=0,spd=7}
C.units["wh3_main_vmp_inf_grave_guard_2"] = {a=90,ai=0,al=19,c="inf_mel",cat="inf_melee",cb=4,hp=9840,ma=22,mcp=900,md=36,men=120,rcp=0,spd=2.7}
C.units["wh3_pro10_tze_cha_cultist_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3688,ma=25,mcp=300,md=30,men=1,rcp=0,spd=3.4}
C.units["wh3_pro10_tze_cha_daemon_prince_of_tzeentch"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=21458,lg=true,ma=30,mcp=2200,md=25,men=1,rcp=0,spd=6.5}
C.units["wh3_pro11_chs_cha_harald_hammerstorm"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=5680,ma=70,mcp=1600,md=50,men=1,rcp=0,spd=3.3}
C.units["wh3_pro12_kho_cha_karanak"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=4850,lg=true,ma=55,mcp=1100,md=45,men=1,rcp=0,spd=9.5}
C.units["wh3_pro12_kho_inf_flesh_hounds_of_khorne_summoned"] = {a=30,ai=0,al=0,c="spcl",cat="inf_melee",cb=46,hp=6176,ma=36,mcp=700,md=26,men=32,rcp=0,spd=9.5}
C.units["wh3_prologue_test_general_0"] = {a=85,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=4068,ma=55,mcp=750,md=45,men=1,rcp=0,spd=3.4}
C.units["wh3_survival_dae_cha_be_lakor_01"] = {a=45,ai=0,al=0,c="com",cat="inf_melee",cb=65,hp=25748,lg=true,ma=75,mcp=2400,md=60,men=1,rcp=0,spd=7}
C.units["wh3_survival_dae_cha_be_lakor_02"] = {a=45,ai=0,al=0,c="com",cat="inf_melee",cb=55,hp=20600,lg=true,ma=70,mcp=2400,md=55,men=1,rcp=0,spd=7}
C.units["wh3_survival_kho_cha_bloodreaper"] = {a=110,ai=25,al=0,c="com",cat="war_beast",cb=50,hp=10288,lg=true,ma=35,mcp=1600,md=20,men=1,rcp=0,spd=6.8}
C.units["wh3_survival_kho_cha_daemon_prince_of_khorne"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=21458,lg=true,ma=30,mcp=2200,md=25,men=1,rcp=0,spd=6.5}
C.units["wh3_survival_kho_cha_exalted_bloodthirster"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=55,hp=8588,lg=true,ma=70,mcp=2500,md=46,men=1,rcp=0,spd=6.4}
C.units["wh3_survival_kho_cha_exalted_bloodthirster_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=55,hp=17998,lg=true,ma=70,mcp=2500,md=52,men=1,rcp=0,spd=6.4}
C.units["wh3_survival_nur_cha_daemon_prince_of_nurgle"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=21458,lg=true,ma=30,mcp=2200,md=25,men=1,rcp=0,spd=6.5}
C.units["wh3_survival_nur_cha_exalted_great_unclean_one_nurgle"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=13620,lg=true,ma=60,mcp=2200,md=50,men=1,rcp=0,spd=3.6}
C.units["wh3_survival_nur_cha_exalted_great_unclean_one_nurgle_01"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=13620,lg=true,ma=60,mcp=2200,md=50,men=1,rcp=0,spd=3.6}
C.units["wh3_survival_nur_cha_plagueridden_death"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=28,hp=5108,lg=true,ma=40,mcp=1400,md=47,men=1,rcp=0,spd=7}
C.units["wh3_survival_sla_cha_alluress_shadow"] = {a=50,ai=30,al=0,c="com",cat="war_machine",cb=100,hp=22256,lg=true,ma=36,mcp=1300,md=32,men=2,rcp=0,spd=10}
C.units["wh3_survival_sla_cha_daemon_prince_of_slaanesh"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=21458,lg=true,ma=30,mcp=2200,md=25,men=1,rcp=0,spd=6.5}
C.units["wh3_survival_sla_cha_exalted_keeper_of_secrets_slaanesh"] = {a=15,ai=0,al=25,c="com",cat="inf_melee",cb=60,hp=7828,lg=true,ma=50,mcp=2100,md=60,men=1,rcp=0,spd=8}
C.units["wh3_survival_tze_cha_daemon_prince_of_tzeentch"] = {a=10,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=21458,lg=true,ma=30,mcp=2200,md=25,men=1,rcp=0,spd=6.5}
C.units["wh3_survival_tze_cha_exalted_lord_of_change_tzeentch"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=7828,lg=true,ma=50,mcp=2000,md=50,men=1,rcp=0,spd=5.4}
C.units["wh3_survival_tze_cha_iridescent_horror_metal"] = {a=35,ai=20,al=0,c="com",cat="war_beast",cb=35,hp=8504,lg=true,ma=35,mcp=450,md=28,men=1,rcp=800,spd=8.5}
C.units["wh3_twa06_cth_inf_dragon_guard_ror_0"] = {a=95,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=10,hp=8800,ma=43,mcp=1350,md=53,men=100,rcp=0,spd=2.8}
C.units["wh3_twa06_kho_inf_bloodletters_ror_0"] = {a=60,ai=13,al=0,c="inf_mel",cat="inf_melee",cb=36,hp=9200,ma=52,mcp=1500,md=43,men=100,rcp=0,spd=3.8}
C.units["wh3_twa06_ksl_inf_tzar_guard_ror_0"] = {a=90,ai=14,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=8800,ma=50,mcp=1400,md=45,men=80,rcp=0,spd=3}
C.units["wh3_twa06_nur_inf_plaguebearers_ror_0"] = {a=35,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=13200,ma=48,mcp=1200,md=50,men=100,rcp=250,spd=2.7}
C.units["wh3_twa06_ogr_inf_maneaters_ror_0"] = {a=40,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=50,hp=9280,lg=true,ma=50,mcp=1100,md=52,men=16,rcp=700,spd=5.4}
C.units["wh3_twa06_sla_inf_daemonette_ror_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=7700,ma=59,mcp=1450,md=54,men=100,rcp=0,spd=5.4}
C.units["wh3_twa06_tze_inf_pink_horrors_ror_0"] = {a=35,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=14,hp=7200,ma=38,mcp=400,md=48,men=80,rcp=950,spd=3.8}
C.units["wh3_twa07_cth_cav_jade_longma_riders_ror_0"] = {a=110,ai=0,al=0,c="cav_shk",cat="war_beast",cb=75,hp=6072,lg=true,ma=45,mcp=1650,md=43,men=24,rcp=0,spd=9.2}
C.units["wh3_twa07_kho_cav_bloodcrushers_ror_0"] = {a=100,ai=18,al=0,c="cav_shk",cat="cavalry",cb=55,hp=7648,lg=true,ma=50,mcp=1700,md=43,men=32,rcp=0,spd=7}
C.units["wh3_twa07_ksl_cav_war_bear_riders_ror_0"] = {a=100,ai=0,al=23,c="cav_mel",cat="war_beast",cb=44,hp=8128,lg=true,ma=57,mcp=1850,md=43,men=16,rcp=0,spd=7.5}
C.units["wh3_twa07_nur_cav_pox_riders_of_nurgle_ror_0"] = {a=80,ai=12,al=0,c="cav_mel",cat="cavalry",cb=36,hp=7680,lg=true,ma=45,mcp=1250,md=45,men=24,rcp=0,spd=6.5}
C.units["wh3_twa07_ogr_cav_crushers_ror_0"] = {a=120,ai=0,al=30,c="inf_mel",cat="cavalry",cb=80,hp=8784,lg=true,ma=54,mcp=2300,md=38,men=12,rcp=0,spd=7.5}
C.units["wh3_twa07_sla_cav_heartseekers_of_slaanesh_ror_0"] = {a=15,ai=0,al=0,c="cav_shk",cat="war_beast",cb=50,hp=5700,lg=true,ma=54,mcp=1600,md=48,men=60,rcp=0,spd=10}
C.units["wh3_twa07_tze_cav_doom_knights_ror_0"] = {a=120,ai=0,al=8,c="inf_mel",cat="inf_melee",cb=52,hp=5880,ma=54,mcp=1800,md=45,men=24,rcp=0,spd=9.5}
C.units["wh3_twa08_cth_mon_terracotta_sentinel_0_ror"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=12620,lg=true,ma=78,mcp=2000,md=38,men=1,rcp=0,spd=4.8}
C.units["wh3_twa08_kho_mon_bloodthirster_0_ror"] = {a=70,ai=0,al=35,c="inf_mel",cat="inf_melee",cb=55,hp=7732,lg=true,ma=73,mcp=2350,md=54,men=1,rcp=0,spd=5.5}
C.units["wh3_twa08_ksl_mon_elemental_bear_0_ror"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=25,hp=10988,lg=true,ma=61,mcp=2200,md=43,men=1,rcp=0,spd=4.8}
C.units["wh3_twa08_nur_mon_great_unclean_one_0_ror"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=12360,lg=true,ma=67,mcp=2200,md=56,men=1,rcp=0,spd=3.6}
C.units["wh3_twa08_ogr_mon_stonehorn_0_ror"] = {a=110,ai=20,al=0,c="inf_mel",cat="war_beast",cb=70,hp=9608,lg=true,ma=54,mcp=2050,md=41,men=1,rcp=0,spd=6.6}
C.units["wh3_twa08_sla_mon_keeper_of_secrets_0_ror"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=60,hp=7720,lg=true,ma=73,mcp=2150,md=66,men=1,rcp=0,spd=8}
C.units["wh3_twa08_tze_mon_lord_of_change_0_ror"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=7028,lg=true,ma=56,mcp=1850,md=56,men=1,rcp=0,spd=5.4}
C.units["wh3_twa10_cth_inf_peasant_archers_ror"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=6480,ma=27,mcp=225,md=31,men=120,rcp=400,spd=3.3}
C.units["wh3_twa10_kho_inf_flesh_hounds_of_khorne_ror"] = {a=30,ai=0,al=0,c="spcl",cat="inf_melee",cb=46,hp=6176,ma=45,mcp=1000,md=34,men=32,rcp=0,spd=9.5}
C.units["wh3_twa10_ksl_inf_armoured_kossars_ror"] = {a=80,ai=5,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=8200,ma=41,mcp=950,md=40,men=100,rcp=0,spd=3}
C.units["wh3_twa10_nur_inf_nurglings_ror"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=14,hp=9300,ma=34,mcp=550,md=31,men=60,rcp=0,spd=3.4}
C.units["wh3_twa10_ogr_inf_gnoblars_ror"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=8960,ma=24,mcp=450,md=34,men=160,rcp=150,spd=3.5}
C.units["wh3_twa10_sla_inf_marauders_spears_ror"] = {a=15,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=6,hp=9360,ma=36,mcp=750,md=41,men=120,rcp=0,spd=4}
C.units["wh3_twa10_tze_inf_blue_horrors_ror"] = {a=5,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=7680,ma=27,mcp=300,md=29,men=160,rcp=450,spd=3.8}
C.units["wh_dlc01_chs_cav_gorebeast_chariot"] = {a=130,ai=30,al=0,c="chariot",cat="war_machine",cb=80,hp=12864,lg=true,ma=30,mcp=1200,md=32,men=8,rcp=0,spd=6.6}
C.units["wh_dlc01_chs_cha_chaos_lord_10"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=5468,lg=true,ma=54,mcp=1500,md=45,men=1,rcp=0,spd=7}
C.units["wh_dlc01_chs_cha_chaos_lord_2"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=8436,lg=true,ma=54,mcp=2100,md=44,men=1,rcp=0,spd=6.5}
C.units["wh_dlc01_chs_cha_chaos_lord_9"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=100,hp=11264,lg=true,ma=40,mcp=1350,md=35,men=2,rcp=0,spd=6.6}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_death_8"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=70,hp=8752,lg=true,ma=26,mcp=1,md=16,men=2,rcp=0,spd=6.6}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_fire_8"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=70,hp=8752,lg=true,ma=26,mcp=1,md=16,men=2,rcp=0,spd=6.6}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_death_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3808,ma=48,mcp=700,md=44,men=1,rcp=0,spd=3.3}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_death_10"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=45,hp=8308,lg=true,ma=46,mcp=2000,md=40,men=1,rcp=0,spd=6.5}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_death_12"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4288,lg=true,ma=48,mcp=900,md=44,men=1,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_death_13"] = {a=0,ai=0,al=0,c="com",cat="cavalry",cb=40,hp=4288,lg=true,ma=48,mcp=1,md=44,men=1,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_death_7"] = {a=110,ai=0,al=0,c="com",cat="war_machine",cb=70,hp=8912,lg=true,ma=30,mcp=1,md=20,men=2,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_death_8"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=80,hp=9312,lg=true,ma=30,mcp=1,md=20,men=2,rcp=0,spd=6.6}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_death_9"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5268,lg=true,ma=42,mcp=1300,md=36,men=1,rcp=0,spd=7}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_fire_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3808,ma=48,mcp=700,md=44,men=1,rcp=0,spd=3.3}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_fire_10"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=45,hp=8308,lg=true,ma=46,mcp=2000,md=40,men=1,rcp=0,spd=6.5}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_fire_12"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4288,lg=true,ma=48,mcp=900,md=44,men=1,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_fire_13"] = {a=0,ai=0,al=0,c="com",cat="cavalry",cb=40,hp=4288,lg=true,ma=48,mcp=1,md=44,men=1,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_fire_7"] = {a=110,ai=0,al=0,c="com",cat="war_machine",cb=70,hp=8912,lg=true,ma=30,mcp=1,md=20,men=2,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_fire_8"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=80,hp=9312,lg=true,ma=30,mcp=1,md=20,men=2,rcp=0,spd=6.6}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_fire_9"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5268,lg=true,ma=42,mcp=1300,md=36,men=1,rcp=0,spd=7}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_metal_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3808,ma=48,mcp=700,md=44,men=1,rcp=0,spd=3.3}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_metal_10"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=45,hp=8308,lg=true,ma=46,mcp=2000,md=40,men=1,rcp=0,spd=6.5}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_metal_12"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4288,lg=true,ma=48,mcp=900,md=44,men=1,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_metal_13"] = {a=0,ai=0,al=0,c="com",cat="cavalry",cb=40,hp=4288,lg=true,ma=48,mcp=1,md=44,men=1,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_metal_7"] = {a=110,ai=0,al=0,c="com",cat="war_machine",cb=70,hp=8912,lg=true,ma=30,mcp=1,md=20,men=2,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_metal_8"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=80,hp=9312,lg=true,ma=30,mcp=1,md=20,men=2,rcp=0,spd=6.6}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_metal_9"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5268,lg=true,ma=42,mcp=1300,md=36,men=1,rcp=0,spd=7}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_shadows_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3808,ma=48,mcp=700,md=44,men=1,rcp=0,spd=3.3}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_shadows_1"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4288,lg=true,ma=48,mcp=900,md=44,men=1,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_shadows_2"] = {a=0,ai=0,al=0,c="com",cat="cavalry",cb=40,hp=4288,lg=true,ma=48,mcp=1,md=44,men=1,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_shadows_3"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5268,lg=true,ma=42,mcp=1300,md=36,men=1,rcp=0,spd=7}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_lord_shadows_4"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=45,hp=8308,lg=true,ma=46,mcp=2000,md=40,men=1,rcp=0,spd=6.5}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_metal_8"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=70,hp=8752,lg=true,ma=26,mcp=1,md=16,men=2,rcp=0,spd=6.6}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_shadows_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3520,ma=42,mcp=400,md=40,men=1,rcp=0,spd=3.3}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_shadows_1"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=3968,lg=true,ma=42,mcp=600,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_shadows_2"] = {a=0,ai=0,al=0,c="com",cat="cavalry",cb=40,hp=3968,lg=true,ma=42,mcp=1,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_chaos_sorcerer_shadows_3"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5104,lg=true,ma=40,mcp=1000,md=34,men=1,rcp=0,spd=7}
C.units["wh_dlc01_chs_cha_exalted_hero_10"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=55,hp=5268,lg=true,ma=55,mcp=1200,md=34,men=1,rcp=0,spd=7}
C.units["wh_dlc01_chs_cha_exalted_hero_8"] = {a=110,ai=30,al=0,c="com",cat="war_machine",cb=90,hp=9312,lg=true,ma=40,mcp=1,md=20,men=2,rcp=0,spd=6.6}
C.units["wh_dlc01_chs_cha_kholek"] = {a=95,ai=0,al=30,c="com",cat="inf_melee",cb=52,hp=8988,lg=true,ma=66,mcp=2200,md=46,men=1,rcp=0,spd=7.8}
C.units["wh_dlc01_chs_cha_prince_sigvald_the_magnificent"] = {a=110,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=5220,ma=70,mcp=1050,md=60,men=1,rcp=0,spd=4}
C.units["wh_dlc01_chs_cha_qb_lord_of_change_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=7028,lg=true,ma=45,mcp=450,md=45,men=1,rcp=0,spd=5.4}
C.units["wh_dlc01_chs_inf_chaos_warriors_2"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=9000,ma=38,mcp=825,md=32,men=100,rcp=0,spd=2.8}
C.units["wh_dlc01_chs_inf_chosen_2"] = {a=120,ai=0,al=26,c="inf_mel",cat="inf_melee",cb=16,hp=10480,ma=36,mcp=1400,md=56,men=80,rcp=0,spd=2.8}
C.units["wh_dlc01_chs_inf_forsaken_0"] = {a=85,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=36,hp=8000,ma=32,mcp=750,md=20,men=80,rcp=0,spd=4.6}
C.units["wh_dlc01_chs_mon_dragon_ogre"] = {a=60,ai=0,al=26,c="inf_mel",cat="inf_melee",cb=42,hp=9856,lg=true,ma=32,mcp=1550,md=40,men=16,rcp=0,spd=6.4}
C.units["wh_dlc01_chs_mon_dragon_ogre_shaggoth"] = {a=70,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=52,hp=8588,lg=true,ma=58,mcp=2000,md=44,men=1,rcp=0,spd=7.6}
C.units["wh_dlc01_chs_mon_trolls_1"] = {a=110,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=7904,lg=true,ma=34,mcp=1000,md=32,men=16,rcp=0,spd=5.4}
C.units["wh_dlc01_nor_cha_chaos_sorcerer_lord_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3808,ma=48,mcp=750,md=44,men=1,rcp=0,spd=3.3}
C.units["wh_dlc01_nor_cha_chaos_sorcerer_lord_1"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=4288,lg=true,ma=48,mcp=850,md=44,men=1,rcp=0,spd=9}
C.units["wh_dlc01_nor_cha_chaos_sorcerer_lord_2"] = {a=90,ai=0,al=0,c="com",cat="war_machine",cb=40,hp=8576,lg=true,ma=48,mcp=1050,md=44,men=2,rcp=0,spd=7.8}
C.units["wh_dlc02_vmp_cav_blood_knights_0"] = {a=110,ai=0,al=22,c="cav_shk",cat="cavalry",cb=72,hp=6720,lg=true,ma=32,mcp=1700,md=42,men=60,rcp=0,spd=7}
C.units["wh_dlc03_bst_cav_razorgor_chariot_0"] = {a=100,ai=25,al=0,c="chariot",cat="war_machine",cb=80,hp=12032,lg=true,ma=34,mcp=1150,md=30,men=8,rcp=0,spd=7}
C.units["wh_dlc03_bst_cha_beastlord_0"] = {a=70,ai=0,al=0,c="com",cat="inf_melee",cb=60,hp=4656,ma=60,mcp=750,md=40,men=1,rcp=0,spd=3.8}
C.units["wh_dlc03_bst_cha_beastlord_0_qb"] = {a=70,ai=0,al=0,c="com",cat="inf_melee",cb=60,hp=4656,ma=60,mcp=1000,md=40,men=1,rcp=0,spd=3.8}
C.units["wh_dlc03_bst_cha_beastlord_1"] = {a=100,ai=25,al=0,c="com",cat="war_machine",cb=90,hp=11432,lg=true,ma=38,mcp=1250,md=32,men=2,rcp=0,spd=7}
C.units["wh_dlc03_bst_cha_bray_shaman_beasts_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=38,hp=4168,ma=30,mcp=350,md=28,men=1,rcp=0,spd=3.8}
C.units["wh_dlc03_bst_cha_bray_shaman_beasts_1"] = {a=100,ai=25,al=0,c="com",cat="war_machine",cb=80,hp=9264,lg=true,ma=34,mcp=850,md=30,men=2,rcp=0,spd=7}
C.units["wh_dlc03_bst_cha_bray_shaman_death_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=38,hp=4168,ma=30,mcp=350,md=28,men=1,rcp=0,spd=3.8}
C.units["wh_dlc03_bst_cha_bray_shaman_death_1"] = {a=100,ai=25,al=0,c="com",cat="war_machine",cb=80,hp=9264,lg=true,ma=34,mcp=850,md=30,men=2,rcp=0,spd=7}
C.units["wh_dlc03_bst_cha_bray_shaman_shadows_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=38,hp=4168,ma=30,mcp=350,md=28,men=1,rcp=0,spd=3.8}
C.units["wh_dlc03_bst_cha_bray_shaman_shadows_1"] = {a=100,ai=25,al=0,c="com",cat="war_machine",cb=80,hp=9264,lg=true,ma=34,mcp=850,md=30,men=2,rcp=0,spd=7}
C.units["wh_dlc03_bst_cha_bray_shaman_wild_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=38,hp=4168,ma=30,mcp=350,md=28,men=1,rcp=0,spd=3.8}
C.units["wh_dlc03_bst_cha_bray_shaman_wild_0_qb"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=38,hp=4168,ma=30,mcp=500,md=28,men=1,rcp=0,spd=3.8}
C.units["wh_dlc03_bst_cha_bray_shaman_wild_1"] = {a=100,ai=25,al=0,c="com",cat="war_machine",cb=80,hp=9264,lg=true,ma=34,mcp=850,md=30,men=2,rcp=0,spd=7}
C.units["wh_dlc03_bst_cha_gorebull_0"] = {a=100,ai=0,al=30,c="com",cat="inf_melee",cb=46,hp=5868,lg=true,ma=34,mcp=1050,md=32,men=1,rcp=0,spd=6.4}
C.units["wh_dlc03_bst_cha_graktar_0"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=60,hp=6128,ma=55,mcp=1000,md=45,men=1,rcp=0,spd=3.8}
C.units["wh_dlc03_bst_cha_khazrak_one_eye_0"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=70,hp=4972,ma=60,mcp=950,md=52,men=1,rcp=0,spd=4.2}
C.units["wh_dlc03_bst_cha_khazrak_one_eye_1"] = {a=100,ai=30,al=0,c="com",cat="war_machine",cb=100,hp=11896,lg=true,ma=40,mcp=1450,md=34,men=2,rcp=0,spd=7}
C.units["wh_dlc03_bst_cha_malagor_the_dark_omen_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=4972,ma=50,mcp=1000,md=45,men=1,rcp=0,spd=3.8}
C.units["wh_dlc03_bst_feral_manticore"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=5103,lg=true,ma=40,mcp=800,md=34,men=1,rcp=0,spd=7}
C.units["wh_dlc03_bst_inf_bestigor_herd_0"] = {a=95,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=36,hp=10000,ma=35,mcp=1000,md=30,men=100,rcp=0,spd=3.8}
C.units["wh_dlc03_bst_inf_centigors_0"] = {a=35,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=42,hp=6720,ma=24,mcp=800,md=28,men=60,rcp=0,spd=8.4}
C.units["wh_dlc03_bst_inf_centigors_1"] = {a=35,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=30,hp=5880,ma=22,mcp=350,md=20,men=60,rcp=475,spd=8.4}
C.units["wh_dlc03_bst_inf_centigors_2"] = {a=35,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=42,hp=6720,ma=22,mcp=1000,md=22,men=60,rcp=0,spd=8.4}
C.units["wh_dlc03_bst_inf_chaos_warhounds_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=6080,ma=26,mcp=400,md=17,men=80,rcp=0,spd=9.5}
C.units["wh_dlc03_bst_inf_chaos_warhounds_1"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=6080,ma=26,mcp=450,md=17,men=80,rcp=0,spd=9.5}
C.units["wh_dlc03_bst_inf_cygor_0"] = {a=50,ai=0,al=0,c="spcl",cat="inf_ranged",cb=28,hp=9800,lg=true,ma=44,mcp=750,md=25,men=1,rcp=800,spd=3.9}
C.units["wh_dlc03_bst_inf_cygor_0_summoned"] = {a=50,ai=0,al=0,c="spcl",cat="inf_ranged",cb=28,hp=9800,lg=true,ma=44,mcp=375,md=25,men=1,rcp=400,spd=3.9}
C.units["wh_dlc03_bst_inf_gor_herd_0"] = {a=15,ai=5,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=9600,ma=36,mcp=625,md=25,men=120,rcp=0,spd=3.8}
C.units["wh_dlc03_bst_inf_gor_herd_1"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=9600,ma=26,mcp=500,md=35,men=120,rcp=0,spd=3.8}
C.units["wh_dlc03_bst_inf_minotaurs_0"] = {a=35,ai=18,al=0,c="inf_mel",cat="inf_melee",cb=34,hp=8704,lg=true,ma=34,mcp=1250,md=32,men=16,rcp=0,spd=6.2}
C.units["wh_dlc03_bst_inf_minotaurs_1"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=32,hp=8704,lg=true,ma=34,mcp=1250,md=45,men=16,rcp=0,spd=6.2}
C.units["wh_dlc03_bst_inf_minotaurs_2"] = {a=35,ai=0,al=25,c="inf_mel",cat="inf_melee",cb=40,hp=8704,lg=true,ma=34,mcp=1250,md=32,men=16,rcp=0,spd=6.2}
C.units["wh_dlc03_bst_inf_razorgor_herd_0"] = {a=45,ai=0,al=0,c="spcl",cat="inf_melee",cb=46,hp=6176,ma=24,mcp=550,md=18,men=32,rcp=0,spd=7}
C.units["wh_dlc03_bst_inf_ungor_herd_1"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=15,hp=8960,ma=22,mcp=400,md=24,men=160,rcp=0,spd=3.6}
C.units["wh_dlc03_bst_inf_ungor_raiders_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=6360,ma=20,mcp=85,md=18,men=120,rcp=340,spd=3.6}
C.units["wh_dlc03_bst_inf_ungor_spearmen_0"] = {a=15,ai=0,al=12,c="inf_mel",cat="inf_melee",cb=6,hp=8960,ma=20,mcp=350,md=22,men=160,rcp=0,spd=3.6}
C.units["wh_dlc03_bst_inf_ungor_spearmen_1"] = {a=15,ai=0,al=12,c="inf_mel",cat="inf_melee",cb=6,hp=8960,ma=20,mcp=400,md=30,men=160,rcp=0,spd=3.6}
C.units["wh_dlc03_bst_mon_chaos_spawn_0"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=8768,lg=true,ma=36,mcp=950,md=28,men=16,rcp=0,spd=4.2}
C.units["wh_dlc03_bst_mon_chaos_spawn_0_summoned"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=8768,lg=true,ma=36,mcp=475,md=28,men=16,rcp=0,spd=4.2}
C.units["wh_dlc03_bst_mon_giant_0"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=12620,lg=true,ma=65,mcp=1500,md=30,men=1,rcp=0,spd=3.9}
C.units["wh_dlc03_emp_cha_boris_todbringer_0"] = {a=95,ai=0,al=0,c="com",cat="inf_melee",cb=55,hp=4287,ma=62,mcp=850,md=53,men=1,rcp=0,spd=3.4}
C.units["wh_dlc03_emp_cha_boris_todbringer_1"] = {a=115,ai=0,al=0,c="com",cat="cavalry",cb=80,hp=4892,lg=true,ma=62,mcp=1100,md=53,men=1,rcp=0,spd=7.8}
C.units["wh_dlc03_emp_cha_boris_todbringer_2"] = {a=100,ai=0,al=0,c="com",cat="cavalry",cb=80,hp=5192,lg=true,ma=62,mcp=1350,md=53,men=1,rcp=0,spd=8.2}
C.units["wh_dlc03_emp_cha_boris_todbringer_3"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6827,lg=true,ma=45,mcp=1600,md=46,men=1,rcp=0,spd=7}
C.units["wh_dlc03_emp_cha_wizard_beasts_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=30,mcp=250,md=25,men=1,rcp=0,spd=3.5}
C.units["wh_dlc03_emp_cha_wizard_beasts_1"] = {a=20,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=30,mcp=450,md=25,men=1,rcp=0,spd=7.8}
C.units["wh_dlc03_emp_cha_wizard_beasts_2"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=30,mcp=500,md=25,men=1,rcp=0,spd=7.8}
C.units["wh_dlc03_emp_cha_wizard_beasts_3"] = {a=50,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=5728,lg=true,ma=40,mcp=1300,md=30,men=1,rcp=0,spd=7}
C.units["wh_dlc03_emp_cha_wizard_beasts_4"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=4008,lg=true,ma=30,mcp=650,md=25,men=1,rcp=0,spd=8.2}
C.units["wh_dlc04_emp_art_hammer_of_the_witches_0"] = {a=20,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2464,ma=13,mcp=120,md=10,men=44,rcp=980,spd=3}
C.units["wh_dlc04_emp_art_sunmaker_0"] = {a=20,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2464,ma=14,mcp=180,md=9,men=44,rcp=1620,spd=3}
C.units["wh_dlc04_emp_cav_knights_blazing_sun_0"] = {a=100,ai=0,al=0,c="cav_mel",cat="cavalry",cb=78,hp=6480,lg=true,ma=40,mcp=1200,md=26,men=60,rcp=0,spd=7.8}
C.units["wh_dlc04_emp_cav_royal_altdorf_gryphites_0"] = {a=125,ai=0,al=25,c="cav_shk",cat="cavalry",cb=60,hp=7200,lg=true,ma=43,mcp=1850,md=45,men=32,rcp=0,spd=7.5}
C.units["wh_dlc04_emp_cav_zintlers_reiksguard_0"] = {a=120,ai=0,al=0,c="cav_shk",cat="cavalry",cb=62,hp=6480,lg=true,ma=43,mcp=1350,md=39,men=60,rcp=0,spd=7.8}
C.units["wh_dlc04_emp_cha_arch_lector_0"] = {a=95,ai=10,al=0,c="com",cat="inf_melee",cb=26,hp=4068,ma=35,mcp=550,md=55,men=1,rcp=0,spd=3.1}
C.units["wh_dlc04_emp_cha_arch_lector_1"] = {a=95,ai=10,al=0,c="com",cat="cavalry",cb=46,hp=4672,lg=true,ma=35,mcp=750,md=55,men=1,rcp=0,spd=7}
C.units["wh_dlc04_emp_cha_arch_lector_2"] = {a=120,ai=10,al=0,c="com",cat="cavalry",cb=46,hp=4672,lg=true,ma=35,mcp=800,md=55,men=1,rcp=0,spd=7.8}
C.units["wh_dlc04_emp_cha_volkmar_the_grim_0"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4672,ma=55,mcp=750,md=45,men=1,rcp=0,spd=3.4}
C.units["wh_dlc04_emp_cha_volkmar_the_grim_1"] = {a=100,ai=25,al=0,c="com",cat="war_machine",cb=50,hp=13216,lg=true,ma=30,mcp=1550,md=25,men=2,rcp=0,spd=5}
C.units["wh_dlc04_emp_cha_volkmar_the_grim_2"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=5308,lg=true,ma=55,mcp=950,md=45,men=1,rcp=0,spd=7.8}
C.units["wh_dlc04_emp_cha_volkmar_the_grim_3"] = {a=80,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=5308,lg=true,ma=55,mcp=1000,md=45,men=1,rcp=0,spd=7.8}
C.units["wh_dlc04_emp_inf_flagellants_0"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=28,hp=8760,ma=32,mcp=600,md=12,men=120,rcp=0,spd=3.6}
C.units["wh_dlc04_emp_inf_free_company_militia_0"] = {a=25,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=14,hp=7320,ma=28,mcp=250,md=25,men=120,rcp=200,spd=3.6}
C.units["wh_dlc04_emp_inf_sigmars_sons_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=8880,ma=41,mcp=700,md=41,men=120,rcp=0,spd=3}
C.units["wh_dlc04_emp_inf_silver_bullets_0"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=6210,ma=22,mcp=175,md=23,men=90,rcp=675,spd=3.3}
C.units["wh_dlc04_emp_inf_stirlands_revenge_0"] = {a=25,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=14,hp=7320,ma=36,mcp=450,md=32,men=120,rcp=350,spd=3.6}
C.units["wh_dlc04_emp_inf_tattersouls_0"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=28,hp=11680,ma=41,mcp=875,md=17,men=160,rcp=0,spd=3.6}
C.units["wh_dlc04_emp_veh_templehof_luminark_0"] = {a=60,ai=0,al=0,c="chariot",cat="war_machine",cb=18,hp=9216,lg=true,ma=17,mcp=200,md=12,men=2,rcp=1700,spd=5}
C.units["wh_dlc04_vmp_cav_chillgheists_0"] = {a=0,ai=0,al=0,c="cav_mel",cat="cavalry",cb=55,hp=6960,lg=true,ma=43,mcp=1700,md=40,men=60,rcp=0,spd=9.4}
C.units["wh_dlc04_vmp_cav_vereks_reavers_0"] = {a=110,ai=0,al=0,c="cav_shk",cat="cavalry",cb=75,hp=6600,lg=true,ma=38,mcp=1300,md=36,men=60,rcp=0,spd=7.2}
C.units["wh_dlc04_vmp_cha_helman_ghorst_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=13,hp=4608,ma=30,mcp=550,md=44,men=1,rcp=0,spd=3.4}
C.units["wh_dlc04_vmp_cha_helman_ghorst_1"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=13,hp=5860,lg=true,ma=30,mcp=1050,md=44,men=1,rcp=0,spd=2.3}
C.units["wh_dlc04_vmp_cha_master_necromancer_1"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=12,hp=5660,lg=true,ma=33,mcp=450,md=33,men=1,rcp=0,spd=2.3}
C.units["wh_dlc04_vmp_cha_master_necromancer_2"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=12,hp=5660,lg=true,ma=33,mcp=550,md=33,men=1,rcp=0,spd=2.3}
C.units["wh_dlc04_vmp_cha_master_necromancer_3"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=12,hp=5660,lg=true,ma=33,mcp=650,md=33,men=1,rcp=0,spd=2.3}
C.units["wh_dlc04_vmp_cha_necromancer_1"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=12,hp=5660,lg=true,ma=33,mcp=400,md=33,men=1,rcp=0,spd=2.3}
C.units["wh_dlc04_vmp_cha_necromancer_2"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=12,hp=5660,lg=true,ma=33,mcp=500,md=33,men=1,rcp=0,spd=2.3}
C.units["wh_dlc04_vmp_cha_necromancer_3"] = {a=45,ai=0,al=0,c="com",cat="war_machine",cb=12,hp=5660,lg=true,ma=33,mcp=600,md=33,men=1,rcp=0,spd=2.3}
C.units["wh_dlc04_vmp_cha_strigoi_ghoul_king_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=5376,ma=75,mcp=1100,md=50,men=1,rcp=0,spd=5}
C.units["wh_dlc04_vmp_cha_strigoi_ghoul_king_0_boss"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=13308,ma=54,mcp=2300,md=40,men=1,rcp=0,spd=5}
C.units["wh_dlc04_vmp_cha_strigoi_ghoul_king_1"] = {a=80,ai=0,al=35,c="com",cat="war_beast",cb=45,hp=8289,lg=true,ma=52,mcp=2100,md=47,men=1,rcp=0,spd=6.5}
C.units["wh_dlc04_vmp_cha_vlad_von_carstein_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=5496,ma=70,mcp=1200,md=50,men=1,rcp=0,spd=4}
C.units["wh_dlc04_vmp_inf_feasters_in_the_dusk_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=16,hp=9000,ma=41,mcp=700,md=32,men=120,rcp=0,spd=4.2}
C.units["wh_dlc04_vmp_inf_konigstein_stalkers_0"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=9760,ma=24,mcp=475,md=29,men=160,rcp=0,spd=3.1}
C.units["wh_dlc04_vmp_inf_sternsmen_0"] = {a=90,ai=8,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=9840,ma=34,mcp=1150,md=45,men=120,rcp=0,spd=2.7}
C.units["wh_dlc04_vmp_inf_tithe_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=3,hp=15400,ma=8,mcp=200,md=9,men=200,rcp=0,spd=2.5}
C.units["wh_dlc04_vmp_mon_devils_swartzhafen_0"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=6320,lg=true,ma=50,mcp=1300,md=32,men=16,rcp=0,spd=6.5}
C.units["wh_dlc04_vmp_mon_direpack_0"] = {a=0,ai=0,al=14,c="inf_mel",cat="inf_melee",cb=28,hp=6080,ma=34,mcp=865,md=19,men=80,rcp=0,spd=9.5}
C.units["wh_dlc04_vmp_veh_claw_of_nagash_0"] = {a=40,ai=15,al=0,c="chariot",cat="war_machine",cb=12,hp=127656,lg=true,ma=38,mcp=1700,md=18,men=18,rcp=0,spd=3}
C.units["wh_dlc04_vmp_veh_corpse_cart_0"] = {a=45,ai=0,al=0,c="chariot",cat="war_machine",cb=8,hp=4892,lg=true,ma=10,mcp=350,md=22,men=1,rcp=0,spd=2.3}
C.units["wh_dlc04_vmp_veh_corpse_cart_1"] = {a=45,ai=0,al=0,c="chariot",cat="war_machine",cb=8,hp=4892,lg=true,ma=10,mcp=400,md=22,men=1,rcp=0,spd=2.3}
C.units["wh_dlc04_vmp_veh_corpse_cart_2"] = {a=45,ai=0,al=0,c="chariot",cat="war_machine",cb=8,hp=4892,lg=true,ma=10,mcp=500,md=22,men=1,rcp=0,spd=2.3}
C.units["wh_dlc04_vmp_veh_mortis_engine_0"] = {a=40,ai=15,al=0,c="chariot",cat="war_machine",cb=12,hp=127656,lg=true,ma=30,mcp=1400,md=13,men=18,rcp=0,spd=3}
C.units["wh_dlc05_bst_cha_morghur_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=56,hp=6092,ma=55,mcp=1200,md=45,men=1,rcp=0,spd=3.9}
C.units["wh_dlc05_bst_cha_morghur_0_boss"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=67,hp=9328,ma=55,mcp=1300,md=45,men=1,rcp=0,spd=3.7}
C.units["wh_dlc05_bst_mon_chaos_spawn_0_boss"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=8768,lg=true,ma=36,mcp=1200,md=28,men=16,rcp=0,spd=4.2}
C.units["wh_dlc05_bst_mon_harpies_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=5220,ma=22,mcp=600,md=38,men=60,rcp=0,spd=4.8}
C.units["wh_dlc05_emp_cha_wizard_life_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=25,mcp=250,md=30,men=1,rcp=0,spd=3.5}
C.units["wh_dlc05_emp_cha_wizard_life_1"] = {a=20,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=25,mcp=450,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_dlc05_emp_cha_wizard_life_2"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=25,mcp=500,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_dlc05_emp_cha_wizard_life_3"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4008,lg=true,ma=25,mcp=650,md=30,men=1,rcp=0,spd=8.2}
C.units["wh_dlc05_emp_cha_wizard_shadows_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=25,mcp=250,md=30,men=1,rcp=0,spd=3.5}
C.units["wh_dlc05_emp_cha_wizard_shadows_1"] = {a=20,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=25,mcp=450,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_dlc05_emp_cha_wizard_shadows_2"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=25,mcp=500,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_dlc05_emp_cha_wizard_shadows_3"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4008,lg=true,ma=25,mcp=650,md=30,men=1,rcp=0,spd=8.2}
C.units["wh_dlc05_vmp_cha_red_duke_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4208,ma=70,mcp=1150,md=48,men=1,rcp=0,spd=3.8}
C.units["wh_dlc05_vmp_cha_red_duke_1"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=4852,lg=true,ma=70,mcp=1600,md=48,men=1,rcp=0,spd=6.5}
C.units["wh_dlc05_vmp_cha_red_duke_2"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=4852,lg=true,ma=70,mcp=1400,md=48,men=1,rcp=0,spd=7.8}
C.units["wh_dlc05_vmp_cha_red_duke_3"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=8236,lg=true,ma=52,mcp=2250,md=48,men=1,rcp=0,spd=6.5}
C.units["wh_dlc05_vmp_cha_vampire_shadows_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=3572,ma=60,mcp=650,md=40,men=1,rcp=0,spd=4}
C.units["wh_dlc05_vmp_cha_vampire_shadows_1"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=3908,lg=true,ma=60,mcp=900,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_dlc05_vmp_cha_vampire_shadows_2"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=3908,lg=true,ma=60,mcp=1100,md=40,men=1,rcp=0,spd=6.5}
C.units["wh_dlc05_wef_cav_glade_riders_0"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=24,hp=4800,lg=true,ma=28,mcp=250,md=24,men=60,rcp=450,spd=9.4}
C.units["wh_dlc05_wef_cav_glade_riders_1"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=24,hp=4800,lg=true,ma=28,mcp=250,md=24,men=60,rcp=575,spd=9.4}
C.units["wh_dlc05_wef_cav_glade_riders_1_qb"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=24,hp=4800,lg=true,ma=28,mcp=250,md=24,men=60,rcp=575,spd=9.4}
C.units["wh_dlc05_wef_cav_hawk_riders_0"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=55,hp=4368,lg=true,ma=32,mcp=250,md=28,men=24,rcp=750,spd=6.5}
C.units["wh_dlc05_wef_cav_sisters_thorn_0"] = {a=15,ai=0,al=0,c="cav_mis",cat="cavalry",cb=30,hp=6120,lg=true,ma=34,mcp=170,md=33,men=60,rcp=680,spd=9}
C.units["wh_dlc05_wef_cav_wild_riders_0"] = {a=40,ai=0,al=0,c="cav_shk",cat="cavalry",cb=62,hp=6420,lg=true,ma=34,mcp=1000,md=25,men=60,rcp=0,spd=9}
C.units["wh_dlc05_wef_cav_wild_riders_1"] = {a=40,ai=0,al=0,c="cav_shk",cat="cavalry",cb=62,hp=6420,lg=true,ma=34,mcp=1100,md=31,men=60,rcp=0,spd=9}
C.units["wh_dlc05_wef_cha_ancient_treeman_0"] = {a=110,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=9828,lg=true,ma=42,mcp=1300,md=48,men=1,rcp=0,spd=3.5}
C.units["wh_dlc05_wef_cha_branchwraith_0"] = {a=60,ai=0,al=0,c="com",cat="inf_melee",cb=32,hp=4168,ma=47,mcp=450,md=35,men=1,rcp=0,spd=4.3}
C.units["wh_dlc05_wef_cha_durthu_0"] = {a=110,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=10328,lg=true,ma=65,mcp=2000,md=52,men=1,rcp=0,spd=3.5}
C.units["wh_dlc05_wef_cha_female_glade_lord_0"] = {a=50,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=3908,ma=65,mcp=425,md=60,men=1,rcp=425,spd=4.6}
C.units["wh_dlc05_wef_cha_female_glade_lord_0_qb"] = {a=50,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=7984,ma=65,mcp=425,md=60,men=1,rcp=425,spd=4.6}
C.units["wh_dlc05_wef_cha_female_glade_lord_1"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=45,hp=4568,lg=true,ma=65,mcp=525,md=60,men=1,rcp=525,spd=9.4}
C.units["wh_dlc05_wef_cha_female_glade_lord_2"] = {a=50,ai=0,al=0,c="com",cat="war_beast",cb=70,hp=4848,lg=true,ma=65,mcp=700,md=40,men=1,rcp=700,spd=7}
C.units["wh_dlc05_wef_cha_female_glade_lord_2_qb"] = {a=50,ai=0,al=0,c="com",cat="war_beast",cb=70,hp=5576,lg=true,ma=65,mcp=700,md=40,men=1,rcp=700,spd=7}
C.units["wh_dlc05_wef_cha_female_glade_lord_3"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=7616,lg=true,ma=48,mcp=1100,md=42,men=1,rcp=1100,spd=6.5}
C.units["wh_dlc05_wef_cha_glade_lord_0"] = {a=50,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=3908,ma=65,mcp=425,md=60,men=1,rcp=425,spd=4.6}
C.units["wh_dlc05_wef_cha_glade_lord_1"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=45,hp=4568,lg=true,ma=65,mcp=525,md=60,men=1,rcp=525,spd=9.4}
C.units["wh_dlc05_wef_cha_glade_lord_2"] = {a=50,ai=0,al=0,c="com",cat="war_beast",cb=70,hp=4848,lg=true,ma=65,mcp=700,md=40,men=1,rcp=700,spd=7}
C.units["wh_dlc05_wef_cha_glade_lord_3"] = {a=60,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=7616,lg=true,ma=48,mcp=1100,md=42,men=1,rcp=1100,spd=6.5}
C.units["wh_dlc05_wef_cha_orion_0"] = {a=30,ai=0,al=15,c="com",cat="inf_ranged",cb=65,hp=7436,lg=true,ma=65,mcp=1000,md=40,men=1,rcp=600,spd=5.5}
C.units["wh_dlc05_wef_cha_spellsinger_beasts_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3420,ma=33,mcp=300,md=34,men=1,rcp=0,spd=3.4}
C.units["wh_dlc05_wef_cha_spellsinger_beasts_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=34,hp=3840,lg=true,ma=33,mcp=500,md=34,men=1,rcp=0,spd=9.4}
C.units["wh_dlc05_wef_cha_spellsinger_beasts_2"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=4672,lg=true,ma=44,mcp=850,md=30,men=1,rcp=0,spd=7}
C.units["wh_dlc05_wef_cha_spellsinger_beasts_3"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4396,lg=true,ma=40,mcp=600,md=34,men=1,rcp=0,spd=9.5}
C.units["wh_dlc05_wef_cha_spellsinger_life_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3420,ma=33,mcp=300,md=34,men=1,rcp=0,spd=3.4}
C.units["wh_dlc05_wef_cha_spellsinger_life_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=34,hp=3840,lg=true,ma=33,mcp=500,md=34,men=1,rcp=0,spd=9.4}
C.units["wh_dlc05_wef_cha_spellsinger_life_2"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=4672,lg=true,ma=44,mcp=850,md=30,men=1,rcp=0,spd=7}
C.units["wh_dlc05_wef_cha_spellsinger_life_3"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4396,lg=true,ma=40,mcp=600,md=34,men=1,rcp=0,spd=9.5}
C.units["wh_dlc05_wef_cha_spellsinger_shadows_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3420,ma=33,mcp=300,md=34,men=1,rcp=0,spd=3.4}
C.units["wh_dlc05_wef_cha_spellsinger_shadows_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=34,hp=3840,lg=true,ma=33,mcp=500,md=34,men=1,rcp=0,spd=9.4}
C.units["wh_dlc05_wef_cha_spellsinger_shadows_2"] = {a=30,ai=0,al=0,c="com",cat="war_beast",cb=62,hp=4672,lg=true,ma=44,mcp=850,md=30,men=1,rcp=0,spd=7}
C.units["wh_dlc05_wef_cha_spellsinger_shadows_3"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4396,lg=true,ma=40,mcp=600,md=34,men=1,rcp=0,spd=9.5}
C.units["wh_dlc05_wef_cha_waystalker_0"] = {a=40,ai=0,al=0,c="com",cat="inf_ranged",cb=28,hp=3688,ma=55,mcp=150,md=45,men=1,rcp=450,spd=4.2}
C.units["wh_dlc05_wef_forest_dragon_0"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=60,hp=7508,lg=true,ma=46,mcp=1800,md=38,men=1,rcp=0,spd=6.5}
C.units["wh_dlc05_wef_inf_deepwood_scouts_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=7,hp=5520,ma=18,mcp=150,md=22,men=80,rcp=550,spd=3.8}
C.units["wh_dlc05_wef_inf_deepwood_scouts_1"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=7,hp=5520,ma=18,mcp=150,md=22,men=80,rcp=725,spd=3.8}
C.units["wh_dlc05_wef_inf_deepwood_scouts_1_qb"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=7,hp=5520,ma=18,mcp=180,md=27,men=80,rcp=720,spd=3.8}
C.units["wh_dlc05_wef_inf_dryads_0"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=7000,ma=35,mcp=500,md=25,men=100,rcp=0,spd=4.3}
C.units["wh_dlc05_wef_inf_eternal_guard_0"] = {a=40,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=10,hp=7200,ma=26,mcp=475,md=36,men=100,rcp=0,spd=3.3}
C.units["wh_dlc05_wef_inf_eternal_guard_1"] = {a=40,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=6,hp=7200,ma=26,mcp=550,md=44,men=100,rcp=0,spd=3.3}
C.units["wh_dlc05_wef_inf_eternal_guard_1_qb"] = {a=40,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=6,hp=7200,ma=26,mcp=550,md=44,men=100,rcp=0,spd=3.3}
C.units["wh_dlc05_wef_inf_glade_guard_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=7,hp=5940,ma=20,mcp=100,md=27,men=90,rcp=400,spd=3.6}
C.units["wh_dlc05_wef_inf_glade_guard_1"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=7,hp=5940,ma=20,mcp=130,md=27,men=90,rcp=520,spd=3.6}
C.units["wh_dlc05_wef_inf_glade_guard_1_qb"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=7,hp=5940,ma=20,mcp=130,md=22,men=90,rcp=520,spd=3.6}
C.units["wh_dlc05_wef_inf_glade_guard_2"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=7,hp=5940,ma=20,mcp=120,md=27,men=90,rcp=480,spd=3.6}
C.units["wh_dlc05_wef_inf_wardancers_0"] = {a=15,ai=12,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=6800,ma=40,mcp=800,md=38,men=100,rcp=0,spd=4.6}
C.units["wh_dlc05_wef_inf_wardancers_1"] = {a=15,ai=0,al=23,c="inf_mel",cat="inf_melee",cb=12,hp=6800,ma=30,mcp=450,md=49,men=100,rcp=0,spd=4.6}
C.units["wh_dlc05_wef_inf_waywatchers_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=5640,ma=28,mcp=200,md=28,men=60,rcp=950,spd=4}
C.units["wh_dlc05_wef_inf_wildwood_rangers_0"] = {a=40,ai=10,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=8400,ma=40,mcp=900,md=36,men=100,rcp=0,spd=3.8}
C.units["wh_dlc05_wef_mon_great_eagle_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=62,hp=4663,lg=true,ma=44,mcp=750,md=30,men=1,rcp=0,spd=7}
C.units["wh_dlc05_wef_mon_treekin_0"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=8768,lg=true,ma=26,mcp=900,md=46,men=16,rcp=0,spd=3.4}
C.units["wh_dlc05_wef_mon_treeman_0"] = {a=110,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=9828,lg=true,ma=52,mcp=1500,md=56,men=1,rcp=0,spd=3.5}
C.units["wh_dlc06_chs_cav_marauder_horsemasters_0"] = {a=50,ai=0,al=0,c="cav_mis",cat="war_beast",cb=30,hp=5400,lg=true,ma=26,mcp=330,md=26,men=60,rcp=420,spd=9}
C.units["wh_dlc06_chs_cha_chaos_sorcerer_death_9"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5104,lg=true,ma=40,mcp=1000,md=34,men=1,rcp=0,spd=7}
C.units["wh_dlc06_chs_cha_chaos_sorcerer_fire_9"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5104,lg=true,ma=40,mcp=1000,md=34,men=1,rcp=0,spd=7}
C.units["wh_dlc06_chs_cha_chaos_sorcerer_metal_9"] = {a=80,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5104,lg=true,ma=40,mcp=1000,md=34,men=1,rcp=0,spd=7}
C.units["wh_dlc06_chs_feral_manticore"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=5103,lg=true,ma=40,mcp=800,md=34,men=1,rcp=0,spd=7}
C.units["wh_dlc06_chs_inf_aspiring_champions_0"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=9856,ma=40,mcp=1100,md=45,men=16,rcp=0,spd=3.2}
C.units["wh_dlc06_dwf_art_bolt_thrower_0"] = {a=40,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=4368,ma=16,mcp=50,md=20,men=56,rcp=650,spd=2.8}
C.units["wh_dlc06_dwf_art_gob_lobber_0"] = {a=40,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=2496,ma=22,mcp=90,md=27,men=32,rcp=810,spd=2.8}
C.units["wh_dlc06_dwf_cha_belegar_ironhammer_0"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=5988,ma=60,mcp=900,md=60,men=1,rcp=0,spd=3.2}
C.units["wh_dlc06_dwf_cha_master_engineer_ghost_0"] = {a=0,ai=0,al=0,c="com",cat="inf_ranged",cb=18,hp=3908,ma=42,mcp=300,md=32,men=1,rcp=750,spd=3.2}
C.units["wh_dlc06_dwf_cha_runelord_0"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=16,hp=4348,ma=40,mcp=850,md=40,men=1,rcp=0,spd=3.2}
C.units["wh_dlc06_dwf_cha_runelord_1"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=18,hp=5552,lg=true,ma=40,mcp=1250,md=47,men=1,rcp=0,spd=3}
C.units["wh_dlc06_dwf_cha_runesmith_ghost_0"] = {a=0,ai=0,al=0,c="com",cat="inf_melee",cb=16,hp=3908,ma=40,mcp=1100,md=36,men=1,rcp=0,spd=3.2}
C.units["wh_dlc06_dwf_cha_thane_ghost_0"] = {a=0,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4168,ma=55,mcp=1000,md=50,men=1,rcp=0,spd=3.2}
C.units["wh_dlc06_dwf_cha_thane_ghost_1"] = {a=0,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=4168,ma=40,mcp=1000,md=65,men=1,rcp=0,spd=3.2}
C.units["wh_dlc06_dwf_inf_bugmans_rangers_0"] = {a=40,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=6400,ma=24,mcp=300,md=38,men=80,rcp=500,spd=3.3}
C.units["wh_dlc06_dwf_inf_dragonback_slayers_0"] = {a=0,ai=0,al=24,c="inf_mel",cat="inf_melee",cb=26,hp=8640,ma=48,mcp=1200,md=41,men=80,rcp=0,spd=4}
C.units["wh_dlc06_dwf_inf_ekrund_miners_0"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=7600,ma=29,mcp=500,md=24,men=100,rcp=100,spd=2.8}
C.units["wh_dlc06_dwf_inf_norgrimlings_ironbreakers_0"] = {a=125,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=11520,ma=43,mcp=1550,md=79,men=120,rcp=100,spd=2.6}
C.units["wh_dlc06_dwf_inf_norgrimlings_irondrakes_0"] = {a=125,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=3584,ma=27,mcp=105,md=35,men=28,rcp=945,spd=2.6}
C.units["wh_dlc06_dwf_inf_old_grumblers_0"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8600,ma=38,mcp=1000,md=48,men=100,rcp=0,spd=2.6}
C.units["wh_dlc06_dwf_inf_peak_gate_guard_0"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=10000,ma=57,mcp=1550,md=48,men=100,rcp=0,spd=2.8}
C.units["wh_dlc06_dwf_inf_rangers_0"] = {a=40,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=5440,ma=18,mcp=125,md=26,men=80,rcp=400,spd=3.3}
C.units["wh_dlc06_dwf_inf_rangers_1"] = {a=40,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=16,hp=5440,ma=22,mcp=195,md=20,men=80,rcp=455,spd=3.3}
C.units["wh_dlc06_dwf_inf_ulthars_raiders_0"] = {a=40,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=16,hp=5440,ma=29,mcp=250,md=27,men=80,rcp=500,spd=3.3}
C.units["wh_dlc06_dwf_inf_warriors_dragonfire_pass_0"] = {a=85,ai=6,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=7800,ma=29,mcp=700,md=50,men=100,rcp=0,spd=2.8}
C.units["wh_dlc06_dwf_veh_skyhammer_0"] = {a=100,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=30,hp=4248,lg=true,ma=50,mcp=140,md=6,men=4,rcp=1260,spd=6}
C.units["wh_dlc06_emp_cha_arch_lector_0_boss"] = {a=95,ai=10,al=0,c="com",cat="inf_melee",cb=26,hp=6008,ma=35,mcp=1000,md=55,men=1,rcp=0,spd=3.1}
C.units["wh_dlc06_emp_cha_captain_0_boss"] = {a=85,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=3688,ma=50,mcp=700,md=40,men=1,rcp=0,spd=3.4}
C.units["wh_dlc06_emp_cha_witch_hunter_boss"] = {a=30,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=4784,ma=36,mcp=400,md=34,men=1,rcp=600,spd=3.4}
C.units["wh_dlc06_grn_art_hammer_of_gork_0"] = {a=15,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2332,ma=14,mcp=70,md=9,men=44,rcp=700,spd=3.3}
C.units["wh_dlc06_grn_cav_broken_tusks_mob_0"] = {a=100,ai=0,al=12,c="cav_shk",cat="cavalry",cb=50,hp=7440,lg=true,ma=30,mcp=1300,md=35,men=60,rcp=0,spd=7}
C.units["wh_dlc06_grn_cav_deff_creepers_0"] = {a=45,ai=0,al=0,c="cav_mis",cat="cavalry",cb=14,hp=4620,lg=true,ma=20,mcp=150,md=29,men=60,rcp=475,spd=7.8}
C.units["wh_dlc06_grn_cav_durkits_squigs_0"] = {a=25,ai=10,al=0,c="cav_mel",cat="cavalry",cb=35,hp=5400,lg=true,ma=36,mcp=750,md=28,men=60,rcp=0,spd=8.2}
C.units["wh_dlc06_grn_cav_mogrubbs_marauders_0"] = {a=25,ai=0,al=0,c="cav_mis",cat="cavalry",cb=18,hp=3920,lg=true,ma=20,mcp=150,md=19,men=80,rcp=475,spd=9.2}
C.units["wh_dlc06_grn_cav_moon_howlers_0"] = {a=25,ai=0,al=0,c="cav_mel",cat="cavalry",cb=23,hp=4080,lg=true,ma=29,mcp=450,md=29,men=80,rcp=0,spd=9.2}
C.units["wh_dlc06_grn_cav_squig_hoppers_0"] = {a=25,ai=10,al=0,c="cav_mel",cat="cavalry",cb=32,hp=5400,lg=true,ma=28,mcp=650,md=20,men=60,rcp=0,spd=8.2}
C.units["wh_dlc06_grn_cav_teef_robbers_0"] = {a=45,ai=12,al=0,c="chariot",cat="war_machine",cb=38,hp=18720,lg=true,ma=22,mcp=104,md=27,men=36,rcp=416,spd=11}
C.units["wh_dlc06_grn_cha_night_goblin_warboss_0"] = {a=25,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=3869,ma=45,mcp=550,md=53,men=1,rcp=0,spd=3.5}
C.units["wh_dlc06_grn_cha_night_goblin_warboss_1"] = {a=55,ai=20,al=0,c="com",cat="cavalry",cb=65,hp=4412,lg=true,ma=45,mcp=850,md=53,men=1,rcp=0,spd=8.2}
C.units["wh_dlc06_grn_cha_skarsnik_0"] = {a=50,ai=0,al=30,c="com",cat="inf_melee",cb=52,hp=6601,ma=48,mcp=1200,md=55,men=1,rcp=0,spd=3.5}
C.units["wh_dlc06_grn_cha_wurrzag_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=55,hp=4903,ma=43,mcp=700,md=25,men=1,rcp=0,spd=3.6}
C.units["wh_dlc06_grn_cha_wurrzag_1"] = {a=55,ai=0,al=0,c="com",cat="cavalry",cb=80,hp=5548,lg=true,ma=43,mcp=950,md=25,men=1,rcp=0,spd=7}
C.units["wh_dlc06_grn_inf_da_eight_peaks_loonies_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=14,hp=8960,ma=34,mcp=725,md=31,men=160,rcp=0,spd=3.5}
C.units["wh_dlc06_grn_inf_da_rusty_arrers_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=9,hp=6480,ma=20,mcp=60,md=27,men=120,rcp=540,spd=3.5}
C.units["wh_dlc06_grn_inf_da_warlords_boyz_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=14,hp=8960,ma=34,mcp=550,md=31,men=160,rcp=0,spd=3.5}
C.units["wh_dlc06_grn_inf_krimson_killerz_0"] = {a=110,ai=8,al=0,c="inf_mel",cat="inf_melee",cb=42,hp=10800,ma=43,mcp=1350,md=46,men=80,rcp=0,spd=2.9}
C.units["wh_dlc06_grn_inf_nasty_skulkers_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=8320,ma=26,mcp=500,md=16,men=160,rcp=0,spd=3.7}
C.units["wh_dlc06_grn_inf_squig_explosive_0"] = {a=50,ai=11,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=668,ma=26,mcp=425,md=20,men=1,rcp=0,spd=5.8}
C.units["wh_dlc06_grn_inf_squig_herd_0"] = {a=50,ai=11,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=5320,ma=26,mcp=400,md=20,men=40,rcp=0,spd=5.8}
C.units["wh_dlc06_grn_mon_spider_hatchlings_0"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=19,hp=4380,ma=22,mcp=250,md=20,men=60,rcp=0,spd=7.6}
C.units["wh_dlc06_grn_mon_spider_hatchlings_0_summoned"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=19,hp=4380,ma=22,mcp=225,md=20,men=60,rcp=0,spd=7.6}
C.units["wh_dlc06_grn_mon_venom_queen_0"] = {a=120,ai=0,al=20,c="inf_mel",cat="war_beast",cb=40,hp=79720,lg=true,ma=70,mcp=2100,md=38,men=8,rcp=0,spd=5.7}
C.units["wh_dlc07_brt_art_blessed_field_trebuchet_0"] = {a=15,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2332,ma=10,mcp=90,md=6,men=44,rcp=810,spd=3}
C.units["wh_dlc07_brt_cav_grail_guardians_0"] = {a=120,ai=0,al=0,c="cav_mel",cat="cavalry",cb=50,hp=7808,lg=true,ma=42,mcp=1900,md=58,men=32,rcp=0,spd=8.4}
C.units["wh_dlc07_brt_cav_knights_errant_0"] = {a=80,ai=0,al=0,c="cav_shk",cat="cavalry",cb=55,hp=5700,lg=true,ma=28,mcp=700,md=28,men=60,rcp=0,spd=8.4}
C.units["wh_dlc07_brt_cav_questing_knights_0"] = {a=90,ai=0,al=0,c="cav_shk",cat="cavalry",cb=40,hp=6480,lg=true,ma=40,mcp=1100,md=39,men=60,rcp=0,spd=8.4}
C.units["wh_dlc07_brt_cav_royal_hippogryph_knights_0"] = {a=90,ai=0,al=0,c="cav_shk",cat="war_beast",cb=50,hp=8016,lg=true,ma=46,mcp=2200,md=36,men=12,rcp=0,spd=7}
C.units["wh_dlc07_brt_cav_royal_pegasus_knights_0"] = {a=80,ai=0,al=15,c="cav_shk",cat="cavalry",cb=75,hp=6552,lg=true,ma=42,mcp=1600,md=36,men=24,rcp=0,spd=8.2}
C.units["wh_dlc07_brt_cha_alberic_bordeleaux_0"] = {a=90,ai=0,al=30,c="com",cat="inf_melee",cb=60,hp=4168,ma=57,mcp=750,md=40,men=1,rcp=0,spd=3.4}
C.units["wh_dlc07_brt_cha_alberic_bordeleaux_1"] = {a=110,ai=0,al=30,c="com",cat="cavalry",cb=85,hp=4784,lg=true,ma=57,mcp=1000,md=40,men=1,rcp=0,spd=8.4}
C.units["wh_dlc07_brt_cha_alberic_bordeleaux_2"] = {a=90,ai=0,al=30,c="com",cat="cavalry",cb=90,hp=5208,lg=true,ma=57,mcp=1250,md=40,men=1,rcp=0,spd=8.2}
C.units["wh_dlc07_brt_cha_alberic_bordeleaux_3"] = {a=90,ai=0,al=30,c="com",cat="war_beast",cb=75,hp=6596,lg=true,ma=52,mcp=1650,md=35,men=1,rcp=0,spd=7}
C.units["wh_dlc07_brt_cha_damsel_beasts_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=34,mcp=250,md=22,men=1,rcp=0,spd=4}
C.units["wh_dlc07_brt_cha_damsel_beasts_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=34,mcp=450,md=22,men=1,rcp=0,spd=9.2}
C.units["wh_dlc07_brt_cha_damsel_beasts_2"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=34,mcp=500,md=22,men=1,rcp=0,spd=8.4}
C.units["wh_dlc07_brt_cha_damsel_beasts_3"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4396,lg=true,ma=40,mcp=550,md=26,men=1,rcp=0,spd=9.5}
C.units["wh_dlc07_brt_cha_damsel_life_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=34,mcp=250,md=22,men=1,rcp=0,spd=4}
C.units["wh_dlc07_brt_cha_damsel_life_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=34,mcp=450,md=22,men=1,rcp=0,spd=9.2}
C.units["wh_dlc07_brt_cha_damsel_life_2"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=34,mcp=500,md=22,men=1,rcp=0,spd=8.4}
C.units["wh_dlc07_brt_cha_damsel_life_3"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4396,lg=true,ma=40,mcp=550,md=26,men=1,rcp=0,spd=9.5}
C.units["wh_dlc07_brt_cha_fay_enchantress_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=3688,ma=38,mcp=550,md=34,men=1,rcp=0,spd=3.4}
C.units["wh_dlc07_brt_cha_fay_enchantress_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=74,hp=4568,lg=true,ma=46,mcp=850,md=34,men=1,rcp=0,spd=9.5}
C.units["wh_dlc07_brt_cha_green_knight_0"] = {a=0,ai=0,al=0,c="com",cat="cavalry",cb=85,hp=5266,lg=true,ma=60,mcp=1500,md=50,men=1,rcp=0,spd=8.4}
C.units["wh_dlc07_brt_cha_prophetess_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=3688,ma=34,mcp=400,md=30,men=1,rcp=0,spd=3.4}
C.units["wh_dlc07_brt_cha_prophetess_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4160,lg=true,ma=34,mcp=600,md=30,men=1,rcp=0,spd=9.2}
C.units["wh_dlc07_brt_cha_prophetess_2"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4160,lg=true,ma=34,mcp=650,md=30,men=1,rcp=0,spd=8.4}
C.units["wh_dlc07_brt_cha_prophetess_3"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=4456,lg=true,ma=34,mcp=800,md=30,men=1,rcp=0,spd=8.2}
C.units["wh_dlc07_brt_cha_prophetess_beasts_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=3688,ma=34,mcp=400,md=30,men=1,rcp=0,spd=3.4}
C.units["wh_dlc07_brt_cha_prophetess_beasts_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4160,lg=true,ma=34,mcp=600,md=30,men=1,rcp=0,spd=9.2}
C.units["wh_dlc07_brt_cha_prophetess_beasts_2"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4160,lg=true,ma=34,mcp=650,md=30,men=1,rcp=0,spd=8.4}
C.units["wh_dlc07_brt_cha_prophetess_beasts_3"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=4456,lg=true,ma=34,mcp=800,md=30,men=1,rcp=0,spd=8.2}
C.units["wh_dlc07_brt_cha_prophetess_heavens_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=3688,ma=34,mcp=400,md=30,men=1,rcp=0,spd=3.4}
C.units["wh_dlc07_brt_cha_prophetess_heavens_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4160,lg=true,ma=34,mcp=600,md=30,men=1,rcp=0,spd=9.2}
C.units["wh_dlc07_brt_cha_prophetess_heavens_2"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4160,lg=true,ma=34,mcp=650,md=30,men=1,rcp=0,spd=8.4}
C.units["wh_dlc07_brt_cha_prophetess_heavens_3"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=4456,lg=true,ma=34,mcp=800,md=30,men=1,rcp=0,spd=8.2}
C.units["wh_dlc07_brt_inf_battle_pilgrims_0"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8280,ma=32,mcp=600,md=33,men=120,rcp=0,spd=3}
C.units["wh_dlc07_brt_inf_foot_squires_0"] = {a=70,ai=12,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8280,ma=28,mcp=750,md=26,men=120,rcp=0,spd=2.8}
C.units["wh_dlc07_brt_inf_grail_reliquae_0"] = {a=40,ai=0,al=0,c="spcl",cat="inf_melee",cb=12,hp=3474,lg=true,ma=24,mcp=500,md=28,men=1,rcp=0,spd=4}
C.units["wh_dlc07_brt_inf_men_at_arms_1"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=7800,ma=27,mcp=250,md=26,men=120,rcp=0,spd=3}
C.units["wh_dlc07_brt_inf_men_at_arms_2"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=7800,ma=27,mcp=325,md=34,men=120,rcp=0,spd=3}
C.units["wh_dlc07_brt_inf_peasant_bowmen_1"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=3,hp=4860,ma=10,mcp=45,md=14,men=90,rcp=405,spd=3.3}
C.units["wh_dlc07_brt_inf_peasant_bowmen_2"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=3,hp=4860,ma=10,mcp=45,md=14,men=90,rcp=405,spd=3.3}
C.units["wh_dlc07_brt_inf_peasant_mob_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=8640,ma=18,mcp=125,md=10,men=160,rcp=0,spd=3.3}
C.units["wh_dlc07_brt_inf_spearmen_at_arms_1"] = {a=30,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=4,hp=7800,ma=18,mcp=250,md=30,men=120,rcp=0,spd=3}
C.units["wh_dlc08_bst_mon_cygor_boss"] = {a=50,ai=0,al=0,c="com",cat="inf_ranged",cb=28,hp=11768,lg=true,ma=59,mcp=800,md=34,men=1,rcp=800,spd=4.5}
C.units["wh_dlc08_chs_cha_chaos_lord_2_qb"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=70,hp=5232,lg=true,ma=54,mcp=2100,md=45,men=1,rcp=0,spd=6.5}
C.units["wh_dlc08_chs_mon_dragon_ogre_shaggoth_boss"] = {a=70,ai=0,al=30,c="com",cat="inf_melee",cb=74,hp=16790,lg=true,ma=75,mcp=2000,md=65,men=1,rcp=0,spd=11.7}
C.units["wh_dlc08_chs_mon_dragon_ogre_shaggoth_minor_boss"] = {a=70,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=52,hp=8588,lg=true,ma=58,mcp=2000,md=44,men=1,rcp=0,spd=7.6}
C.units["wh_dlc08_grn_mon_arachnarok_spider_boss"] = {a=120,ai=0,al=20,c="inf_mel",cat="war_beast",cb=40,hp=79720,lg=true,ma=70,mcp=2400,md=41,men=8,rcp=0,spd=5.7}
C.units["wh_dlc08_grn_mon_giant_boss"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=16498,lg=true,ma=75,mcp=1500,md=76,men=1,rcp=0,spd=4.5}
C.units["wh_dlc08_nor_art_hellcannon_battery"] = {a=30,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=7440,ma=18,mcp=300,md=14,men=48,rcp=2700,spd=2.8}
C.units["wh_dlc08_nor_cav_marauder_horsemasters_0"] = {a=50,ai=0,al=0,c="cav_mis",cat="war_beast",cb=30,hp=5400,lg=true,ma=26,mcp=180,md=26,men=60,rcp=420,spd=9}
C.units["wh_dlc08_nor_cav_marauder_warwolves_chariot_0"] = {a=90,ai=18,al=0,c="chariot",cat="war_machine",cb=76,hp=11904,lg=true,ma=34,mcp=1050,md=32,men=8,rcp=0,spd=9.5}
C.units["wh_dlc08_nor_cha_arzik_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=8176,lg=true,ma=60,mcp=1650,md=40,men=1,rcp=0,spd=5.4}
C.units["wh_dlc08_nor_cha_fimir_balefiend_fire_0"] = {a=65,ai=0,al=0,c="com",cat="inf_melee",cb=25,hp=5040,lg=true,ma=35,mcp=550,md=35,men=1,rcp=0,spd=5.4}
C.units["wh_dlc08_nor_cha_fimir_balefiend_shadow_0"] = {a=65,ai=0,al=0,c="com",cat="inf_melee",cb=25,hp=5040,lg=true,ma=35,mcp=550,md=35,men=1,rcp=0,spd=5.4}
C.units["wh_dlc08_nor_cha_kihar_0"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=60,hp=6892,lg=true,ma=42,mcp=2100,md=40,men=1,rcp=0,spd=6.5}
C.units["wh_dlc08_nor_cha_shaman_sorcerer_death_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3360,ma=30,mcp=275,md=30,men=1,rcp=0,spd=3.5}
C.units["wh_dlc08_nor_cha_shaman_sorcerer_death_1"] = {a=30,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3740,lg=true,ma=30,mcp=475,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_dlc08_nor_cha_shaman_sorcerer_death_2"] = {a=90,ai=26,al=0,c="com",cat="war_machine",cb=52,hp=8232,lg=true,ma=30,mcp=775,md=24,men=2,rcp=0,spd=7.8}
C.units["wh_dlc08_nor_cha_shaman_sorcerer_fire_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3360,ma=30,mcp=275,md=30,men=1,rcp=0,spd=3.5}
C.units["wh_dlc08_nor_cha_shaman_sorcerer_fire_1"] = {a=30,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3740,lg=true,ma=30,mcp=475,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_dlc08_nor_cha_shaman_sorcerer_fire_2"] = {a=90,ai=26,al=0,c="com",cat="war_machine",cb=52,hp=8232,lg=true,ma=30,mcp=775,md=24,men=2,rcp=0,spd=7.8}
C.units["wh_dlc08_nor_cha_shaman_sorcerer_metal_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3360,ma=30,mcp=275,md=30,men=1,rcp=0,spd=3.5}
C.units["wh_dlc08_nor_cha_shaman_sorcerer_metal_1"] = {a=30,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3740,lg=true,ma=30,mcp=475,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_dlc08_nor_cha_shaman_sorcerer_metal_2"] = {a=90,ai=26,al=0,c="com",cat="war_machine",cb=52,hp=8232,lg=true,ma=30,mcp=775,md=24,men=2,rcp=0,spd=7.8}
C.units["wh_dlc08_nor_cha_skin_wolf_werekin_0"] = {a=70,ai=0,al=36,c="com",cat="inf_melee",cb=40,hp=5040,lg=true,ma=45,mcp=1100,md=32,men=1,rcp=0,spd=7.5}
C.units["wh_dlc08_nor_cha_throgg_0"] = {a=55,ai=0,al=28,c="com",cat="inf_melee",cb=50,hp=8008,lg=true,ma=60,mcp=1600,md=50,men=1,rcp=0,spd=5.6}
C.units["wh_dlc08_nor_cha_wulfrik_0"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=4840,ma=70,mcp=1000,md=50,men=1,rcp=0,spd=3.5}
C.units["wh_dlc08_nor_cha_wulfrik_1"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=5152,lg=true,ma=70,mcp=1200,md=50,men=1,rcp=0,spd=9}
C.units["wh_dlc08_nor_cha_wulfrik_2"] = {a=100,ai=20,al=0,c="com",cat="war_machine",cb=90,hp=11568,lg=true,ma=48,mcp=1400,md=30,men=2,rcp=0,spd=7.8}
C.units["wh_dlc08_nor_cha_wulfrik_3"] = {a=80,ai=34,al=0,c="com",cat="war_beast",cb=68,hp=14096,lg=true,ma=38,mcp=2200,md=34,men=1,rcp=0,spd=5.6}
C.units["wh_dlc08_nor_feral_manticore"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=5103,lg=true,ma=40,mcp=800,md=34,men=1,rcp=0,spd=7}
C.units["wh_dlc08_nor_inf_marauder_berserkers_0"] = {a=15,ai=5,al=0,c="inf_mel",cat="inf_melee",cb=42,hp=10200,ma=40,mcp=750,md=24,men=100,rcp=0,spd=4}
C.units["wh_dlc08_nor_inf_marauder_champions_0"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=9600,ma=35,mcp=1000,md=53,men=100,rcp=0,spd=3.5}
C.units["wh_dlc08_nor_inf_marauder_champions_1"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=9600,ma=35,mcp=1100,md=40,men=100,rcp=0,spd=3.5}
C.units["wh_dlc08_nor_inf_marauder_hunters_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=6030,ma=36,mcp=150,md=20,men=90,rcp=400,spd=3.5}
C.units["wh_dlc08_nor_inf_marauder_hunters_1"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=8,hp=6030,ma=26,mcp=150,md=22,men=90,rcp=400,spd=3.5}
C.units["wh_dlc08_nor_inf_marauder_spearman_0"] = {a=15,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=6,hp=9360,ma=25,mcp=425,md=37,men=120,rcp=0,spd=3.5}
C.units["wh_dlc08_nor_mon_fimir_0"] = {a=110,ai=15,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=8224,lg=true,ma=30,mcp=1300,md=42,men=16,rcp=0,spd=4.5}
C.units["wh_dlc08_nor_mon_fimir_1"] = {a=110,ai=0,al=25,c="inf_mel",cat="inf_melee",cb=35,hp=8224,lg=true,ma=30,mcp=1450,md=32,men=16,rcp=0,spd=4.5}
C.units["wh_dlc08_nor_mon_frost_wyrm_0"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=57,hp=7120,lg=true,ma=45,mcp=1700,md=41,men=1,rcp=0,spd=7}
C.units["wh_dlc08_nor_mon_frost_wyrm_boss"] = {a=70,ai=0,al=0,c="com",cat="inf_melee",cb=63,hp=12656,lg=true,ma=45,mcp=1800,md=41,men=1,rcp=0,spd=7}
C.units["wh_dlc08_nor_mon_frost_wyrm_ror_0"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=57,hp=7120,lg=true,ma=56,mcp=1800,md=51,men=1,rcp=0,spd=7}
C.units["wh_dlc08_nor_mon_marauder_warwolves_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=38,hp=6864,ma=30,mcp=625,md=21,men=48,rcp=0,spd=9.5}
C.units["wh_dlc08_nor_mon_norscan_giant_0"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=12620,lg=true,ma=65,mcp=1500,md=30,men=1,rcp=0,spd=3.9}
C.units["wh_dlc08_nor_mon_norscan_ice_trolls_0"] = {a=60,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=34,hp=7904,lg=true,ma=38,mcp=950,md=32,men=16,rcp=0,spd=5.4}
C.units["wh_dlc08_nor_mon_skinwolves_0"] = {a=15,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=32,hp=7416,lg=true,ma=32,mcp=950,md=28,men=24,rcp=0,spd=7.5}
C.units["wh_dlc08_nor_mon_skinwolves_1"] = {a=70,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=32,hp=7416,lg=true,ma=32,mcp=1100,md=28,men=24,rcp=0,spd=6.5}
C.units["wh_dlc08_nor_mon_war_mammoth_0"] = {a=50,ai=34,al=0,c="inf_mel",cat="inf_melee",cb=68,hp=12988,lg=true,ma=30,mcp=1450,md=28,men=1,rcp=0,spd=5.6}
C.units["wh_dlc08_nor_mon_war_mammoth_1"] = {a=80,ai=34,al=0,c="inf_mel",cat="war_beast",cb=68,hp=84576,lg=true,ma=34,mcp=1900,md=30,men=6,rcp=0,spd=5.6}
C.units["wh_dlc08_nor_mon_war_mammoth_2"] = {a=80,ai=34,al=0,c="inf_mel",cat="war_beast",cb=68,hp=14136,lg=true,ma=34,mcp=1900,md=30,men=1,rcp=0,spd=5.6}
C.units["wh_dlc08_nor_mon_war_mammoth_boss"] = {a=50,ai=34,al=0,c="inf_mel",cat="inf_melee",cb=93,hp=17040,lg=true,ma=34,mcp=1700,md=30,men=5,rcp=0,spd=5.6}
C.units["wh_dlc08_nor_mon_war_mammoth_ror_1"] = {a=50,ai=17,al=0,c="inf_mel",cat="inf_melee",cb=73,hp=13460,lg=true,ma=34,mcp=1700,md=20,men=5,rcp=0,spd=5.6}
C.units["wh_dlc08_vmp_mon_terrorgheist_boss"] = {a=80,ai=0,al=40,c="com",cat="inf_melee",cb=40,hp=7544,lg=true,ma=55,mcp=2000,md=45,men=1,rcp=0,spd=11.5}
C.units["wh_dlc08_wef_forest_dragon_boss"] = {a=80,ai=25,al=0,c="com",cat="inf_melee",cb=72,hp=11208,lg=true,ma=65,mcp=2000,md=58,men=1,rcp=0,spd=7}
C.units["wh_dlc08_wef_mon_treeman_boss"] = {a=110,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=3280,lg=true,ma=33,mcp=1700,md=36,men=1,rcp=0,spd=3.6}
C.units["wh_dlc29_vmp_inf_cairn_wraiths_summoned"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=6720,ma=34,mcp=850,md=30,men=60,rcp=0,spd=4.8}
C.units["wh_dlc29_vmp_inf_cairn_wraiths_summoned_upgraded_0"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=6720,ma=42,mcp=850,md=30,men=60,rcp=0,spd=4.8}
C.units["wh_dlc29_vmp_inf_cairn_wraiths_summoned_upgraded_1"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=6720,ma=42,mcp=850,md=30,men=60,rcp=0,spd=4.8}
C.units["wh_main_brt_art_field_trebuchet"] = {a=15,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2332,ma=10,mcp=70,md=6,men=44,rcp=630,spd=3}
C.units["wh_main_brt_cav_grail_knights"] = {a=120,ai=0,al=18,c="cav_shk",cat="cavalry",cb=75,hp=6912,lg=true,ma=38,mcp=1850,md=34,men=48,rcp=0,spd=8.4}
C.units["wh_main_brt_cav_knights_of_the_realm"] = {a=100,ai=0,al=12,c="cav_shk",cat="cavalry",cb=65,hp=6240,lg=true,ma=32,mcp=950,md=28,men=60,rcp=0,spd=8.4}
C.units["wh_main_brt_cav_mounted_yeomen_0"] = {a=30,ai=0,al=0,c="cav_mel",cat="cavalry",cb=36,hp=5040,lg=true,ma=26,mcp=550,md=26,men=60,rcp=0,spd=9.2}
C.units["wh_main_brt_cav_mounted_yeomen_1"] = {a=30,ai=0,al=0,c="cav_mis",cat="cavalry",cb=15,hp=4500,lg=true,ma=18,mcp=40,md=16,men=60,rcp=360,spd=9.2}
C.units["wh_main_brt_cav_pegasus_knights"] = {a=80,ai=0,al=15,c="cav_shk",cat="cavalry",cb=75,hp=6072,lg=true,ma=36,mcp=1100,md=32,men=24,rcp=0,spd=8.2}
C.units["wh_main_brt_cha_damsel_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=34,mcp=250,md=22,men=1,rcp=0,spd=4}
C.units["wh_main_brt_cha_damsel_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=34,mcp=450,md=22,men=1,rcp=0,spd=9.2}
C.units["wh_main_brt_cha_damsel_2"] = {a=40,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=34,mcp=500,md=22,men=1,rcp=0,spd=8.4}
C.units["wh_main_brt_cha_damsel_3"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4396,lg=true,ma=40,mcp=550,md=26,men=1,rcp=0,spd=9.5}
C.units["wh_main_brt_cha_king_louen_leoncoeur_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=4288,ma=60,mcp=1000,md=50,men=1,rcp=0,spd=3.4}
C.units["wh_main_brt_cha_king_louen_leoncoeur_1"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=75,hp=6632,lg=true,ma=60,mcp=2000,md=50,men=1,rcp=0,spd=7}
C.units["wh_main_brt_cha_king_louen_leoncoeur_2"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=75,hp=4892,lg=true,ma=60,mcp=1250,md=50,men=1,rcp=0,spd=8.4}
C.units["wh_main_brt_cha_king_louen_leoncoeur_3"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=85,hp=5208,lg=true,ma=60,mcp=1500,md=50,men=1,rcp=0,spd=8.2}
C.units["wh_main_brt_cha_king_louen_leoncoeur_4"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=75,hp=6396,lg=true,ma=52,mcp=1850,md=35,men=1,rcp=0,spd=7}
C.units["wh_main_brt_cha_lord_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=4068,ma=54,mcp=600,md=48,men=1,rcp=0,spd=3.4}
C.units["wh_main_brt_cha_lord_2"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=75,hp=6296,lg=true,ma=52,mcp=1500,md=35,men=1,rcp=0,spd=7}
C.units["wh_main_brt_cha_lord_3"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=85,hp=4972,lg=true,ma=54,mcp=1100,md=48,men=1,rcp=0,spd=8.2}
C.units["wh_main_brt_cha_lord_4"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=75,hp=4672,lg=true,ma=54,mcp=850,md=48,men=1,rcp=0,spd=8.4}
C.units["wh_main_brt_cha_paladin_0"] = {a=85,ai=0,al=20,c="com",cat="inf_melee",cb=40,hp=3688,ma=45,mcp=400,md=40,men=1,rcp=0,spd=3.4}
C.units["wh_main_brt_cha_paladin_3"] = {a=85,ai=0,al=20,c="com",cat="cavalry",cb=85,hp=4456,lg=true,ma=45,mcp=875,md=40,men=1,rcp=0,spd=8.2}
C.units["wh_main_brt_cha_paladin_4"] = {a=105,ai=0,al=20,c="com",cat="cavalry",cb=70,hp=4168,lg=true,ma=45,mcp=650,md=40,men=1,rcp=0,spd=8.4}
C.units["wh_main_brt_inf_men_at_arms"] = {a=30,ai=0,al=18,c="inf_mel",cat="inf_melee",cb=6,hp=7920,ma=22,mcp=450,md=40,men=120,rcp=0,spd=3}
C.units["wh_main_brt_inf_peasant_bowmen"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=3,hp=4860,ma=10,mcp=40,md=14,men=90,rcp=360,spd=3.3}
C.units["wh_main_brt_inf_spearmen_at_arms"] = {a=30,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=4,hp=7800,ma=20,mcp=325,md=38,men=120,rcp=0,spd=3}
C.units["wh_main_bst_feral_manticore_summoned"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=5103,lg=true,ma=40,mcp=800,md=34,men=1,rcp=0,spd=7}
C.units["wh_main_chs_art_hellcannon"] = {a=30,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=1860,ma=18,mcp=96,md=14,men=12,rcp=864,spd=2.8}
C.units["wh_main_chs_cav_chaos_chariot"] = {a=110,ai=18,al=0,c="chariot",cat="war_machine",cb=76,hp=11152,lg=true,ma=22,mcp=750,md=28,men=8,rcp=0,spd=7.8}
C.units["wh_main_chs_cav_chaos_knights_0"] = {a=120,ai=0,al=0,c="cav_mel",cat="war_beast",cb=44,hp=7620,lg=true,ma=42,mcp=1400,md=50,men=60,rcp=0,spd=7}
C.units["wh_main_chs_cav_chaos_knights_1"] = {a=120,ai=0,al=0,c="cav_shk",cat="war_beast",cb=80,hp=7620,lg=true,ma=42,mcp=1500,md=38,men=60,rcp=0,spd=7}
C.units["wh_main_chs_cav_marauder_horsemen_0"] = {a=15,ai=0,al=0,c="cav_mis",cat="war_beast",cb=24,hp=4980,lg=true,ma=22,mcp=120,md=20,men=60,rcp=380,spd=9}
C.units["wh_main_chs_cav_marauder_horsemen_1"] = {a=15,ai=0,al=0,c="cav_mis",cat="war_beast",cb=24,hp=4980,lg=true,ma=22,mcp=200,md=26,men=60,rcp=400,spd=9}
C.units["wh_main_chs_cha_archaon_the_everchosen_0"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=55,hp=5808,ma=70,mcp=1450,md=60,men=1,rcp=0,spd=3.5}
C.units["wh_main_chs_cha_archaon_the_everchosen_1"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=90,hp=6936,lg=true,ma=70,mcp=1850,md=60,men=1,rcp=0,spd=9.4}
C.units["wh_main_chs_cha_chaos_lord_0"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4640,ma=65,mcp=900,md=55,men=1,rcp=0,spd=3.3}
C.units["wh_main_chs_cha_chaos_lord_11"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=50,hp=5220,lg=true,ma=65,mcp=1100,md=55,men=1,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_chaos_lord_12"] = {a=0,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=5220,lg=true,ma=65,mcp=1150,md=55,men=1,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_chaos_lord_8"] = {a=110,ai=20,al=0,c="com",cat="war_machine",cb=80,hp=10864,lg=true,ma=40,mcp=1200,md=35,men=2,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_chaos_sorcerer_death_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3520,ma=42,mcp=400,md=40,men=1,rcp=0,spd=3.3}
C.units["wh_main_chs_cha_chaos_sorcerer_death_10"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=3968,lg=true,ma=42,mcp=600,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_chaos_sorcerer_death_11"] = {a=0,ai=0,al=0,c="com",cat="cavalry",cb=40,hp=3968,lg=true,ma=42,mcp=1,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_chaos_sorcerer_death_7"] = {a=110,ai=26,al=0,c="com",cat="war_machine",cb=60,hp=8296,lg=true,ma=26,mcp=1,md=16,men=2,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_chaos_sorcerer_fire_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3520,ma=42,mcp=400,md=40,men=1,rcp=0,spd=3.3}
C.units["wh_main_chs_cha_chaos_sorcerer_fire_10"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=3968,lg=true,ma=42,mcp=600,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_chaos_sorcerer_fire_11"] = {a=0,ai=0,al=0,c="com",cat="cavalry",cb=40,hp=3968,lg=true,ma=42,mcp=1,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_chaos_sorcerer_fire_7"] = {a=110,ai=26,al=0,c="com",cat="war_machine",cb=60,hp=8296,lg=true,ma=26,mcp=1,md=16,men=2,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_chaos_sorcerer_metal_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3520,ma=42,mcp=400,md=40,men=1,rcp=0,spd=3.3}
C.units["wh_main_chs_cha_chaos_sorcerer_metal_10"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=3968,lg=true,ma=42,mcp=600,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_chaos_sorcerer_metal_11"] = {a=0,ai=0,al=0,c="com",cat="cavalry",cb=40,hp=3968,lg=true,ma=42,mcp=1,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_chaos_sorcerer_metal_7"] = {a=110,ai=26,al=0,c="com",cat="war_machine",cb=60,hp=8296,lg=true,ma=26,mcp=1,md=16,men=2,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_exalted_hero_0"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4068,ma=60,mcp=600,md=45,men=1,rcp=0,spd=3.3}
C.units["wh_main_chs_cha_exalted_hero_12"] = {a=120,ai=0,al=0,c="com",cat="war_beast",cb=45,hp=4672,lg=true,ma=60,mcp=800,md=45,men=1,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_exalted_hero_13"] = {a=0,ai=0,al=0,c="com",cat="cavalry",cb=45,hp=4672,lg=true,ma=60,mcp=850,md=45,men=1,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_exalted_hero_7"] = {a=110,ai=20,al=0,c="com",cat="war_machine",cb=75,hp=9712,lg=true,ma=40,mcp=900,md=20,men=2,rcp=0,spd=7.8}
C.units["wh_main_chs_cha_lord_of_change_0"] = {a=40,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=8048,lg=true,ma=56,mcp=1800,md=56,men=1,rcp=0,spd=5.4}
C.units["wh_main_chs_inf_chaos_marauders_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9360,ma=34,mcp=375,md=28,men=120,rcp=0,spd=3.5}
C.units["wh_main_chs_inf_chaos_marauders_1"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=9360,ma=34,mcp=450,md=20,men=120,rcp=0,spd=3.5}
C.units["wh_main_chs_inf_chaos_warriors_0"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=9000,ma=36,mcp=750,md=44,men=100,rcp=0,spd=2.8}
C.units["wh_main_chs_inf_chaos_warriors_1"] = {a=100,ai=0,al=19,c="inf_mel",cat="inf_melee",cb=10,hp=9000,ma=30,mcp=850,md=42,men=100,rcp=0,spd=2.8}
C.units["wh_main_chs_inf_chosen_0"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=10480,ma=46,mcp=1250,md=60,men=80,rcp=0,spd=2.8}
C.units["wh_main_chs_inf_chosen_1"] = {a=120,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=32,hp=10480,ma=48,mcp=1350,md=46,men=80,rcp=0,spd=2.8}
C.units["wh_main_chs_mon_chaos_spawn"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=8768,lg=true,ma=36,mcp=950,md=28,men=16,rcp=0,spd=4.2}
C.units["wh_main_chs_mon_chaos_spawn_summoned"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=8768,lg=true,ma=36,mcp=475,md=28,men=16,rcp=0,spd=4.2}
C.units["wh_main_chs_mon_chaos_warhounds_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=6080,ma=26,mcp=400,md=17,men=80,rcp=0,spd=9.5}
C.units["wh_main_chs_mon_chaos_warhounds_1"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=6080,ma=26,mcp=450,md=17,men=80,rcp=0,spd=9.5}
C.units["wh_main_chs_mon_giant"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=12620,lg=true,ma=65,mcp=1500,md=30,men=1,rcp=0,spd=3.9}
C.units["wh_main_chs_mon_trolls"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=7904,lg=true,ma=34,mcp=800,md=32,men=16,rcp=0,spd=5.4}
C.units["wh_main_dwf_art_cannon"] = {a=40,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=2496,ma=16,mcp=80,md=20,men=32,rcp=720,spd=2.8}
C.units["wh_main_dwf_art_flame_cannon"] = {a=40,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=2496,ma=16,mcp=140,md=20,men=32,rcp=1260,spd=2.8}
C.units["wh_main_dwf_art_grudge_thrower"] = {a=40,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=2496,ma=16,mcp=70,md=20,men=32,rcp=630,spd=2.8}
C.units["wh_main_dwf_art_organ_gun"] = {a=40,ai=0,al=0,c="art_fld",cat="artillery",cb=2,hp=2496,ma=16,mcp=100,md=20,men=32,rcp=900,spd=2.8}
C.units["wh_main_dwf_cha_high_king_thorgrim_grudgebearer_1"] = {a=125,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=8208,lg=true,ma=52,mcp=1400,md=62,men=1,rcp=0,spd=3}
C.units["wh_main_dwf_cha_lord_0"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4892,ma=50,mcp=700,md=60,men=1,rcp=0,spd=3.2}
C.units["wh_main_dwf_cha_master_engineer_0"] = {a=120,ai=0,al=0,c="com",cat="inf_ranged",cb=14,hp=3908,ma=38,mcp=200,md=30,men=1,rcp=350,spd=3.2}
C.units["wh_main_dwf_cha_rune_smith_0"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=16,hp=3908,ma=40,mcp=550,md=30,men=1,rcp=0,spd=3.2}
C.units["wh_main_dwf_cha_thane"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=4168,ma=50,mcp=550,md=55,men=1,rcp=0,spd=3.2}
C.units["wh_main_dwf_cha_ungrim_ironfist"] = {a=120,ai=0,al=30,c="com",cat="inf_melee",cb=50,hp=5536,ma=65,mcp=1150,md=50,men=1,rcp=0,spd=3.2}
C.units["wh_main_dwf_inf_dwarf_warrior_0"] = {a=85,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=7800,ma=22,mcp=450,md=40,men=100,rcp=0,spd=2.8}
C.units["wh_main_dwf_inf_dwarf_warrior_1"] = {a=85,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=7800,ma=24,mcp=500,md=30,men=100,rcp=0,spd=2.8}
C.units["wh_main_dwf_inf_hammerers"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=10000,ma=46,mcp=1200,md=38,men=100,rcp=0,spd=2.8}
C.units["wh_main_dwf_inf_ironbreakers"] = {a=125,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=9600,ma=34,mcp=1150,md=66,men=100,rcp=100,spd=2.6}
C.units["wh_main_dwf_inf_irondrakes_0"] = {a=125,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=3584,ma=20,mcp=90,md=27,men=28,rcp=810,spd=2.6}
C.units["wh_main_dwf_inf_irondrakes_2"] = {a=125,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=6,hp=3584,ma=20,mcp=100,md=27,men=28,rcp=900,spd=2.6}
C.units["wh_main_dwf_inf_longbeards"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=10,hp=8600,ma=30,mcp=700,md=48,men=100,rcp=0,spd=2.6}
C.units["wh_main_dwf_inf_longbeards_1"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=8600,ma=30,mcp=750,md=38,men=100,rcp=0,spd=2.6}
C.units["wh_main_dwf_inf_miners_0"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=7600,ma=20,mcp=325,md=18,men=100,rcp=0,spd=2.8}
C.units["wh_main_dwf_inf_miners_1"] = {a=80,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=7600,ma=20,mcp=325,md=18,men=100,rcp=125,spd=2.8}
C.units["wh_main_dwf_inf_quarrellers_0"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=5600,ma=18,mcp=165,md=28,men=80,rcp=385,spd=2.8}
C.units["wh_main_dwf_inf_quarrellers_1"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=16,hp=5600,ma=24,mcp=215,md=22,men=80,rcp=385,spd=2.8}
C.units["wh_main_dwf_inf_slayers"] = {a=0,ai=0,al=24,c="inf_mel",cat="inf_melee",cb=26,hp=8640,ma=38,mcp=900,md=32,men=80,rcp=0,spd=4}
C.units["wh_main_dwf_inf_thunderers_0"] = {a=80,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=5680,ma=20,mcp=210,md=28,men=80,rcp=490,spd=2.8}
C.units["wh_main_dwf_veh_gyrobomber"] = {a=100,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=30,hp=4248,lg=true,ma=40,mcp=230,md=4,men=4,rcp=920,spd=6}
C.units["wh_main_dwf_veh_gyrocopter_0"] = {a=100,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=25,hp=4248,lg=true,ma=30,mcp=140,md=6,men=12,rcp=660,spd=7}
C.units["wh_main_dwf_veh_gyrocopter_1"] = {a=100,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=25,hp=4248,lg=true,ma=30,mcp=100,md=6,men=12,rcp=750,spd=7}
C.units["wh_main_emp_art_great_cannon"] = {a=20,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2464,ma=10,mcp=80,md=6,men=44,rcp=720,spd=3}
C.units["wh_main_emp_art_helblaster_volley_gun"] = {a=20,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2464,ma=10,mcp=130,md=6,men=44,rcp=1020,spd=3}
C.units["wh_main_emp_art_helstorm_rocket_battery"] = {a=20,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2464,ma=10,mcp=130,md=6,men=44,rcp=1070,spd=3}
C.units["wh_main_emp_art_mortar"] = {a=20,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2464,ma=10,mcp=60,md=6,men=44,rcp=590,spd=3}
C.units["wh_main_emp_cav_demigryph_knights_0"] = {a=125,ai=0,al=0,c="cav_shk",cat="cavalry",cb=60,hp=7200,lg=true,ma=40,mcp=1500,md=38,men=32,rcp=0,spd=7.5}
C.units["wh_main_emp_cav_demigryph_knights_1"] = {a=125,ai=0,al=25,c="cav_shk",cat="cavalry",cb=48,hp=7200,lg=true,ma=34,mcp=1500,md=36,men=32,rcp=0,spd=7.5}
C.units["wh_main_emp_cav_empire_knights"] = {a=110,ai=0,al=0,c="cav_shk",cat="cavalry",cb=48,hp=6000,lg=true,ma=26,mcp=900,md=30,men=60,rcp=0,spd=7.8}
C.units["wh_main_emp_cav_outriders_0"] = {a=30,ai=0,al=0,c="cav_mis",cat="cavalry",cb=12,hp=4860,lg=true,ma=18,mcp=112,md=14,men=60,rcp=448,spd=8.4}
C.units["wh_main_emp_cav_outriders_1"] = {a=30,ai=0,al=0,c="cav_mis",cat="cavalry",cb=12,hp=3984,lg=true,ma=18,mcp=128,md=14,men=48,rcp=512,spd=8.4}
C.units["wh_main_emp_cav_pistoliers_1"] = {a=30,ai=0,al=0,c="cav_mis",cat="cavalry",cb=20,hp=4080,lg=true,ma=20,mcp=180,md=14,men=60,rcp=320,spd=9}
C.units["wh_main_emp_cav_reiksguard"] = {a=120,ai=0,al=0,c="cav_shk",cat="cavalry",cb=62,hp=6480,lg=true,ma=34,mcp=1150,md=31,men=60,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_balthasar_gelt_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=3688,ma=34,mcp=350,md=38,men=1,rcp=0,spd=3.4}
C.units["wh_main_emp_cha_balthasar_gelt_1"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4456,lg=true,ma=34,mcp=750,md=38,men=1,rcp=0,spd=8.2}
C.units["wh_main_emp_cha_balthasar_gelt_2"] = {a=20,ai=0,al=0,c="com",cat="cavalry",cb=55,hp=3788,lg=true,ma=34,mcp=550,md=38,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_balthasar_gelt_3"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=55,hp=3788,lg=true,ma=34,mcp=600,md=38,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_captain_0"] = {a=85,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=3688,ma=50,mcp=350,md=40,men=1,rcp=0,spd=3.4}
C.units["wh_main_emp_cha_captain_1"] = {a=85,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4168,lg=true,ma=50,mcp=550,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_captain_2"] = {a=105,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4168,lg=true,ma=50,mcp=600,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_captain_3"] = {a=85,ai=0,al=0,c="com",cat="cavalry",cb=85,hp=4456,lg=true,ma=50,mcp=825,md=40,men=1,rcp=0,spd=8.2}
C.units["wh_main_emp_cha_general_0"] = {a=85,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=4068,ma=55,mcp=600,md=45,men=1,rcp=0,spd=3.4}
C.units["wh_main_emp_cha_general_1"] = {a=105,ai=0,al=0,c="com",cat="cavalry",cb=65,hp=4672,lg=true,ma=55,mcp=850,md=45,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_general_2"] = {a=85,ai=0,al=0,c="com",cat="cavalry",cb=80,hp=4972,lg=true,ma=55,mcp=1150,md=45,men=1,rcp=0,spd=8.2}
C.units["wh_main_emp_cha_general_3"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=70,hp=6376,lg=true,ma=47,mcp=1400,md=30,men=1,rcp=0,spd=7}
C.units["wh_main_emp_cha_general_4"] = {a=85,ai=0,al=0,c="com",cat="cavalry",cb=65,hp=4672,lg=true,ma=55,mcp=800,md=45,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_karl_franz_0"] = {a=100,ai=0,al=0,c="com",cat="inf_melee",cb=65,hp=4288,ma=65,mcp=1100,md=45,men=1,rcp=0,spd=3.4}
C.units["wh_main_emp_cha_karl_franz_1"] = {a=100,ai=0,al=0,c="com",cat="war_beast",cb=90,hp=6828,lg=true,ma=56,mcp=1900,md=38,men=1,rcp=0,spd=7}
C.units["wh_main_emp_cha_karl_franz_2"] = {a=100,ai=0,al=0,c="com",cat="cavalry",cb=90,hp=5208,lg=true,ma=65,mcp=1650,md=45,men=1,rcp=0,spd=8.2}
C.units["wh_main_emp_cha_karl_franz_3"] = {a=100,ai=0,al=0,c="com",cat="cavalry",cb=90,hp=4892,lg=true,ma=65,mcp=1300,md=45,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_karl_franz_4"] = {a=120,ai=0,al=0,c="com",cat="cavalry",cb=90,hp=4892,lg=true,ma=65,mcp=1350,md=45,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_warrior_priest_0"] = {a=85,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=3688,ma=45,mcp=350,md=35,men=1,rcp=0,spd=3.4}
C.units["wh_main_emp_cha_warrior_priest_1"] = {a=85,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4168,lg=true,ma=45,mcp=550,md=35,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_warrior_priest_2"] = {a=105,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4168,lg=true,ma=45,mcp=600,md=35,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_witch_hunter"] = {a=45,ai=0,al=0,c="com",cat="inf_ranged",cb=30,hp=3688,ma=36,mcp=240,md=34,men=1,rcp=360,spd=3.4}
C.units["wh_main_emp_cha_wizard_fire_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=25,mcp=250,md=30,men=1,rcp=0,spd=3.5}
C.units["wh_main_emp_cha_wizard_fire_1"] = {a=20,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=25,mcp=450,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_wizard_fire_2"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4008,lg=true,ma=25,mcp=650,md=30,men=1,rcp=0,spd=8.2}
C.units["wh_main_emp_cha_wizard_fire_3"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=25,mcp=500,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_wizard_heavens_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=25,mcp=250,md=30,men=1,rcp=0,spd=3.5}
C.units["wh_main_emp_cha_wizard_heavens_1"] = {a=20,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=25,mcp=450,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_wizard_heavens_2"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4008,lg=true,ma=25,mcp=650,md=30,men=1,rcp=0,spd=8.2}
C.units["wh_main_emp_cha_wizard_heavens_4"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=25,mcp=500,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_wizard_light_0"] = {a=20,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=25,mcp=250,md=30,men=1,rcp=0,spd=3.5}
C.units["wh_main_emp_cha_wizard_light_1"] = {a=20,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=25,mcp=450,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_cha_wizard_light_2"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4008,lg=true,ma=25,mcp=650,md=30,men=1,rcp=0,spd=8.2}
C.units["wh_main_emp_cha_wizard_light_4"] = {a=50,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3840,lg=true,ma=25,mcp=500,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_main_emp_inf_crossbowmen"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=6210,ma=14,mcp=100,md=17,men=90,rcp=400,spd=3.3}
C.units["wh_main_emp_inf_greatswords"] = {a=95,ai=14,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9120,ma=32,mcp=850,md=30,men=120,rcp=0,spd=2.8}
C.units["wh_main_emp_inf_halberdiers"] = {a=30,ai=0,al=16,c="inf_mel",cat="inf_melee",cb=8,hp=8760,ma=26,mcp=550,md=42,men=120,rcp=0,spd=3}
C.units["wh_main_emp_inf_handgunners"] = {a=20,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=4,hp=6210,ma=16,mcp=120,md=17,men=90,rcp=480,spd=3.3}
C.units["wh_main_emp_inf_spearmen_0"] = {a=30,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=4,hp=8280,ma=20,mcp=325,md=34,men=120,rcp=0,spd=3}
C.units["wh_main_emp_inf_spearmen_1"] = {a=30,ai=0,al=15,c="inf_mel",cat="inf_melee",cb=4,hp=8280,ma=20,mcp=375,md=42,men=120,rcp=0,spd=3}
C.units["wh_main_emp_inf_swordsmen"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=14,hp=8280,ma=32,mcp=400,md=32,men=120,rcp=0,spd=3}
C.units["wh_main_emp_veh_luminark_of_hysh_0"] = {a=60,ai=0,al=0,c="chariot",cat="war_machine",cb=18,hp=9216,lg=true,ma=12,mcp=170,md=8,men=2,rcp=1530,spd=5}
C.units["wh_main_emp_veh_steam_tank_driver"] = {a=160,ai=15,al=0,c="chariot",cat="war_machine",cb=80,hp=27180,lg=true,ma=36,mcp=700,md=20,men=3,rcp=1400,spd=4}
C.units["wh_main_grn_art_doom_diver_catapult"] = {a=15,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2332,ma=10,mcp=90,md=6,men=44,rcp=860,spd=3.3}
C.units["wh_main_grn_art_goblin_rock_lobber"] = {a=15,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=2332,ma=10,mcp=60,md=6,men=44,rcp=540,spd=3.3}
C.units["wh_main_grn_cav_forest_goblin_spider_riders_0"] = {a=45,ai=0,al=0,c="cav_mel",cat="cavalry",cb=22,hp=5160,lg=true,ma=22,mcp=425,md=32,men=60,rcp=0,spd=7.8}
C.units["wh_main_grn_cav_forest_goblin_spider_riders_1"] = {a=45,ai=0,al=0,c="cav_mis",cat="cavalry",cb=14,hp=4620,lg=true,ma=15,mcp=100,md=22,men=60,rcp=375,spd=7.8}
C.units["wh_main_grn_cav_goblin_wolf_chariot"] = {a=45,ai=12,al=0,c="chariot",cat="war_machine",cb=38,hp=18720,lg=true,ma=16,mcp=80,md=20,men=36,rcp=320,spd=9}
C.units["wh_main_grn_cav_goblin_wolf_riders_0"] = {a=25,ai=0,al=0,c="cav_mel",cat="cavalry",cb=20,hp=4080,lg=true,ma=22,mcp=300,md=22,men=80,rcp=0,spd=9.2}
C.units["wh_main_grn_cav_goblin_wolf_riders_1"] = {a=25,ai=0,al=0,c="cav_mis",cat="cavalry",cb=12,hp=3920,lg=true,ma=15,mcp=100,md=14,men=80,rcp=300,spd=9.2}
C.units["wh_main_grn_cav_orc_boar_boy_big_uns"] = {a=85,ai=0,al=12,c="cav_shk",cat="cavalry",cb=50,hp=7440,lg=true,ma=22,mcp=900,md=26,men=60,rcp=0,spd=7}
C.units["wh_main_grn_cav_orc_boar_boyz"] = {a=65,ai=0,al=0,c="cav_shk",cat="cavalry",cb=48,hp=6360,lg=true,ma=22,mcp=650,md=24,men=60,rcp=0,spd=7}
C.units["wh_main_grn_cav_orc_boar_chariot"] = {a=80,ai=18,al=0,c="chariot",cat="war_machine",cb=72,hp=11152,lg=true,ma=30,mcp=800,md=26,men=8,rcp=0,spd=7}
C.units["wh_main_grn_cav_savage_orc_boar_boy_big_uns"] = {a=35,ai=0,al=5,c="cav_shk",cat="cavalry",cb=58,hp=7440,lg=true,ma=28,mcp=1100,md=22,men=60,rcp=0,spd=7}
C.units["wh_main_grn_cav_savage_orc_boar_boyz"] = {a=35,ai=0,al=0,c="cav_shk",cat="cavalry",cb=56,hp=6360,lg=true,ma=26,mcp=750,md=20,men=60,rcp=0,spd=7}
C.units["wh_main_grn_cha_azhag_the_slaughterer_0"] = {a=70,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=5221,ma=60,mcp=950,md=36,men=1,rcp=0,spd=3.6}
C.units["wh_main_grn_cha_azhag_the_slaughterer_1"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=7000,lg=true,ma=50,mcp=1600,md=32,men=1,rcp=0,spd=7}
C.units["wh_main_grn_cha_goblin_big_boss_0"] = {a=35,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=3485,ma=50,mcp=300,md=45,men=1,rcp=0,spd=3.5}
C.units["wh_main_grn_cha_goblin_big_boss_1"] = {a=35,ai=0,al=0,c="com",cat="cavalry",cb=40,hp=3928,lg=true,ma=50,mcp=450,md=45,men=1,rcp=0,spd=9.2}
C.units["wh_main_grn_cha_goblin_big_boss_2"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=40,hp=4087,lg=true,ma=48,mcp=550,md=44,men=1,rcp=0,spd=7.8}
C.units["wh_main_grn_cha_goblin_big_boss_4"] = {a=45,ai=30,al=0,c="com",cat="war_machine",cb=80,hp=8666,lg=true,ma=30,mcp=550,md=20,men=2,rcp=0,spd=9}
C.units["wh_main_grn_cha_goblin_great_shaman_0"] = {a=25,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3651,ma=24,mcp=450,md=26,men=1,rcp=0,spd=3.3}
C.units["wh_main_grn_cha_goblin_great_shaman_1"] = {a=25,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4027,lg=true,ma=24,mcp=650,md=26,men=1,rcp=0,spd=9.2}
C.units["wh_main_grn_cha_goblin_great_shaman_2"] = {a=45,ai=30,al=0,c="com",cat="war_machine",cb=70,hp=8412,lg=true,ma=14,mcp=850,md=10,men=2,rcp=0,spd=9}
C.units["wh_main_grn_cha_grimgor_ironhide"] = {a=120,ai=0,al=0,c="com",cat="inf_melee",cb=70,hp=7123,ma=70,mcp=1350,md=45,men=1,rcp=0,spd=3.8}
C.units["wh_main_grn_cha_night_goblin_shaman"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3386,ma=24,mcp=250,md=26,men=1,rcp=0,spd=3.5}
C.units["wh_main_grn_cha_orc_shaman_0"] = {a=30,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=3869,ma=38,mcp=300,md=20,men=1,rcp=0,spd=3.3}
C.units["wh_main_grn_cha_orc_shaman_1"] = {a=55,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4412,lg=true,ma=38,mcp=500,md=20,men=1,rcp=0,spd=7}
C.units["wh_main_grn_cha_orc_warboss_0"] = {a=70,ai=0,al=0,c="com",cat="inf_melee",cb=60,hp=4376,ma=58,mcp=850,md=46,men=1,rcp=0,spd=3.6}
C.units["wh_main_grn_cha_orc_warboss_1"] = {a=70,ai=0,al=0,c="com",cat="war_beast",cb=80,hp=6640,lg=true,ma=45,mcp=1500,md=32,men=1,rcp=0,spd=7}
C.units["wh_main_grn_cha_orc_warboss_2"] = {a=70,ai=0,al=0,c="com",cat="cavalry",cb=80,hp=4998,lg=true,ma=58,mcp=1050,md=46,men=1,rcp=0,spd=7}
C.units["wh_main_grn_cha_orc_warboss_3"] = {a=80,ai=30,al=0,c="com",cat="war_machine",cb=80,hp=10408,lg=true,ma=42,mcp=1200,md=26,men=2,rcp=0,spd=7}
C.units["wh_main_grn_inf_black_orcs"] = {a=110,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=36,hp=10800,ma=38,mcp=1100,md=32,men=80,rcp=0,spd=2.9}
C.units["wh_main_grn_inf_goblin_archers"] = {a=25,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=5,hp=6120,ma=10,mcp=38,md=15,men=120,rcp=338,spd=3.3}
C.units["wh_main_grn_inf_goblin_spearmen"] = {a=25,ai=0,al=9,c="inf_mel",cat="inf_melee",cb=8,hp=8960,ma=18,mcp=300,md=28,men=160,rcp=0,spd=3.3}
C.units["wh_main_grn_inf_night_goblin_archers"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=9,hp=6480,ma=15,mcp=50,md=20,men=120,rcp=400,spd=3.5}
C.units["wh_main_grn_inf_night_goblin_fanatics"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=14,hp=8960,ma=26,mcp=450,md=24,men=160,rcp=0,spd=3.5}
C.units["wh_main_grn_inf_night_goblin_fanatics_1"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=9,hp=6480,ma=15,mcp=55,md=20,men=120,rcp=470,spd=3.5}
C.units["wh_main_grn_inf_night_goblins"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=14,hp=8960,ma=26,mcp=400,md=24,men=160,rcp=0,spd=3.5}
C.units["wh_main_grn_inf_orc_arrer_boyz"] = {a=30,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=10,hp=6930,ma=23,mcp=150,md=14,men=90,rcp=350,spd=3.1}
C.units["wh_main_grn_inf_orc_big_uns"] = {a=50,ai=0,al=8,c="inf_mel",cat="inf_melee",cb=27,hp=10800,ma=38,mcp=750,md=28,men=100,rcp=0,spd=3.1}
C.units["wh_main_grn_inf_orc_boyz"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=9720,ma=28,mcp=425,md=25,men=120,rcp=0,spd=3.1}
C.units["wh_main_grn_inf_savage_orc_arrer_boyz"] = {a=0,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=6930,ma=24,mcp=165,md=10,men=90,rcp=385,spd=3.7}
C.units["wh_main_grn_inf_savage_orc_big_uns"] = {a=0,ai=0,al=8,c="inf_mel",cat="inf_melee",cb=34,hp=10800,ma=40,mcp=850,md=25,men=100,rcp=0,spd=3.7}
C.units["wh_main_grn_inf_savage_orcs"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=9720,ma=30,mcp=550,md=20,men=120,rcp=0,spd=3.7}
C.units["wh_main_grn_mon_arachnarok_spider_0"] = {a=120,ai=0,al=20,c="inf_mel",cat="war_beast",cb=40,hp=79720,lg=true,ma=58,mcp=1700,md=30,men=8,rcp=0,spd=5.7}
C.units["wh_main_grn_mon_giant"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=12620,lg=true,ma=65,mcp=1500,md=30,men=1,rcp=0,spd=3.9}
C.units["wh_main_grn_mon_giant_qb_tall_roff"] = {a=50,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=12620,lg=true,ma=65,mcp=1100,md=30,men=1,rcp=0,spd=4}
C.units["wh_main_grn_mon_trolls"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=7904,lg=true,ma=34,mcp=800,md=32,men=16,rcp=0,spd=5.4}
C.units["wh_main_ksl_cha_captain_0"] = {a=85,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=3688,ma=50,mcp=800,md=40,men=1,rcp=0,spd=3.4}
C.units["wh_main_ksl_cha_captain_1"] = {a=85,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4168,lg=true,ma=50,mcp=900,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_main_ksl_cha_captain_2"] = {a=105,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4168,lg=true,ma=50,mcp=1000,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_main_ksl_cha_general_0"] = {a=85,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=4068,ma=55,mcp=800,md=45,men=1,rcp=0,spd=3.4}
C.units["wh_main_ksl_cha_general_1"] = {a=85,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4672,lg=true,ma=55,mcp=900,md=45,men=1,rcp=0,spd=7.8}
C.units["wh_main_ksl_cha_general_2"] = {a=105,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4672,lg=true,ma=55,mcp=1000,md=45,men=1,rcp=0,spd=7.8}
C.units["wh_main_ksl_cha_wizard_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=25,mcp=250,md=30,men=1,rcp=0,spd=3.5}
C.units["wh_main_ksl_cha_wizard_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=3840,lg=true,ma=25,mcp=450,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_main_nor_cav_chaos_chariot"] = {a=90,ai=18,al=0,c="chariot",cat="war_machine",cb=76,hp=11152,lg=true,ma=22,mcp=725,md=28,men=8,rcp=0,spd=7.8}
C.units["wh_main_nor_cav_marauder_horsemen_0"] = {a=15,ai=0,al=0,c="cav_mis",cat="war_beast",cb=24,hp=4980,lg=true,ma=22,mcp=120,md=20,men=60,rcp=280,spd=9}
C.units["wh_main_nor_cav_marauder_horsemen_1"] = {a=15,ai=0,al=0,c="cav_mis",cat="war_beast",cb=24,hp=4980,lg=true,ma=22,mcp=200,md=26,men=60,rcp=400,spd=9}
C.units["wh_main_nor_cha_chaos_sorcerer_0"] = {a=80,ai=0,al=0,c="com",cat="inf_melee",cb=20,hp=3360,ma=38,mcp=450,md=26,men=1,rcp=0,spd=3.3}
C.units["wh_main_nor_cha_chaos_sorcerer_1"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=3740,lg=true,ma=42,mcp=550,md=40,men=1,rcp=0,spd=9}
C.units["wh_main_nor_cha_chaos_sorcerer_2"] = {a=90,ai=26,al=0,c="com",cat="war_machine",cb=60,hp=8232,lg=true,ma=26,mcp=650,md=16,men=2,rcp=0,spd=9}
C.units["wh_main_nor_cha_marauder_chieftan_0"] = {a=50,ai=0,al=0,c="com",cat="inf_melee",cb=55,hp=4268,ma=60,mcp=700,md=40,men=1,rcp=0,spd=3.5}
C.units["wh_main_nor_cha_marauder_chieftan_1"] = {a=50,ai=0,al=0,c="com",cat="war_beast",cb=65,hp=4668,lg=true,ma=60,mcp=900,md=40,men=1,rcp=0,spd=9}
C.units["wh_main_nor_cha_marauder_chieftan_2"] = {a=90,ai=20,al=0,c="com",cat="war_machine",cb=90,hp=9912,lg=true,ma=38,mcp=1100,md=20,men=2,rcp=0,spd=7.8}
C.units["wh_main_nor_cha_marauder_chieftan_3"] = {a=80,ai=34,al=0,c="com",cat="war_beast",cb=68,hp=14096,lg=true,ma=34,mcp=1900,md=30,men=1,rcp=0,spd=5.6}
C.units["wh_main_nor_inf_chaos_marauders_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9360,ma=34,mcp=375,md=28,men=120,rcp=0,spd=3.5}
C.units["wh_main_nor_inf_chaos_marauders_1"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=9360,ma=34,mcp=475,md=20,men=120,rcp=0,spd=3.5}
C.units["wh_main_nor_mon_chaos_trolls"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=24,hp=7904,lg=true,ma=34,mcp=800,md=32,men=16,rcp=0,spd=5.4}
C.units["wh_main_nor_mon_chaos_warhounds_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=6080,ma=26,mcp=400,md=17,men=80,rcp=0,spd=9.5}
C.units["wh_main_nor_mon_chaos_warhounds_1"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=6080,ma=26,mcp=450,md=17,men=80,rcp=0,spd=9.5}
C.units["wh_main_teb_cha_captain_0"] = {a=85,ai=0,al=0,c="com",cat="inf_melee",cb=40,hp=3688,ma=50,mcp=800,md=40,men=1,rcp=0,spd=3.4}
C.units["wh_main_teb_cha_captain_1"] = {a=85,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4168,lg=true,ma=50,mcp=900,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_main_teb_cha_captain_2"] = {a=105,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4168,lg=true,ma=50,mcp=1000,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_main_teb_cha_general_0"] = {a=85,ai=0,al=0,c="com",cat="inf_melee",cb=50,hp=4068,ma=55,mcp=800,md=45,men=1,rcp=0,spd=3.4}
C.units["wh_main_teb_cha_general_1"] = {a=85,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4672,lg=true,ma=55,mcp=900,md=45,men=1,rcp=0,spd=7.8}
C.units["wh_main_teb_cha_general_2"] = {a=105,ai=0,al=0,c="com",cat="cavalry",cb=70,hp=4672,lg=true,ma=55,mcp=1000,md=45,men=1,rcp=0,spd=7.8}
C.units["wh_main_teb_cha_wizard_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=25,mcp=250,md=30,men=1,rcp=0,spd=3.5}
C.units["wh_main_teb_cha_wizard_1"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=30,hp=3840,lg=true,ma=25,mcp=450,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_main_vmp_cav_black_knights_0"] = {a=80,ai=12,al=0,c="cav_mel",cat="cavalry",cb=34,hp=6600,lg=true,ma=30,mcp=950,md=36,men=60,rcp=0,spd=7.8}
C.units["wh_main_vmp_cav_black_knights_3"] = {a=110,ai=0,al=0,c="cav_shk",cat="cavalry",cb=75,hp=6600,lg=true,ma=30,mcp=1050,md=28,men=60,rcp=0,spd=7.2}
C.units["wh_main_vmp_cav_hexwraiths"] = {a=0,ai=0,al=0,c="cav_mel",cat="cavalry",cb=55,hp=6960,lg=true,ma=34,mcp=1400,md=32,men=60,rcp=0,spd=9.4}
C.units["wh_main_vmp_cha_banshee"] = {a=0,ai=0,al=0,c="com",cat="inf_melee",cb=35,hp=4626,ma=50,mcp=750,md=45,men=1,rcp=0,spd=6}
C.units["wh_main_vmp_cha_heinrich_kemmler"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=25,hp=3808,ma=38,mcp=400,md=45,men=1,rcp=0,spd=3.4}
C.units["wh_main_vmp_cha_mannfred_von_carstein_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=25,hp=4208,ma=70,mcp=950,md=50,men=1,rcp=0,spd=4}
C.units["wh_main_vmp_cha_mannfred_von_carstein_2"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4852,lg=true,ma=70,mcp=1400,md=50,men=1,rcp=0,spd=6.5}
C.units["wh_main_vmp_cha_mannfred_von_carstein_3"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=8236,lg=true,ma=52,mcp=2150,md=50,men=1,rcp=0,spd=6.5}
C.units["wh_main_vmp_cha_mannfred_von_carstein_4"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4852,lg=true,ma=70,mcp=1200,md=50,men=1,rcp=0,spd=7.8}
C.units["wh_main_vmp_cha_master_necromancer_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3688,ma=30,mcp=350,md=38,men=1,rcp=0,spd=3.4}
C.units["wh_main_vmp_cha_master_necromancer_4"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4160,lg=true,ma=30,mcp=750,md=38,men=1,rcp=0,spd=6.5}
C.units["wh_main_vmp_cha_master_necromancer_5"] = {a=45,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=4160,lg=true,ma=30,mcp=600,md=38,men=1,rcp=0,spd=7.8}
C.units["wh_main_vmp_cha_necromancer_0"] = {a=15,ai=0,al=0,c="com",cat="inf_melee",cb=15,hp=3420,ma=25,mcp=200,md=30,men=1,rcp=0,spd=3.4}
C.units["wh_main_vmp_cha_necromancer_5"] = {a=15,ai=0,al=0,c="com",cat="cavalry",cb=35,hp=3908,lg=true,ma=25,mcp=400,md=30,men=1,rcp=0,spd=7.8}
C.units["wh_main_vmp_cha_vampire_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=30,hp=3572,ma=60,mcp=650,md=40,men=1,rcp=0,spd=4}
C.units["wh_main_vmp_cha_vampire_1"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=3908,lg=true,ma=60,mcp=900,md=40,men=1,rcp=0,spd=7.8}
C.units["wh_main_vmp_cha_vampire_2"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=60,hp=3908,lg=true,ma=60,mcp=1100,md=40,men=1,rcp=0,spd=6.5}
C.units["wh_main_vmp_cha_vampire_lord_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=25,hp=4068,ma=70,mcp=900,md=50,men=1,rcp=0,spd=3.8}
C.units["wh_main_vmp_cha_vampire_lord_2"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4672,lg=true,ma=70,mcp=1350,md=50,men=1,rcp=0,spd=6.5}
C.units["wh_main_vmp_cha_vampire_lord_3"] = {a=90,ai=0,al=0,c="com",cat="war_beast",cb=40,hp=8236,lg=true,ma=52,mcp=2050,md=50,men=1,rcp=0,spd=6.5}
C.units["wh_main_vmp_cha_vampire_lord_5"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4672,lg=true,ma=70,mcp=1150,md=50,men=1,rcp=0,spd=7.8}
C.units["wh_main_vmp_cha_wight_king_0"] = {a=90,ai=14,al=0,c="com",cat="inf_melee",cb=15,hp=4896,ma=44,mcp=500,md=48,men=1,rcp=0,spd=3.3}
C.units["wh_main_vmp_cha_wight_king_0_summoned"] = {a=90,ai=14,al=0,c="com",cat="inf_melee",cb=15,hp=4896,ma=44,mcp=167,md=48,men=1,rcp=0,spd=3.3}
C.units["wh_main_vmp_cha_wight_king_1"] = {a=90,ai=14,al=0,c="com",cat="cavalry",cb=35,hp=5260,lg=true,ma=44,mcp=700,md=48,men=1,rcp=0,spd=7.8}
C.units["wh_main_vmp_cha_wight_king_2"] = {a=110,ai=14,al=0,c="com",cat="cavalry",cb=35,hp=5260,lg=true,ma=44,mcp=750,md=48,men=1,rcp=0,spd=7.2}
C.units["wh_main_vmp_inf_cairn_wraiths"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=6720,ma=34,mcp=850,md=30,men=60,rcp=0,spd=4.8}
C.units["wh_main_vmp_inf_crypt_ghouls"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=16,hp=9000,ma=32,mcp=600,md=25,men=120,rcp=0,spd=3.8}
C.units["wh_main_vmp_inf_crypt_ghouls_summoned"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=16,hp=9000,ma=32,mcp=250,md=25,men=120,rcp=0,spd=3.8}
C.units["wh_main_vmp_inf_grave_guard_0"] = {a=90,ai=8,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=9840,ma=26,mcp=850,md=36,men=120,rcp=0,spd=2.7}
C.units["wh_main_vmp_inf_grave_guard_0_summoned"] = {a=90,ai=8,al=0,c="inf_mel",cat="inf_melee",cb=8,hp=9840,ma=26,mcp=387,md=36,men=120,rcp=0,spd=2.7}
C.units["wh_main_vmp_inf_grave_guard_1"] = {a=90,ai=13,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=9840,ma=26,mcp=950,md=26,men=120,rcp=0,spd=2.7}
C.units["wh_main_vmp_inf_skeleton_warriors_0"] = {a=20,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=9760,ma=18,mcp=300,md=22,men=160,rcp=0,spd=3.1}
C.units["wh_main_vmp_inf_skeleton_warriors_0_summoned"] = {a=20,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=9760,ma=18,mcp=150,md=22,men=160,rcp=0,spd=3.1}
C.units["wh_main_vmp_inf_skeleton_warriors_1"] = {a=20,ai=0,al=14,c="inf_mel",cat="inf_melee",cb=4,hp=9760,ma=14,mcp=325,md=30,men=160,rcp=0,spd=3.1}
C.units["wh_main_vmp_inf_zombie"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=3,hp=12320,ma=5,mcp=100,md=6,men=160,rcp=0,spd=2.3}
C.units["wh_main_vmp_inf_zombie_summoned"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=3,hp=12320,ma=5,mcp=50,md=6,men=160,rcp=0,spd=2.3}
C.units["wh_main_vmp_mon_crypt_horrors"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=9952,lg=true,ma=39,mcp=800,md=28,men=16,rcp=0,spd=5}
C.units["wh_main_vmp_mon_crypt_horrors_summoned"] = {a=30,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=9952,lg=true,ma=39,mcp=400,md=28,men=16,rcp=0,spd=5}
C.units["wh_main_vmp_mon_dire_wolves"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=28,hp=6080,ma=26,mcp=500,md=14,men=80,rcp=0,spd=9.5}
C.units["wh_main_vmp_mon_fell_bats"] = {a=0,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=6,hp=4200,ma=19,mcp=375,md=44,men=60,rcp=0,spd=7}
C.units["wh_main_vmp_mon_terrorgheist"] = {a=80,ai=0,al=25,c="inf_mel",cat="inf_melee",cb=40,hp=8289,lg=true,ma=41,mcp=2000,md=47,men=1,rcp=0,spd=6.5}
C.units["wh_main_vmp_mon_terrorgheist_qb"] = {a=80,ai=0,al=25,c="inf_mel",cat="inf_melee",cb=40,hp=8289,lg=true,ma=41,mcp=2000,md=47,men=1,rcp=0,spd=6.5}
C.units["wh_main_vmp_mon_vargheists"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=6320,lg=true,ma=40,mcp=1050,md=25,men=16,rcp=0,spd=6.5}
C.units["wh_main_vmp_mon_varghulf"] = {a=40,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=50,hp=8248,lg=true,ma=50,mcp=1400,md=42,men=1,rcp=0,spd=8}
C.units["wh_main_vmp_veh_black_coach"] = {a=60,ai=20,al=0,c="chariot",cat="war_machine",cb=80,hp=5948,lg=true,ma=29,mcp=1200,md=25,men=1,rcp=0,spd=7.8}
C.units["wh_pro01_dwf_cha_grombrindal_0"] = {a=125,ai=0,al=0,c="com",cat="inf_melee",cb=45,hp=6620,ma=70,mcp=1500,md=45,men=1,rcp=0,spd=3.2}
C.units["wh_pro02_vmp_cha_isabella_von_carstein_0"] = {a=90,ai=0,al=0,c="com",cat="inf_melee",cb=25,hp=4208,ma=50,mcp=950,md=65,men=1,rcp=0,spd=4}
C.units["wh_pro02_vmp_cha_isabella_von_carstein_2"] = {a=90,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4852,lg=true,ma=50,mcp=1400,md=65,men=1,rcp=0,spd=6.5}
C.units["wh_pro02_vmp_cha_isabella_von_carstein_4"] = {a=110,ai=0,al=0,c="com",cat="cavalry",cb=50,hp=4852,lg=true,ma=50,mcp=1200,md=65,men=1,rcp=0,spd=7.8}
C.units["wh_pro03_vmp_cha_krell_0"] = {a=100,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=35,hp=4000,ma=50,mcp=800,md=32,men=1,rcp=0,spd=3.3}
C.units["wh_pro03_vmp_cha_krell_campaign_0"] = {a=100,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=35,hp=4000,ma=50,mcp=800,md=32,men=1,rcp=0,spd=3.3}
C.units["wh_pro03_vmp_cha_krell_campaign_1"] = {a=100,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=35,hp=4000,ma=50,mcp=800,md=32,men=1,rcp=0,spd=3.3}
C.units["wh_pro03_vmp_cha_krell_campaign_2"] = {a=100,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=35,hp=5000,ma=50,mcp=800,md=42,men=1,rcp=0,spd=3.3}
C.units["wh_pro03_vmp_cha_krell_campaign_3"] = {a=100,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=45,hp=5000,ma=55,mcp=800,md=42,men=1,rcp=0,spd=3.3}
C.units["wh_pro03_vmp_cha_krell_campaign_4"] = {a=100,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=55,hp=5660,ma=65,mcp=800,md=45,men=1,rcp=0,spd=3.3}
C.units["wh_pro04_brt_cav_knights_errant_ror_0"] = {a=80,ai=0,al=0,c="cav_shk",cat="cavalry",cb=55,hp=5700,lg=true,ma=36,mcp=900,md=36,men=60,rcp=0,spd=8.4}
C.units["wh_pro04_brt_cav_knights_of_the_realm_ror_0"] = {a=100,ai=0,al=12,c="cav_shk",cat="cavalry",cb=65,hp=6240,lg=true,ma=41,mcp=1200,md=36,men=60,rcp=0,spd=8.4}
C.units["wh_pro04_brt_cav_mounted_yeomen_ror_0"] = {a=30,ai=0,al=0,c="cav_mis",cat="cavalry",cb=25,hp=4500,lg=true,ma=24,mcp=150,md=22,men=60,rcp=600,spd=9.2}
C.units["wh_pro04_brt_cav_questing_knights_ror_0"] = {a=90,ai=0,al=10,c="cav_shk",cat="cavalry",cb=40,hp=6480,lg=true,ma=50,mcp=1450,md=49,men=60,rcp=0,spd=8.4}
C.units["wh_pro04_brt_inf_battle_pilgrims_ror_0"] = {a=30,ai=5,al=0,c="inf_mel",cat="inf_melee",cb=22,hp=8280,ma=41,mcp=800,md=33,men=120,rcp=0,spd=3}
C.units["wh_pro04_brt_inf_foot_squires_ror_0"] = {a=80,ai=0,al=22,c="inf_mel",cat="inf_melee",cb=8,hp=8280,ma=31,mcp=950,md=52,men=120,rcp=0,spd=2.8}
C.units["wh_pro04_bst_inf_bestigor_herd_ror_0"] = {a=95,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=26,hp=10000,ma=44,mcp=1300,md=42,men=100,rcp=0,spd=3.8}
C.units["wh_pro04_bst_inf_centigors_ror_0"] = {a=70,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=42,hp=6720,ma=29,mcp=1250,md=29,men=60,rcp=0,spd=8.4}
C.units["wh_pro04_bst_inf_cygor_ror_0"] = {a=50,ai=0,al=0,c="spcl",cat="inf_ranged",cb=28,hp=9800,lg=true,ma=54,mcp=925,md=32,men=1,rcp=975,spd=3.9}
C.units["wh_pro04_bst_inf_gor_herd_ror_0"] = {a=35,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=26,hp=9600,ma=34,mcp=750,md=44,men=120,rcp=0,spd=3.8}
C.units["wh_pro04_bst_inf_minotaurs_ror_0"] = {a=45,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=32,hp=8704,lg=true,ma=43,mcp=1600,md=56,men=16,rcp=0,spd=6.2}
C.units["wh_pro04_bst_inf_ungor_spearmen_ror_0"] = {a=15,ai=0,al=12,c="inf_spr",cat="inf_melee",cb=6,hp=8960,ma=27,mcp=575,md=47,men=160,rcp=0,spd=3.6}
C.units["wh_pro04_chs_art_hellcannon_ror_0"] = {a=30,ai=0,al=0,c="art_fld",cat="artillery",cb=5,hp=1860,ma=24,mcp=150,md=19,men=12,rcp=1400,spd=2.8}
C.units["wh_pro04_chs_cav_chaos_knights_ror_0"] = {a=120,ai=0,al=0,c="cav_mel",cat="war_beast",cb=44,hp=7680,lg=true,ma=52,mcp=1800,md=61,men=24,rcp=0,spd=7}
C.units["wh_pro04_chs_inf_chaos_warriors_ror_0"] = {a=100,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=20,hp=9000,ma=45,mcp=950,md=54,men=100,rcp=0,spd=3.3}
C.units["wh_pro04_chs_inf_forsaken_ror_0"] = {a=85,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=36,hp=8720,ma=35,mcp=1000,md=32,men=80,rcp=0,spd=4.6}
C.units["wh_pro04_chs_mon_chaos_spawn_ror_0"] = {a=10,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=35,hp=8768,lg=true,ma=45,mcp=1250,md=36,men=16,rcp=0,spd=4.2}
C.units["wh_pro04_chs_mon_dragon_ogre_ror_0"] = {a=60,ai=0,al=26,c="inf_mel",cat="inf_melee",cb=42,hp=9856,lg=true,ma=41,mcp=1850,md=50,men=16,rcp=0,spd=6.4}
C.units["wh_pro04_nor_inf_chaos_marauders_ror_0"] = {a=15,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=18,hp=9360,ma=43,mcp=600,md=36,men=120,rcp=0,spd=3.5}
C.units["wh_pro04_nor_inf_marauder_berserkers_ror_0"] = {a=35,ai=5,al=0,c="inf_mel",cat="inf_melee",cb=42,hp=10200,ma=50,mcp=1000,md=26,men=100,rcp=0,spd=4}
C.units["wh_pro04_nor_mon_fimir_ror_0"] = {a=110,ai=15,al=0,c="inf_mel",cat="inf_melee",cb=30,hp=8224,lg=true,ma=38,mcp=1450,md=52,men=16,rcp=0,spd=4.5}
C.units["wh_pro04_nor_mon_marauder_warwolves_ror_0"] = {a=15,ai=0,al=14,c="inf_mel",cat="inf_melee",cb=18,hp=6080,ma=36,mcp=700,md=23,men=80,rcp=0,spd=9.5}
C.units["wh_pro04_nor_mon_skinwolves_ror_0"] = {a=70,ai=0,al=30,c="inf_mel",cat="inf_melee",cb=32,hp=7416,lg=true,ma=41,mcp=1500,md=36,men=24,rcp=0,spd=6.5}
C.units["wh_pro04_nor_mon_war_mammoth_ror_0"] = {a=80,ai=34,al=0,c="inf_mel",cat="war_beast",cb=68,hp=84576,lg=true,ma=43,mcp=2300,md=38,men=6,rcp=0,spd=5.6}
C.units["wh_pro04_wef_cav_wild_riders_ror_0"] = {a=40,ai=0,al=15,c="cav_shk",cat="cavalry",cb=62,hp=6420,lg=true,ma=43,mcp=1550,md=39,men=60,rcp=0,spd=9}
C.units["wh_pro04_wef_inf_eternal_guard_ror_0"] = {a=40,ai=0,al=15,c="inf_spr",cat="inf_melee",cb=6,hp=7200,ma=34,mcp=850,md=54,men=100,rcp=0,spd=3.3}
C.units["wh_pro04_wef_inf_wardancers_ror_0"] = {a=15,ai=0,al=23,c="inf_spr",cat="inf_melee",cb=12,hp=6800,ma=40,mcp=1300,md=60,men=100,rcp=0,spd=4.6}
C.units["wh_pro04_wef_inf_waywatchers_ror_0"] = {a=15,ai=0,al=0,c="inf_mis",cat="inf_ranged",cb=12,hp=5640,ma=36,mcp=300,md=36,men=60,rcp=1150,spd=4}
C.units["wh_pro04_wef_inf_wildwood_rangers_ror_0"] = {a=40,ai=0,al=20,c="inf_mel",cat="inf_melee",cb=12,hp=8400,ma=46,mcp=1200,md=55,men=100,rcp=0,spd=3.8}
C.units["wh_pro04_wef_mon_treekin_ror_0"] = {a=90,ai=0,al=0,c="inf_mel",cat="inf_melee",cb=12,hp=8768,lg=true,ma=34,mcp=1100,md=57,men=16,rcp=0,spd=3.4}
C.units["wh_twa03_def_inf_squig_explosive_0"] = {a=50,ai=11,al=0,c="inf_mel",cat="inf_melee",cb=40,hp=668,ma=26,mcp=425,md=20,men=1,rcp=0,spd=5.8}
return C

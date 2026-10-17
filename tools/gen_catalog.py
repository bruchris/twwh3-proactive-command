"""Generate the Proactive Command ability catalog (a Lua data file) from game data.

Reads the vanilla db.pack and local_en.pack (and optionally extra mod packs that
change abilities, e.g. an overhaul), then writes:

  <out_dir>/script/proactive_command/pc_catalog.lua

Usage:
  python gen_catalog.py <game_data_dir> <out_dir> [extra_mod.pack ...]

Requires Python 3.14+ (built-in zstd) or Python 3.8+ with `pip install zstandard`.
"""
import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from pack_tool import Pack  # noqa: E402
from db_reader import load_schema, decode_table, decode_loc  # noqa: E402

TABLES = [
    "unit_special_abilities_tables",
    "unit_abilities_tables",
    "special_ability_phases_tables",
    "special_ability_to_special_ability_phase_junctions_tables",
    "battle_vortexs_tables",
    "projectile_bombardments_tables",
    "projectiles_tables",
    "projectiles_explosions_tables",
    "battle_ai_abilities_usage_template_names_tables",
    "battle_ai_abilities_usage_templates_to_params_tables",
    "battle_ai_abilities_usage_params_tables",
    "land_units_tables",
    "main_units_tables",
    "battle_entities_tables",
    "unit_armour_types_tables",
    "melee_weapons_tables",
    "mounts_tables",
]

# Primary key column per table, used when a later pack overrides a row.
PKEY = {
    "unit_special_abilities_tables": "key",
    "unit_abilities_tables": "key",
    "special_ability_phases_tables": "id",
    "battle_vortexs_tables": "vortex_key",
    "projectile_bombardments_tables": "bombardment_key",
    "projectiles_tables": "key",
    "projectiles_explosions_tables": "key",
    "battle_ai_abilities_usage_template_names_tables": "ai_ability_usage_template_key",
    "battle_ai_abilities_usage_params_tables": "usage_param",
    "land_units_tables": "key",
    "main_units_tables": "unit",
    "battle_entities_tables": "key",
    "unit_armour_types_tables": "key",
    "melee_weapons_tables": "key",
    "mounts_tables": "key",
}

SKIP_SOURCES = {"army"}  # army-wide abilities are not cast by units


def load_tables(packs, schema):
    keyed = {t: {} for t in TABLES if t in PKEY}
    lists = {t: [] for t in TABLES if t not in PKEY}
    for pack in packs:
        for e in pack.entries:
            parts = e.path.split("/")
            if len(parts) != 3 or parts[0] != "db" or parts[1] not in schema:
                continue
            table = parts[1]
            if table not in TABLES:
                continue
            _ver, rows = decode_table(pack.read(e), table, schema)
            if table in keyed:
                pk = PKEY[table]
                for r in rows:
                    keyed[table][r[pk]] = r
            else:
                lists[table].extend(rows)
    out = dict(lists)
    out.update(keyed)
    return out


def load_kv(packs):
    import struct
    from db_reader import _Cursor
    kv = {}
    for pack in packs:
        for e in pack.entries:
            if e.path.startswith("db/_kv_battle_ai_ability_usage_variables_tables/"):
                d = pack.read(e)
                c = _Cursor(d)
                if d[:4] == b"\xfd\xfe\xfc\xff":
                    c.p = 4
                    c.str16()
                if c.b[c.p:c.p + 4] == b"\xfc\xfd\xfe\xff":
                    c.p += 4
                    c.u32()
                c.u8()
                for _ in range(c.u32()):
                    k = c.str8()
                    kv[k] = struct.unpack("<f", c.take(4))[0]
    return kv


def resolve_tr(text, loc, depth=0):
    """Expand {{tr:loc_key}} references used inside some localised names."""
    import re
    if depth > 3 or "{{tr:" not in text:
        return text
    return re.sub(r"\{\{tr:([^}]+)\}\}", lambda m: resolve_tr(loc.get(m.group(1), ""), loc, depth + 1), text)


def load_names(packs):
    names = {}
    allloc = {}
    for pack in packs:
        for e in pack.entries:
            if e.path.endswith(".loc") and ("unit_abilities" in e.path or e.path.startswith("text/db/")):
                try:
                    loc = decode_loc(pack.read(e))
                except Exception:
                    continue
                allloc.update(loc)
    for k, v in allloc.items():
        if k.startswith("unit_abilities_onscreen_name_"):
            names[k[len("unit_abilities_onscreen_name_"):]] = resolve_tr(v, allloc)
    return names


def lua_str(s):
    s = s.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n").replace("\r", "")
    return '"' + s + '"'


def lua_val(v):
    if isinstance(v, bool):
        return "true" if v else "false"
    if isinstance(v, (int,)):
        return str(v)
    if isinstance(v, float):
        if v == int(v):
            return str(int(v))
        return "%.6g" % v
    if isinstance(v, str):
        return lua_str(v)
    raise TypeError(v)


def lua_record(d):
    parts = []
    for k in sorted(d):
        v = d[k]
        if v is None or v is False or v == "":
            continue
        parts.append("%s=%s" % (k, lua_val(v)))
    return "{" + ",".join(parts) + "}"


def build(game_data_dir, extra_packs):
    schema = load_schema()
    packs = [Pack(os.path.join(game_data_dir, "db.pack"))]
    packs += [Pack(p) for p in extra_packs]
    T = load_tables(packs, schema)
    kv = load_kv(packs)
    names = load_names([Pack(os.path.join(game_data_dir, "local_en.pack"))] + packs[1:])

    usa = T["unit_special_abilities_tables"]
    ua = T["unit_abilities_tables"]
    phases = T["special_ability_phases_tables"]
    vortexes = T["battle_vortexs_tables"]
    bombs = T["projectile_bombardments_tables"]
    projs = T["projectiles_tables"]
    expls = T["projectiles_explosions_tables"]

    ab_phases = {}
    for j in T["special_ability_to_special_ability_phase_junctions_tables"]:
        ab_phases.setdefault(j["special_ability"], []).append(j)

    def projectile_radius(pkey):
        p = projs.get(pkey) if pkey else None
        if not p:
            return 0.0, False
        r = float(p.get("shockwave_radius") or 0)
        ff = bool(p.get("can_damage_allies"))
        ex = expls.get(p.get("explosion_type")) if p.get("explosion_type") else None
        if ex:
            r = max(r, float(ex.get("detonation_radius") or 0))
            ff = ff or bool(ex.get("affects_allies"))
        sv = vortexes.get(p.get("spawned_vortex")) if p.get("spawned_vortex") else None
        if sv:
            r = max(r, float(sv.get("goal_radius") or 0))
            ff = ff or bool(sv.get("affects_allies"))
        return r, ff

    abilities = {}
    stats = {"skipped_passive": 0, "skipped_source": 0}
    for key, r in usa.items():
        if r["passive"]:
            stats["skipped_passive"] += 1
            continue
        u = ua.get(key, {})
        src = u.get("source_type", "")
        if src in SKIP_SOURCES:
            stats["skipped_source"] += 1
            continue
        ty = (u.get("type") or "").replace("wh_type_", "")
        rec = {
            "n": names.get(key, ""),
            "ty": ty,
            "src": src,
            "ai": r["ai_usage"] or "",
            "mana": float(r["mana_cost"] or 0),
            "cd": float(r["recharge_time"] or 0),
            "dur": max(0.0, float(r["active_time"] or 0)),
            "uses": int(r["num_uses"]) if r["num_uses"] and r["num_uses"] > 0 else None,
            "wu": float(r["wind_up_time"] or 0),
            "mc": float(r["miscast_chance"] or 0),
            "rng": float(r["target_intercept_range"] or 0),
            "minr": float(r["min_range"] or 0),
            "er": float(r["effect_range"] or 0),
            "ts": bool(r["target_self"]),
            "tf": bool(r["target_friends"]),
            "te": bool(r["target_enemies"]),
            "tg": bool(r["target_ground"]),
            "sa": bool(r["affect_self"] or r["always_affect_self"]),
            "ot": bool(r["only_affect_target"]),
            "nf": int(r["num_effected_friendly_units"] or 0) or None,
            "ne": int(r["num_effected_enemy_units"] or 0) or None,
            "upg": key.endswith("_upgraded"),
        }
        # Damage footprint and friendly-fire risk
        rad, ff = 0.0, False
        vlen = 0.0
        if r["vortex"] and r["vortex"] in vortexes:
            v = vortexes[r["vortex"]]
            rad = max(float(v["goal_radius"] or 0), float(v["start_radius"] or 0))
            ff = bool(v["affects_allies"])
            vlen = float(v["movement_speed"] or 0) * float(v["duration"] or 0)
            rec["dmg"] = int(v["damage"] or 0) + int(v["damage_ap"] or 0)
        if r["bombardment"] and r["bombardment"] in bombs:
            b = bombs[r["bombardment"]]
            pr, _pff = projectile_radius(b["projectile_type"])
            rad = max(rad, float(b["radius_spread"] or 0) + pr)
            ff = True  # bombardment projectiles hit whatever is under them
        if r["activated_projectile"]:
            pr, pff = projectile_radius(r["activated_projectile"])
            rad = max(rad, pr)
            ff = ff or pff
        rec["rad"] = rad if rad > 0 else None
        rec["vlen"] = vlen if vlen > 0 else None
        rec["ff"] = ff
        # Phase-derived properties
        cant_move = False  # the ability roots its own caster
        heal = False
        self_only = rec["sa"] and not rec["te"] and not rec["tf"]
        for j in ab_phases.get(key, []):
            ph = phases.get(j["phase"])
            if not ph:
                continue
            if ph.get("cant_move") and (j.get("target_self") or self_only):
                cant_move = True
            heal = heal or float(ph.get("heal_amount") or 0) > 0
        rec["cm"] = cant_move
        rec["heal"] = heal
        rec["sum"] = bool(r["spawned_unit"]) and not r["spawn_is_transformation"]
        rec["tr"] = bool(r["spawn_is_transformation"]) or ty == "transform"
        rec["fm"] = bool(r["formation"] or r["behaviour"]) or ty in ("formation", "hiding")
        abilities[key] = rec

    templates = {}
    for tkey, t in T["battle_ai_abilities_usage_template_names_tables"].items():
        templates[tkey] = {"b": float(t["factor_bias"]), "w": {}}
    for j in T["battle_ai_abilities_usage_templates_to_params_tables"]:
        templates.setdefault(j["template"], {"b": 1.0, "w": {}})["w"][j["parameter"]] = float(j["weighting"])
    params = {k: float(v["multiplier"]) for k, v in T["battle_ai_abilities_usage_params_tables"].items()}

    armour = {k: int(v["armour_value"]) for k, v in T["unit_armour_types_tables"].items()}
    weapons = T["melee_weapons_tables"]
    entities = T["battle_entities_tables"]
    lus = T["land_units_tables"]
    units = {}
    for mu in T["main_units_tables"].values():
        lk = mu["land_unit"]
        if lk in units or lk not in lus:
            continue
        lu = lus[lk]
        ent = entities.get(lu["man_entity"], {})
        hp_ent = int(ent.get("hit_points") or 0) + int(lu.get("bonus_hit_points") or 0)
        men = max(1, int(mu["num_men"] or 1))
        mount_row = T["mounts_tables"].get(lu.get("mount") or "") if lu.get("mount") else None
        mount = entities.get(mount_row["entity"], {}) if mount_row else {}
        wpn = weapons.get(lu.get("primary_melee_weapon") or "", {})
        size = (mount.get("size") or ent.get("size") or "")
        units[lk] = {
            "a": armour.get(lu["armour"], 0),
            "ma": int(lu["melee_attack"] or 0),
            "md": int(lu["melee_defence"] or 0),
            "hp": hp_ent * men,
            "men": men,
            "mcp": round(float(mu["melee_cp"] or 0), 1),
            "rcp": round(float(mu["missile_cp"] or 0), 1),
            "c": lu.get("class") or "",
            "cat": lu.get("category") or "",
            "lg": bool(lu.get("mount")) or size in ("large", "very_large")
                  or lu.get("category") in ("cavalry", "war_beast") or lu.get("class") in ("chariot", "cav_shk", "cav_mel", "cav_mis"),
            "al": int(wpn.get("bonus_v_large") or 0),
            "ai": int(wpn.get("bonus_v_infantry") or 0),
            "cb": int(lu.get("charge_bonus") or 0),
            "spd": round(float(mount.get("run_speed") or ent.get("run_speed") or 0), 1),
        }

    return abilities, templates, params, kv, units, stats


def write_lua(path, abilities, templates, params, kv, units, meta):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w", encoding="utf-8", newline="\n") as f:
        f.write("-- Proactive Command ability catalog. GENERATED FILE - do not edit by hand.\n")
        f.write("-- Regenerate with tools/gen_catalog.py after game patches or when using overhaul mods.\n")
        f.write("local C = {abilities = {}, units = {}, templates = {}, params = {}, kv = {}}\n")
        f.write("C.meta = %s\n" % lua_record(meta))
        for k in sorted(kv):
            f.write("C.kv[%s] = %s\n" % (lua_str(k), lua_val(float(kv[k]))))
        for k in sorted(params):
            f.write("C.params[%s] = %s\n" % (lua_str(k), lua_val(params[k])))
        for k in sorted(templates):
            t = templates[k]
            w = ",".join("[%s]=%s" % (lua_str(p), lua_val(v)) for p, v in sorted(t["w"].items()))
            f.write("C.templates[%s] = {b=%s,w={%s}}\n" % (lua_str(k), lua_val(t["b"]), w))
        for k in sorted(abilities):
            f.write("C.abilities[%s] = %s\n" % (lua_str(k), lua_record(abilities[k])))
        for k in sorted(units):
            f.write("C.units[%s] = %s\n" % (lua_str(k), lua_record(units[k])))
        f.write("return C\n")


def main(argv):
    if len(argv) < 3:
        print(__doc__)
        return 1
    data_dir, out_dir = argv[1], argv[2]
    extra = argv[3:]
    abilities, templates, params, kv, units, stats = build(data_dir, extra)
    meta = {
        "generated": datetime.date.today().isoformat(),
        "extra_packs": ";".join(os.path.basename(p) for p in extra),
        "n_abilities": len(abilities),
        "n_units": len(units),
    }
    out = os.path.join(out_dir, "script", "proactive_command", "pc_catalog.lua")
    write_lua(out, abilities, templates, params, kv, units, meta)
    print("abilities=%d units=%d templates=%d params=%d kv=%s %s" % (
        len(abilities), len(units), len(templates), len(params), kv, stats))
    print("wrote", out, os.path.getsize(out), "bytes")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))

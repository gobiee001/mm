"""Observation schema constants and light validation.

The agent is the source of truth for the payload shape; this module exists so
consumers can reference field names symbolically and assert basic structure
without hand-rolling checks.
"""

from __future__ import annotations

from typing import Any

#: Enemy type names, matching the descriptors in agent/entities/enemy_types.js.
ENEMY_TYPES = ("hawk", "humanoid", "worm")

#: Enemy types that expose a fire angle. WormDrone has no getFireAngle in this
#: binary, so enemies[].fire_angle is always None for worms.
ENEMY_TYPES_WITH_FIRE_ANGLE = ("hawk", "humanoid")

#: ItemType values, from agent/actuators/loadout.js.
ITEM_TYPES = {
    1: "MACHETE", 2: "FRAGNADE", 3: "DEAGLE", 4: "MAGNUM", 5: "UZI",
    6: "MP5", 7: "AK47", 8: "M16", 9: "SHOTGUN", 10: "M93BA",
    11: "SMAW", 12: "ROCKET", 13: "RIOTSHIELD", 16: "M14", 17: "PHASR",
    18: "GDEAGLE", 19: "FLAMETHROWER", 20: "GASNADE", 21: "EMP",
    23: "PROXYNADE", 24: "SAW", 25: "SAWGUN", 26: "TAVOR", 27: "MINIGUN",
    28: "TEC9", 29: "RG6", 30: "EMPNADE", 31: "XM8", 32: "MORTAR",
}

UZI = 5

OBS_TOP_LEVEL = ("type", "seq", "frame", "t", "dt", "player", "enemies", "counts", "diag")

PLAYER_FIELDS = ("present", "ptr", "hp", "power", "alive", "dead",
                 "pos", "vel", "aim_angle", "weapon")

WEAPON_FIELDS = ("ptr", "type", "clip", "clip_capacity", "ammo", "ammo_capacity",
                 "is_reloading", "is_triggering", "reload_time")

ENEMY_FIELDS = ("idx", "type", "ptr", "pos", "vel", "body_angle", "fire_angle")

#: Possible values of diag.vec_abi. "finite_diff" means the probe rejected every
#: native candidate and velocity is derived from position deltas.
VEC_ABI_MODES = ("struct", "sret", "packed", "finite_diff")


def weapon_name(item_type: int | None) -> str:
    if item_type is None:
        return "none"
    return ITEM_TYPES.get(item_type, f"UNKNOWN({item_type})")


def validate(obs: dict[str, Any]) -> list[str]:
    """Return a list of structural problems. Empty means the shape is sane."""
    problems: list[str] = []

    if obs.get("type") != "obs":
        problems.append(f"type != 'obs' (got {obs.get('type')!r})")

    for key in ("seq", "frame", "player", "enemies", "counts", "diag"):
        if key not in obs:
            problems.append(f"missing top-level key {key!r}")

    player = obs.get("player")
    if not isinstance(player, dict):
        problems.append("player is not an object")
    elif player.get("present"):
        for key in ("pos", "vel", "aim_angle"):
            if key not in player:
                problems.append(f"player missing {key!r}")
        pos = player.get("pos")
        if isinstance(pos, dict) and not all(k in pos for k in ("x", "y")):
            problems.append("player.pos missing x/y")

    enemies = obs.get("enemies")
    if not isinstance(enemies, list):
        problems.append("enemies is not a list")
    else:
        for i, e in enumerate(enemies):
            if not isinstance(e, dict):
                problems.append(f"enemies[{i}] is not an object")
                continue
            if e.get("type") not in ENEMY_TYPES:
                problems.append(f"enemies[{i}].type = {e.get('type')!r}")
            if e.get("type") == "worm" and e.get("fire_angle") is not None:
                problems.append(f"enemies[{i}] is a worm with a non-null fire_angle")

    diag = obs.get("diag")
    if isinstance(diag, dict):
        abi = diag.get("vec_abi")
        if abi is not None and abi not in VEC_ABI_MODES:
            problems.append(f"diag.vec_abi = {abi!r}")

    return problems

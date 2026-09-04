"""Body physics configurations for player and enemy actor kinds."""

from dataclasses import dataclass
from typing import Tuple
from .provenance import Provenance, register_provenance


@dataclass
class BodyPhysics:
    mass: float
    inv_mass: float
    gravity_airborne: Tuple[float, float]
    gravity_grounded: Tuple[float, float]
    half_w: float
    half_h: float
    max_hp: float
    max_speed_x: float = 190.0
    max_speed_flight: float = 325.0
    jump_impulse: float = 220.0
    flight_accel_mult: float = 1.5
    ground_accel_mult: float = 3.0
    power_drain_rate: float = 25.0
    power_regen_rate: float = 20.0


def _load_physics_config() -> Tuple[dict, dict]:
    import json
    from pathlib import Path

    candidates = [
        Path.cwd() / "config.json",
        Path(__file__).resolve().parent.parent.parent / "config.json",
        Path(__file__).resolve().parent.parent.parent.parent / "TmxFiles-testing-map" / "sd" / "scripts" / "config.json",
        Path(__file__).resolve().parent.parent.parent.parent / "TmxFiles-testing-map" / "TrainingCloneEnv" / "config.json",
    ]
    dims = {
        "player": (12.0, 21.0),
        "hawk": (16.0, 16.0),
        "humanoid": (12.0, 21.0),
        "worm": (15.0, 10.0),
    }
    phys = {
        "mass": 0.1,
        "gravity_airborne": (0.0, -300.0),
        "gravity_grounded": (0.0, -50.0),
        "max_speed_x": 190.0,
        "max_speed_flight": 325.0,
        "jump_impulse": 220.0,
        "flight_accel_mult": 1.5,
        "ground_accel_mult": 3.0,
        "power_drain_rate": 25.0,
        "power_regen_rate": 20.0,
    }
    for p in candidates:
        if p.is_file():
            try:
                with open(p, "r", encoding="utf-8") as f:
                    d = json.load(f)
                if "player_width" in d and "player_height" in d:
                    dims["player"] = (float(d["player_width"]) / 2.0, float(d["player_height"]) / 2.0)
                if "hawk_width" in d and "hawk_height" in d:
                    dims["hawk"] = (float(d["hawk_width"]) / 2.0, float(d["hawk_height"]) / 2.0)
                if "humanoid_width" in d and "humanoid_height" in d:
                    dims["humanoid"] = (float(d["humanoid_width"]) / 2.0, float(d["humanoid_height"]) / 2.0)
                if "worm_width" in d and "worm_height" in d:
                    dims["worm"] = (float(d["worm_width"]) / 2.0, float(d["worm_height"]) / 2.0)

                raw_phys = d.get("physics", {})
                if "mass" in raw_phys:
                    phys["mass"] = float(raw_phys["mass"])
                if "gravity_airborne" in raw_phys:
                    phys["gravity_airborne"] = tuple(float(v) for v in raw_phys["gravity_airborne"])
                if "gravity_grounded" in raw_phys:
                    phys["gravity_grounded"] = tuple(float(v) for v in raw_phys["gravity_grounded"])
                if "max_speed_x" in raw_phys:
                    phys["max_speed_x"] = float(raw_phys["max_speed_x"])
                if "max_speed_flight" in raw_phys:
                    phys["max_speed_flight"] = float(raw_phys["max_speed_flight"])
                if "jump_impulse" in raw_phys:
                    phys["jump_impulse"] = float(raw_phys["jump_impulse"])
                if "flight_accel_mult" in raw_phys:
                    phys["flight_accel_mult"] = float(raw_phys["flight_accel_mult"])
                if "ground_accel_mult" in raw_phys:
                    phys["ground_accel_mult"] = float(raw_phys["ground_accel_mult"])
                if "power_drain_rate" in raw_phys:
                    phys["power_drain_rate"] = float(raw_phys["power_drain_rate"])
                if "power_regen_rate" in raw_phys:
                    phys["power_regen_rate"] = float(raw_phys["power_regen_rate"])
                break
            except Exception:
                pass
    return dims, phys


_dims, _phys = _load_physics_config()

PLAYER_PHYSICS = BodyPhysics(
    mass=_phys["mass"],
    inv_mass=1.0 / _phys["mass"],
    gravity_airborne=_phys["gravity_airborne"],
    gravity_grounded=_phys["gravity_grounded"],
    half_w=_dims["player"][0],
    half_h=_dims["player"][1],
    max_hp=100.0,
    max_speed_x=_phys["max_speed_x"],
    max_speed_flight=_phys["max_speed_flight"],
    jump_impulse=_phys["jump_impulse"],
    flight_accel_mult=_phys["flight_accel_mult"],
    ground_accel_mult=_phys["ground_accel_mult"],
    power_drain_rate=_phys["power_drain_rate"],
    power_regen_rate=_phys["power_regen_rate"],
)

HAWK_PHYSICS = BodyPhysics(
    mass=_phys["mass"],
    inv_mass=1.0 / _phys["mass"],
    gravity_airborne=_phys["gravity_airborne"],
    gravity_grounded=_phys["gravity_grounded"],
    half_w=_dims["hawk"][0],
    half_h=_dims["hawk"][1],
    max_hp=50.0,
    max_speed_x=_phys["max_speed_x"],
    max_speed_flight=_phys["max_speed_flight"],
    jump_impulse=_phys["jump_impulse"],
    flight_accel_mult=_phys["flight_accel_mult"],
    ground_accel_mult=_phys["ground_accel_mult"],
    power_drain_rate=_phys["power_drain_rate"],
    power_regen_rate=_phys["power_regen_rate"],
)

HUMANOID_PHYSICS = BodyPhysics(
    mass=_phys["mass"],
    inv_mass=1.0 / _phys["mass"],
    gravity_airborne=_phys["gravity_airborne"],
    gravity_grounded=_phys["gravity_grounded"],
    half_w=_dims["humanoid"][0],
    half_h=_dims["humanoid"][1],
    max_hp=100.0,
    max_speed_x=_phys["max_speed_x"],
    max_speed_flight=_phys["max_speed_flight"],
    jump_impulse=_phys["jump_impulse"],
    flight_accel_mult=_phys["flight_accel_mult"],
    ground_accel_mult=_phys["ground_accel_mult"],
    power_drain_rate=_phys["power_drain_rate"],
    power_regen_rate=_phys["power_regen_rate"],
)

WORM_PHYSICS = BodyPhysics(
    mass=_phys["mass"],
    inv_mass=1.0 / _phys["mass"],
    gravity_airborne=_phys["gravity_airborne"],
    gravity_grounded=_phys["gravity_grounded"],
    half_w=_dims["worm"][0],
    half_h=_dims["worm"][1],
    max_hp=75.0,
    max_speed_x=140.0,
    max_speed_flight=_phys["max_speed_flight"],
    jump_impulse=_phys["jump_impulse"],
    flight_accel_mult=_phys["flight_accel_mult"],
    ground_accel_mult=_phys["ground_accel_mult"],
    power_drain_rate=_phys["power_drain_rate"],
    power_regen_rate=_phys["power_regen_rate"],
)

register_provenance("bodies.player.gravity_airborne", Provenance.EXTRACTED)
register_provenance("bodies.player.gravity_grounded", Provenance.EXTRACTED)
register_provenance("bodies.player.mass", Provenance.EXTRACTED)
register_provenance("bodies.player.half_w", Provenance.GUESSED)
register_provenance("bodies.player.half_h", Provenance.GUESSED)

register_provenance("bodies.hawk.gravity_airborne", Provenance.EXTRACTED)
register_provenance("bodies.hawk.hp", Provenance.EXTRACTED)
register_provenance("bodies.worm.gravity_airborne", Provenance.EXTRACTED)
register_provenance("bodies.worm.hp", Provenance.EXTRACTED)
register_provenance("bodies.humanoid.hp", Provenance.MEASURED)

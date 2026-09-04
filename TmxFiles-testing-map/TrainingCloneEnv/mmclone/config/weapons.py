"""Weapon specifications extracted from game binary."""

from dataclasses import dataclass
from typing import Dict
from .provenance import Provenance, register_provenance


@dataclass(frozen=True)
class WeaponSpec:
    name: str
    type_id: int
    fire_delay_s: float
    reload_time_s: float
    spread_deg: float
    recoil_deg: float
    clip_size: int
    ammo_cap: int
    damage: float
    range_px: float
    bullet_speed: float

    @property
    def fire_delay_ticks(self) -> int:
        return max(1, round(self.fire_delay_s * 60.0))

    @property
    def reload_ticks(self) -> int:
        return max(1, round(self.reload_time_s * 60.0))

    @property
    def ttl_ticks(self) -> int:
        return max(1, round((self.range_px / self.bullet_speed) * 60.0))


UZI = WeaponSpec(
    name="uzi",
    type_id=5,
    fire_delay_s=0.1,
    reload_time_s=1.5,
    spread_deg=6.0,
    recoil_deg=10.0,
    clip_size=40,
    ammo_cap=400,
    damage=7.0,
    range_px=500.0,
    bullet_speed=1300.0,
)

WEAPON_TABLE: Dict[int, WeaponSpec] = {
    5: UZI,
}

register_provenance("weapons.uzi.fire_delay_s", Provenance.EXTRACTED)
register_provenance("weapons.uzi.reload_time_s", Provenance.EXTRACTED)
register_provenance("weapons.uzi.spread_deg", Provenance.EXTRACTED)
register_provenance("weapons.uzi.recoil_deg", Provenance.EXTRACTED)
register_provenance("weapons.uzi.clip_size", Provenance.EXTRACTED)
register_provenance("weapons.uzi.ammo_cap", Provenance.EXTRACTED)
register_provenance("weapons.uzi.damage", Provenance.EXTRACTED)
register_provenance("weapons.uzi.range_px", Provenance.EXTRACTED)
register_provenance("weapons.uzi.bullet_speed", Provenance.EXTRACTED)

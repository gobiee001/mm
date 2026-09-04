"""Survival mode spawning configuration."""

from dataclasses import dataclass
from typing import Literal, Tuple
from .provenance import Provenance, register_provenance


@dataclass
class SpawnConfig:
    max_alive_per_type: Tuple[int, int, int] = (2, 2, 2)  # Hawk (0), Humanoid (1), Worm (2)
    max_alive_total: int = 6
    interval_s: float = 8.0                               # [EXTRACTED 8.0s cadence]
    type_weights: Tuple[float, float, float] = (1.0 / 3.0, 1.0 / 3.0, 1.0 / 3.0)
    mode: Literal["band", "sp_points", "band_ground_snap"] = "band_ground_snap"
    band_x_frac: Tuple[float, float] = (0.05, 0.95)
    band_y_frac: float = 0.85
    exact_repro: bool = False
    ground_snap: bool = True
    clearance_px: float = 48.0

    @property
    def interval_ticks(self) -> int:
        return max(1, round(self.interval_s * 60.0))


register_provenance("survival.interval_s", Provenance.EXTRACTED)
register_provenance("survival.type_weights", Provenance.EXTRACTED)
register_provenance("survival.max_alive_per_type", Provenance.TUNING)
register_provenance("survival.max_alive_total", Provenance.TUNING)

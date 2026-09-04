"""Chipmunk space configuration."""

from dataclasses import dataclass
from .provenance import Provenance, register_provenance


@dataclass
class SpaceConfig:
    dt: float = 1.0 / 60.0
    iterations: int = 2
    damping: float = 0.9672  # exp(-dt / 0.5s tau) from native SoldierHostController::velocity_func
    gravity_x: float = 0.0
    gravity_y: float = 0.0


register_provenance("space.dt", Provenance.EXTRACTED)
register_provenance("space.iterations", Provenance.EXTRACTED)
register_provenance("space.damping", Provenance.EXTRACTED)
register_provenance("space.gravity_x", Provenance.EXTRACTED)
register_provenance("space.gravity_y", Provenance.EXTRACTED)

"""Chipmunk space configuration."""

import math
from dataclasses import dataclass, field
from typing import Optional
from .provenance import Provenance, register_provenance


@dataclass
class SpaceConfig:
    dt: float = 1.0 / 60.0
    iterations: int = 2

    # Velocity damping is stored as a TIME CONSTANT, not as a per-tick multiplier.
    # Chipmunk applies `damping` once per cpSpaceStep, so a hard-coded multiplier is
    # only correct for the dt it was derived at -- change dt and the drag silently
    # changes with it. Keeping tau and deriving the multiplier keeps the two in step.
    #
    # None (or <= 0) means no damping at all, i.e. a multiplier of 1.0. That is what
    # the game itself does: PhysicsManager::init never sets space->damping, so
    # Chipmunk's default of 1.0 applies. The 0.5 s default here reproduces the
    # multiplier this sim was previously tuned with (exp(-1/60 / 0.5) = 0.9672);
    # set damping_tau to None to match the extracted game behaviour instead.
    damping_tau: Optional[float] = 0.5

    gravity_x: float = 0.0
    gravity_y: float = 0.0

    # Derived from dt and damping_tau -- never set this directly.
    damping: float = field(init=False, default=1.0)

    def __post_init__(self) -> None:
        self.recompute_damping()

    def recompute_damping(self) -> None:
        """Derive the per-tick damping multiplier from dt. Call after changing dt."""
        tau = self.damping_tau
        if tau is None or tau <= 0.0:
            self.damping = 1.0
        else:
            self.damping = math.exp(-self.dt / tau)


register_provenance("space.dt", Provenance.EXTRACTED)
register_provenance("space.iterations", Provenance.EXTRACTED)
register_provenance("space.gravity_x", Provenance.EXTRACTED)
register_provenance("space.gravity_y", Provenance.EXTRACTED)
# The binary never sets space->damping (Chipmunk defaults to 1.0). The 0.5 s tau is
# a tuning value carried over from the previous hard-coded 0.9672 multiplier and is
# NOT extracted -- it needs calibrating against a real-device velocity trace.
register_provenance("space.damping_tau", Provenance.GUESSED)
register_provenance("space.damping", Provenance.DERIVED)

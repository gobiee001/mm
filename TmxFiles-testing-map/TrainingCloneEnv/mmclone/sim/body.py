"""Body representation using __slots__ for zero-allocation stepping."""

from typing import Tuple
from ..config.bodies import BodyPhysics


class Body:
    __slots__ = (
        "x", "y", "vx", "vy", "fx", "fy",
        "mass", "inv_mass", "half_w", "half_h",
        "grounded", "active", "hp", "max_hp",
    )

    def __init__(
        self,
        x: float,
        y: float,
        physics: BodyPhysics,
        scale: float = 1.0,
    ) -> None:
        self.x = float(x)
        self.y = float(y)
        self.vx = 0.0
        self.vy = 0.0
        self.fx = 0.0
        self.fy = 0.0
        self.mass = float(physics.mass)
        self.inv_mass = float(physics.inv_mass)
        self.half_w = float(physics.half_w * scale)
        self.half_h = float(physics.half_h * scale)
        self.grounded = False
        self.active = True
        self.hp = float(physics.max_hp)
        self.max_hp = float(physics.max_hp)

    def reset_forces(self) -> None:
        self.fx = 0.0
        self.fy = 0.0

    @property
    def aabb(self) -> Tuple[float, float, float, float]:
        """Returns (min_x, min_y, max_x, max_y) in world coordinates."""
        return (
            self.x - self.half_w,
            self.y - self.half_h,
            self.x + self.half_w,
            self.y + self.half_h,
        )

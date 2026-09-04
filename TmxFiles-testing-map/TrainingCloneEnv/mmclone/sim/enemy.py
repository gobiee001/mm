"""Enemy representation and locomotion for Hawk, Humanoid, and Worm."""

import math
from typing import Optional, Tuple
from .body import Body
from ..config.bodies import HAWK_PHYSICS, HUMANOID_PHYSICS, WORM_PHYSICS, BodyPhysics
from ..config.enemies import EnemyState
from ..config.weapons import UZI, WeaponSpec


PHYSICS_BY_KIND = {
    0: HAWK_PHYSICS,
    1: HUMANOID_PHYSICS,
    2: WORM_PHYSICS,
}


class Enemy:
    def __init__(
        self,
        enemy_id: int,
        kind: int,
        x: float,
        y: float,
        scale: float = 1.0,
    ) -> None:
        self.enemy_id = enemy_id
        self.kind = kind
        self.scale = scale
        physics = PHYSICS_BY_KIND.get(kind, HUMANOID_PHYSICS)
        self.body = Body(x, y, physics, scale=scale)

        self.state = EnemyState.PATROL
        self.target_x = x
        self.target_y = y
        self.aim_angle = 0.0
        self.aim_x = 1.0
        self.aim_y = 0.0
        self.weapon: WeaponSpec = UZI
        self.fire_timer = 0
        self.retarget_timer = 0
        self.has_los = False
        self.distance_to_player = 999999.0

    def reset(self, kind: int, x: float, y: float) -> None:
        self.kind = kind
        physics = PHYSICS_BY_KIND.get(kind, HUMANOID_PHYSICS)
        self.body = Body(x, y, physics, scale=self.scale)
        self.state = EnemyState.PATROL
        self.target_x = x
        self.target_y = y
        self.aim_angle = 0.0
        self.aim_x = 1.0
        self.aim_y = 0.0
        self.fire_timer = 0
        self.retarget_timer = 0
        self.has_los = False
        self.distance_to_player = 999999.0

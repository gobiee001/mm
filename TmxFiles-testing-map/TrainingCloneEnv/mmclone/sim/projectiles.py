"""Preallocated projectile pool with terrain and entity collision handling."""

import math
from typing import List, Optional, Tuple
import numpy as np
from .frame import WorldFrame
from ..mapdata.geometry import MapGeometry


class ProjectilePool:
    def __init__(self, capacity: int = 128) -> None:
        self.capacity = capacity
        self.x = np.zeros(capacity, dtype=np.float32)
        self.y = np.zeros(capacity, dtype=np.float32)
        self.vx = np.zeros(capacity, dtype=np.float32)
        self.vy = np.zeros(capacity, dtype=np.float32)
        self.ttl = np.zeros(capacity, dtype=np.int32)
        self.shooter_id = np.full(capacity, -2, dtype=np.int32)  # -1 = player, >=0 = enemy index
        self.damage = np.zeros(capacity, dtype=np.float32)
        self.active = np.zeros(capacity, dtype=bool)

    def reset(self) -> None:
        self.active.fill(False)
        self.ttl.fill(0)
        self.shooter_id.fill(-2)

    def spawn(
        self,
        x: float,
        y: float,
        aim_angle: float,
        speed: float,
        damage: float,
        ttl_ticks: int,
        shooter_id: int,
        spread_deg: float = 0.0,
    ) -> bool:
        """Finds an inactive slot and initializes a new projectile."""
        # Find first inactive slot
        inactive_indices = np.where(~self.active)[0]
        if len(inactive_indices) == 0:
            return False

        idx = inactive_indices[0]
        final_angle = aim_angle
        if spread_deg > 0.0:
            spread_rad = math.radians(spread_deg)
            final_angle += np.random.uniform(-spread_rad, spread_rad)

        self.x[idx] = x
        self.y[idx] = y
        self.vx[idx] = math.cos(final_angle) * speed
        self.vy[idx] = math.sin(final_angle) * speed
        self.ttl[idx] = ttl_ticks
        self.damage[idx] = damage
        self.shooter_id[idx] = shooter_id
        self.active[idx] = True
        return True

    def update(
        self,
        dt: float,
        geom: MapGeometry,
        frame: WorldFrame,
    ) -> List[Tuple[int, int]]:
        """Advances active projectiles and tests terrain collision.
        Returns list of active indices that survived terrain collision.
        """
        active_indices = np.where(self.active)[0]
        if len(active_indices) == 0:
            return []

        survived = []
        for idx in active_indices:
            # Advance
            nx = self.x[idx] + self.vx[idx] * dt
            ny = self.y[idx] + self.vy[idx] * dt
            self.ttl[idx] -= 1

            if self.ttl[idx] <= 0:
                self.active[idx] = False
                continue

            # Check bounds
            if not (0.0 <= nx < frame.world_w and 0.0 <= ny < frame.world_h):
                self.active[idx] = False
                continue

            # Check terrain collision using DDA raycast from current to next position
            gx0, gy0 = frame.world_to_grid(self.x[idx], self.y[idx])
            gx1, gy1 = frame.world_to_grid(nx, ny)

            hit, _, _ = geom.raycast_dda(gx0, gy0, gx1, gy1, step_px=6.0)
            if hit:
                self.active[idx] = False
                continue

            self.x[idx] = nx
            self.y[idx] = ny
            survived.append(idx)

        return survived

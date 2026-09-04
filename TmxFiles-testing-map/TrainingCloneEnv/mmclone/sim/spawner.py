"""Survival mode spawner managing enemy cadence and ground clearance."""

import random
from typing import List, Optional, Tuple
from .enemy import Enemy
from .frame import WorldFrame
from ..config.survival import SpawnConfig
from ..mapdata.geometry import MapGeometry


class SurvivalSpawner:
    def __init__(
        self,
        config: SpawnConfig,
        geom: MapGeometry,
        frame: WorldFrame,
        scale: float = 1.0,
    ) -> None:
        self.config = config
        self.geom = geom
        self.frame = frame
        self.scale = scale
        self.timer = self.config.interval_ticks
        self.next_id = 0

    def reset(self) -> None:
        self.timer = self.config.interval_ticks
        self.next_id = 0

    def prespawn(self, enemies: List[Enemy], near_x: float, count: int = 1) -> None:
        """Spawns initial enemies near the player at episode reset."""
        for _ in range(count):
            self._attempt_spawn(enemies, near_x=near_x)

    def tick(self, enemies: List[Enemy], near_x: Optional[float] = None) -> Optional[Enemy]:
        self.timer -= 1
        if self.timer <= 0:
            self.timer = self.config.interval_ticks
            return self._attempt_spawn(enemies, near_x=near_x)
        return None

    def _attempt_spawn(
        self,
        enemies: List[Enemy],
        near_x: Optional[float] = None,
    ) -> Optional[Enemy]:
        alive = [e for e in enemies if e.body.active and e.body.hp > 0.0]
        if len(alive) >= self.config.max_alive_total:
            return None

        # Check caps per kind
        counts = [0, 0, 0]
        for e in alive:
            if 0 <= e.kind < 3:
                counts[e.kind] += 1

        available_kinds = [
            k for k in range(3)
            if counts[k] < self.config.max_alive_per_type[k]
        ]
        if not available_kinds:
            return None

        kind = random.choice(available_kinds)

        # Determine spawn position
        spawn_pos = self._find_valid_spawn(kind, near_x=near_x)
        if spawn_pos is None:
            return None

        sx, sy = spawn_pos
        # Reuse an inactive enemy slot or create a new one
        inactive = [e for e in enemies if not e.body.active or e.body.hp <= 0.0]
        if inactive:
            enemy = inactive[0]
            enemy.reset(kind, sx, sy)
            enemy.body.active = True
            return enemy
        else:
            enemy = Enemy(self.next_id, kind, sx, sy, scale=self.scale)
            self.next_id += 1
            enemies.append(enemy)
            return enemy

    def _find_valid_spawn(
        self,
        kind: int,
        near_x: Optional[float] = None,
    ) -> Optional[Tuple[float, float]]:
        w_min = self.frame.world_w * self.config.band_x_frac[0]
        w_max = self.frame.world_w * self.config.band_x_frac[1]

        if near_x is not None:
            # Spawn within 250..450 world px of player to stay within engagement radius
            side = random.choice([-1.0, 1.0])
            dist = random.uniform(250.0, 450.0)
            x_cand = max(w_min, min(w_max, near_x + side * dist))
            x_pool = [x_cand]
        else:
            x_pool = []

        for _ in range(8):
            x = x_pool.pop() if x_pool else random.uniform(w_min, w_max)
            gx = max(0, min(self.geom.grid_w - 1, int(x / self.scale)))

            if kind in (1, 2) and self.config.ground_snap:
                # Snap to floor under sampled x
                top_gy = int(self.geom.top_solid[gx])
                if top_gy >= self.geom.grid_h - 10:
                    continue
                wy = (self.geom.grid_h - top_gy) * self.scale + 60.0 * self.scale
            else:
                # Hawk airborne band
                wy = self.frame.world_h * self.config.band_y_frac

            # Test clearance
            hw = 30.0 * self.scale
            hh = 30.0 * self.scale
            min_gx = int((x - hw) / self.scale)
            max_gx = int((x + hw) / self.scale)
            min_gy = int(self.geom.grid_h - ((wy + hh) / self.scale))
            max_gy = int(self.geom.grid_h - ((wy - hh) / self.scale))

            if not self.geom.is_box_solid(min_gx, min_gy, max_gx, max_gy):
                return x, wy

        # Fallback to map spawn point
        if self.geom.player_spawns:
            px, py = random.choice(self.geom.player_spawns)
            return self.frame.tmx_to_world(px, py)

        return None

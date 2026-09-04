"""CloneWorld coordinating entities, physics stepping, and payload generation."""

import math
from typing import Any, Dict, List, Optional, Tuple
from .ai import update_enemy_gunnery, update_enemy_locomotion, update_enemy_perception
from .body import Body
from .collide import resolve_body_collision
from .enemy import Enemy
from .events import new_acc_dict, new_events_dict
from .frame import WorldFrame
from .integrator import update_velocity
from .player import PlayerController
from .projectiles import ProjectilePool
from .spawner import SurvivalSpawner
from ..config.bodies import HAWK_PHYSICS, HUMANOID_PHYSICS, PLAYER_PHYSICS, WORM_PHYSICS
from ..config.clone import CloneConfig
from ..mapdata.geometry import MapGeometry


class CloneWorld:
    def __init__(self, config: CloneConfig, geom: MapGeometry) -> None:
        self.config = config
        self.geom = geom
        self.tier_scale = config.map.tier / 64.0
        self.frame = WorldFrame(
            asset_px_per_tile=64,
            tier_px_per_tile=int(config.map.tier),
            grid_w=geom.grid_w,
            grid_h=geom.grid_h,
            border_left=config.map.border_left,
            border_right=config.map.border_right,
            border_bottom=config.map.border_bottom,
            border_top=config.map.border_top,
        )

        # Default spawn point in world coordinates
        if geom.player_spawns:
            self.default_spawn_x, self.default_spawn_y = self.frame.tmx_to_world(
                geom.player_spawns[0][0], geom.player_spawns[0][1]
            )
        else:
            self.default_spawn_x = self.frame.world_w * 0.5
            self.default_spawn_y = self.frame.world_h * 0.5

        self.player = PlayerController(
            spawn_x=self.default_spawn_x,
            spawn_y=self.default_spawn_y,
            scale=self.tier_scale,
            infinite_health=config.gym.env.infinite_health,
            half_w=config.player_half_w,
            half_h=config.player_half_h,
        )

        self.enemies: List[Enemy] = []
        self.projectiles = ProjectilePool(capacity=256)
        self.spawner = SurvivalSpawner(
            config.spawn, geom, self.frame, scale=self.tier_scale
        )
        self.total_ticks = 0

    def reset(
        self,
        kill_player: bool = False,
        clear_enemies: bool = True,
        settle_ticks: int = 30,
        force_spawn: bool = True,
        prespawn_count: int = 1,
    ) -> Dict[str, Any]:
        if clear_enemies:
            self.enemies.clear()
            self.projectiles.reset()
            self.spawner.reset()

        if force_spawn or kill_player:
            self.player.reset(self.default_spawn_x, self.default_spawn_y)

        if prespawn_count > 0 and len(self.enemies) == 0:
            self.spawner.prespawn(self.enemies, near_x=self.player.body.x, count=prespawn_count)

        return self.step([0.0] * 5, max(1, settle_ticks), kind="reset")

    def force_spawn(self) -> Dict[str, Any]:
        self.player.reset(self.default_spawn_x, self.default_spawn_y)
        return {"ok": True}

    def step(
        self,
        action: List[float],
        ticks: int,
        kind: str = "step",
    ) -> Dict[str, Any]:
        dt = self.config.space.dt
        events = new_events_dict()
        acc = new_acc_dict(ticks, dt=dt)

        min_dist_overall = float("inf")
        engaged_radius = self.config.gym.obs.engagement_radius
        move_deadzone = self.config.gym.action.move_deadzone
        shoot_threshold = self.config.gym.action.shoot_threshold

        mx, my, ax, ay, shoot = action
        is_moving_action = abs(mx) > move_deadzone or (my > 0.1 and self.player.power > 0.0)
        is_shooting_action = shoot > shoot_threshold

        contact_range = 45.0 * self.tier_scale
        contact_damage_per_tick = 1.0

        for _ in range(ticks):
            self.total_ticks += 1

            # 1. Spawner tick
            self.spawner.tick(self.enemies, near_x=self.player.body.x)

            # 2. Player update & weapon trigger
            if self.player.body.active and self.player.body.hp > 0.0:
                fired = self.player.apply_action(
                    action,
                    dt,
                    move_deadzone=move_deadzone,
                    aim_deadzone=self.config.gym.action.aim_deadzone,
                    shoot_threshold=shoot_threshold,
                )
                if fired:
                    events["shots_fired"] += 1
                    self.projectiles.spawn(
                        x=self.player.body.x,
                        y=self.player.body.y,
                        aim_angle=self.player.aim_angle,
                        speed=self.player.weapon.bullet_speed * self.tier_scale,
                        damage=self.player.weapon.damage,
                        ttl_ticks=self.player.weapon.ttl_ticks,
                        shooter_id=-1,
                        spread_deg=self.player.weapon.spread_deg,
                    )

                # Gravity: -50.0 when grounded or thrusting (per SoldierHostController::updateStep),
                # -300.0 when airborne and not thrusting.
                grav = (
                    PLAYER_PHYSICS.gravity_grounded
                    if (self.player.body.grounded or self.player.is_thrusting)
                    else PLAYER_PHYSICS.gravity_airborne
                )
                update_velocity(self.player.body, grav[0], grav[1], dt, damping=self.config.space.damping)
                resolve_body_collision(self.player.body, self.geom, self.frame, dt)
            else:
                acc["dead_ticks"] += 1

            # 3. Enemy AI, physics & contact damage
            live_enemies = [e for e in self.enemies if e.body.active and e.body.hp > 0.0]
            concurrent_attackers = 0

            retarget_interval = max(1, self.config.aggression.retarget_interval_ticks)
            for enemy in live_enemies:
                if enemy.retarget_timer <= 0:
                    update_enemy_perception(
                        enemy, self.player.body, self.geom, self.frame, self.config.aggression
                    )
                    enemy.retarget_timer = retarget_interval
                else:
                    enemy.retarget_timer -= 1
                    dx = self.player.body.x - enemy.body.x
                    dy = self.player.body.y - enemy.body.y
                    enemy.distance_to_player = math.hypot(dx, dy)

                update_enemy_locomotion(enemy, dt, self.frame)

                enemy_fired = update_enemy_gunnery(
                    enemy,
                    self.player.body,
                    self.projectiles,
                    self.config.aggression,
                    concurrent_attackers,
                )
                if enemy_fired:
                    concurrent_attackers += 1

                # Enemy gravity: flying drones (kind 0) or grounded enemies use gravity_grounded (-50.0)
                e_physics = HAWK_PHYSICS if enemy.kind == 0 else (HUMANOID_PHYSICS if enemy.kind == 1 else WORM_PHYSICS)
                e_grav = e_physics.gravity_grounded if (enemy.body.grounded or enemy.kind == 0) else e_physics.gravity_airborne
                update_velocity(enemy.body, e_grav[0], e_grav[1], dt, damping=self.config.space.damping)
                resolve_body_collision(enemy.body, self.geom, self.frame, dt)

                # Contact damage to player
                if self.player.body.active and self.player.body.hp > 0.0 and not self.player.infinite_health:
                    d_enemy = math.hypot(enemy.body.x - self.player.body.x, enemy.body.y - self.player.body.y)
                    if d_enemy < contact_range:
                        self.player.body.hp -= contact_damage_per_tick
                        events["damage_taken"] += contact_damage_per_tick
                        if self.player.body.hp <= 0.0:
                            events["player_deaths"] += 1
                            self.player.body.active = False

            # 4. Projectiles advance & terrain collision
            survived_bullets = self.projectiles.update(dt, self.geom, self.frame)

            # 5. Projectiles vs Entities collision
            for b_idx in survived_bullets:
                if not self.projectiles.active[b_idx]:
                    continue

                bx = self.projectiles.x[b_idx]
                by = self.projectiles.y[b_idx]
                dmg = self.projectiles.damage[b_idx]
                shooter = self.projectiles.shooter_id[b_idx]

                hit_margin = 16.0 * self.tier_scale
                if shooter == -1:
                    # Player bullet vs Enemies
                    for enemy in live_enemies:
                        if not enemy.body.active or enemy.body.hp <= 0.0:
                            continue
                        # Check AABB hit with margin to prevent tunneling
                        min_x, min_y, max_x, max_y = enemy.body.aabb
                        if min_x - hit_margin <= bx <= max_x + hit_margin and min_y - hit_margin <= by <= max_y + hit_margin:
                            # Hit!
                            self.projectiles.active[b_idx] = False
                            hp_before = enemy.body.hp
                            clamped_dmg = min(hp_before, dmg)
                            enemy.body.hp -= dmg
                            events["damage_dealt"] += clamped_dmg
                            events["damage_raw"] += dmg
                            events["damage_events"] += 1

                            if enemy.body.hp <= 0.0:
                                enemy.body.active = False
                                events["enemies_destroyed"] += 1
                                events["kills_credited"] += 1
                                events["points"] += 1
                            break

                elif shooter >= 0:
                    # Enemy bullet vs Player
                    if self.player.body.active and self.player.body.hp > 0.0:
                        min_x, min_y, max_x, max_y = self.player.body.aabb
                        if min_x - hit_margin <= bx <= max_x + hit_margin and min_y - hit_margin <= by <= max_y + hit_margin:
                            self.projectiles.active[b_idx] = False
                            if not self.player.infinite_health:
                                self.player.body.hp -= dmg
                                events["damage_taken"] += dmg
                                if self.player.body.hp <= 0.0:
                                    events["player_deaths"] += 1
                                    self.player.body.active = False

            # 6. Proximity & Idle metric accumulation
            if live_enemies:
                acc["enemy_ticks"] += 1
                step_min_d = min(
                    math.hypot(e.body.x - self.player.body.x, e.body.y - self.player.body.y)
                    for e in live_enemies
                )
                min_dist_overall = min(min_dist_overall, step_min_d)
                if step_min_d <= engaged_radius:
                    acc["engaged_ticks"] += 1
                    if not is_moving_action and not is_shooting_action:
                        acc["idle_ticks"] += 1
                    if not is_shooting_action:
                        acc["no_shoot_ticks"] += 1

        acc["min_dist"] = -1.0 if min_dist_overall == float("inf") else min_dist_overall

        return {
            "ok": True,
            "kind": kind,
            "obs": self._observation(),
            "events": events,
            "acc": acc,
            "timed_out": False,
            "total_ticks": self.total_ticks,
            "has_player": self.player.body.hp > 0.0 or self.player.infinite_health,
        }

    def _observation(self) -> Dict[str, Any]:
        live_enemies = [e for e in self.enemies if e.body.active and e.body.hp > 0.0]
        sorted_enemies = []
        px = self.player.body.x
        py = self.player.body.y

        for e in live_enemies:
            d = math.hypot(e.body.x - px, e.body.y - py)
            sorted_enemies.append({
                "id": e.enemy_id,
                "type": e.kind,
                "hp": float(max(0.0, e.body.hp)),
                "x": float(e.body.x),
                "y": float(e.body.y),
                "vx": float(e.body.vx),
                "vy": float(e.body.vy),
                "aim": float(e.aim_angle),
                "dist": float(d),
                "synth_id": False,
            })
        sorted_enemies.sort(key=lambda s: s["dist"])

        return {
            "player": {
                "x": float(self.player.body.x),
                "y": float(self.player.body.y),
                "vx": float(self.player.body.vx),
                "vy": float(self.player.body.vy),
                "hp": float(max(0.0, self.player.body.hp)),
                "power": float(self.player.power / 10.0),  # Scale to [0, 10] matching ObservationEncoder
                "reloading": bool(self.player.is_reloading),
                "ammo": int(self.player.ammo),
                "valid": True,
            },
            "enemies": sorted_enemies[: self.config.gym.obs.max_enemies],
            "enemy_count": len(live_enemies),
        }

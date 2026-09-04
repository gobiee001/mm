"""Enemy AI state machine, perception, locomotion, and gunnery."""

import math
import random
from typing import List, Optional, Tuple
from .body import Body
from .enemy import Enemy
from .frame import WorldFrame
from .projectiles import ProjectilePool
from ..config.bodies import HUMANOID_PHYSICS
from ..config.enemies import AggressionProfile, EnemyState
from ..mapdata.geometry import MapGeometry


def update_enemy_perception(
    enemy: Enemy,
    player_body: Body,
    geom: MapGeometry,
    frame: WorldFrame,
    profile: AggressionProfile,
) -> None:
    """Updates distance, line-of-sight (LOS), and AI state."""
    dx = player_body.x - enemy.body.x
    dy = player_body.y - enemy.body.y
    dist = math.hypot(dx, dy)
    enemy.distance_to_player = dist

    if dist > profile.vision_radius:
        enemy.has_los = False
        enemy.state = EnemyState.PATROL
        return

    # Check LOS using DDA raycast on occupancy grid
    gx0, gy0 = frame.world_to_grid(enemy.body.x, enemy.body.y)
    gx1, gy1 = frame.world_to_grid(player_body.x, player_body.y)
    hit, _, _ = geom.raycast_dda(gx0, gy0, gx1, gy1, step_px=10.0)

    enemy.has_los = not hit

    if enemy.has_los:
        if dist <= profile.standoff_dist:
            enemy.state = EnemyState.ATTACK
        else:
            enemy.state = EnemyState.CHASE
        enemy.target_x = player_body.x
        enemy.target_y = player_body.y
    else:
        # Fall back to patrol if target lost
        enemy.state = EnemyState.PATROL


def update_enemy_locomotion(
    enemy: Enemy,
    dt: float,
    frame: WorldFrame,
) -> None:
    """Calculates horizontal and vertical forces/velocities based on kind and state."""
    body = enemy.body
    scale = enemy.scale

    if enemy.state in (EnemyState.CHASE, EnemyState.ATTACK):
        dx = enemy.target_x - body.x
        dy = enemy.target_y - body.y
        dir_x = 1.0 if dx > 10.0 else (-1.0 if dx < -10.0 else 0.0)

        if enemy.kind == 0:  # Hawk (flying)
            # Fly towards target x and hover around target y
            target_vx = dir_x * 120.0 * scale
            body.vx += (target_vx - body.vx) * 0.1
            # Counter gravity + adjust altitude
            target_vy = 100.0 * scale if dy > 20.0 else (-100.0 * scale if dy < -20.0 else 0.0)
            body.vy += (target_vy - body.vy) * 0.1 + (50.0 * dt)  # Lift against 50.0 gravity

        elif enemy.kind == 1:  # Humanoid (walking / jumping)
            target_vx = dir_x * 160.0 * scale
            body.vx += (target_vx - body.vx) * 0.2
            if body.grounded and dy > 40.0:
                body.vy = HUMANOID_PHYSICS.jump_impulse * scale  # Native jump impulse 220

        elif enemy.kind == 2:  # Worm (ground crawler / jumper)
            target_vx = dir_x * 80.0 * scale
            body.vx += (target_vx - body.vx) * 0.2
            if body.grounded and abs(dx) < 200.0:
                body.vy = 220.0 * scale  # Jump impulse 220

    elif enemy.state == EnemyState.PATROL:
        # Idle or slight wandering
        if abs(body.x - enemy.target_x) < 30.0:
            # Pick a new nearby patrol target
            offset = random.uniform(-200.0 * scale, 200.0 * scale)
            enemy.target_x = max(100.0, min(frame.world_w - 100.0, body.x + offset))

        dir_x = 1.0 if enemy.target_x > body.x else -1.0
        body.vx += (dir_x * 50.0 * scale - body.vx) * 0.1
        if enemy.kind == 0:
            # Hawk hovering in place against gravity
            body.vy += (0.0 - body.vy) * 0.1 + (50.0 * dt)


def update_enemy_gunnery(
    enemy: Enemy,
    player_body: Body,
    projectiles: ProjectilePool,
    profile: AggressionProfile,
    concurrent_attackers: int,
) -> bool:
    """Aims and discharges weapons when in ATTACK state and LOS exists."""
    if enemy.fire_timer > 0:
        enemy.fire_timer -= 1

    if enemy.state != EnemyState.ATTACK or not enemy.has_los:
        return False

    if concurrent_attackers >= profile.max_concurrent_attackers:
        return False

    # Smooth aim towards player
    dx = player_body.x - enemy.body.x
    dy = player_body.y - enemy.body.y
    ideal_angle = math.atan2(dy, dx)

    # Apply aim smoothing
    angle_diff = (ideal_angle - enemy.aim_angle + math.pi) % (2.0 * math.pi) - math.pi
    enemy.aim_angle += angle_diff * (1.0 - profile.aim_smooth)
    enemy.aim_x = math.cos(enemy.aim_angle)
    enemy.aim_y = math.sin(enemy.aim_angle)

    if enemy.fire_timer <= 0:
        if random.random() < profile.fire_prob:
            enemy.fire_timer = enemy.weapon.fire_delay_ticks
            projectiles.spawn(
                x=enemy.body.x,
                y=enemy.body.y,
                aim_angle=enemy.aim_angle,
                speed=enemy.weapon.bullet_speed,
                damage=enemy.weapon.damage,
                ttl_ticks=enemy.weapon.ttl_ticks,
                shooter_id=enemy.enemy_id,
                spread_deg=enemy.weapon.spread_deg,
            )
            return True

    return False

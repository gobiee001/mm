"""SoldierHostController analogue managing player state, weapon, and fuel."""

import math
from typing import List, Optional, Tuple
from .body import Body
from ..config.bodies import PLAYER_PHYSICS
from ..config.weapons import UZI, WeaponSpec


class PlayerController:
    def __init__(
        self,
        spawn_x: float,
        spawn_y: float,
        scale: float = 1.0,
        infinite_health: bool = False,
        half_w: Optional[float] = None,
        half_h: Optional[float] = None,
    ) -> None:
        self.body = Body(spawn_x, spawn_y, PLAYER_PHYSICS, scale=scale)
        if half_w is not None:
            self.body.half_w = float(half_w) * scale
        if half_h is not None:
            self.body.half_h = float(half_h) * scale
        self.scale = scale
        self.infinite_health = infinite_health

        self.power = 100.0
        self.max_power = 100.0
        self.power_drain_rate = PLAYER_PHYSICS.power_drain_rate  # units/sec during thrust (from config)
        self.power_regen_rate = PLAYER_PHYSICS.power_regen_rate  # units/sec when unthrust/grounded (from config)

        self.weapon: WeaponSpec = UZI
        self.ammo = self.weapon.ammo_cap
        self.clip = self.weapon.clip_size
        self.fire_timer = 0
        self.reload_timer = 0

        self.aim_x = 1.0
        self.aim_y = 0.0
        self.aim_angle = 0.0
        self.is_reloading = False
        self.is_thrusting = False

    def reset(self, spawn_x: float, spawn_y: float) -> None:
        self.body.x = float(spawn_x)
        self.body.y = float(spawn_y)
        self.body.vx = 0.0
        self.body.vy = 0.0
        self.body.reset_forces()
        self.body.hp = 100.0 if not self.infinite_health else 100.0
        self.body.grounded = False
        self.body.active = True

        self.power = 100.0
        self.ammo = self.weapon.ammo_cap
        self.clip = self.weapon.clip_size
        self.fire_timer = 0
        self.reload_timer = 0
        self.aim_x = 1.0
        self.aim_y = 0.0
        self.aim_angle = 0.0
        self.is_reloading = False
        self.is_thrusting = False

    def apply_action(
        self,
        action: List[float],
        dt: float,
        move_deadzone: float = 0.1,
        aim_deadzone: float = 0.01,
        shoot_threshold: float = 0.0,
    ) -> bool:
        """Applies continuous [move_x, move_y, aim_x, aim_y, shoot].
        Returns True if a bullet was discharged this tick.
        """
        mx, my, ax, ay, shoot = action

        # 1. Jetpack flight thrust check (from SoldierHostController::updateStep)
        move_mag = math.hypot(mx, my)
        is_thrusting = my > 0.1 and self.power > 0.0 and move_mag > move_deadzone
        self.is_thrusting = is_thrusting

        if is_thrusting:
            # Initial jump impulse when initiating thrust from ground (native float at 0x4e58b4: 220.0 px/s)
            if self.body.grounded and my > 0.75 and self.body.vy <= 0.0:
                self.body.vy = PLAYER_PHYSICS.jump_impulse * self.scale
                self.body.grounded = False

            # Omnidirectional 2D Jetpack Propulsion (from SoldierHostController::updateStep)
            # Jetpack propels the soldier in the full 2D direction of the joystick
            norm_factor = 1.0 / move_mag
            dir_x = mx * norm_factor
            dir_y = my * norm_factor
            clamped_mag = min(1.0, move_mag)
            target_speed = PLAYER_PHYSICS.max_speed_flight * self.scale * clamped_mag
            target_vx = target_speed * dir_x
            target_vy = target_speed * dir_y

            # Native flight acceleration multiplier (from config)
            flight_accel = PLAYER_PHYSICS.flight_accel_mult * PLAYER_PHYSICS.max_speed_flight * self.scale * clamped_mag
            if self.body.vx < target_vx:
                self.body.vx = min(target_vx, self.body.vx + flight_accel * dt)
            elif self.body.vx > target_vx:
                self.body.vx = max(target_vx, self.body.vx - flight_accel * dt)

            if self.body.vy < target_vy:
                self.body.vy = min(target_vy, self.body.vy + flight_accel * dt)
            elif self.body.vy > target_vy:
                self.body.vy = max(target_vy, self.body.vy - flight_accel * dt)

            # Fuel drain
            self.power = max(0.0, self.power - self.power_drain_rate * my * dt)
        else:
            # Power regeneration
            regen_mult = 1.5 if self.body.grounded else 1.0
            self.power = min(self.max_power, self.power + self.power_regen_rate * regen_mult * dt)

            # Horizontal movement (walking on ground or unpowered air drift)
            if abs(mx) > move_deadzone:
                target_vx = mx * PLAYER_PHYSICS.max_speed_x * self.scale
                if self.body.grounded:
                    # Native ground walking multiplier (from config)
                    ground_accel = PLAYER_PHYSICS.ground_accel_mult * PLAYER_PHYSICS.max_speed_x * self.scale
                    if self.body.vx < target_vx:
                        self.body.vx = min(target_vx, self.body.vx + ground_accel * dt)
                    elif self.body.vx > target_vx:
                        self.body.vx = max(target_vx, self.body.vx - ground_accel * dt)
                else:
                    # Airborne drift without jetpack
                    air_accel = 1.0 * PLAYER_PHYSICS.max_speed_x * self.scale
                    if self.body.vx < target_vx:
                        self.body.vx = min(target_vx, self.body.vx + air_accel * dt)
                    elif self.body.vx > target_vx:
                        self.body.vx = max(target_vx, self.body.vx - air_accel * dt)
            else:
                # Ground friction deceleration (Chipmunk shape friction 0.99)
                if self.body.grounded:
                    friction = 800.0 * self.scale
                    if self.body.vx > 0.0:
                        self.body.vx = max(0.0, self.body.vx - friction * dt)
                    elif self.body.vx < 0.0:
                        self.body.vx = min(0.0, self.body.vx + friction * dt)

        # 3. Aim latching
        aim_mag = math.hypot(ax, ay)
        if aim_mag > aim_deadzone:
            inv_mag = 1.0 / aim_mag
            self.aim_x = ax * inv_mag
            self.aim_y = ay * inv_mag
            self.aim_angle = math.atan2(self.aim_y, self.aim_x)

        # 4. Weapon timers and shooting
        if self.fire_timer > 0:
            self.fire_timer -= 1

        if self.reload_timer > 0:
            self.reload_timer -= 1
            if self.reload_timer == 0:
                self.clip = min(self.weapon.clip_size, self.ammo)
                self.is_reloading = False

        wants_shoot = shoot > shoot_threshold
        fired = False

        if wants_shoot and self.reload_timer == 0 and self.fire_timer == 0:
            if self.clip > 0:
                self.clip -= 1
                self.ammo = max(0, self.ammo - 1)
                self.fire_timer = self.weapon.fire_delay_ticks
                fired = True
            else:
                # Trigger automatic reload
                if self.ammo > 0:
                    self.reload_timer = self.weapon.reload_ticks
                    self.is_reloading = True

        return fired

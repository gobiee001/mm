"""Live Interactive Demo for TrainingCloneEnv with Pygame Window Rendering."""

import argparse
import math
from pathlib import Path
import sys

clone_root = Path(__file__).resolve().parent.parent
if str(clone_root) not in sys.path:
    sys.path.insert(0, str(clone_root))

import numpy as np
import pygame
from mmclone.envs.factory import make_clone_env


def main():
    parser = argparse.ArgumentParser(description="Run live CloneWorld simulation demo with real-time window rendering")
    parser.add_argument("--map", default=None, help="TMX map name (default: from config.json or survival_new)")
    parser.add_argument("--tier", type=int, default=64, choices=[64, 128, 256], help="Asset scale tier (default: 64 SD)")
    parser.add_argument("--steps", type=int, default=5000, help="Max simulation steps to run")
    parser.add_argument("--manual", action="store_true", help="Control the player manually with WASD + Mouse")
    parser.add_argument(
        "--frame-skip", type=int, default=1,
        help="Physics ticks per env.step(). One frame is drawn per step, so 1 gives a "
             "smooth 60 fps realtime view; training's default of 10 is correct but "
             "renders at only 6 fps (default: 1)")
    parser.add_argument(
        "--speed", type=float, default=1.0,
        help="Wall-clock playback multiplier. 1.0 = realtime, 0.25 = slow motion, "
             "4.0 = fast-forward (default: 1.0)")
    args = parser.parse_args()

    # Imported here, not at module scope: mmclone's import above is what puts the
    # MM_GYm sys.path root in place.
    from python_gym_Wrapper.config import MiniMilitiaConfig

    gym_cfg = MiniMilitiaConfig()
    gym_cfg.env.frame_skip = args.frame_skip
    gym_cfg.env.__post_init__()

    map_kw = {"map_name": args.map} if args.map else {}
    env = make_clone_env(config=gym_cfg, tier=args.tier, render_mode="human", **map_kw)
    env.bridge.render_speed = args.speed

    from mmclone.config.bodies import HAWK_PHYSICS, HUMANOID_PHYSICS, WORM_PHYSICS

    player_w = env.bridge.world.player.body.half_w * 2
    player_h = env.bridge.world.player.body.half_h * 2
    scale = env.bridge.world.tier_scale

    f = env.bridge.world.frame
    print(f"\n=======================================================")
    print(f"  TrainingCloneEnv Live Visualizer")
    print(f"  Map:      {env.bridge.world.config.map.map_name}")
    print(f"  Borders:  X=[{f.min_x:.0f}, {f.max_x:.0f}]  Y=[{f.min_y:.0f}, {f.max_y:.0f}] px")
    print(f"  Player:   {player_w:.0f} x {player_h:.0f} px (Physics Body)")
    print(f"  Hawk:     {HAWK_PHYSICS.half_w * 2 * scale:.0f} x {HAWK_PHYSICS.half_h * 2 * scale:.0f} px (Physics Body)")
    print(f"  Humanoid: {HUMANOID_PHYSICS.half_w * 2 * scale:.0f} x {HUMANOID_PHYSICS.half_h * 2 * scale:.0f} px (Physics Body)")
    print(f"  Worm:     {WORM_PHYSICS.half_w * 2 * scale:.0f} x {WORM_PHYSICS.half_h * 2 * scale:.0f} px (Physics Body)")
    print(f"  Mode:     {'Manual (WASD + Mouse)' if args.manual else 'Autonomous Bot'}")
    dt = env.bridge.cfg.space.dt
    print(f"  Timing:   frame_skip={args.frame_skip} ({args.frame_skip * dt * 1000:.1f} ms sim/step)"
          f" -> {env.bridge.render_fps:.1f} fps for {args.speed:g}x realtime")
    print(f"=======================================================\n")
    if args.manual:
        print("Controls:")
        print("  [A] / [D]     : Move Left / Right")
        print("  [W] / [SPACE] : Jetpack Thrust")
        print("  Mouse Move    : Aim weapon")
        print("  Left Click    : Shoot")
        print("  [ESC]         : Exit\n")

    obs, info = env.reset(seed=42)
    env.render()

    running = True
    step_count = 0

    try:
        while running and step_count < args.steps:
            # Check for window exit event
            if pygame.display.get_init():
                for event in pygame.event.get():
                    if event.type == pygame.QUIT:
                        running = False
                    elif event.type == pygame.KEYDOWN and event.key == pygame.K_ESCAPE:
                        running = False

            if not running:
                break

            if args.manual:
                keys = pygame.key.get_pressed()
                mouse_buttons = pygame.mouse.get_pressed()
                mouse_x, mouse_y = pygame.mouse.get_pos()

                # Movement
                move_x = 0.0
                move_y = 0.0
                if keys[pygame.K_a] or keys[pygame.K_LEFT]:
                    move_x -= 1.0
                if keys[pygame.K_d] or keys[pygame.K_RIGHT]:
                    move_x += 1.0
                if keys[pygame.K_w] or keys[pygame.K_UP] or keys[pygame.K_SPACE]:
                    move_y += 1.0
                if keys[pygame.K_s] or keys[pygame.K_DOWN]:
                    move_y -= 1.0

                # Aim towards mouse (center of window is player)
                center_x, center_y = 640, 360
                dx = mouse_x - center_x
                dy = center_y - mouse_y  # Invert Y for Cocos
                aim_len = math.hypot(dx, dy)
                if aim_len > 10.0:
                    aim_x = dx / aim_len
                    aim_y = dy / aim_len
                else:
                    aim_x = 1.0 if move_x >= 0 else -1.0
                    aim_y = 0.0

                shoot = 1.0 if mouse_buttons[0] else -1.0
                action = np.array([move_x, move_y, aim_x, aim_y, shoot], dtype=np.float32)
            else:
                # Autonomous AI agent: track nearest enemy
                enemies = [e for e in env.bridge.world.enemies if e.body.active and e.body.hp > 0.0]
                player_body = env.bridge.world.player.body

                if enemies:
                    # Target closest enemy
                    closest = min(
                        enemies,
                        key=lambda e: math.hypot(e.body.x - player_body.x, e.body.y - player_body.y)
                    )
                    dx = closest.body.x - player_body.x
                    dy = closest.body.y - player_body.y
                    dist = math.hypot(dx, dy)

                    aim_x = dx / dist if dist > 1e-3 else 1.0
                    aim_y = dy / dist if dist > 1e-3 else 0.0

                    # Keep distance: retreat if too close, advance if far
                    if dist > 350.0:
                        move_x = 0.8 if dx > 0 else -0.8
                    elif dist < 180.0:
                        move_x = -0.8 if dx > 0 else 0.8
                    else:
                        move_x = 0.0

                    # Hover around enemy Y
                    move_y = 0.6 if dy > 50.0 else (-0.3 if dy < -50.0 else 0.1)
                    shoot = 1.0 if dist < 500.0 else -1.0
                else:
                    move_x = 0.5
                    move_y = 0.2
                    aim_x = 1.0
                    aim_y = 0.0
                    shoot = -1.0

                action = np.array([move_x, move_y, aim_x, aim_y, shoot], dtype=np.float32)

            obs, reward, terminated, truncated, info = env.step(action)
            env.render()
            step_count += 1

            if terminated or truncated:
                print(f"Episode completed at step {step_count} (terminated={terminated}, truncated={truncated}). Resetting...")
                obs, info = env.reset()

    finally:
        env.close()
        print("Demo closed.")


if __name__ == "__main__":
    main()

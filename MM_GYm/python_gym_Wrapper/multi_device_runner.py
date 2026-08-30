#!/usr/bin/env python3
"""
multi_device_runner.py - Runs Mini Militia Gymnasium environment in PARALLEL across all connected ADB devices.

Features:
1. Dynamically discovers all connected and authorized ADB devices (emulators/phones).
2. Assigns a unique local forward port to each device (e.g. 27042, 27043, 27044, ...).
3. Concurrently launches the game, dismisses splash screen, and navigates menus via ADB on ALL devices simultaneously.
4. Concurrently steps the Gymnasium environment (e.g. random policy) across all devices.
"""

from __future__ import annotations

import argparse
import os
import subprocess
import sys
import threading
import time
from typing import List

if __package__ in (None, ""):
    sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    __package__ = "python_gym_Wrapper"

from .config import MiniMilitiaConfig, WEAPON_TYPES
from .demo import run_episodes, print_instrumentation
from .frida_bridge import BridgeError, get_adb_devices
from .minimilitia_env import MiniMilitiaEnv


def parse_args() -> argparse.Namespace:
    p = argparse.ArgumentParser(
        description="Mini Militia Multi-Device Parallel Gymnasium Runner",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    p.add_argument("--device", choices=["gadget", "usb", "remote", "local"],
                   default="gadget")
    p.add_argument("--base-port", type=int, default=27042,
                   help="Starting local TCP port for ADB port forwarding")
    p.add_argument("--process", default=None,
                   help="Override process name to attach to")
    p.add_argument("--episodes", type=int, default=5,
                   help="Number of episodes per device")
    p.add_argument("--steps", type=int, default=200,
                   help="Max steps per episode")
    p.add_argument("--frame-skip", type=int, default=10)
    p.add_argument("--game-speed", type=float, default=1.0)
    p.add_argument("--max-enemies", type=int, default=5)
    p.add_argument("--weapon", default="uzi", choices=sorted(WEAPON_TYPES))
    p.add_argument("--policy", choices=["random", "aim"], default="random")
    p.add_argument("--seed", type=int, default=0)
    p.add_argument("--infinite-health", action="store_true", default=True,
                   help="God mode; disables death-based termination")
    p.add_argument("--no-reset-kill", action="store_true")
    p.add_argument("--no-reset-clear-enemies", action="store_true")
    p.add_argument("--render-game", dest="render_game", action="store_true",
                   default=None)
    p.add_argument("--headless", dest="render_game", action="store_false")
    p.add_argument("--render", action="store_true",
                   help="Print ANSI state dump each step")
    p.add_argument("--log-every", type=int, default=20)
    p.add_argument("--verbose", action="store_true")

    # Navigation configuration knobs (no hardcoding)
    p.add_argument("--no-auto-navigate", action="store_true",
                   help="Disable automatic ADB startup and menu navigation")
    p.add_argument("--game-aspect", type=float, default=2.0,
                   help="Mini Militia game viewport aspect ratio (width / height)")
    p.add_argument("--startup-wait", type=float, default=10.0,
                   help="Seconds to wait after launching app via ADB")
    p.add_argument("--splash-wait", type=float, default=10.0,
                   help="Seconds to wait after tapping splash screen")
    p.add_argument("--menu-step-wait", type=float, default=1.0,
                   help="Seconds to wait between subsequent menu button taps")
    p.add_argument("--splash-tap-x", type=int, default=1)
    p.add_argument("--splash-tap-y", type=int, default=2)
    p.add_argument("--button1-x", type=float, default=0.50)
    p.add_argument("--button1-y", type=float, default=0.65)
    p.add_argument("--button2-x", type=float, default=0.50)
    p.add_argument("--button2-y", type=float, default=0.46)
    return p.parse_args()


def run_device_worker(
    serial: str,
    device_index: int,
    base_port: int,
    args: argparse.Namespace
) -> None:
    port = base_port + device_index
    tag = f"[{serial} | Port {port}]"
    print(f"{tag} Starting worker thread...")

    # 1. Forward unique local port to device's Frida Gadget port (27042)
    try:
        res = subprocess.run(
            ["adb", "-s", serial, "forward", f"tcp:{port}", "tcp:27042"],
            capture_output=True,
            text=True,
            timeout=10.0
        )
        if res.returncode == 0:
            print(f"{tag} ADB port forwarded: tcp:{port} -> device:27042")
        else:
            print(f"{tag} [WARN] Port forward warning: {res.stderr.strip()}")
    except Exception as e:
        print(f"{tag} [WARN] Port forward failed: {e}")

    # 2. Build configuration for this specific device
    cfg = MiniMilitiaConfig()
    e = cfg.env
    e.device = args.device
    e.host = f"127.0.0.1:{port}"
    e.adb_serial = serial
    e.auto_navigate_menu = not args.no_auto_navigate
    e.game_aspect = args.game_aspect
    e.startup_wait_s = args.startup_wait
    e.splash_wait_s = args.splash_wait
    e.menu_step_wait_s = args.menu_step_wait
    e.splash_tap_coords = (args.splash_tap_x, args.splash_tap_y)
    e.button1_normalized = (args.button1_x, args.button1_y)
    e.button2_normalized = (args.button2_x, args.button2_y)
    e.frame_skip = args.frame_skip
    e.game_speed = args.game_speed
    e.max_episode_steps = args.steps

    if args.render_game is not None:
        e.disable_rendering = not args.render_game
    e.spawn_weapon_type = WEAPON_TYPES.get(args.weapon, WEAPON_TYPES["uzi"])
    e.verbose = args.verbose
    if args.process:
        e.process = args.process
    if args.infinite_health:
        e.infinite_health = True
        e.terminate_on_death = False
    if args.no_reset_kill:
        e.reset_kill_player = False
    if args.no_reset_clear_enemies:
        e.reset_clear_enemies = False
    e.__post_init__()

    cfg.obs.max_enemies = args.max_enemies
    cfg.obs.max_enemy_scan = max(cfg.obs.max_enemy_scan, args.max_enemies)
    cfg.obs.__post_init__()

    # 3. Connect, navigate menu via ADB, and run episodes
    env = None
    try:
        print(f"{tag} Launching game & navigating menus via ADB...")
        env = MiniMilitiaEnv(cfg, render_mode="ansi" if args.render else None)
        env.connect()
        print(f"{tag} Environment connected successfully! Running {args.episodes} episodes...")
        run_episodes(env, args)
        print(f"{tag} Completed all {args.episodes} episodes!")
    except Exception as exc:
        print(f"{tag} Error during execution: {exc}")
    finally:
        if env is not None:
            try:
                env.close()
            except Exception:
                pass


def main() -> int:
    args = parse_args()

    print("=" * 78)
    print("MINI MILITIA MULTI-DEVICE PARALLEL RUNNER")
    print("=" * 78)

    devices = get_adb_devices()
    if not devices:
        print("[-] No connected and authorized ADB devices found!")
        print("    Run 'adb devices' to check connected emulators or devices.")
        return 1

    print(f"[+] Found {len(devices)} active ADB device(s):")
    for i, d in enumerate(devices):
        print(f"    [{i + 1}] {d} -> Local port: {args.base_port + i}")
    print()

    print(f"[*] Launching {len(devices)} parallel worker threads...")
    threads: List[threading.Thread] = []

    for index, serial in enumerate(devices):
        t = threading.Thread(
            target=run_device_worker,
            args=(serial, index, args.base_port, args),
            name=f"Worker-{serial}"
        )
        t.daemon = True
        threads.append(t)
        t.start()

    print(f"[*] All {len(threads)} device workers running simultaneously.\n")

    try:
        for t in threads:
            t.join()
    except KeyboardInterrupt:
        print("\n[*] Interrupted by user. Shutting down workers...")

    print("\n[+] All device runs finished.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

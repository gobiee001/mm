"""Main inference engine for running trained PPO agents."""

from __future__ import annotations

import argparse
import os
import signal
import sys
import time
from pathlib import Path
from typing import Any, Callable, Dict, List, Optional, Tuple

import numpy as np

# Plumb MM_GYm onto sys.path so python_gym_Wrapper, Training, and Inference resolve cleanly
MM_GYM_DIR = Path(__file__).resolve().parent.parent
if str(MM_GYM_DIR) not in sys.path:
    sys.path.insert(0, str(MM_GYM_DIR))

from stable_baselines3 import PPO

from python_gym_Wrapper import (
    BridgeError,
    MiniMilitiaConfig,
    MiniMilitiaEnv,
    MockBridge,
)
from Training import hyperparams as hp
from Training.adb_utils import get_connected_adb_devices, setup_adb_port_forwarding
from Inference.model_loader import find_latest_best_model, list_available_models


RULE = "=" * 78


def parse_args(argv: Optional[list] = None) -> argparse.Namespace:
    """Parse inference arguments."""
    p = argparse.ArgumentParser(
        description="Run real-time inference with trained Mini Militia RL agents",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )

    # Model resolution
    p.add_argument("--model", "-m", default=None, metavar="PATH",
                   help="path to model .zip (default: auto-detects latest best model in models/)")
    p.add_argument("--list-models", action="store_true",
                   help="list all discovered models across runs and exit")

    # Mode & Duration
    p.add_argument("--episodes", "-e", type=int, default=5,
                   help="number of episodes to play (ignored if --continuous is set)")
    p.add_argument("--continuous", "--infinite", "-c", dest="continuous", action="store_true",
                   help="run continuously / indefinitely until Ctrl-C")
    p.add_argument("--deterministic", action="store_true", default=True,
                   help="use deterministic policy mode (mean action)")
    p.add_argument("--stochastic", dest="deterministic", action="store_false",
                   help="sample stochastically from the action distribution")

    # Real-time HUD & Diagnostics
    p.add_argument("--hud", action="store_true", default=True,
                   help="display live real-time combat & action telemetry in console")
    p.add_argument("--no-hud", dest="hud", action="store_false",
                   help="disable live HUD output")
    p.add_argument("--render-ansi", action="store_true",
                   help="print ASCII game state dump on each step")

    # Environment / Connection
    env_group = p.add_argument_group("environment")
    env_group.add_argument("--mock", action="store_true",
                           help="run inside in-process simulator; no device or game needed")
    env_group.add_argument("--device", choices=["gadget", "usb", "remote", "local"],
                           default="gadget", help="how to reach the target process")
    env_group.add_argument("--host", default="127.0.0.1:27042",
                           help="host:port for primary device")
    env_group.add_argument("--all-devices", action="store_true",
                           help="auto-detect and run inference across all connected ADB devices")
    env_group.add_argument("--process", default=None,
                           help="override target process name")
    env_group.add_argument("--frame-skip", type=int, default=hp.FRAME_SKIP,
                           help="physics ticks per step")
    env_group.add_argument("--max-episode-steps", type=int, default=1000,
                           help="max steps before episode reset")
    env_group.add_argument("--game-speed", type=float, default=1.0,
                           help="timescale factor (live mode only)")
    env_group.add_argument("--hard-sync", action="store_true", default=False,
                           help="frame-exact synchronous stepping")
    env_group.add_argument("--max-enemies", type=int, default=hp.MAX_ENEMIES,
                           help="max enemy observation slots")
    env_group.add_argument("--weapon", default=hp.WEAPON,
                           help="weapon to lock player to")
    env_group.add_argument("--terminate-on-death", action="store_true", default=False,
                           help="end episode on player death")
    env_group.add_argument("--render-game", dest="render_game", action="store_true",
                           default=True, help="leave in-game rendering visible on screen")
    env_group.add_argument("--headless", dest="render_game", action="store_false",
                           help="disable in-game rendering")
    env_group.add_argument("--seed", type=int, default=42,
                           help="random seed")

    return p.parse_args(argv)


def build_inference_config(a: argparse.Namespace, host: str) -> MiniMilitiaConfig:
    """Construct environment config for inference."""
    cfg = MiniMilitiaConfig()
    e = cfg.env
    e.host = host
    e.device = a.device
    if a.process:
        e.process = a.process
    e.frame_skip = a.frame_skip
    e.max_episode_steps = a.max_episode_steps
    e.game_speed = a.game_speed
    e.hard_sync = a.hard_sync
    e.weapon = a.weapon
    e.terminate_on_death = a.terminate_on_death
    e.infinite_health = not a.terminate_on_death
    e.disable_rendering = not a.render_game
    e.__post_init__()

    cfg.obs.max_enemies = a.max_enemies
    cfg.obs.max_enemy_scan = max(cfg.obs.max_enemy_scan, a.max_enemies)
    cfg.obs.__post_init__()

    return cfg


def format_action_str(action: np.ndarray) -> str:
    """Format 5D action vector into readable HUD string."""
    # [move_x, move_y, aim_x, aim_y, shoot]
    mx, my, ax, ay, shoot = action
    firing = "FIRE [!]" if shoot > 0.0 else "HOLD [ ]"
    return f"Move: ({mx:+5.2f}, {my:+5.2f}) | Aim: ({ax:+5.2f}, {ay:+5.2f}) | {firing}"


class InferenceSession:
    """Tracks running telemetry and aggregate statistics across an inference session."""

    def __init__(self):
        self.start_time = time.time()
        self.total_steps = 0
        self.total_episodes = 0
        self.total_reward = 0.0
        self.total_kills = 0
        self.total_damage_dealt = 0.0
        self.total_damage_taken = 0.0
        self.total_deaths = 0
        self.interrupted = False

    def on_step(self, reward: float, info: Dict[str, Any]):
        self.total_steps += 1
        self.total_reward += reward

    def on_episode_end(self, ep_reward: float, ep_steps: int, info: Dict[str, Any]):
        self.total_episodes += 1
        totals = info.get("episode_totals", {}) or {}
        self.total_kills += int(totals.get("kills", 0))
        self.total_damage_dealt += float(totals.get("damage_dealt", 0.0))
        self.total_damage_taken += float(totals.get("damage_taken", 0.0))
        self.total_deaths += int(totals.get("deaths", 0))

    def print_summary(self):
        elapsed = max(time.time() - self.start_time, 1e-6)
        fps = self.total_steps / elapsed
        print()
        print(RULE)
        print("INFERENCE SESSION SUMMARY")
        print(RULE)
        print(f"  Duration           : {elapsed:.1f} s ({elapsed / 60.0:.2f} min)")
        print(f"  Total Steps        : {self.total_steps:,} ({fps:.1f} steps/s)")
        print(f"  Episodes Completed : {self.total_episodes}")
        if self.total_episodes > 0:
            mean_rew = self.total_reward / self.total_episodes
            print(f"  Mean Return / Ep   : {mean_rew:+.2f}")
            print(f"  Total Kills        : {self.total_kills} ({self.total_kills / self.total_episodes:.1f} / ep)")
            print(f"  Total Damage Dealt : {self.total_damage_dealt:,.1f}")
            print(f"  Total Damage Taken : {self.total_damage_taken:,.1f}")
            print(f"  Total Deaths       : {self.total_deaths}")
        print(RULE)
        print()


def run_inference_loop(env: MiniMilitiaEnv,
                       model: PPO,
                       args: argparse.Namespace,
                       session: InferenceSession):
    """Run the main perception-action loop."""
    ep = 0
    while True:
        ep += 1
        if not args.continuous and ep > args.episodes:
            break

        obs, _ = env.reset(seed=args.seed + ep if args.seed is not None else None)
        ep_return = 0.0
        ep_step = 0

        print(f"\n>>> Episode {ep}{' (Continuous Mode)' if args.continuous else f' of {args.episodes}'} Started")

        while True:
            t0 = time.perf_counter()
            action, _ = model.predict(obs, deterministic=args.deterministic)
            obs, reward, terminated, truncated, info = env.step(action)
            dt = max(time.perf_counter() - t0, 1e-6)
            fps = 1.0 / dt

            ep_return += reward
            ep_step += 1
            session.on_step(reward, info)

            if args.hud:
                # Extract game telemetry if available
                player_hp = info.get("player_hp", 100.0)
                nearest_dist = info.get("nearest_enemy_dist", 0.0)
                act_str = format_action_str(action)
                sys.stdout.write(
                    f"\r[Ep {ep:02d} | Step {ep_step:04d}] {act_str} | HP: {player_hp:3.0f} | Rew: {reward:+5.2f} (Total: {ep_return:+6.1f}) | {fps:4.1f} FPS "
                )
                sys.stdout.flush()

            if args.render_ansi:
                print("\n" + env.render())

            if terminated or truncated:
                sys.stdout.write("\n")
                reason = "Terminated (Player Dead)" if terminated else "Truncated (Max Steps)"
                totals = info.get("episode_totals", {}) or {}
                kills = totals.get("kills", 0)
                dmg = totals.get("damage_dealt", 0.0)
                print(f"[*] Episode {ep} ended: {reason} | Return: {ep_return:+.2f} | Kills: {kills} | Dmg: {dmg:.0f} | Steps: {ep_step}")
                session.on_episode_end(ep_return, ep_step, info)
                break



def main(argv: Optional[list] = None) -> int:
    args = parse_args(argv)

    if args.list_models:
        models = list_available_models()
        print(RULE)
        print(f"AVAILABLE MODELS IN models/ ({len(models)} found)")
        print(RULE)
        for m in models:
            print(f"  [{m['kind']:10s}] run: {m['run']} | score: {m['reward']:+8.4f} | step: {m['step']:8d} | {m['filename']}")
        return 0

    # 1. Resolve Model
    model_path = args.model
    if not model_path:
        print("[*] Searching for latest best model in models/...")
        best_path = find_latest_best_model()
        if not best_path:
            print("[-] No trained models found under models/. Train a model first or pass --model PATH.", file=sys.stderr)
            return 1
        model_path = str(best_path)

    print(RULE)
    print("MINI MILITIA RL - INFERENCE ENGINE")
    print(RULE)
    print(f"  Model              : {model_path}")
    print(f"  Mode               : {'Continuous / Endless' if args.continuous else f'{args.episodes} Episode(s)'}")
    print(f"  Policy Sampling    : {'Deterministic (Mean Action)' if args.deterministic else 'Stochastic'}")
    print(f"  Target Environment : {'Mock Simulator' if args.mock else ('All ADB Devices' if args.all_devices else args.host)}")
    print(f"  Game Rendering     : {'FULL RENDERING ACTIVE (Visible on Screen, Not Headless)' if args.render_game else 'Headless'}")
    print(f"  Live HUD           : {'Enabled' if args.hud else 'Disabled'}")

    print()

    # 2. Resolve Host & Device
    host = args.host
    if args.all_devices and not args.mock:
        devices = get_connected_adb_devices()
        if devices:
            mappings = setup_adb_port_forwarding(devices)
            if mappings:
                host = mappings[0][1]
                print(f"[+] Multi-device: running primary inference on {mappings[0][0]} ({host})")

    # 3. Load Model
    print(f"[*] Loading model from {model_path}...")
    try:
        model = PPO.load(model_path, device="cpu")
    except Exception as exc:
        print(f"[-] Failed to load model from {model_path}: {exc}", file=sys.stderr)
        return 1

    # 4. Connect Environment
    cfg = build_inference_config(args, host)
    bridge = MockBridge(cfg, seed=args.seed) if args.mock else None
    env = MiniMilitiaEnv(cfg, bridge=bridge)

    try:
        print(f"[*] Connecting to environment ({'mock' if args.mock else host})...")
        env.connect()
    except BridgeError as exc:
        print(f"[-] Could not connect to game: {exc}", file=sys.stderr)
        print("\n    Checklist:", file=sys.stderr)
        print("      * Game is running on device with Frida gadget active", file=sys.stderr)
        print("      * A match is active / in progress", file=sys.stderr)
        print("      * ADB port forward is configured (tcp:27042)", file=sys.stderr)
        return 1

    session = InferenceSession()

    def handle_sigint(signum, frame):
        session.interrupted = True
        print("\n[!] User interrupted inference (Ctrl-C). Cleaning up...")
        session.print_summary()
        env.close()
        sys.exit(0)


    signal.signal(signal.SIGINT, handle_sigint)

    try:
        run_inference_loop(env, model, args, session)
    except KeyboardInterrupt:
        pass
    finally:
        session.print_summary()
        env.close()

    return 0


if __name__ == "__main__":
    sys.exit(main())

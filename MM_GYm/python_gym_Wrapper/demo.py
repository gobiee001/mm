#!/usr/bin/env python3
"""Verification harness for the Mini Militia Gymnasium environment.

Examples
--------
Run against the live game via the Frida gadget::

    python -m python_gym_Wrapper.demo --episodes 2 --steps 100

Run the whole stack with no game attached (toy physics, real encoder/reward)::

    python -m python_gym_Wrapper.demo --mock

Resolve whether ``game_speed`` inflates dt or adds ticks -- run once per speed
and compare, because the timescale hook is installed at script load::

    python -m python_gym_Wrapper.demo --probe-timescale --game-speed 1.0
    python -m python_gym_Wrapper.demo --probe-timescale --game-speed 2.0
"""

from __future__ import annotations

import argparse
import os
import sys
import time
from typing import Any, Dict

import numpy as np

if __package__ in (None, ""):  # allow `python demo.py`
    sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    __package__ = "python_gym_Wrapper"

from .config import MiniMilitiaConfig, WEAPON_TYPES          # noqa: E402
from .frida_bridge import BridgeError                        # noqa: E402
from .minimilitia_env import MiniMilitiaEnv                  # noqa: E402
from .mock_bridge import MockBridge                          # noqa: E402

RULE = "=" * 78


def build_config(a: argparse.Namespace) -> MiniMilitiaConfig:
    cfg = MiniMilitiaConfig()
    e = cfg.env
    e.device = a.device
    e.host = a.host
    e.frame_skip = a.frame_skip
    e.game_speed = a.game_speed
    e.max_episode_steps = a.steps
    # Tri-state: only override when the flag was actually passed, so
    # EnvConfig.disable_rendering stays the default.
    if a.render_game is not None:
        e.disable_rendering = not a.render_game
    e.spawn_weapon_type = WEAPON_TYPES.get(a.weapon, WEAPON_TYPES["uzi"])
    e.verbose = a.verbose
    if a.process:
        e.process = a.process
    if a.infinite_health:
        e.infinite_health = True
        e.terminate_on_death = False
    if a.no_reset_kill:
        e.reset_kill_player = False
    if a.no_reset_clear_enemies:
        e.reset_clear_enemies = False
    e.__post_init__()
    cfg.obs.max_enemies = a.max_enemies
    cfg.obs.max_enemy_scan = max(cfg.obs.max_enemy_scan, a.max_enemies)
    cfg.obs.__post_init__()
    return cfg


def make_env(a: argparse.Namespace) -> MiniMilitiaEnv:
    cfg = build_config(a)
    bridge = MockBridge(cfg, seed=a.seed) if a.mock else None
    env = MiniMilitiaEnv(cfg, bridge=bridge,
                         render_mode="ansi" if a.render else None)
    env.connect()
    return env


def print_instrumentation(env: MiniMilitiaEnv) -> None:
    info = env.instrumentation_info
    caps: Dict[str, Any] = info.get("capabilities", {}) or {}
    missing = info.get("symbols_missing", []) or []

    print(RULE)
    print("INSTRUMENTATION")
    print(RULE)
    print(f"  tick source        : {info.get('tick_source')}")
    print(f"  symbols resolved   : {info.get('symbols_found')}")
    print(f"  observation shape  : {env.observation_space.shape}")
    print(f"  action shape       : {env.action_space.shape}  "
          f"[move_x, move_y, aim_x, aim_y, shoot]")
    print("  reward signals:")
    for label, key in (("damage (Enemy::addDamage)", "damage_hook"),
                       ("kills   (awardPoints)", "kill_hook"),
                       ("shots   (weaponDidFire)", "shot_hook"),
                       ("player HP", "player_hp"),
                       ("enemy HP", "enemy_hp")):
        ok = caps.get(key)
        print(f"    {'OK ' if ok else 'MISSING'}  {label}")
    print("  reset primitives:")
    for label, key in (("killPlayer", "reset_kill_player"),
                       ("killAllEnemies", "reset_kill_enemies")):
        print(f"    {'OK ' if caps.get(key) else 'MISSING'}  {label}")
    if missing:
        print(f"  unresolved symbols ({len(missing)}):")
        for s in missing:
            print(f"    - {s}")
    print()


def aim_at_nearest(obs: np.ndarray, labels: list, shoot: bool = True) -> np.ndarray:
    """Scripted policy: face the nearest enemy and hold the trigger."""
    if obs[labels.index("e0_present")] <= 0.0:
        return np.zeros(5, dtype=np.float32)
    dx = float(obs[labels.index("e0_dx")])
    dy = float(obs[labels.index("e0_dy")])
    n = float(np.hypot(dx, dy)) or 1.0
    return np.array([0.0, 0.0, dx / n, dy / n, 1.0 if shoot else -1.0],
                    dtype=np.float32)


def run_episodes(env: MiniMilitiaEnv, a: argparse.Namespace) -> None:
    labels = env.observation_labels()
    rng = np.random.default_rng(a.seed)

    for ep in range(1, a.episodes + 1):
        obs, info = env.reset(seed=a.seed + ep if a.mock else None)
        print(RULE)
        print(f"EPISODE {ep}  (reset settled {info.get('reset_ticks')} ticks, "
              f"{info.get('enemy_count')} enemies)")
        print(RULE)

        t0 = time.perf_counter()
        total_r = 0.0
        slips = 0
        timeouts = 0
        step_i = 0

        while step_i < a.steps:
            action = (rng.uniform(-1, 1, 5).astype(np.float32)
                      if a.policy == "random"
                      else aim_at_nearest(obs, labels))
            obs, r, terminated, truncated, info = env.step(action)
            step_i += 1
            total_r += r
            if info["tick_slip"] != 0:
                slips += 1
            if info["timed_out"]:
                timeouts += 1

            if a.verbose or step_i % a.log_every == 0:
                rb = info["reward"]
                print(f"  step {step_i:4d}  r={r:+8.4f}  "
                      f"dmg={rb['damage']:+6.3f} kill={rb['kill']:+6.3f} "
                      f"hit={rb['damage_taken']:+6.3f} shot={rb['shot_cost']:+6.3f} "
                      f"idle={rb['idle']:+6.3f} | "
                      f"ticks={info['ticks']:3d} dt={info['dt_mean']:.5f} "
                      f"hp={info['player_hp']:5.1f} "
                      f"enemies={info['enemy_count']} "
                      f"d={info['min_enemy_distance']:.0f}")
            if a.render:
                print(env.render())
            if terminated or truncated:
                break

        wall = time.perf_counter() - t0
        tot = info["episode_totals"]
        print(f"\n  ended after {step_i} steps: "
              f"{info.get('end_reason', 'step budget')}")
        print(f"  return          : {total_r:+.4f}")
        print(f"  damage dealt    : {tot['damage_dealt']:.1f}")
        print(f"  damage taken    : {tot['damage_taken']:.1f}")
        print(f"  kills           : {tot['kills']}")
        print(f"  shots / accuracy: {tot['shots']} / {tot['accuracy']:.2f} dmg-per-shot")
        print(f"  physics ticks   : {tot['ticks']}")
        print(f"  throughput      : {step_i / wall:.1f} steps/s, "
              f"{tot['ticks'] / wall:.0f} ticks/s  ({wall:.2f}s wall)")
        if slips:
            print(f"  WARNING: {slips}/{step_i} steps observed a tick count "
                  f"other than frame_skip={env.cfg.env.frame_skip}")
        if timeouts:
            print(f"  WARNING: {timeouts}/{step_i} steps hit the JS watchdog "
                  "(game paused or at a menu?)")
        print()


def probe_timescale(env: MiniMilitiaEnv, a: argparse.Namespace) -> None:
    """Measure whether game_speed inflates dt or produces more ticks.

    This decides whether the environment's transition function depends on
    game_speed. If dt scales with the multiplier, the physics integrate
    differently at each speed and a policy trained at 2.0x will not transfer to
    1.0x -- frame_skip would then cover a different amount of *game* time at
    each setting.
    """
    print(RULE)
    print(f"TIMESCALE PROBE  (game_speed = {a.game_speed})")
    print(RULE)

    env.reset()
    idle = np.zeros(5, dtype=np.float32)
    n = max(20, a.steps)

    t0 = time.perf_counter()
    dts, ticks = [], 0
    for _ in range(n):
        _, _, term, trunc, info = env.step(idle)
        dts.append(info["dt_mean"])
        ticks += info["ticks"]
        if term or trunc:
            env.reset()
    wall = time.perf_counter() - t0

    dt_mean = float(np.mean(dts))
    print(f"  steps               : {n}")
    print(f"  physics ticks       : {ticks}")
    print(f"  mean dt             : {dt_mean:.6f} s")
    print(f"  implied game hz     : {1.0 / dt_mean:.1f}" if dt_mean > 0 else "")
    print(f"  wall-clock tick rate: {ticks / wall:.1f} ticks/s")
    print(f"  game time per step  : {dt_mean * env.cfg.env.frame_skip:.4f} s")
    print()
    print("  Compare against a run at game_speed=1.0:")
    print("    * mean dt DOUBLED, tick rate flat  -> timescale inflates dt.")
    print("      Physics integrate differently per speed, so the MDP depends")
    print("      on game_speed. Train and evaluate at one fixed speed, or pin")
    print("      frame_skip to game time instead of tick count.")
    print("    * mean dt flat, tick rate DOUBLED  -> engine substeps at fixed dt.")
    print("      frame_skip is a constant slice of game time; speed is a free")
    print("      throughput win.")
    print()


def parse_args() -> argparse.Namespace:
    p = argparse.ArgumentParser(
        description="Mini Militia Gymnasium verification harness",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    p.add_argument("--mock", action="store_true",
                   help="run against the in-process simulator, no game needed")
    p.add_argument("--device", choices=["gadget", "usb", "remote", "local"],
                   default="gadget")
    p.add_argument("--host", default="127.0.0.1:27042")
    p.add_argument("--process", default=None,
                   help="override the process name to attach to")

    p.add_argument("--episodes", type=int, default=1)
    p.add_argument("--steps", type=int, default=200, help="max steps per episode")
    p.add_argument("--frame-skip", type=int, default=10)
    p.add_argument("--game-speed", type=float, default=1.0)
    p.add_argument("--max-enemies", type=int, default=5)
    p.add_argument("--weapon", default="uzi", choices=sorted(WEAPON_TYPES))
    p.add_argument("--policy", choices=["random", "aim"], default="aim")
    p.add_argument("--seed", type=int, default=0)

    p.add_argument("--infinite-health", action="store_true",
                   help="god mode; disables death-based termination")
    p.add_argument("--no-reset-kill", action="store_true",
                   help="don't call killPlayer on reset() -- leave the player as-is")
    p.add_argument("--no-reset-clear-enemies", action="store_true",
                   help="don't call killAllEnemies on reset()")
    p.add_argument("--render-game", dest="render_game", action="store_true",
                   default=None,
                   help="leave the game rendering on (slower); "
                        "defaults to EnvConfig.disable_rendering")
    p.add_argument("--headless", dest="render_game", action="store_false",
                   help="force rendering off for a training-speed run")
    p.add_argument("--render", action="store_true",
                   help="print the ansi state dump each step")
    p.add_argument("--probe-timescale", action="store_true")
    p.add_argument("--log-every", type=int, default=10)
    p.add_argument("--verbose", action="store_true")
    return p.parse_args()


def main() -> int:
    a = parse_args()
    try:
        env = make_env(a)
    except BridgeError as exc:
        print(f"[-] {exc}", file=sys.stderr)
        print("\n    Is the game running with the Frida gadget loaded?", file=sys.stderr)
        print("    Try --mock to exercise the Python stack without it.", file=sys.stderr)
        return 1

    try:
        print_instrumentation(env)
        if a.probe_timescale:
            probe_timescale(env, a)
        else:
            run_episodes(env, a)
    except KeyboardInterrupt:
        print("\n[*] interrupted")
    finally:
        env.close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

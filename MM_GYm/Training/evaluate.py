#!/usr/bin/env python3
"""Play a saved PPO model against the Mini Militia environment.

Run from ``MM_GYm/``::

    # Evaluate a best-model checkpoint in the mock simulator:
    python -m Training.evaluate --mock --model models/run_.../best/best_r+1.2_....zip

    # Evaluate on the live game and compare against the scripted baseline:
    python -m Training.evaluate --model models/run_.../final_....zip --compare-baseline

Why the baseline comparison matters
-----------------------------------
``demo.aim_at_nearest`` is a five-line scripted policy: face the nearest enemy
and hold the trigger. It is the yardstick that actually tells you something. A
PPO policy that scores *below* it after hours of training is not
under-trained -- something is wrong with the reward, the action mapping, or the
instrumentation, and more timesteps will not fix it. ``--compare-baseline`` runs
both policies over the same number of episodes and prints them side by side.

Note on reproducibility: only ``--mock`` runs are repeatable. ``FridaBridge``
deliberately exposes no ``seed()`` because a live game process is not
reproducible, so ``--seed`` affects action sampling but not the game itself.
"""

from __future__ import annotations

import argparse
import os
import statistics
import sys
from typing import Any, Callable, Dict, List, Optional

import numpy as np

if __package__ in (None, ""):  # pragma: no cover - import-path plumbing
    sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    __package__ = "Training"

from stable_baselines3 import PPO                                     # noqa: E402

from python_gym_Wrapper import BridgeError, MiniMilitiaEnv, MockBridge  # noqa: E402
from python_gym_Wrapper.demo import aim_at_nearest                    # noqa: E402

from . import hyperparams as hp                                       # noqa: E402
from .train_ppo import build_config                                   # noqa: E402

RULE = "=" * 78

# A policy takes an observation and returns an action. Both the loaded network
# and the scripted baseline are adapted to this shape so run_episodes() does not
# need to know which it is driving.
Policy = Callable[[np.ndarray], np.ndarray]


def parse_args(argv: Optional[list] = None) -> argparse.Namespace:
    """Define and parse the command line.

    Environment flags mirror ``train_ppo.py`` (and ``demo.py``) by name, so that
    an evaluation can be pointed at the same conditions the model trained under.
    """
    p = argparse.ArgumentParser(
        description="Evaluate a saved PPO model on the Mini Militia environment",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )

    p.add_argument("--model", default=None, metavar="PATH",
                   help="saved .zip to evaluate. Omit with --compare-baseline to "
                        "measure the scripted policy on its own.")
    p.add_argument("--episodes", type=int, default=3)
    p.add_argument("--stochastic", action="store_true",
                   help="sample from the policy instead of taking its mean action; "
                        "the mean action is the right choice for measuring skill")
    p.add_argument("--compare-baseline", action="store_true",
                   help="also run the scripted aim-at-nearest policy for reference")
    p.add_argument("--render", action="store_true",
                   help="print the ansi state dump each step")

    # -- environment (names deliberately match train_ppo.py) ---------------
    env_group = p.add_argument_group("environment")
    env_group.add_argument("--mock", action="store_true")
    env_group.add_argument("--device", choices=["gadget", "usb", "remote", "local"],
                           default="gadget")
    env_group.add_argument("--host", default="127.0.0.1:27042")
    env_group.add_argument("--process", default=None)
    env_group.add_argument("--frame-skip", type=int, default=hp.FRAME_SKIP)
    env_group.add_argument("--max-episode-steps", type=int,
                           default=hp.MAX_EPISODE_STEPS)
    env_group.add_argument("--game-speed", type=float, default=hp.GAME_SPEED)
    env_group.add_argument("--hard-sync", action="store_true")
    env_group.add_argument("--max-enemies", type=int, default=hp.MAX_ENEMIES)
    env_group.add_argument("--weapon", default=hp.WEAPON)
    env_group.add_argument("--terminate-on-death", action="store_true")
    env_group.add_argument("--render-game", dest="render_game",
                           action="store_true", default=None)
    env_group.add_argument("--headless", dest="render_game", action="store_false")
    env_group.add_argument("--verbose-env", action="store_true")
    env_group.add_argument("--seed", type=int, default=0)

    args = p.parse_args(argv)
    if not args.model and not args.compare_baseline:
        p.error("pass --model, or --compare-baseline to evaluate only the "
                "scripted policy")
    return args


def run_episodes(env: MiniMilitiaEnv, policy: Policy, episodes: int,
                 label: str, seed: Optional[int] = None,
                 render: bool = False) -> List[Dict[str, Any]]:
    """Run ``episodes`` episodes under ``policy`` and report per-episode results.

    Args:
        env: A connected environment.
        policy: Maps an observation to an action.
        episodes: How many episodes to run.
        label: Name used in the printed output.
        seed: Passed to ``reset()``. Only affects mock runs, where ``MockBridge``
            exposes a ``seed()``; the live bridge deliberately does not.
        render: Print the environment's ansi dump each step.

    Returns:
        One summary dict per episode.
    """
    print(RULE)
    print(f"{label}  --  {episodes} episode(s), "
          f"cap {env.cfg.env.max_episode_steps} steps")
    print(RULE)

    results: List[Dict[str, Any]] = []

    for episode in range(1, episodes + 1):
        # Vary the seed per episode so a multi-episode run is not the same
        # episode repeated, while staying reproducible overall.
        obs, _ = env.reset(seed=None if seed is None else seed + episode)
        total = 0.0
        steps = 0
        info: Dict[str, Any] = {}

        while True:
            obs, reward, terminated, truncated, info = env.step(policy(obs))
            total += reward
            steps += 1
            if render:
                print(env.render())
            if terminated or truncated:
                break

        totals = info.get("episode_totals", {}) or {}
        summary = {
            "episode": episode,
            "return": total,
            "steps": steps,
            "end_reason": info.get("end_reason", "unknown"),
            "kills": totals.get("kills", 0),
            "damage_dealt": totals.get("damage_dealt", 0.0),
            "damage_taken": totals.get("damage_taken", 0.0),
            "shots": totals.get("shots", 0),
            "accuracy": totals.get("accuracy", 0.0),
        }
        results.append(summary)

        print(f"  ep {episode:2d}  return={total:+9.4f}  steps={steps:4d}  "
              f"kills={summary['kills']:3d}  "
              f"dmg={summary['damage_dealt']:7.1f}  "
              f"taken={summary['damage_taken']:7.1f}  "
              f"acc={summary['accuracy']:5.2f}  "
              f"({summary['end_reason']})")

    print()
    return results


def summarise(results: List[Dict[str, Any]], label: str) -> Dict[str, float]:
    """Reduce per-episode results to means and print them."""
    if not results:
        return {}

    def mean(key: str) -> float:
        return float(statistics.fmean(r[key] for r in results))

    stats = {
        "return": mean("return"),
        "steps": mean("steps"),
        "kills": mean("kills"),
        "damage_dealt": mean("damage_dealt"),
        "damage_taken": mean("damage_taken"),
        "accuracy": mean("accuracy"),
    }
    # Sample standard deviation needs at least two points; a single episode has
    # no spread to report.
    spread = (statistics.stdev(r["return"] for r in results)
              if len(results) > 1 else 0.0)

    print(f"  {label:24s} return {stats['return']:+9.4f} +/- {spread:.4f}   "
          f"kills {stats['kills']:5.1f}   dmg {stats['damage_dealt']:7.1f}   "
          f"acc {stats['accuracy']:5.2f}")
    return stats


def main(argv: Optional[list] = None) -> int:
    a = parse_args(argv)

    cfg = build_config(a)
    bridge = MockBridge(cfg, seed=a.seed) if a.mock else None
    env = MiniMilitiaEnv(cfg, bridge=bridge,
                         render_mode="ansi" if a.render else None)

    try:
        env.connect()
    except BridgeError as exc:
        print(f"[-] could not attach to the game: {exc}", file=sys.stderr)
        print("    Try --mock to evaluate against the in-process simulator.",
              file=sys.stderr)
        return 1

    seed = a.seed if a.mock else None
    policy_results: List[Dict[str, Any]] = []
    baseline_results: List[Dict[str, Any]] = []

    try:
        if a.model:
            model_target = a.model
            if model_target.lower() in ("latest", "auto", "best", "latest_best"):
                from Inference.model_loader import find_latest_best_model
                found = find_latest_best_model()
                if found:
                    model_target = str(found)
                else:
                    raise FileNotFoundError(
                        "No saved model found under models/ to evaluate."
                    )
            # Loaded without an env: predict() only needs the observation space,
            # which is baked into the archive. A shape mismatch here means the
            # model was trained with a different --max-enemies.
            model = PPO.load(model_target, device="cpu")
            deterministic = not a.stochastic

            def learned_policy(obs: np.ndarray) -> np.ndarray:
                action, _ = model.predict(obs, deterministic=deterministic)
                return action

            policy_results = run_episodes(
                env, learned_policy, a.episodes,
                label=f"PPO  {os.path.basename(a.model)}"
                      f"  ({'deterministic' if deterministic else 'stochastic'})",
                seed=seed, render=a.render)

        if a.compare_baseline:
            labels = env.observation_labels()

            def scripted_policy(obs: np.ndarray) -> np.ndarray:
                return aim_at_nearest(obs, labels)

            baseline_results = run_episodes(
                env, scripted_policy, a.episodes,
                label="BASELINE  aim_at_nearest (scripted)",
                seed=seed, render=a.render)
    except KeyboardInterrupt:
        print("\n[*] interrupted")
    finally:
        env.close()

    # -- comparison --------------------------------------------------------
    print(RULE)
    print("SUMMARY (means over episodes)")
    print(RULE)
    learned = summarise(policy_results, "PPO") if policy_results else {}
    scripted = summarise(baseline_results, "scripted baseline") if baseline_results else {}

    if learned and scripted:
        delta = learned["return"] - scripted["return"]
        print()
        if delta > 0:
            print(f"  PPO beats the scripted baseline by {delta:+.4f} return.")
        else:
            print(f"  PPO trails the scripted baseline by {delta:+.4f} return.")
            print("  A trained policy below this baseline usually points at the "
                  "reward, the\n  action mapping, or a missing instrumentation "
                  "hook -- not at needing more\n  timesteps. Check the "
                  "INSTRUMENTATION block from run_gym_demo.bat.")
    print()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

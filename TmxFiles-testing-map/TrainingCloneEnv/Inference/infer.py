"""Run a trained PPO model in TrainingCloneEnv.

Loads a saved .zip and plays it in the clone, with the debug viewer on by default
so you can watch. Pass --no-render for a headless evaluation that just reports
per-episode statistics.

Usage, from the TrainingCloneEnv directory::

    python -m Inference.infer                           # highest-scoring model found
    python -m Inference.infer latest                    # most recently saved instead
    python -m Inference.infer runs/run_.../best/best_r+2.7477_step000012288.zip
    python -m Inference.infer --no-render --episodes 20
    python -m Inference.infer --stochastic              # sample instead of the mean action

Or use ``Inference\\run_inference.bat``, optionally with a model path.

Matching the training configuration
-----------------------------------
``--frame-skip`` and ``--tier`` default to the training values (10 and 128). Both
change what the policy sees or how long its actions are held, so a mismatch makes
the agent behave differently than it was trained to. Because one env step covers
frame_skip ticks and one frame is drawn per step, the faithful setting renders at
6 fps. ``--frame-skip 1`` gives a smooth 60 fps view but has the policy acting ten
times more often than it was trained to -- useful for eyeballing, not for judging.
"""

from __future__ import annotations

import argparse
from pathlib import Path
import re
import sys
from typing import List, Optional

_CLONE_ROOT = Path(__file__).resolve().parent.parent
if str(_CLONE_ROOT) not in sys.path:
    sys.path.insert(0, str(_CLONE_ROOT))

import numpy as np                                                     # noqa: E402
from stable_baselines3 import PPO                                      # noqa: E402

RULE = "=" * 72


_BEST_NAME_RE = re.compile(r"best_r([+-]?\d+(?:\.\d+)?)_step(\d+)\.zip$")


def _score_of(path: Path) -> Optional[float]:
    """Mean-return score encoded in a best-model filename, or None."""
    m = _BEST_NAME_RE.search(path.name)
    return float(m.group(1)) if m else None


def resolve_model_path(spec: str) -> Path:
    """Resolve a model argument to a real file.

    Accepts an explicit path (with or without the .zip suffix), or a keyword:

    * ``best`` (the default) -- the highest-scoring model across every run, read
      from the score the trainer encodes in the filename.
    * ``latest`` -- the most recently written model instead, which is what you
      want while a run is still in progress and improving.
    """
    spec = spec.strip().strip('"').strip("'")
    keyword = spec.lower()

    if keyword in ("best", "latest", "auto"):
        runs = _CLONE_ROOT / "Training" / "runs"
        best_models = list(runs.glob("*/best/*.zip"))

        if keyword in ("best", "auto"):
            # Highest score wins; ties break toward the newer file.
            scored = [(s, p) for p in best_models if (s := _score_of(p)) is not None]
            if scored:
                scored.sort(key=lambda t: (t[0], t[1].stat().st_mtime), reverse=True)
                return scored[0][1].resolve()
            # No parseable scores -- fall through to newest-wins.

        candidates = sorted(best_models, key=lambda p: p.stat().st_mtime, reverse=True)
        if not candidates:
            candidates = sorted(
                list(runs.glob("*/final_*.zip")) + list(runs.glob("*/checkpoints/*.zip")),
                key=lambda p: p.stat().st_mtime, reverse=True)
        if not candidates:
            raise FileNotFoundError(
                f"No saved models found under {runs}. Train one first with "
                f"`python -m Training.train_ppo`.")
        return candidates[0].resolve()

    p = Path(spec)
    for cand in (p, p.with_suffix(".zip"), _CLONE_ROOT / p, (_CLONE_ROOT / p).with_suffix(".zip")):
        if cand.is_file():
            return cand.resolve()

    raise FileNotFoundError(f"Could not find a model at {spec!r}")


def parse_args(argv: Optional[list] = None) -> argparse.Namespace:
    p = argparse.ArgumentParser(
        description="Run a trained PPO model in the Mini Militia clone",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )
    p.add_argument("model", nargs="?", default="best",
                   help="path to a saved .zip; 'best' picks the highest-scoring model "
                        "across all runs, 'latest' the most recently written one")
    p.add_argument("--episodes", type=int, default=5, help="episodes to run (0 = until closed)")
    p.add_argument("--map", default="survival_new")
    p.add_argument("--tier", type=int, default=128, choices=[64, 128, 256],
                   help="must match training or the observation scale shifts")
    p.add_argument("--frame-skip", type=int, default=10,
                   help="must match training; note one frame is drawn per step, so 10 renders at 6 fps")
    p.add_argument("--max-episode-steps", type=int, default=1000)
    p.add_argument("--terminate-on-death", action="store_true",
                   help="end the episode on death (also turns infinite_health off)")
    p.add_argument("--no-render", dest="render", action="store_false",
                   help="headless: report statistics only, run as fast as possible")
    p.add_argument("--speed", type=float, default=1.0,
                   help="playback multiplier while rendering; 1.0 = realtime")
    p.add_argument("--stochastic", dest="deterministic", action="store_false",
                   help="sample from the policy instead of taking its mean action")
    p.add_argument("--seed", type=int, default=0)
    return p.parse_args(argv)


def main(argv: Optional[list] = None) -> int:
    a = parse_args(argv)

    model_path = resolve_model_path(a.model)

    from mmclone.envs.factory import make_clone_env
    from python_gym_Wrapper.config import MiniMilitiaConfig

    cfg = MiniMilitiaConfig()
    e = cfg.env
    e.frame_skip = a.frame_skip
    e.max_episode_steps = a.max_episode_steps
    if a.terminate_on_death:
        e.infinite_health = False
        e.terminate_on_death = True
    e.__post_init__()

    env = make_clone_env(
        config=cfg,
        map_name=a.map,
        tier=a.tier,
        seed=a.seed,
        render_mode="human" if a.render else None,
    )
    if a.render:
        env.bridge.render_speed = a.speed

    model = PPO.load(str(model_path), device="cpu")

    # A model trained with a different observation layout will produce garbage
    # rather than fail, so check before wasting a run on it.
    if model.observation_space.shape != env.observation_space.shape:
        print(f"[-] observation mismatch: model expects {model.observation_space.shape}, "
              f"env provides {env.observation_space.shape}. The model was trained with "
              f"different observation settings (max_enemies, or the tier scale).",
              file=sys.stderr)
        env.close()
        return 1

    print(RULE)
    print("TRAININGCLONEENV -- INFERENCE")
    print(RULE)
    print(f"  model      : {model_path.name}")
    print(f"  from       : {model_path.parent}")
    print(f"  trained for: {model.num_timesteps:,} steps")
    print(f"  map / tier : {a.map} @ {a.tier}")
    print(f"  frame skip : {a.frame_skip}")
    print(f"  policy     : {'deterministic' if a.deterministic else 'stochastic'}")
    if a.render:
        print(f"  rendering  : on, {env.bridge.render_fps:.1f} fps for {a.speed:g}x realtime")
    else:
        print(f"  rendering  : off (headless evaluation)")
    print(RULE)
    print()

    returns: List[float] = []
    lengths: List[int] = []
    try:
        ep = 0
        while a.episodes == 0 or ep < a.episodes:
            obs, _ = env.reset()
            done = False
            total, steps = 0.0, 0
            last_info: dict = {}

            while not done:
                action, _ = model.predict(obs, deterministic=a.deterministic)
                obs, reward, terminated, truncated, info = env.step(action)
                total += float(reward)
                steps += 1
                last_info = info
                done = terminated or truncated
                if a.render:
                    env.render()

            ep += 1
            returns.append(total)
            lengths.append(steps)
            totals = last_info.get("episode_totals", {}) or {}
            print(f"episode {ep:>3}  return {total:+9.2f}  steps {steps:>5}  "
                  f"kills {int(totals.get('kills', 0)):>3}  "
                  f"dmg {totals.get('damage_dealt', 0.0):>7.1f}  "
                  f"taken {totals.get('damage_taken', 0.0):>7.1f}  "
                  f"deaths {int(totals.get('deaths', 0)):>2}  "
                  # RewardManager calls this "accuracy", but it is damage_dealt
                  # per shot, so it exceeds 1.0 whenever a shot lands (UZI = 7).
                  f"dmg/shot {totals.get('accuracy', 0.0):>5.2f}  "
                  f"[{last_info.get('end_reason', '-')}]")
    except KeyboardInterrupt:
        print("\n[*] interrupted")
    finally:
        env.close()

    if returns:
        print()
        print(RULE)
        print(f"{len(returns)} episodes")
        print(f"  return : mean {np.mean(returns):+.2f}  std {np.std(returns):.2f}  "
              f"min {np.min(returns):+.2f}  max {np.max(returns):+.2f}")
        print(f"  length : mean {np.mean(lengths):.0f} steps")
        print(RULE)

    return 0


if __name__ == "__main__":
    raise SystemExit(main())

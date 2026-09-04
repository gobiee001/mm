"""CLI benchmark and profiling tool for CloneWorld."""

import argparse
import cProfile
from pathlib import Path
import pstats
import sys
import time

clone_root = Path(__file__).resolve().parent.parent
if str(clone_root) not in sys.path:
    sys.path.insert(0, str(clone_root))

import numpy as np
from mmclone.envs.factory import make_clone_env


def run_benchmark(map_name: str, frame_skip: int, steps: int, warmup: int, profile: bool) -> None:
    env = make_clone_env(map_name=map_name)
    env.cfg.env.frame_skip = frame_skip
    env.reset()

    action = np.array([0.5, 0.2, 1.0, 0.0, 1.0], dtype=np.float32)

    print(f"Warming up ({warmup} steps)...")
    for _ in range(warmup):
        env.step(action)

    print(f"Benchmarking {steps} steps with frame_skip={frame_skip}...")

    prof = cProfile.Profile() if profile else None
    if prof:
        prof.enable()

    t0 = time.perf_counter()
    for _ in range(steps):
        env.step(action)
    elapsed = time.perf_counter() - t0

    if prof:
        prof.disable()

    env_steps_per_sec = steps / elapsed
    physics_ticks_per_sec = env_steps_per_sec * frame_skip

    print("\n--- Benchmark Results ---")
    print(f"Map:                {map_name}")
    print(f"Frame skip:         {frame_skip}")
    print(f"Total steps:        {steps}")
    print(f"Elapsed time:       {elapsed:.3f} s")
    print(f"Throughput:         {env_steps_per_sec:.1f} env-steps/s")
    print(f"Physics ticks:      {physics_ticks_per_sec:.1f} ticks/s")

    if prof:
        print("\n--- cProfile Top 15 Functions ---")
        ps = pstats.Stats(prof).sort_stats("cumulative")
        ps.print_stats(15)

    env.close()


def main() -> None:
    parser = argparse.ArgumentParser(description="Benchmark TrainingCloneEnv throughput.")
    parser.add_argument("--map", type=str, default="survival_new", help="Map name (default: survival_new)")
    parser.add_argument("--frame-skip", type=int, default=10, help="Frame skip (default: 10)")
    parser.add_argument("--steps", type=int, default=5000, help="Steps to benchmark (default: 5000)")
    parser.add_argument("--warmup", type=int, default=500, help="Warmup steps (default: 500)")
    parser.add_argument("--profile", action="store_true", help="Run with cProfile")
    args = parser.parse_args()

    run_benchmark(args.map, args.frame_skip, args.steps, args.warmup, args.profile)


if __name__ == "__main__":
    main()

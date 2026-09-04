"""Throughput benchmark test for TrainingCloneEnv."""

import time
import unittest
import numpy as np
from mmclone.envs.factory import make_clone_env


class TestThroughput(unittest.TestCase):
    def test_single_process_throughput(self):
        env = make_clone_env(seed=42)
        try:
            obs, _ = env.reset()
            action = np.array([0.5, 0.2, 1.0, 0.0, 1.0], dtype=np.float32)

            # Warmup
            for _ in range(200):
                env.step(action)

            # Measure
            n_steps = 3000
            t0 = time.perf_counter()
            for _ in range(n_steps):
                env.step(action)
            elapsed = time.perf_counter() - t0

            steps_per_sec = n_steps / elapsed
            print(f"\nThroughput: {steps_per_sec:.1f} env-steps/s ({steps_per_sec * 10:.0f} ticks/s)")
            self.assertGreater(
                steps_per_sec, 300.0, f"Throughput regression: got {steps_per_sec:.1f} steps/s"
            )
        finally:
            env.close()

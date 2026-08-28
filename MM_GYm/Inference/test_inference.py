"""Unit tests for the Inference package."""

import unittest
from pathlib import Path
import tempfile
import shutil
import sys

from Inference.model_loader import (
    parse_reward_from_filename,
    parse_step_from_filename,
    find_latest_best_model,
    list_available_models,
)
from Inference.infer import parse_args, build_inference_config, format_action_str, InferenceSession
import numpy as np


class TestModelLoader(unittest.TestCase):
    def test_parse_reward(self):
        self.assertAlmostEqual(parse_reward_from_filename("best_r+1.2340_step000048640.zip"), 1.2340)
        self.assertAlmostEqual(parse_reward_from_filename("best_r-21.3492_step000014400.zip"), -21.3492)
        self.assertAlmostEqual(parse_reward_from_filename("final_step000016384_r-11.3323.zip"), -11.3323)
        self.assertAlmostEqual(parse_reward_from_filename("ckpt_step000000512_r-2.0001.zip"), -2.0001)

    def test_parse_step(self):
        self.assertEqual(parse_step_from_filename("best_r+1.2340_step000048640.zip"), 48640)
        self.assertEqual(parse_step_from_filename("final_step000016384_r-11.3323.zip"), 16384)

    def test_find_latest_best_model_in_tree(self):
        with tempfile.TemporaryDirectory() as tmp:
            tmp_path = Path(tmp)
            run1 = tmp_path / "run_20260827_100000"
            run2 = tmp_path / "run_20260828_100000"

            (run1 / "best").mkdir(parents=True)
            (run2 / "best").mkdir(parents=True)

            (run1 / "best" / "best_r+5.0000_step000010000.zip").touch()
            (run2 / "best" / "best_r-10.0000_step000005000.zip").touch()
            (run2 / "best" / "best_r+8.5000_step000020000.zip").touch()

            # Should pick run2's highest reward model (best_r+8.5000)
            best = find_latest_best_model(tmp_path)
            self.assertIsNotNone(best)
            self.assertEqual(best.name, "best_r+8.5000_step000020000.zip")


class TestInferenceConfig(unittest.TestCase):
    def test_cli_parsing_defaults(self):
        args = parse_args(["--episodes", "10", "--continuous"])
        self.assertEqual(args.episodes, 10)
        self.assertTrue(args.continuous)
        self.assertTrue(args.deterministic)
        self.assertTrue(args.hud)
        self.assertTrue(args.render_game)

    def test_action_formatting(self):
        act = np.array([0.5, -0.5, 1.0, 0.0, 1.0], dtype=np.float32)
        s = format_action_str(act)
        self.assertIn("Move:", s)
        self.assertIn("Aim:", s)
        self.assertIn("FIRE [!]", s)


if __name__ == "__main__":
    unittest.main()

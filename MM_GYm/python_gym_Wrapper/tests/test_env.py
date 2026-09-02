"""Gymnasium API compliance and the episode contract, against MockBridge."""

import unittest

import numpy as np
from gymnasium.utils.env_checker import check_env

from python_gym_Wrapper.config import MiniMilitiaConfig
from python_gym_Wrapper.minimilitia_env import MiniMilitiaEnv
from python_gym_Wrapper.mock_bridge import MockBridge


def make_env(seed=0, **env_kw):
    cfg = MiniMilitiaConfig()
    for k, v in env_kw.items():
        setattr(cfg.env, k, v)
    cfg.env.__post_init__()
    return MiniMilitiaEnv(cfg, bridge=MockBridge(cfg, seed=seed)), cfg


class TestGymnasiumCompliance(unittest.TestCase):
    def test_check_env(self):
        env, _ = make_env()
        try:
            check_env(env, skip_render_check=True)
        finally:
            env.close()

    def test_spaces(self):
        env, cfg = make_env()
        try:
            self.assertEqual(env.action_space.shape, (5,))
            self.assertEqual(env.action_space.dtype, np.float32)
            self.assertEqual(env.observation_space.shape, (cfg.obs.flat_size,))
            self.assertEqual(env.observation_space.dtype, np.float32)
        finally:
            env.close()

    def test_metadata_declares_render_modes(self):
        self.assertIn("ansi", MiniMilitiaEnv.metadata["render_modes"])

    def test_bad_render_mode_rejected(self):
        cfg = MiniMilitiaConfig()
        with self.assertRaises(ValueError):
            MiniMilitiaEnv(cfg, bridge=MockBridge(cfg), render_mode="human")


class TestResetContract(unittest.TestCase):
    def test_returns_obs_and_info(self):
        env, _ = make_env()
        try:
            obs, info = env.reset(seed=123)
            self.assertTrue(env.observation_space.contains(obs))
            self.assertIsInstance(info, dict)
            self.assertIn("episode", info)
        finally:
            env.close()

    def test_seeding_is_reproducible(self):
        e1, _ = make_env(seed=7)
        e2, _ = make_env(seed=7)
        try:
            o1, _ = e1.reset(seed=42)
            o2, _ = e2.reset(seed=42)
            np.testing.assert_allclose(o1, o2)
        finally:
            e1.close(); e2.close()

    def test_clears_reward_totals(self):
        env, _ = make_env()
        try:
            env.reset()
            for _ in range(5):
                env.step(np.array([0, 0, 1, 0, 1], dtype=np.float32))
            self.assertGreater(env._reward.episode_totals()["steps"], 0)
            env.reset()
            self.assertEqual(env._reward.episode_totals()["steps"], 0)
        finally:
            env.close()

    def test_options_override_reset_behaviour(self):
        env, _ = make_env()
        try:
            _, info = env.reset(options={"settle_ticks": 3, "force_spawn": True})
            self.assertEqual(info["reset_ticks"], 3)
        finally:
            env.close()

    def test_force_spawn_in_reset_and_method(self):
        env, _ = make_env()
        try:
            obs, info = env.reset(options={"force_spawn": True})
            self.assertTrue(info["has_player"])
            res = env.force_spawn()
            self.assertTrue(res.get("ok"))
        finally:
            env.close()


class TestStepContract(unittest.TestCase):
    def test_five_tuple(self):
        env, _ = make_env()
        try:
            env.reset()
            out = env.step(env.action_space.sample())
            self.assertEqual(len(out), 5)
            obs, reward, terminated, truncated, info = out
            self.assertTrue(env.observation_space.contains(obs))
            self.assertIsInstance(reward, float)
            self.assertIsInstance(terminated, bool)
            self.assertIsInstance(truncated, bool)
            self.assertIsInstance(info, dict)
        finally:
            env.close()

    def test_holds_action_for_frame_skip_ticks(self):
        env, cfg = make_env(frame_skip=13)
        try:
            env.reset()
            _, _, _, _, info = env.step(np.zeros(5, dtype=np.float32))
            self.assertEqual(info["ticks"], 13)
            self.assertEqual(info["tick_slip"], 0)
        finally:
            env.close()

    def test_frame_skip_changes_tick_count(self):
        for fs in (1, 5, 20):
            env, _ = make_env(frame_skip=fs)
            try:
                env.reset()
                _, _, _, _, info = env.step(np.zeros(5, dtype=np.float32))
                self.assertEqual(info["ticks"], fs)
            finally:
                env.close()

    def test_info_carries_reward_breakdown(self):
        env, _ = make_env()
        try:
            env.reset()
            _, reward, _, _, info = env.step(
                np.array([0, 0, 1, 0, 1], dtype=np.float32))
            self.assertIn("reward", info)
            self.assertIn("episode_totals", info)
            self.assertAlmostEqual(info["reward"]["total"], reward, places=6)
        finally:
            env.close()

    def test_wrong_action_size_rejected(self):
        env, _ = make_env()
        try:
            env.reset()
            with self.assertRaises(ValueError):
                env.step(np.zeros(3, dtype=np.float32))
        finally:
            env.close()

    def test_out_of_range_action_is_clipped_not_rejected(self):
        env, _ = make_env()
        try:
            env.reset()
            obs, _, _, _, _ = env.step(np.array([9, -9, 9, -9, 9],
                                                dtype=np.float32))
            self.assertTrue(env.observation_space.contains(obs))
        finally:
            env.close()

    def test_accepts_plain_list(self):
        env, _ = make_env()
        try:
            env.reset()
            env.step([0.0, 0.0, 1.0, 0.0, 1.0])
        finally:
            env.close()

    def test_step_before_reset_raises(self):
        cfg = MiniMilitiaConfig()
        env = MiniMilitiaEnv(cfg, auto_connect=False)
        with self.assertRaises(Exception):
            env.step(np.zeros(5, dtype=np.float32))


class TestEpisodeContract(unittest.TestCase):
    def test_truncates_at_max_episode_steps(self):
        env, _ = make_env(max_episode_steps=4, terminate_on_death=False,
                          frame_skip=1)
        try:
            env.reset()
            flags = []
            for _ in range(4):
                _, _, term, trunc, info = env.step(np.zeros(5, dtype=np.float32))
                flags.append((term, trunc))
            self.assertEqual(flags[-1], (False, True))
            self.assertTrue(all(not t and not r for t, r in flags[:-1]))
            self.assertEqual(info["end_reason"], "max_episode_steps")
        finally:
            env.close()

    def test_truncated_not_terminated_at_the_cut(self):
        """An arbitrary cut must report truncation so a bootstrapping learner
        still bootstraps the value of the final state."""
        env, _ = make_env(max_episode_steps=2, terminate_on_death=False,
                          frame_skip=1)
        try:
            env.reset()
            env.step(np.zeros(5, dtype=np.float32))
            _, _, term, trunc, _ = env.step(np.zeros(5, dtype=np.float32))
            self.assertFalse(term)
            self.assertTrue(trunc)
        finally:
            env.close()

    def test_terminates_on_player_death(self):
        env, _ = make_env(frame_skip=40, max_episode_steps=500,
                          terminate_on_death=True, infinite_health=False)
        try:
            env.reset()
            terminated = False
            for _ in range(200):
                _, _, terminated, truncated, info = env.step(
                    np.zeros(5, dtype=np.float32))   # stand still, take contact damage
                if terminated or truncated:
                    break
            self.assertTrue(terminated)
            self.assertEqual(info["end_reason"], "player_death")
        finally:
            env.close()

    def test_no_termination_when_disabled(self):
        env, _ = make_env(frame_skip=40, terminate_on_death=False,
                          max_episode_steps=100)
        try:
            env.reset()
            for _ in range(60):
                _, _, term, trunc, _ = env.step(np.zeros(5, dtype=np.float32))
                self.assertFalse(term)
                if trunc:
                    break
        finally:
            env.close()

    def test_full_episode_loop(self):
        env, _ = make_env(max_episode_steps=25, frame_skip=5)
        try:
            for _ in range(3):
                env.reset()
                done = False
                n = 0
                while not done and n < 100:
                    _, _, term, trunc, _ = env.step(env.action_space.sample())
                    done = term or trunc
                    n += 1
                self.assertTrue(done)
        finally:
            env.close()


class TestRewardIntegration(unittest.TestCase):
    def test_shooting_at_enemies_beats_standing_still(self):
        """End-to-end sign check through the real encoder and reward engine."""
        env, _ = make_env(seed=3, max_episode_steps=200,
                          terminate_on_death=False, frame_skip=10)
        try:
            obs, _ = env.reset()
            labels = env.observation_labels()
            dx = obs[labels.index("e0_dx")]
            dy = obs[labels.index("e0_dy")]
            n = float(np.hypot(dx, dy)) or 1.0
            aiming = np.array([0, 0, dx / n, dy / n, 1.0], dtype=np.float32)

            r_aim = sum(env.step(aiming)[1] for _ in range(5))
            env.reset()
            r_idle = sum(env.step(np.zeros(5, dtype=np.float32))[1]
                         for _ in range(5))
            self.assertGreater(r_aim, r_idle)
        finally:
            env.close()

    def test_idle_near_enemies_is_penalised(self):
        env, _ = make_env(seed=11, terminate_on_death=False, frame_skip=10)
        try:
            env.reset()
            saw_penalty = False
            for _ in range(30):
                _, r, _, _, info = env.step(np.zeros(5, dtype=np.float32))
                if info["idle_ticks"] > 0:
                    saw_penalty = True
                    self.assertGreater(info["reward"]["idle"] * -1, 0.0)
                    break
            self.assertTrue(saw_penalty, "idle ticks never accumulated")
        finally:
            env.close()


class TestRender(unittest.TestCase):
    def test_ansi_render(self):
        cfg = MiniMilitiaConfig()
        env = MiniMilitiaEnv(cfg, bridge=MockBridge(cfg), render_mode="ansi")
        try:
            env.reset()
            env.step(np.zeros(5, dtype=np.float32))
            out = env.render()
            self.assertIsInstance(out, str)
            self.assertIn("player", out)
        finally:
            env.close()

    def test_render_none_without_mode(self):
        env, _ = make_env()
        try:
            env.reset()
            self.assertIsNone(env.render())
        finally:
            env.close()


if __name__ == "__main__":
    unittest.main()

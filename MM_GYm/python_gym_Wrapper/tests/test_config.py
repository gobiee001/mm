"""Config validation and JS-config injection."""

import unittest

from python_gym_Wrapper.config import (
    ActionSpaceConfig,
    EnvConfig,
    MiniMilitiaConfig,
    ObservationConfig,
    RewardConfig,
)


class TestEnvConfig(unittest.TestCase):
    def test_defaults_are_valid(self):
        e = EnvConfig()
        self.assertEqual(e.frame_skip, 10)
        self.assertFalse(e.infinite_health)
        self.assertTrue(e.terminate_on_death)

    def test_rejects_bad_frame_skip(self):
        with self.assertRaises(ValueError):
            EnvConfig(frame_skip=0)

    def test_infinite_health_conflicts_with_termination(self):
        """HP is clamped to 100 every tick, so the episode could never end."""
        with self.assertRaises(ValueError) as ctx:
            EnvConfig(infinite_health=True, terminate_on_death=True)
        self.assertIn("infinite_health", str(ctx.exception))

    def test_infinite_health_allowed_when_not_terminating(self):
        e = EnvConfig(infinite_health=True, terminate_on_death=False)
        self.assertTrue(e.infinite_health)

    def test_rpc_timeout_must_exceed_js_watchdog(self):
        with self.assertRaises(ValueError):
            EnvConfig(step_timeout_ms=60000, rpc_timeout_s=5.0)


class TestRewardConfig(unittest.TestCase):
    def test_weights_are_positive_magnitudes(self):
        r = RewardConfig()
        for name in ("w_damage", "w_kill", "w_damage_taken", "w_death",
                     "w_shot_cost", "w_idle", "w_time"):
            self.assertGreaterEqual(getattr(r, name), 0.0, name)

    def test_rejects_negative_weight(self):
        """A negative magnitude would flip a penalty into a bonus."""
        with self.assertRaises(ValueError) as ctx:
            RewardConfig(w_idle=-0.5)
        self.assertIn("w_idle", str(ctx.exception))

    def test_rejects_zero_max_hp(self):
        with self.assertRaises(ValueError):
            RewardConfig(enemy_max_hp=0.0)


class TestObservationConfig(unittest.TestCase):
    def test_flat_size_matches_components(self):
        o = ObservationConfig(max_enemies=5)
        self.assertEqual(o.player_features, 8)
        self.assertEqual(o.enemy_features, 10)
        self.assertEqual(o.flat_size, 8 + 5 * 10)

    def test_flat_size_tracks_toggles(self):
        o = ObservationConfig(max_enemies=2, include_player_hp=False,
                              include_ammo=False, include_enemy_type_onehot=False)
        self.assertEqual(o.player_features, 4)
        self.assertEqual(o.enemy_features, 7)
        self.assertEqual(o.flat_size, 4 + 2 * 7)

    def test_scan_must_cover_max_enemies(self):
        with self.assertRaises(ValueError):
            ObservationConfig(max_enemies=10, max_enemy_scan=4)


class TestActionSpaceConfig(unittest.TestCase):
    def test_dim_is_fixed(self):
        with self.assertRaises(ValueError):
            ActionSpaceConfig(dim=4)

    def test_names_match_dim(self):
        a = ActionSpaceConfig()
        self.assertEqual(len(a.NAMES), a.dim)


class TestToJs(unittest.TestCase):
    def test_carries_every_js_knob(self):
        cfg = MiniMilitiaConfig()
        cfg.env.frame_skip = 7
        cfg.env.game_speed = 3.0
        cfg.obs.max_enemies = 8
        cfg.obs.max_enemy_scan = 16
        cfg.action.shoot_threshold = 0.25

        js = cfg.to_js()
        self.assertEqual(js["frame_skip"], 7)
        self.assertEqual(js["game_speed"], 3.0)
        self.assertEqual(js["max_enemies"], 8)
        self.assertEqual(js["shoot_threshold"], 0.25)

    def test_is_json_serialisable(self):
        import json
        json.dumps(MiniMilitiaConfig().to_js())

    def test_hard_sync_defaults_off_and_round_trips(self):
        self.assertFalse(MiniMilitiaConfig().to_js()["hard_sync"])
        cfg = MiniMilitiaConfig()
        cfg.env.hard_sync = True
        self.assertTrue(cfg.to_js()["hard_sync"])


if __name__ == "__main__":
    unittest.main()

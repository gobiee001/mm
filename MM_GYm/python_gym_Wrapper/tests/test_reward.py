"""Reward engine: signs, scaling, and frame-skip invariance."""

import unittest

from python_gym_Wrapper.config import RewardConfig
from python_gym_Wrapper.reward import RewardCalculator

NO_EVENTS = {
    "damage_dealt": 0.0, "damage_taken": 0.0, "kills_credited": 0,
    "enemies_destroyed": 0, "shots_fired": 0, "player_deaths": 0,
}


def events(**kw):
    e = dict(NO_EVENTS)
    e.update(kw)
    return e


def acc(ticks=10, idle_ticks=0):
    return {"ticks": ticks, "idle_ticks": idle_ticks}


class TestSigns(unittest.TestCase):
    """The original formula subtracted already-negative weights, which turned
    the ammo and idle penalties into bonuses."""

    def setUp(self):
        self.cfg = RewardConfig()
        self.calc = RewardCalculator(self.cfg, frame_skip=10)

    def test_damage_is_positive(self):
        b = self.calc.compute(events(damage_dealt=50.0), acc())
        self.assertGreater(b.damage, 0.0)
        self.assertGreater(b.total, 0.0)

    def test_kill_is_positive(self):
        b = self.calc.compute(events(kills_credited=2), acc())
        self.assertAlmostEqual(b.kill, 2 * self.cfg.w_kill)
        self.assertGreater(b.total, 0.0)

    def test_idle_penalty_reduces_reward(self):
        b = self.calc.compute(events(), acc(idle_ticks=10))
        self.assertGreater(b.idle, 0.0)
        self.assertLess(b.total, 0.0)

    def test_shot_cost_reduces_reward(self):
        b = self.calc.compute(events(shots_fired=20), acc())
        self.assertGreater(b.shot_cost, 0.0)
        self.assertLess(b.total, 0.0)

    def test_damage_taken_reduces_reward(self):
        b = self.calc.compute(events(damage_taken=40.0), acc())
        self.assertLess(b.total, 0.0)

    def test_death_reduces_reward(self):
        b = self.calc.compute(events(player_deaths=1), acc())
        self.assertAlmostEqual(b.death, self.cfg.w_death)
        self.assertLess(b.total, 0.0)

    def test_breakdown_signs_match_total(self):
        b = self.calc.compute(
            events(damage_dealt=30.0, kills_credited=1, shots_fired=5,
                   damage_taken=10.0),
            acc(idle_ticks=2))
        d = b.as_dict()
        recomposed = sum(v for k, v in d.items()
                         if k not in ("total", "clipped"))
        self.assertAlmostEqual(recomposed, b.total, places=6)


class TestScaling(unittest.TestCase):
    def test_full_drone_of_damage_is_about_one(self):
        calc = RewardCalculator(RewardConfig(w_damage=1.0), frame_skip=10)
        b = calc.compute(events(damage_dealt=100.0), acc())
        self.assertAlmostEqual(b.damage, 1.0, places=6)

    def test_typical_step_stays_in_single_digits(self):
        """The original scale paid ~150 for one kill against a 0.5 idle
        penalty; PPO defaults expect roughly [-1, 1]."""
        calc = RewardCalculator(RewardConfig(w_damage=1.0, w_kill=1.0), frame_skip=10)
        b = calc.compute(events(damage_dealt=100.0, kills_credited=1,
                                shots_fired=10), acc())
        self.assertLess(abs(b.total), 5.0)

    def test_clip_is_applied(self):
        calc = RewardCalculator(RewardConfig(clip=1.0), frame_skip=10)
        b = calc.compute(events(kills_credited=100), acc())
        self.assertEqual(b.total, 1.0)
        self.assertTrue(b.clipped)

    def test_clip_none_disables(self):
        calc = RewardCalculator(RewardConfig(clip=None), frame_skip=10)
        b = calc.compute(events(kills_credited=100), acc())
        self.assertGreater(b.total, 10.0)
        self.assertFalse(b.clipped)


class TestFrameSkipInvariance(unittest.TestCase):
    """Summing a per-tick penalty over frame_skip ticks makes the reward
    function silently depend on frame_skip."""

    def test_all_idle_costs_the_same_at_any_frame_skip(self):
        cfg = RewardConfig(clip=None)
        r10 = RewardCalculator(cfg, 10).compute(events(), acc(10, 10)).idle
        r40 = RewardCalculator(cfg, 40).compute(events(), acc(40, 40)).idle
        self.assertAlmostEqual(r10, r40, places=9)

    def test_can_be_disabled(self):
        cfg = RewardConfig(normalize_penalties_by_frame_skip=False, clip=None)
        r10 = RewardCalculator(cfg, 10).compute(events(), acc(10, 10)).idle
        r40 = RewardCalculator(cfg, 40).compute(events(), acc(40, 40)).idle
        self.assertAlmostEqual(r40, 4 * r10, places=9)


class TestKillSourceFallback(unittest.TestCase):
    def test_falls_back_to_enemies_destroyed(self):
        """awardPoints may not fire on every build."""
        calc = RewardCalculator(RewardConfig(), frame_skip=10)
        b = calc.compute(events(kills_credited=0, enemies_destroyed=3), acc())
        self.assertAlmostEqual(b.kill, 3 * RewardConfig().w_kill)

    def test_prefers_credited_when_present(self):
        calc = RewardCalculator(RewardConfig(), frame_skip=10)
        b = calc.compute(events(kills_credited=1, enemies_destroyed=9), acc())
        self.assertAlmostEqual(b.kill, RewardConfig().w_kill)


class TestShotCostModes(unittest.TestCase):
    def test_unrewarded_mode_forgives_shots_that_landed(self):
        cfg = RewardConfig(shot_cost_mode="unrewarded")
        calc = RewardCalculator(cfg, 10)
        hit = calc.compute(events(shots_fired=10, damage_dealt=20.0), acc())
        miss = calc.compute(events(shots_fired=10, damage_dealt=0.0), acc())
        self.assertEqual(hit.shot_cost, 0.0)
        self.assertGreater(miss.shot_cost, 0.0)

    def test_flat_mode_charges_regardless(self):
        calc = RewardCalculator(RewardConfig(shot_cost_mode="flat"), 10)
        hit = calc.compute(events(shots_fired=10, damage_dealt=20.0), acc())
        self.assertGreater(hit.shot_cost, 0.0)


class TestRobustness(unittest.TestCase):
    def test_negative_deltas_are_floored(self):
        """A counter going backwards must never pay out."""
        calc = RewardCalculator(RewardConfig(), 10)
        b = calc.compute(
            events(damage_dealt=-500.0, kills_credited=-3, shots_fired=-9),
            acc())
        self.assertEqual(b.damage, 0.0)
        self.assertEqual(b.kill, 0.0)
        self.assertEqual(b.shot_cost, 0.0)

    def test_missing_keys_are_tolerated(self):
        calc = RewardCalculator(RewardConfig(), 10)
        b = calc.compute({}, {})
        self.assertEqual(b.total, 0.0)

    def test_none_values_are_tolerated(self):
        calc = RewardCalculator(RewardConfig(), 10)
        b = calc.compute({"damage_dealt": None, "shots_fired": None}, {"ticks": None})
        self.assertEqual(b.total, 0.0)


class TestEpisodeTotals(unittest.TestCase):
    def test_accumulate_and_reset(self):
        calc = RewardCalculator(RewardConfig(), 10)
        for _ in range(3):
            calc.compute(events(damage_dealt=10.0, kills_credited=1,
                                shots_fired=4), acc())
        t = calc.totals.as_dict()
        self.assertEqual(t["steps"], 3)
        self.assertEqual(t["kills"], 3)
        self.assertEqual(t["shots"], 12)
        self.assertAlmostEqual(t["damage_dealt"], 30.0)
        self.assertAlmostEqual(t["accuracy"], 30.0 / 12)

        calc.reset()
        self.assertEqual(calc.totals.as_dict()["steps"], 0)

    def test_accuracy_safe_with_no_shots(self):
        calc = RewardCalculator(RewardConfig(), 10)
        calc.compute(events(), acc())
        self.assertEqual(calc.totals.as_dict()["accuracy"], 0.0)


if __name__ == "__main__":
    unittest.main()

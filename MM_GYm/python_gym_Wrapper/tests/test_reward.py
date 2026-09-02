"""Reward engine: signs, scaling, and frame-skip invariance."""

import unittest

from python_gym_Wrapper.config import RewardConfig
from python_gym_Wrapper.rewards import (
    AimAlignmentComponent,
    RewardManager,
    RewardStats,
    default_components,
)

NO_EVENTS = {
    "damage_dealt": 0.0, "damage_taken": 0.0, "kills_credited": 0,
    "enemies_destroyed": 0, "shots_fired": 0, "player_deaths": 0,
}


def events(**kw):
    e = dict(NO_EVENTS)
    e.update(kw)
    return e


def acc(ticks=10, idle_ticks=0, no_shoot_ticks=0, engaged_ticks=0):
    return {
        "ticks": ticks,
        "idle_ticks": idle_ticks,
        "no_shoot_ticks": no_shoot_ticks,
        "engaged_ticks": engaged_ticks,
    }


def make_manager(cfg=None, frame_skip=10):
    cfg = cfg or RewardConfig()
    return RewardManager(default_components(cfg), frame_skip, cfg.clip)


def compute(mgr, ev, ac, raw_obs=None, action=(0.0, 0.0, 0.0, 0.0, 0.0)):
    return mgr.compute(ev, ac, raw_obs or {}, action)


class TestSigns(unittest.TestCase):
    """The original formula subtracted already-negative weights, which turned
    the ammo and idle penalties into bonuses."""

    def setUp(self):
        self.cfg = RewardConfig(clip=None)
        self.mgr = make_manager(self.cfg)

    def test_damage_is_positive(self):
        b = compute(self.mgr, events(damage_dealt=50.0), acc())
        self.assertGreater(b.parts["damage"], 0.0)
        self.assertGreater(b.total, 0.0)

    def test_kill_is_positive(self):
        b = compute(self.mgr, events(kills_credited=2), acc())
        self.assertAlmostEqual(b.parts["kill"], 2 * self.cfg.w_kill)
        self.assertGreater(b.total, 0.0)

    def test_idle_penalty_reduces_reward(self):
        b = compute(self.mgr, events(), acc(idle_ticks=10))
        self.assertLess(b.parts["idle"], 0.0)
        self.assertLess(b.total, 0.0)

    def test_not_shooting_penalty_when_engaged(self):
        b = compute(self.mgr, events(shots_fired=0), acc(no_shoot_ticks=10, engaged_ticks=10))
        self.assertLess(b.parts["not_shooting"], 0.0)
        self.assertAlmostEqual(b.parts["not_shooting"], -self.cfg.w_not_shooting)
        self.assertLess(b.total, 0.0)

    def test_shooting_even_if_missing_is_better_than_not_shooting(self):
        """Shooting and missing incurs mild shot_cost but avoids not_shooting penalty.
        Holding fire when engaged must incur a larger penalty to prevent pacifism."""
        not_shooting = compute(
            self.mgr,
            events(shots_fired=0, damage_dealt=0.0),
            acc(no_shoot_ticks=10, engaged_ticks=10),
        )
        shooting_miss = compute(
            self.mgr,
            events(shots_fired=10, damage_dealt=0.0),
            acc(no_shoot_ticks=0, engaged_ticks=10),
        )
        self.assertGreater(shooting_miss.total, not_shooting.total)

    def test_shot_cost_reduces_reward(self):
        b = compute(self.mgr, events(shots_fired=20), acc())
        self.assertLess(b.parts["shot_cost"], 0.0)
        self.assertLess(b.total, 0.0)

    def test_damage_taken_reduces_reward(self):
        b = compute(self.mgr, events(damage_taken=40.0), acc())
        self.assertLess(b.total, 0.0)

    def test_death_reduces_reward(self):
        b = compute(self.mgr, events(player_deaths=1), acc())
        self.assertAlmostEqual(b.parts["death"], -self.cfg.w_death)
        self.assertLess(b.total, 0.0)

    def test_breakdown_signs_match_total(self):
        b = compute(
            self.mgr,
            events(damage_dealt=30.0, kills_credited=1, shots_fired=5,
                   damage_taken=10.0),
            acc(idle_ticks=2, no_shoot_ticks=3))
        d = b.as_dict()
        recomposed = sum(v for k, v in d.items()
                         if k not in ("total", "clipped"))
        self.assertAlmostEqual(recomposed, b.total, places=6)


class TestScaling(unittest.TestCase):
    def test_full_drone_of_damage_is_about_one(self):
        mgr = make_manager(RewardConfig(w_damage=1.0))
        b = compute(mgr, events(damage_dealt=100.0), acc())
        self.assertAlmostEqual(b.parts["damage"], 1.0, places=6)

    def test_typical_step_stays_in_single_digits(self):
        """The original scale paid ~150 for one kill against a 0.5 idle
        penalty; PPO defaults expect roughly [-1, 1]."""
        mgr = make_manager(RewardConfig(w_damage=1.0, w_kill=1.0))
        b = compute(mgr, events(damage_dealt=100.0, kills_credited=1,
                                shots_fired=10), acc())
        self.assertLess(abs(b.total), 5.0)

    def test_clip_is_applied(self):
        mgr = make_manager(RewardConfig(clip=1.0))
        b = compute(mgr, events(kills_credited=100), acc())
        self.assertEqual(b.total, 1.0)
        self.assertTrue(b.clipped)

    def test_clip_none_disables(self):
        mgr = make_manager(RewardConfig(clip=None))
        b = compute(mgr, events(kills_credited=100), acc())
        self.assertGreater(b.total, 10.0)
        self.assertFalse(b.clipped)


class TestFrameSkipInvariance(unittest.TestCase):
    """Summing a per-tick penalty over frame_skip ticks makes the reward
    function silently depend on frame_skip."""

    def test_all_idle_costs_the_same_at_any_frame_skip(self):
        cfg = RewardConfig(clip=None)
        r10 = compute(make_manager(cfg, 10), events(), acc(10, 10)).parts["idle"]
        r40 = compute(make_manager(cfg, 40), events(), acc(40, 40)).parts["idle"]
        self.assertAlmostEqual(r10, r40, places=9)

    def test_not_shooting_costs_the_same_at_any_frame_skip(self):
        cfg = RewardConfig(clip=None)
        r10 = compute(make_manager(cfg, 10), events(), acc(10, no_shoot_ticks=10)).parts["not_shooting"]
        r40 = compute(make_manager(cfg, 40), events(), acc(40, no_shoot_ticks=40)).parts["not_shooting"]
        self.assertAlmostEqual(r10, r40, places=9)

    def test_can_be_disabled(self):
        cfg = RewardConfig(normalize_penalties_by_frame_skip=False, clip=None)
        r10 = compute(make_manager(cfg, 10), events(), acc(10, 10)).parts["idle"]
        r40 = compute(make_manager(cfg, 40), events(), acc(40, 40)).parts["idle"]
        self.assertAlmostEqual(r40, 4 * r10, places=9)


class TestKillSourceFallback(unittest.TestCase):
    def test_falls_back_to_enemies_destroyed(self):
        """awardPoints may not fire on every build."""
        mgr = make_manager(RewardConfig())
        b = compute(mgr, events(kills_credited=0, enemies_destroyed=3), acc())
        self.assertAlmostEqual(b.parts["kill"], 3 * RewardConfig().w_kill)

    def test_prefers_credited_when_present(self):
        mgr = make_manager(RewardConfig())
        b = compute(mgr, events(kills_credited=1, enemies_destroyed=9), acc())
        self.assertAlmostEqual(b.parts["kill"], RewardConfig().w_kill)


class TestShotCostModes(unittest.TestCase):
    def test_unrewarded_mode_forgives_shots_that_landed(self):
        cfg = RewardConfig(shot_cost_mode="unrewarded")
        mgr = make_manager(cfg)
        hit = compute(mgr, events(shots_fired=10, damage_dealt=20.0), acc())
        miss = compute(mgr, events(shots_fired=10, damage_dealt=0.0), acc())
        self.assertEqual(hit.parts["shot_cost"], 0.0)
        self.assertLess(miss.parts["shot_cost"], 0.0)

    def test_flat_mode_charges_regardless(self):
        mgr = make_manager(RewardConfig(shot_cost_mode="flat"))
        hit = compute(mgr, events(shots_fired=10, damage_dealt=20.0), acc())
        self.assertLess(hit.parts["shot_cost"], 0.0)


class TestRobustness(unittest.TestCase):
    def test_negative_deltas_are_floored(self):
        """A counter going backwards must never pay out."""
        mgr = make_manager(RewardConfig())
        b = compute(
            mgr, events(damage_dealt=-500.0, kills_credited=-3, shots_fired=-9),
            acc())
        self.assertEqual(b.parts["damage"], 0.0)
        self.assertEqual(b.parts["kill"], 0.0)
        self.assertEqual(b.parts["shot_cost"], 0.0)

    def test_missing_keys_are_tolerated(self):
        mgr = make_manager(RewardConfig())
        b = compute(mgr, {}, {})
        self.assertEqual(b.total, 0.0)

    def test_none_values_are_tolerated(self):
        mgr = make_manager(RewardConfig())
        b = compute(mgr, {"damage_dealt": None, "shots_fired": None}, {"ticks": None})
        self.assertEqual(b.total, 0.0)


class TestEpisodeTotals(unittest.TestCase):
    def test_accumulate_and_reset(self):
        mgr = make_manager(RewardConfig())
        for _ in range(3):
            compute(mgr, events(damage_dealt=10.0, kills_credited=1,
                                shots_fired=4), acc(no_shoot_ticks=2))
        t = mgr.episode_totals()
        self.assertEqual(t["steps"], 3)
        self.assertEqual(t["kills"], 3)
        self.assertEqual(t["shots"], 12)
        self.assertEqual(t["no_shoot_ticks"], 6)
        self.assertAlmostEqual(t["damage_dealt"], 30.0)
        self.assertAlmostEqual(t["accuracy"], 30.0 / 12)

        mgr.reset()
        self.assertEqual(mgr.episode_totals()["steps"], 0)
        self.assertEqual(mgr.episode_totals()["no_shoot_ticks"], 0)

    def test_accuracy_safe_with_no_shots(self):
        mgr = make_manager(RewardConfig())
        compute(mgr, events(), acc())
        self.assertEqual(mgr.episode_totals()["accuracy"], 0.0)


class TestAimAlignmentComponent(unittest.TestCase):
    """Potential-based shaping: only the *improvement* in alignment pays out,
    never the absolute alignment."""

    PLAYER = {"x": 0.0, "y": 0.0, "valid": True}
    ENEMY_EAST = {"x": 100.0, "y": 0.0}  # direction to enemy: (1, 0), i.e. 0 deg

    def make_stats(self, aim_x, aim_y, has_enemy=True):
        raw_obs = {
            "player": self.PLAYER,
            "enemies": [self.ENEMY_EAST] if has_enemy else [],
        }
        return RewardStats(events=events(), acc=acc(), raw_obs=raw_obs,
                            action=(0.0, 0.0, aim_x, aim_y, 0.0), frame_skip=10)

    def test_first_reading_has_no_reward(self):
        comp = AimAlignmentComponent(weight=1.0)
        v = comp.calculate(self.make_stats(0.0, 1.0))  # aiming north, 90 deg off
        self.assertEqual(v, 0.0)

    def test_improving_alignment_is_rewarded(self):
        comp = AimAlignmentComponent(weight=1.0)
        comp.calculate(self.make_stats(0.0, 1.0))       # baseline: 90 deg error
        v = comp.calculate(self.make_stats(1.0, 0.0))    # now: 0 deg error (perfect)
        self.assertGreater(v, 0.0)

    def test_worsening_alignment_is_penalized(self):
        comp = AimAlignmentComponent(weight=1.0)
        comp.calculate(self.make_stats(1.0, 0.0))        # baseline: perfect
        v = comp.calculate(self.make_stats(0.0, 1.0))    # now: 90 deg off
        self.assertLess(v, 0.0)

    def test_no_target_resets_baseline(self):
        comp = AimAlignmentComponent(weight=1.0)
        comp.calculate(self.make_stats(1.0, 0.0))                    # baseline: perfect
        comp.calculate(self.make_stats(0.0, 0.0, has_enemy=False))   # enemy gone
        v = comp.calculate(self.make_stats(1.0, 0.0))                # enemy back, perfect again
        self.assertEqual(v, 0.0)  # no spurious jump across the gap

    def test_reset_clears_state(self):
        comp = AimAlignmentComponent(weight=1.0)
        comp.calculate(self.make_stats(0.0, 1.0))
        comp.reset()
        v = comp.calculate(self.make_stats(1.0, 0.0))
        self.assertEqual(v, 0.0)


if __name__ == "__main__":
    unittest.main()

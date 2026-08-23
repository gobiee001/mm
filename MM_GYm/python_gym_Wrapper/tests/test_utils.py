"""Observation encoding: layout, padding, ordering, normalisation."""

import math
import unittest

import numpy as np

from python_gym_Wrapper.config import ObservationConfig
from python_gym_Wrapper.utils import (
    NORM_BOUND,
    ObservationEncoder,
    aim_error_degrees,
    angle_between,
    distance,
    safe_float,
    unit_vector,
)


def raw(px=0.0, py=0.0, enemies=None, hp=100.0, ammo=50, reloading=False):
    return {
        "player": {"x": px, "y": py, "vx": 0.0, "vy": 0.0, "hp": hp,
                   "power": 10.0, "reloading": reloading, "ammo": ammo,
                   "valid": True},
        "enemies": enemies or [],
        "enemy_count": len(enemies or []),
    }


def enemy(x, y, hp=100.0, etype=0, dist=None, vx=0.0, vy=0.0):
    return {"id": 1, "type": etype, "hp": hp, "x": x, "y": y, "vx": vx,
            "vy": vy, "aim": 0.0,
            "dist": math.hypot(x, y) if dist is None else dist,
            "synth_id": False}


class TestLayout(unittest.TestCase):
    def test_size_matches_config(self):
        cfg = ObservationConfig(max_enemies=5)
        enc = ObservationEncoder(cfg)
        v = enc.encode(raw())
        self.assertEqual(v.shape, (cfg.flat_size,))
        self.assertEqual(v.dtype, np.float32)

    def test_labels_align_with_vector(self):
        enc = ObservationEncoder(ObservationConfig(max_enemies=3))
        self.assertEqual(len(enc.labels()), enc.size)

    def test_absent_slots_are_zero_with_present_flag_clear(self):
        cfg = ObservationConfig(max_enemies=4)
        enc = ObservationEncoder(cfg)
        v = enc.encode(raw(enemies=[enemy(100.0, 0.0)]))
        labels = enc.labels()
        self.assertEqual(v[labels.index("e0_present")], 1.0)
        for i in range(1, 4):
            self.assertEqual(v[labels.index(f"e{i}_present")], 0.0)
            self.assertEqual(v[labels.index(f"e{i}_hp")], 0.0)

    def test_more_enemies_than_slots_are_truncated(self):
        cfg = ObservationConfig(max_enemies=2)
        enc = ObservationEncoder(cfg)
        v = enc.encode(raw(enemies=[enemy(10.0, 0.0), enemy(20.0, 0.0),
                                    enemy(30.0, 0.0)]))
        self.assertEqual(v.shape, (cfg.flat_size,))


class TestRelativeCoordinates(unittest.TestCase):
    def test_enemy_position_is_player_relative(self):
        cfg = ObservationConfig(max_enemies=1, relative_enemy_coords=True,
                                normalize=False)
        enc = ObservationEncoder(cfg)
        labels = enc.labels()
        v = enc.encode(raw(px=500.0, py=-200.0,
                           enemies=[enemy(700.0, -100.0)]))
        self.assertAlmostEqual(v[labels.index("e0_dx")], 200.0, places=3)
        self.assertAlmostEqual(v[labels.index("e0_dy")], 100.0, places=3)

    def test_translation_invariance(self):
        """Same relative geometry must encode identically anywhere on the map."""
        cfg = ObservationConfig(max_enemies=1, relative_enemy_coords=True,
                                normalize=False)
        enc = ObservationEncoder(cfg)
        labels = enc.labels()
        i0, i1 = labels.index("e0_dx"), labels.index("e0_dy")

        a = enc.encode_copy(raw(px=0.0, py=0.0, enemies=[enemy(50.0, 50.0)]))
        b = enc.encode_copy(raw(px=900.0, py=900.0, enemies=[enemy(950.0, 950.0)]))
        self.assertAlmostEqual(a[i0], b[i0], places=3)
        self.assertAlmostEqual(a[i1], b[i1], places=3)

    def test_absolute_mode(self):
        cfg = ObservationConfig(max_enemies=1, relative_enemy_coords=False,
                                normalize=False)
        enc = ObservationEncoder(cfg)
        labels = enc.labels()
        v = enc.encode(raw(px=500.0, enemies=[enemy(700.0, 0.0)]))
        self.assertAlmostEqual(v[labels.index("e0_dx")], 700.0, places=3)


class TestNormalisation(unittest.TestCase):
    def test_stays_inside_declared_bounds(self):
        cfg = ObservationConfig(max_enemies=3, normalize=True)
        enc = ObservationEncoder(cfg)
        lo, hi = enc.bounds()
        v = enc.encode(raw(px=1e9, py=-1e9,
                           enemies=[enemy(1e9, 1e9, hp=1e6)]))
        self.assertTrue(np.all(v >= lo))
        self.assertTrue(np.all(v <= hi))
        self.assertTrue(np.all(np.abs(v) <= NORM_BOUND))

    def test_nan_and_inf_are_scrubbed(self):
        cfg = ObservationConfig(max_enemies=1, normalize=False)
        enc = ObservationEncoder(cfg)
        v = enc.encode(raw(px=float("nan"),
                           enemies=[enemy(float("inf"), 0.0)]))
        self.assertTrue(np.all(np.isfinite(v)))

    def test_type_onehot(self):
        cfg = ObservationConfig(max_enemies=1, n_enemy_types=3)
        enc = ObservationEncoder(cfg)
        labels = enc.labels()
        v = enc.encode(raw(enemies=[enemy(10.0, 0.0, etype=2)]))
        self.assertEqual(v[labels.index("e0_type0")], 0.0)
        self.assertEqual(v[labels.index("e0_type1")], 0.0)
        self.assertEqual(v[labels.index("e0_type2")], 1.0)

    def test_out_of_range_type_sets_no_bit(self):
        cfg = ObservationConfig(max_enemies=1, n_enemy_types=3)
        enc = ObservationEncoder(cfg)
        labels = enc.labels()
        v = enc.encode(raw(enemies=[enemy(10.0, 0.0, etype=99)]))
        for t in range(3):
            self.assertEqual(v[labels.index(f"e0_type{t}")], 0.0)


class TestBufferReuse(unittest.TestCase):
    def test_encode_reuses_the_buffer(self):
        enc = ObservationEncoder(ObservationConfig())
        self.assertIs(enc.encode(raw()), enc.encode(raw()))

    def test_encode_copy_does_not(self):
        enc = ObservationEncoder(ObservationConfig())
        a = enc.encode_copy(raw(px=1.0))
        b = enc.encode_copy(raw(px=2.0))
        self.assertIsNot(a, b)
        self.assertNotEqual(a[0], b[0])

    def test_stale_slots_cleared_between_encodes(self):
        cfg = ObservationConfig(max_enemies=2)
        enc = ObservationEncoder(cfg)
        labels = enc.labels()
        enc.encode(raw(enemies=[enemy(10.0, 0.0), enemy(20.0, 0.0)]))
        v = enc.encode(raw(enemies=[enemy(10.0, 0.0)]))
        self.assertEqual(v[labels.index("e1_present")], 0.0)


class TestVectorHelpers(unittest.TestCase):
    def test_distance(self):
        self.assertAlmostEqual(distance(0, 0, 3, 4), 5.0)

    def test_angle_between_is_unsigned(self):
        self.assertAlmostEqual(angle_between(0, 0, 1, 0), 0.0)
        self.assertAlmostEqual(angle_between(0, 0, 0, 1), 90.0)
        self.assertAlmostEqual(angle_between(0, 0, 0, -1), 270.0)

    def test_unit_vector_handles_zero(self):
        self.assertEqual(unit_vector(0.0, 0.0), (0.0, 0.0))
        x, y = unit_vector(3.0, 4.0)
        self.assertAlmostEqual(math.hypot(x, y), 1.0)

    def test_aim_error_wraps_correctly(self):
        self.assertAlmostEqual(aim_error_degrees((1.0, 0.0), 0, 0, 10, 0), 0.0)
        self.assertAlmostEqual(aim_error_degrees((-1.0, 0.0), 0, 0, 10, 0), 180.0)
        self.assertAlmostEqual(aim_error_degrees((0.0, 1.0), 0, 0, 10, 0), 90.0)

    def test_aim_error_zero_vector_is_worst_case(self):
        self.assertEqual(aim_error_degrees((0.0, 0.0), 0, 0, 10, 0), 180.0)

    def test_safe_float(self):
        self.assertEqual(safe_float(None), 0.0)
        self.assertEqual(safe_float("x", 1.5), 1.5)
        self.assertEqual(safe_float(float("nan")), 0.0)
        self.assertEqual(safe_float(3), 3.0)


if __name__ == "__main__":
    unittest.main()

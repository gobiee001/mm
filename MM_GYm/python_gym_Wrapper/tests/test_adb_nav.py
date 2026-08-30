"""Unit tests for ADB resolution detection, aspect ratio fitting, and viewport coordinates."""

import unittest
from python_gym_Wrapper.frida_bridge import (
    calc_adb_tap_coordinates,
    get_adb_resolution,
    get_aspect_ratio,
)


class TestAdbNav(unittest.TestCase):
    def test_get_aspect_ratio(self):
        self.assertEqual(get_aspect_ratio(200, 100), (2, 1))
        self.assertEqual(get_aspect_ratio(1920, 1080), (16, 9))
        self.assertEqual(get_aspect_ratio(1280, 720), (16, 9))
        self.assertEqual(get_aspect_ratio(800, 600), (4, 3))
        self.assertEqual(get_aspect_ratio(1080, 1080), (1, 1))

    def test_get_adb_resolution_override(self):
        def mock_adb(*args):
            return "Physical size: 1920x1080\nOverride size: 200x100\n"

        w, h = get_adb_resolution(mock_adb)
        self.assertEqual(w, 200)
        self.assertEqual(h, 100)

    def test_get_adb_resolution_physical(self):
        def mock_adb(*args):
            return "Physical size: 1280x720\n"

        w, h = get_adb_resolution(mock_adb)
        self.assertEqual(w, 1280)
        self.assertEqual(h, 720)

    def test_get_adb_resolution_invalid_raises(self):
        def mock_adb(*args):
            return "error: device not found\n"

        with self.assertRaises(RuntimeError):
            get_adb_resolution(mock_adb)

    def test_calc_adb_tap_coordinates_exact_aspect(self):
        # 200x100 display with 2.0 game aspect
        adb_x1, adb_y1 = calc_adb_tap_coordinates(0.50, 0.65, 200, 100, game_aspect=2.0)
        self.assertEqual((adb_x1, adb_y1), (100, 65))

        adb_x2, adb_y2 = calc_adb_tap_coordinates(0.50, 0.46, 200, 100, game_aspect=2.0)
        self.assertEqual((adb_x2, adb_y2), (100, 46))

    def test_calc_adb_tap_coordinates_wider_screen(self):
        # 1920x720 display (aspect 2.6667 > 2.0)
        # game_height = 720, game_width = 1440, offset_x = (1920 - 1440) / 2 = 240, offset_y = 0
        adb_x, adb_y = calc_adb_tap_coordinates(0.50, 0.50, 1920, 720, game_aspect=2.0)
        self.assertEqual((adb_x, adb_y), (960, 360))

    def test_calc_adb_tap_coordinates_taller_screen(self):
        # 1000x1000 display (aspect 1.0 < 2.0)
        # game_width = 1000, game_height = 500, offset_x = 0, offset_y = (1000 - 500) / 2 = 250
        adb_x, adb_y = calc_adb_tap_coordinates(0.50, 0.50, 1000, 1000, game_aspect=2.0)
        self.assertEqual((adb_x, adb_y), (500, 500))


if __name__ == "__main__":
    unittest.main()

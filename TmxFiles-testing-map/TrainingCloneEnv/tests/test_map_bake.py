"""Tests for map parsing, alpha mask extraction, and caching."""

from pathlib import Path
import unittest
import numpy as np
from mmclone.mapdata import bake_or_load_map, parse_tmx


class TestMapBake(unittest.TestCase):
    def setUp(self):
        self.map_dir = Path(__file__).resolve().parent.parent.parent / "sd"

    def test_parse_tmx_survival(self):
        tmx_path = self.map_dir / "survival_new.tmx"
        w, h, tw, th, gids, objs, tsx = parse_tmx(tmx_path)
        self.assertEqual(w, 52)
        self.assertEqual(h, 18)
        self.assertEqual(tw, 64)
        self.assertEqual(th, 64)
        self.assertEqual(gids.shape, (18, 52))
        self.assertEqual(len(objs.player_spawns), 1)
        self.assertEqual(objs.player_spawns[0], (1600.0, 14.0))

    def test_bake_survival_new(self):
        geom = bake_or_load_map("survival_new", self.map_dir)
        self.assertEqual(geom.grid_w, 3328)
        self.assertEqual(geom.grid_h, 1152)
        self.assertEqual(len(geom.occ), 3328 * 1152)
        self.assertEqual(geom.top_solid.shape, (3328,))
        # Check collision query
        self.assertFalse(geom.is_point_solid(0, 0))  # Top-left sky is empty

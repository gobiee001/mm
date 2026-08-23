"""JS bundling and config injection.

Frida has no module loader, so the ``js/`` modules are concatenated into one
script. These tests guard the two things that silently break at runtime: a
stray ``import``/``export`` keyword surviving into the bundle, and the config
failing to reach ``__PY_CONFIG__``.
"""

import json
import os
import re
import unittest

from python_gym_Wrapper.config import DEFAULT_JS_DIR, MiniMilitiaConfig
from python_gym_Wrapper.frida_bridge import JS_MODULES, BridgeError, bundle_js


class TestBundle(unittest.TestCase):
    def setUp(self):
        self.cfg = MiniMilitiaConfig()
        self.src = bundle_js(DEFAULT_JS_DIR, self.cfg.to_js())

    def test_all_modules_exist(self):
        for name in JS_MODULES:
            self.assertTrue(os.path.isfile(os.path.join(DEFAULT_JS_DIR, name)), name)

    def test_all_modules_included_in_order(self):
        positions = [self.src.index(f"// ==== {n} ====") for n in JS_MODULES]
        self.assertEqual(positions, sorted(positions),
                         "modules must be emitted in dependency order")

    def test_each_module_emitted_once(self):
        for name in JS_MODULES:
            self.assertEqual(self.src.count(f"// ==== {name} ===="), 1, name)

    def test_no_import_statements_survive(self):
        leftovers = re.findall(r"^[ \t]*import\s+.*$", self.src, re.MULTILINE)
        self.assertEqual(leftovers, [])

    def test_no_export_keywords_survive(self):
        leftovers = re.findall(r"^[ \t]*export\s+.*$", self.src, re.MULTILINE)
        self.assertEqual(leftovers, [])

    def test_config_is_injected(self):
        self.assertIn("const __PY_CONFIG__ =", self.src)
        payload = self.src.split("const __PY_CONFIG__ = ", 1)[1].split(";\n", 1)[0]
        parsed = json.loads(payload)
        self.assertEqual(parsed["frame_skip"], self.cfg.env.frame_skip)
        self.assertEqual(parsed["max_enemies"], self.cfg.obs.max_enemies)

    def test_injected_config_precedes_modules(self):
        self.assertLess(self.src.index("const __PY_CONFIG__"),
                        self.src.index("// ==== gym_config.js ===="))

    def test_config_changes_reach_the_bundle(self):
        cfg = MiniMilitiaConfig()
        cfg.env.frame_skip = 33
        cfg.env.game_speed = 4.5
        src = bundle_js(DEFAULT_JS_DIR, cfg.to_js())
        self.assertIn('"frame_skip": 33', src)
        self.assertIn('"game_speed": 4.5', src)

    def test_rpc_surface_present(self):
        for name in ("ping", "info", "step", "reset", "peek", "stats", "setConfig"):
            self.assertRegex(self.src, rf"\b{name}\s*\(")

    def test_bundle_without_config(self):
        src = bundle_js(DEFAULT_JS_DIR, None)
        self.assertNotIn("__PY_CONFIG__ =", src)

    def test_missing_module_raises(self):
        with self.assertRaises(BridgeError):
            bundle_js(DEFAULT_JS_DIR, None, modules=["does_not_exist.js"])

    def test_balanced_braces(self):
        """Cheap smoke check that stripping did not eat a block."""
        stripped = re.sub(r"//[^\n]*", "", self.src)
        stripped = re.sub(r"/\*.*?\*/", "", stripped, flags=re.S)
        stripped = re.sub(r"'(?:\\.|[^'\\])*'", "''", stripped)
        stripped = re.sub(r'"(?:\\.|[^"\\])*"', '""', stripped)
        stripped = re.sub(r"`(?:\\.|[^`\\])*`", "``", stripped)
        self.assertEqual(stripped.count("{"), stripped.count("}"))
        self.assertEqual(stripped.count("("), stripped.count(")"))


class TestSymbolCoverage(unittest.TestCase):
    """The event-driven reward depends on these symbols being referenced."""

    def setUp(self):
        self.src = bundle_js(DEFAULT_JS_DIR, None)

    def test_damage_hooks_present(self):
        for sym in ("_ZN9HawkDrone9addDamageEiSsi",
                    "_ZN13HumanoidDrone9addDamageEiSsi",
                    "_ZN9WormDrone9addDamageEiSsi"):
            self.assertIn(sym, self.src)

    def test_kill_hooks_present(self):
        self.assertIn("_ZN12EnemyManager11awardPointsEP5Enemyi", self.src)
        self.assertIn("_ZN12EnemyManager16onEnemyDestroyedEPN7cocos2d8CCObjectE",
                      self.src)

    def test_shot_hook_present(self):
        self.assertIn("_ZN21SoldierHostController13weaponDidFireEP4Item", self.src)

    def test_reset_primitives_present(self):
        self.assertIn("_ZN21SoldierHostController10killPlayerEv", self.src)
        self.assertIn("_ZN12EnemyManager14killAllEnemiesEv", self.src)

    def test_player_hp_present(self):
        self.assertIn("_ZN21SoldierHostController5getHPEv", self.src)

    def test_tick_source_present(self):
        self.assertIn("_ZN14PhysicsManager10updateStepEf", self.src)

    def test_no_legacy_zero_to_one_remap(self):
        """The legacy mapRange collapsed the negative half of the action box."""
        self.assertNotIn("(clamped * 2.0) - 1.0", self.src)


if __name__ == "__main__":
    unittest.main()

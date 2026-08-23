"""Executes the bundled JS agent under stubbed Frida globals via Node.

The RPC + promise frame-skip, the event hooks and the action mapping are the
riskiest parts of the rewrite and cannot otherwise be exercised without a
device. ``js_harness.js`` fakes enough of the Frida runtime to drive them.

Skipped when Node is unavailable.
"""

import os
import shutil
import subprocess
import tempfile
import unittest

from python_gym_Wrapper.config import DEFAULT_JS_DIR, MiniMilitiaConfig
from python_gym_Wrapper.frida_bridge import bundle_js

HARNESS = os.path.join(os.path.dirname(os.path.abspath(__file__)), "js_harness.js")
NODE = shutil.which("node")


@unittest.skipIf(NODE is None, "node is not installed")
class TestJsAgent(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls._dir = tempfile.mkdtemp(prefix="mm-gym-js-")
        cls._bundle = os.path.join(cls._dir, "bundle.js")
        with open(cls._bundle, "w", encoding="utf-8") as fh:
            fh.write(bundle_js(DEFAULT_JS_DIR, MiniMilitiaConfig().to_js()))

    @classmethod
    def tearDownClass(cls):
        shutil.rmtree(cls._dir, ignore_errors=True)

    def test_bundle_parses(self):
        r = subprocess.run([NODE, "--check", self._bundle],
                           capture_output=True, text=True, timeout=60)
        self.assertEqual(r.returncode, 0, r.stderr)

    def test_agent_behaviour(self):
        r = subprocess.run([NODE, HARNESS, self._bundle],
                           capture_output=True, text=True, timeout=180)
        if r.returncode != 0:
            self.fail("JS harness failed:\n" + r.stdout + "\n" + r.stderr)
        self.assertIn("0 failed", r.stdout)


@unittest.skipIf(NODE is None, "node is not installed")
class TestJsAgentHardSync(unittest.TestCase):
    """Same harness, against a bundle with hard_sync enabled - exercises
    js/gym_sync.js's freeze/release/game_speed-no-op assertions in
    js_harness.js, which only activate when the bundle they're run against
    was built with hard_sync: true."""

    @classmethod
    def setUpClass(cls):
        cfg = MiniMilitiaConfig()
        cfg.env.hard_sync = True
        cls._dir = tempfile.mkdtemp(prefix="mm-gym-js-hardsync-")
        cls._bundle = os.path.join(cls._dir, "bundle.js")
        with open(cls._bundle, "w", encoding="utf-8") as fh:
            fh.write(bundle_js(DEFAULT_JS_DIR, cfg.to_js()))

    @classmethod
    def tearDownClass(cls):
        shutil.rmtree(cls._dir, ignore_errors=True)

    def test_bundle_parses(self):
        r = subprocess.run([NODE, "--check", self._bundle],
                           capture_output=True, text=True, timeout=60)
        self.assertEqual(r.returncode, 0, r.stderr)

    def test_agent_behaviour(self):
        r = subprocess.run([NODE, HARNESS, self._bundle],
                           capture_output=True, text=True, timeout=180)
        if r.returncode != 0:
            self.fail("JS harness failed:\n" + r.stdout + "\n" + r.stderr)
        self.assertIn("0 failed", r.stdout)


if __name__ == "__main__":
    unittest.main()

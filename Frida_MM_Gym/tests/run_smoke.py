#!/usr/bin/env python3
"""Offline test runner. No device, no game, no adb required.

Three stages:

1. Bundle the agent and assert the module graph is deduped and acyclic.
2. ``node --check`` the bundle, so a syntax or duplicate-declaration error is
   caught here rather than as a load failure on-device.
3. Execute the bundle against a mocked Frida API and a fake game
   (``tests/agent_smoke.js``), asserting actuator effects, the cpVect ABI probe,
   the reload edge, the enemy sweep, env toggles, and the payload shape.

Usage:
    python tests/run_smoke.py
    python tests/run_smoke.py --keep    # leave the bundle on disk for inspection
"""

from __future__ import annotations

import argparse
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sys.path.insert(0, str(ROOT))

from mm_gym import AGENT_ENTRY, GymConfig, bundle_with_order, make_prelude  # noqa: E402


def stage(msg: str) -> None:
    print(f"\n=== {msg} ===")


def build_bundle(out_path: Path) -> list[str]:
    stage("stage 1: bundle")

    code, order = bundle_with_order(str(AGENT_ENTRY))
    source = make_prelude(GymConfig().to_dict()) + code
    out_path.write_text(source, encoding="utf-8")

    names = [Path(p).name for p in order]
    print(f"[+] {len(order)} modules, {len(source)} bytes -> {out_path}")

    # Dedup: every module emitted exactly once.
    if len(set(order)) != len(order):
        dupes = {n for n in names if names.count(n) > 1}
        print(f"[-] duplicate module emissions: {sorted(dupes)}")
        sys.exit(1)
    print("[+] no duplicate module emissions")

    # main.js must come last, since it invokes main() at module scope.
    if names[-1] != "main.js":
        print(f"[-] main.js is not last in emission order (got {names[-1]})")
        sys.exit(1)
    print("[+] main.js emitted last")

    # No module syntax may survive into the flat script.
    leftovers = [
        (i + 1, ln)
        for i, ln in enumerate(source.splitlines())
        if ln.lstrip().startswith(("import ", "export "))
    ]
    if leftovers:
        print(f"[-] {len(leftovers)} leftover import/export line(s):")
        for lineno, ln in leftovers[:10]:
            print(f"      {lineno}: {ln.strip()}")
        sys.exit(1)
    print("[+] no leftover import/export statements")

    return names


def node_available() -> str | None:
    return shutil.which("node")


def check_syntax(node: str, bundle: Path) -> None:
    stage("stage 2: node --check")
    proc = subprocess.run([node, "--check", str(bundle)],
                          capture_output=True, text=True)
    if proc.returncode != 0:
        print("[-] bundle does not parse:")
        print(proc.stdout or "")
        print(proc.stderr or "")
        sys.exit(1)
    print("[+] bundle parses cleanly")


def run_agent_tests(node: str, bundle: Path) -> None:
    stage("stage 3: execute agent against mocked Frida")
    proc = subprocess.run([node, str(HERE / "agent_smoke.js"), str(bundle)],
                          capture_output=True, text=True)
    sys.stdout.write(proc.stdout)
    if proc.stderr.strip():
        sys.stderr.write(proc.stderr)
    if proc.returncode != 0:
        sys.exit(proc.returncode)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--keep", action="store_true",
                    help="keep the generated bundle instead of using a temp file")
    args = ap.parse_args()

    out = (ROOT / "bundle.debug.js") if args.keep else Path(
        tempfile.mkdtemp(prefix="mm_gym_")
    ) / "bundle.js"

    build_bundle(out)

    node = node_available()
    if node is None:
        print("\n[!] node not found on PATH -- stages 2 and 3 skipped.")
        print("    Stage 1 (bundling/dedup) passed. Install Node to run the rest.")
        return 0

    check_syntax(node, out)
    run_agent_tests(node, out)

    if args.keep:
        print(f"\n[*] bundle kept at {out}")
    print("\n=== all offline stages passed ===")
    return 0


if __name__ == "__main__":
    sys.exit(main())

#!/usr/bin/env python3
"""Frida_MM_Gym CLI.

Examples:
    python run_gym.py --interval 10 --console
    python run_gym.py --interval 1 --out obs.jsonl --block-sarge --block-audio
    python run_gym.py --headless --fast-forward 3.0 --fps-monitor --out train.jsonl
    python run_gym.py --dump-bundle bundle.js        # offline, no device needed

Requires `adb forward tcp:27042 tcp:27042` and the gadget APK running.
"""

from __future__ import annotations

import argparse
import json
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from mm_gym import (  # noqa: E402
    ConsoleSink,
    GymConfig,
    GymSession,
    JsonlSink,
    MultiSink,
    QueueSink,
    bundle_with_order,
    validate,
)

HERE = Path(__file__).resolve().parent
DEFAULT_CONFIG = HERE / "config.json"


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        prog="run_gym.py",
        description="Actuation + observation for com.appsomniacs.da2 via frida-gadget.",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )

    p.add_argument("--config", default=str(DEFAULT_CONFIG),
                   help="JSON config file; CLI flags override it")
    p.add_argument("--interval", type=int, default=None, metavar="N",
                   help="emit an observation every N enemy frames")
    p.add_argument("--no-emit", action="store_true",
                   help="install hooks and actuators but send no observations")
    p.add_argument("--no-screen-coords", action="store_true",
                   help="skip CCNode::convertToWorldSpace screen positions")
    p.add_argument("--vec-abi", default=None,
                   choices=["auto", "struct", "sret", "packed", "finite_diff"],
                   help="pin the cpVect return ABI instead of probing")
    p.add_argument("--log-level", default=None, choices=["quiet", "info", "debug"])

    # -- output ------------------------------------------------------------
    out = p.add_argument_group("output")
    out.add_argument("--out", default=None, metavar="PATH",
                     help="append observations to this .jsonl file")
    out.add_argument("--console", action="store_true",
                     help="print one compact line per observation")
    out.add_argument("--console-every", type=int, default=1, metavar="K",
                     help="with --console, print every Kth observation")
    out.add_argument("--duration", type=float, default=None, metavar="SEC",
                     help="stop after this many seconds")
    out.add_argument("--max-obs", type=int, default=None, metavar="N",
                     help="stop after N observations")
    out.add_argument("--validate", action="store_true",
                     help="run schema validation on the first observation")

    # -- actuators ---------------------------------------------------------
    act = p.add_argument_group("actuators (all on by default)")
    act.add_argument("--no-health", action="store_true", help="do not lock HP")
    act.add_argument("--no-power", action="store_true", help="do not lock boost")
    act.add_argument("--no-ammo", action="store_true", help="do not force infinite ammo")
    act.add_argument("--no-loadout", action="store_true", help="do not force the weapon")
    act.add_argument("--hp", type=int, default=None, help="HP value to lock")
    act.add_argument("--power", type=float, default=None, help="boost value to lock")
    act.add_argument("--weapon-type", type=int, default=None,
                     help="ItemType to equip (5 = UZI)")
    act.add_argument("--keep-other-slots", action="store_true",
                     help="do not strip secondary/dual/side weapons")

    # -- environment -------------------------------------------------------
    env = p.add_argument_group("environment (all off by default)")
    env.add_argument("--fast-forward", type=float, default=None, metavar="SCALE",
                     help="run the game at SCALE speed (e.g. 3.0)")
    env.add_argument("--fps-unlock", action="store_true", help="disable vsync")
    env.add_argument("--fps-monitor", action="store_true", help="report measured FPS")
    env.add_argument("--stop-rendering", action="store_true", help="suppress rendering")
    env.add_argument("--no-stats-overlay", action="store_true",
                     help="with --stop-rendering, skip the debug-stats byte")
    env.add_argument("--block-audio", action="store_true", help="silence all audio")
    env.add_argument("--block-sarge", action="store_true", help="stub SurvivalStage::updateSarge")
    env.add_argument("--headless", action="store_true",
                     help="alias for --stop-rendering --block-audio --fps-unlock")

    # -- offline -----------------------------------------------------------
    off = p.add_argument_group("offline")
    off.add_argument("--dump-bundle", default=None, metavar="PATH",
                     help="write the bundled agent and exit (no device needed)")
    off.add_argument("--print-config", action="store_true",
                     help="print the resolved agent config and exit")

    return p


def resolve_config(args: argparse.Namespace) -> GymConfig:
    cfg_path = Path(args.config)
    if cfg_path.is_file():
        cfg = GymConfig.from_json_file(cfg_path)
    else:
        if args.config != str(DEFAULT_CONFIG):
            print(f"[-] config not found: {cfg_path}", file=sys.stderr)
            sys.exit(2)
        cfg = GymConfig()

    # -- top level ---------------------------------------------------------
    if args.interval is not None:
        cfg.obs_interval_frames = args.interval
    if args.no_emit:
        cfg.emit = False
    if args.no_screen_coords:
        cfg.include_screen_coords = False
    if args.vec_abi is not None:
        cfg.vec_abi = args.vec_abi
    if args.log_level is not None:
        cfg.log_level = args.log_level

    # -- actuators ---------------------------------------------------------
    if args.no_health:
        cfg.actuators.health.enabled = False
    if args.no_power:
        cfg.actuators.power.enabled = False
    if args.no_ammo:
        cfg.actuators.ammo.enabled = False
    if args.no_loadout:
        cfg.actuators.loadout.enabled = False
    if args.hp is not None:
        cfg.actuators.health.value = args.hp
    if args.power is not None:
        cfg.actuators.power.value = args.power
    if args.weapon_type is not None:
        cfg.actuators.loadout.weapon_type = args.weapon_type
    if args.keep_other_slots:
        cfg.actuators.loadout.strip_other_slots = False

    # -- environment -------------------------------------------------------
    if args.headless:
        cfg.env.stop_rendering.enabled = True
        cfg.env.block_audio.enabled = True
        cfg.env.fps_unlock.enabled = True
    if args.fast_forward is not None:
        cfg.env.fast_forward.enabled = True
        cfg.env.fast_forward.time_scale = args.fast_forward
    if args.fps_unlock:
        cfg.env.fps_unlock.enabled = True
    if args.fps_monitor:
        cfg.env.fps_monitor.enabled = True
    if args.stop_rendering:
        cfg.env.stop_rendering.enabled = True
    if args.no_stats_overlay:
        cfg.env.stop_rendering.show_stats = False
    if args.block_audio:
        cfg.env.block_audio.enabled = True
    if args.block_sarge:
        cfg.env.block_sarge.enabled = True

    return cfg


def build_sink(args: argparse.Namespace) -> tuple[QueueSink, MultiSink]:
    """Always include a QueueSink so the main loop can drive termination."""
    q = QueueSink()
    parts: list = [q]
    if args.out:
        parts.append(JsonlSink(args.out))
    if args.console:
        parts.append(ConsoleSink(every=args.console_every))
    return q, MultiSink(*parts)


def main() -> int:
    args = build_parser().parse_args()
    cfg = resolve_config(args)

    if args.print_config:
        print(json.dumps(cfg.to_dict(), indent=2))
        return 0

    if args.dump_bundle:
        from mm_gym import AGENT_ENTRY, make_prelude

        code, order = bundle_with_order(str(AGENT_ENTRY))
        source = make_prelude(cfg.to_dict()) + code
        Path(args.dump_bundle).write_text(source, encoding="utf-8")
        print(f"[+] wrote {args.dump_bundle} ({len(source)} bytes, "
              f"{len(order)} modules)")
        for i, mod in enumerate(order, 1):
            print(f"    {i:2d}. {Path(mod).name}")
        return 0

    queue_sink, sink = build_sink(args)

    session = GymSession(cfg, sink=sink)
    try:
        session.start()
    except Exception as exc:  # noqa: BLE001
        print(f"[-] failed to start: {exc}", file=sys.stderr)
        print("    Is `adb forward tcp:27042 tcp:27042` active and the game running?",
              file=sys.stderr)
        return 1

    if not session.wait_ready(timeout=10.0):
        print("[!] agent did not report ready within 10s; continuing anyway",
              file=sys.stderr)

    if args.out:
        print(f"[*] writing observations to {args.out}")
    print("[*] running. Ctrl+C to stop.")

    started = time.time()
    validated = not args.validate

    try:
        while True:
            if args.duration is not None and (time.time() - started) >= args.duration:
                print(f"[*] duration {args.duration}s reached.")
                break
            if args.max_obs is not None and session.obs_count >= args.max_obs:
                print(f"[*] reached {args.max_obs} observations.")
                break

            obs = queue_sink.get(timeout=1.0)
            if obs is None:
                continue

            if not validated:
                validated = True
                problems = validate(obs)
                if problems:
                    print("[!] schema problems in first observation:", file=sys.stderr)
                    for p in problems:
                        print(f"      - {p}", file=sys.stderr)
                else:
                    print("[+] first observation passed schema validation.")
                diag = obs.get("diag") or {}
                print(f"[+] vec_abi={diag.get('vec_abi')} "
                      f"vel_source={diag.get('vel_source')} "
                      f"env={diag.get('env')}")

    except KeyboardInterrupt:
        print("\n[*] interrupted.")
    finally:
        elapsed = time.time() - started
        stats = session.stats()
        session.stop()
        rate = stats["observations"] / elapsed if elapsed > 0 else 0.0
        print(f"[*] {stats['observations']} observations in {elapsed:.1f}s "
              f"({rate:.1f}/s), errors={stats['errors']}, "
              f"seq_gaps={stats['seq_gaps']}, "
              f"sink_dropped={stats.get('sink_dropped', 0)}")

    return 0


if __name__ == "__main__":
    sys.exit(main())

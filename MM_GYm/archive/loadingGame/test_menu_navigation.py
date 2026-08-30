#!/usr/bin/env python3
"""
test_menu_navigation.py

Execution sequence per device:
1. Launch Mini Militia via ADB (targeted to specific device: adb -s <device>)
2. Tap screen to dismiss splash screen
3. Wait for menu
4. Detect Android display resolution for that device
5. Calculate display aspect ratio
6. Calculate the 2:1 game viewport
7. Click first highlighted button
8. Wait for menu transition
9. Click second highlighted button

Runs across ALL connected ADB devices concurrently in parallel threads.
"""

import os
import sys
import time
import subprocess
import re
import threading
from math import gcd
from typing import Optional, List

PACKAGE_NAME = "com.appsomniacs.da2"
HERE = os.path.dirname(os.path.abspath(__file__))
JS_PATH = os.path.join(HERE, "nav_hooks.js")

# Mini Militia game viewport aspect ratio.
# Working 200x100 setup is 2:1.
GAME_ASPECT = 2.0


# ============================================================
# ADB Device Discovery & Execution
# ============================================================

def get_adb_devices() -> List[str]:
    """Fetch list of all connected and authorized ADB device serials."""
    try:
        res = subprocess.run(
            ["adb", "devices"],
            capture_output=True,
            text=True,
            timeout=10.0
        )
        lines = res.stdout.strip().splitlines()
        devices = []
        for line in lines[1:]:
            parts = line.strip().split()
            if len(parts) >= 2 and parts[1] == "device":
                devices.append(parts[0])
        return devices
    except Exception as e:
        print(f"[ADB Error] Failed to list devices: {e}")
        return []


def run_adb_cmd(args: list[str], device: Optional[str] = None) -> subprocess.CompletedProcess:
    """Run an ADB command, targeting a specific device with -s if provided."""
    if device:
        full_cmd = ["adb", "-s", device] + args
        prefix = f"[ADB:{device}]"
    else:
        full_cmd = ["adb"] + args
        prefix = "[ADB]"

    print(f"{prefix} Running: {' '.join(full_cmd)}")

    result = subprocess.run(
        full_cmd,
        capture_output=True,
        text=True
    )

    if result.returncode != 0:
        print(
            f"{prefix} [Warning] Return code {result.returncode}: "
            f"{result.stderr.strip()}"
        )
    elif result.stdout.strip():
        print(f"{prefix} [Output] {result.stdout.strip()}")

    return result


# ============================================================
# Android display resolution
# ============================================================

def get_adb_resolution(device: Optional[str] = None) -> tuple[int, int]:
    """
    Get the effective Android display resolution for the target device.
    Uses Override size if configured, otherwise Physical size.
    """
    result = run_adb_cmd(
        ["shell", "wm", "size"],
        device=device
    )

    output = result.stdout

    # Example: Override size: 200x100
    match = re.search(r"Override size:\s*(\d+)x(\d+)", output)

    # Example: Physical size: 200x100
    if not match:
        match = re.search(r"Physical size:\s*(\d+)x(\d+)", output)

    if not match:
        raise RuntimeError(
            f"Could not determine Android resolution for device '{device}'.\n"
            f"ADB output:\n{output}"
        )

    width = int(match.group(1))
    height = int(match.group(2))

    return width, height


# ============================================================
# Aspect ratio
# ============================================================

def get_aspect_ratio(width: int, height: int) -> tuple[int, int]:
    """Reduce width:height to the smallest integer ratio."""
    divisor = gcd(width, height)
    return (width // divisor, height // divisor)


# ============================================================
# Game coordinate -> ADB coordinate
# ============================================================

def tap_game_normalized(
    x_ratio: float,
    y_ratio: float,
    device: Optional[str] = None,
    game_aspect: float = GAME_ASPECT
):
    """
    Convert a normalized coordinate inside the game's viewport
    into an actual Android/ADB coordinate on the target device.
    """
    screen_width, screen_height = get_adb_resolution(device=device)
    screen_aspect = screen_width / screen_height

    if screen_aspect > game_aspect:
        # Screen is wider than game: game fitted to height
        game_height = screen_height
        game_width = round(game_height * game_aspect)
        offset_x = (screen_width - game_width) / 2
        offset_y = 0
    elif screen_aspect < game_aspect:
        # Screen is taller/narrower than game: game fitted to width
        game_width = screen_width
        game_height = round(game_width / game_aspect)
        offset_x = 0
        offset_y = (screen_height - game_height) / 2
    else:
        game_width = screen_width
        game_height = screen_height
        offset_x = 0
        offset_y = 0

    game_x = x_ratio * game_width
    game_y = y_ratio * game_height

    adb_x = round(offset_x + game_x)
    adb_y = round(offset_y + game_y)

    dev_tag = f"[{device}] " if device else ""
    print(
        f"{dev_tag}Tap normalized ({x_ratio:.2f}, {y_ratio:.2f}) -> "
        f"ADB pixel ({adb_x}, {adb_y}) on {screen_width}x{screen_height}"
    )

    run_adb_cmd(
        ["shell", "input", "tap", str(adb_x), str(adb_y)],
        device=device
    )


# ============================================================
# Single Device Navigation Routine
# ============================================================

def navigate_device(device: str) -> None:
    """Execute the full startup and menu navigation on a single target device."""
    print(f"\n[{device}] === Starting Navigation Sequence ===")

    # Step 1: Start Mini Militia
    print(f"[{device}] [Step 1] Launching Mini Militia via ADB monkey...")
    run_adb_cmd(
        ["shell", "monkey", "-p", PACKAGE_NAME, "-c", "android.intent.category.LAUNCHER", "1"],
        device=device
    )
    time.sleep(10.0)

    # Step 2: Dismiss splash screen
    print(f"[{device}] [Step 2] Dismissing splash screen (tap 1 2)...")
    run_adb_cmd(
        ["shell", "input", "tap", "1", "2"],
        device=device
    )
    time.sleep(10.0)

    # Step 3: Click first highlighted button (normalized 0.50, 0.65)
    print(f"[{device}] [Step 3] Clicking first highlighted button...")
    tap_game_normalized(
        x_ratio=0.50,
        y_ratio=0.65,
        device=device
    )
    time.sleep(1.0)

    # Step 4: Click second highlighted button (normalized 0.50, 0.46)
    print(f"[{device}] [Step 4] Clicking second highlighted button...")
    tap_game_normalized(
        x_ratio=0.50,
        y_ratio=0.46,
        device=device
    )

    print(f"[{device}] === Navigation Finished Successfully! ===\n")


# ============================================================
# Main Entry Point
# ============================================================

def main():
    print("=" * 60)
    print("Mini Militia Multi-Device Menu Navigation Automation")
    print("=" * 60)

    devices = get_adb_devices()

    if not devices:
        print("[-] No connected ADB devices found! Run 'adb devices' to check.")
        sys.exit(1)

    print(f"[+] Found {len(devices)} active ADB device(s):")
    for i, dev in enumerate(devices):
        print(f"    [{i + 1}] {dev}")
    print()

    print(f"[*] Triggering navigation on all {len(devices)} device(s) concurrently...")
    threads: List[threading.Thread] = []

    for dev in devices:
        t = threading.Thread(
            target=navigate_device,
            args=(dev,),
            name=f"Nav-{dev}"
        )
        threads.append(t)
        t.start()

    for t in threads:
        t.join()

    print("\n" + "=" * 60)
    print("All devices navigated successfully!")
    print("=" * 60)


if __name__ == "__main__":
    main()
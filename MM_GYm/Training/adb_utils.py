"""ADB utility helpers for discovering devices and setting up port forwards."""

from __future__ import annotations

import os
import shutil
import subprocess
from typing import List, Optional, Tuple


def find_adb_executable() -> str:
    """Find the adb binary path on PATH or Android SDK platform-tools."""
    adb_bin = shutil.which("adb")
    if adb_bin:
        return adb_bin

    local_app_data = os.environ.get("LOCALAPPDATA", "")
    if local_app_data:
        candidate = os.path.join(local_app_data, "Android", "Sdk", "platform-tools", "adb.exe")
        if os.path.isfile(candidate):
            return candidate

    return "adb"


def parse_adb_devices_output(output: str) -> List[str]:
    """Parse the stdout of `adb devices` to extract online device serials."""
    online, _, _ = parse_adb_devices_detailed(output)
    return online


def parse_adb_devices_detailed(output: str) -> Tuple[List[str], List[str], List[str]]:
    """Parse the stdout of `adb devices` into (online, offline, unauthorized) serial lists."""
    online: List[str] = []
    offline: List[str] = []
    unauthorized: List[str] = []

    for line in output.splitlines():
        line = line.strip()
        if not line or line.startswith("List of devices") or line.startswith("*"):
            continue
        parts = line.split()
        if len(parts) >= 2:
            serial, state = parts[0], parts[1].lower()
            if state == "device":
                online.append(serial)
            elif state == "offline":
                offline.append(serial)
            elif state in ("unauthorized", "no_permissions"):
                unauthorized.append(serial)

    return online, offline, unauthorized


def get_connected_adb_devices(timeout: float = 5.0, verbose: bool = True) -> List[str]:
    """Query ADB for all currently connected and authorized device serials.

    Returns:
        List of device serial strings (e.g. ['emulator-5554', 'R58M...']).
    """
    adb_bin = find_adb_executable()
    try:
        res = subprocess.run(
            [adb_bin, "devices"],
            capture_output=True,
            text=True,
            timeout=timeout,
            check=False,
        )
        if res.returncode == 0:
            online, offline, unauthorized = parse_adb_devices_detailed(res.stdout)
            if verbose:
                if offline:
                    for s in offline:
                        print(f"[warn] ADB device '{s}' is OFFLINE. Try reconnecting USB or run 'adb reconnect'.")
                if unauthorized:
                    for s in unauthorized:
                        print(f"[warn] ADB device '{s}' is UNAUTHORIZED. Check the device screen and accept USB debugging.")
            return online
    except (OSError, subprocess.SubprocessError) as exc:
        if verbose:
            print(f"[warn] Could not query adb devices: {exc}")
    return []


def setup_adb_port_forwarding(serials: List[str],
                              base_port: int = 27042,
                              target_port: int = 27042,
                              timeout: float = 5.0,
                              verbose: bool = True) -> List[Tuple[str, str, int]]:
    """Forward a distinct local TCP port to target_port on each connected device.

    Args:
        serials: List of ADB device serial numbers.
        base_port: Local starting port number (e.g. 27042).
        target_port: Device target port (default: 27042).
        timeout: Subprocess timeout in seconds.
        verbose: Whether to log port forwarding actions.

    Returns:
        List of tuples: [(serial, host_string, local_port), ...]
        e.g. [('emulator-5554', '127.0.0.1:27042', 27042), ...]
    """
    adb_bin = find_adb_executable()
    mappings: List[Tuple[str, str, int]] = []

    for i, serial in enumerate(serials):
        local_port = base_port + i
        host_str = f"127.0.0.1:{local_port}"
        try:
            res = subprocess.run(
                [adb_bin, "-s", serial, "forward", f"tcp:{local_port}", f"tcp:{target_port}"],
                capture_output=True,
                text=True,
                timeout=timeout,
                check=False,
            )
            if res.returncode == 0 and verbose:
                print(f"[+] ADB Port Forwarded: {serial} -> tcp:{local_port} (target tcp:{target_port})")
        except (OSError, subprocess.SubprocessError) as exc:
            if verbose:
                print(f"[warn] Failed to forward port for {serial}: {exc}")
        mappings.append((serial, host_str, local_port))

    return mappings


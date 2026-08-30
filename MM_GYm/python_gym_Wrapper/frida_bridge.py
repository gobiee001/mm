"""Frida transport for the Mini Militia environment.

Responsibilities
----------------
* Bundle the ``js/`` modules into a single script (Frida has no module loader).
* Inject the Python config as ``__PY_CONFIG__`` -- no string patching.
* Attach to the target and expose the JS ``rpc.exports`` surface.

One ``env.step()`` is one blocking RPC round-trip. The JS side resolves the
promise from inside the physics tick hook after ``frame_skip`` ticks, so Python
never polls and never counts messages.

Bundling note
-------------
The legacy ``run_observation_hook.resolve_imports`` inlined each import in
place with a regex and deduplicated by returning ``""`` for repeats, which
makes emission order depend on which file imported a module first. Here the
module order is declared explicitly and each file is emitted exactly once.
"""

from __future__ import annotations

import json
import os
import re
import subprocess
import threading
import time
from concurrent.futures import ThreadPoolExecutor, TimeoutError as FuturesTimeout
from math import gcd
from typing import Any, Callable, Dict, List, Optional, Tuple

from .config import EnvConfig, MiniMilitiaConfig

# Dependency order. Frida evaluates the bundle top to bottom.
JS_MODULES: List[str] = [
    "gym_symbols.js",
    "gym_sync.js",
    "gym_config.js",
    "gym_runtime.js",
    "gym_actions.js",
    "gym_observer.js",
    "gym_agent.js",
]

_IMPORT_RE = re.compile(r"^[ \t]*import\s+[^;]*?;[ \t]*$", re.MULTILINE)
_EXPORT_RE = re.compile(r"^([ \t]*)export\s+", re.MULTILINE)

DEFAULT_PROCESS = {
    "gadget": "Gadget",
    "remote": "com.appsomniacs.da2",
    "usb": "com.appsomniacs.da2",
    "local": "com.appsomniacs.da2",
}

# The Android package, regardless of device kind or what "process" the Frida
# attach uses ("Gadget" for the embedded-gadget mode) -- needed for adb
# force-stop/relaunch during crash recovery.
PACKAGE_NAME = "com.appsomniacs.da2"


def get_aspect_ratio(width: int, height: int) -> Tuple[int, int]:
    """Reduce width:height to the smallest integer ratio."""
    divisor = gcd(width, height)
    return (width // divisor, height // divisor)


def get_adb_devices() -> List[str]:
    """Return list of connected and authorized ADB device serials."""
    try:
        res = subprocess.run(["adb", "devices"], capture_output=True, text=True, timeout=10.0)
        lines = res.stdout.strip().splitlines()
        devices = []
        for line in lines[1:]:
            parts = line.strip().split()
            if len(parts) >= 2 and parts[1] == "device":
                devices.append(parts[0])
        return devices
    except Exception:
        return []


def get_adb_resolution(adb_fn: Optional[Callable[..., str]] = None) -> Tuple[int, int]:
    """Get effective Android display resolution (Override size if configured, else Physical size)."""
    if adb_fn is None:
        def adb_fn(*args):
            res = subprocess.run(["adb", *args], capture_output=True, text=True, timeout=15.0)
            return (res.stdout or "") + (res.stderr or "")

    output = adb_fn("shell", "wm", "size")
    match = re.search(r"Override size:\s*(\d+)x(\d+)", output)
    if not match:
        match = re.search(r"Physical size:\s*(\d+)x(\d+)", output)
    if not match:
        raise RuntimeError(f"Could not determine Android resolution from ADB output: {output}")

    return int(match.group(1)), int(match.group(2))


def calc_adb_tap_coordinates(
    x_ratio: float,
    y_ratio: float,
    screen_width: int,
    screen_height: int,
    game_aspect: float = 2.0
) -> Tuple[int, int]:
    """Convert normalized (x_ratio, y_ratio) within the 2:1 game viewport to Android screen coordinates."""
    screen_aspect = screen_width / screen_height
    if screen_aspect > game_aspect:
        # Screen is wider than game: game fitted to height
        game_height = screen_height
        game_width = round(game_height * game_aspect)
        offset_x = (screen_width - game_width) / 2
        offset_y = 0
    elif screen_aspect < game_aspect:
        # Screen is narrower/taller than game: game fitted to width
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
    return adb_x, adb_y


class BridgeError(RuntimeError):
    """Transport or instrumentation failure."""


class BridgeTimeout(BridgeError):
    """An RPC call exceeded ``rpc_timeout_s``.

    The JS watchdog should resolve every step before this fires, so this
    normally means the target process is wedged or was detached.
    """


_CRASH_MARKERS = ("script has been destroyed", "script is destroyed",
                   "has been terminated", "process has crashed")


def is_process_crash(exc: BaseException) -> bool:
    """True if ``exc`` looks like the target process itself died underneath
    Frida, rather than a script bug or a slow RPC."""
    msg = str(exc).lower()
    return any(marker in msg for marker in _CRASH_MARKERS)


def bundle_js(js_dir: str, config: Optional[Dict[str, Any]] = None,
              modules: Optional[List[str]] = None) -> str:
    """Concatenate the JS modules into one Frida script."""
    modules = modules or JS_MODULES
    parts: List[str] = ["'use strict';"]

    if config is not None:
        parts.append("const __PY_CONFIG__ = " + json.dumps(config) + ";")

    for name in modules:
        path = os.path.join(js_dir, name)
        if not os.path.isfile(path):
            raise BridgeError(f"JS module not found: {path}")
        with open(path, "r", encoding="utf-8") as fh:
            src = fh.read()
        src = _IMPORT_RE.sub("", src)
        src = _EXPORT_RE.sub(r"\1", src)
        parts.append(f"// ==== {name} ====\n{src}")

    return "\n".join(parts)


class FridaBridge:
    """Owns the Frida session, script, and RPC surface."""

    def __init__(self, cfg: MiniMilitiaConfig,
                 on_log: Optional[Callable[[str], None]] = None):
        self.cfg = cfg
        self.env: EnvConfig = cfg.env
        self._frida = None
        self._device = None
        self._session = None
        self._script = None
        self._exports = None
        self._pool = ThreadPoolExecutor(max_workers=1,
                                        thread_name_prefix="mm-rpc")
        self._on_log = on_log or (lambda m: None)
        self._ready_evt = threading.Event()
        self._errors: List[str] = []
        self._closed = False
        self.tick_source: Optional[str] = None
        self.missing_symbols: List[str] = []
        self.crash_count = 0

    # -- lifecycle ---------------------------------------------------------
    def _tap_game_normalized(self, x_ratio: float, y_ratio: float) -> None:
        """Calculate screen coordinates and tap the device via ADB."""
        try:
            w, h = get_adb_resolution(self._adb)
            adb_x, adb_y = calc_adb_tap_coordinates(x_ratio, y_ratio, w, h, self.env.game_aspect)
            self._on_log(
                f"[nav] tap normalized ({x_ratio:.2f}, {y_ratio:.2f}) -> screen ({adb_x}, {adb_y}) on {w}x{h}"
            )
            self._adb("shell", "input", "tap", str(adb_x), str(adb_y))
        except Exception as exc:
            self._on_log(f"[nav] tap_game_normalized failed: {exc}")

    def _perform_menu_navigation(self) -> None:
        """Launch Mini Militia, dismiss splash, and click through menu buttons via ADB."""
        self._on_log(f"[nav] starting {PACKAGE_NAME} via ADB...")
        self._adb("shell", "monkey", "-p", PACKAGE_NAME, "-c", "android.intent.category.LAUNCHER", "1")
        self._on_log(f"[nav] waiting {self.env.startup_wait_s}s for startup...")
        time.sleep(self.env.startup_wait_s)

        # Step 2: Dismiss splash screen
        sx, sy = self.env.splash_tap_coords
        self._on_log(f"[nav] dismissing splash screen via tap ({sx}, {sy})...")
        self._adb("shell", "input", "tap", str(sx), str(sy))
        self._on_log(f"[nav] waiting {self.env.splash_wait_s}s for menu...")
        time.sleep(self.env.splash_wait_s)

        # Step 3: First highlighted button
        b1_x, b1_y = self.env.button1_normalized
        self._on_log(f"[nav] clicking first button at normalized ({b1_x:.2f}, {b1_y:.2f})...")
        self._tap_game_normalized(b1_x, b1_y)
        time.sleep(self.env.menu_step_wait_s)

        # Step 4: Second highlighted button
        b2_x, b2_y = self.env.button2_normalized
        self._on_log(f"[nav] clicking second button at normalized ({b2_x:.2f}, {b2_y:.2f})...")
        self._tap_game_normalized(b2_x, b2_y)
    

    def connect(self, wait_ready_s: float = 30.0) -> Dict[str, Any]:
        import frida  # lazy: keeps the pure-Python units importable without it

        self._frida = frida
        e = self.env
        process = e.process or DEFAULT_PROCESS.get(e.device, "Gadget")

        if e.auto_navigate_menu:
            self._perform_menu_navigation()

        last_exc = None
        for attempt in range(10):
            try:
                if e.adb_serial:
                    try:
                        self._device = frida.get_device(e.adb_serial, timeout=5)
                    except Exception:
                        self._device = None

                if self._device is None:
                    if e.device == "usb":
                        self._device = frida.get_usb_device(timeout=5)
                    elif e.device in ("gadget", "remote"):
                        try:
                            self._device = frida.get_device_manager().add_remote_device(e.host)
                        except Exception:
                            if e.device == "gadget":
                                self._device = frida.get_usb_device(timeout=5)
                            else:
                                raise
                    elif e.device == "local":
                        self._device = frida.get_local_device()
                    else:
                        raise BridgeError(f"unknown device kind: {e.device}")

                # Try attaching to target process or package
                try:
                    self._session = self._device.attach(process)
                except Exception as attach_err:
                    if process != PACKAGE_NAME:
                        try:
                            self._session = self._device.attach(PACKAGE_NAME)
                        except Exception:
                            # Try again with Gadget if on remote/gadget
                            if process != "Gadget":
                                self._session = self._device.attach("Gadget")
                            else:
                                raise attach_err
                    else:
                        raise attach_err
                break
            except Exception as exc:
                last_exc = exc
                time.sleep(1.0)
        else:
            raise BridgeError(
                f"could not attach to '{process}' via {e.device} ({e.host}): {last_exc}"
            ) from last_exc

        source = bundle_js(e.js_dir, self.cfg.to_js())
        self._script = self._session.create_script(source, runtime=e.runtime)
        self._script.on("message", self._on_message)
        self._script.load()

        self._exports = getattr(self._script, "exports_sync", None) or self._script.exports

        info = self._wait_ready(wait_ready_s)
        self.tick_source = info.get("tick_source")
        self.missing_symbols = info.get("symbols_missing", []) or []
        return info

    def _wait_ready(self, timeout_s: float) -> Dict[str, Any]:
        deadline = time.time() + timeout_s
        last: Dict[str, Any] = {}
        while time.time() < deadline:
            if self._errors:
                raise BridgeError("JS error during startup: " + self._errors[-1])
            try:
                last = self._call("ping")
            except BridgeError:
                last = {}
            if last.get("ready"):
                return self._call("info")
            time.sleep(0.1)
        raise BridgeTimeout(
            f"instrumentation did not become ready within {timeout_s}s. "
            "libcocos2dcpp.so may not be loaded yet -- start or resume a match."
        )

    def close(self) -> None:
        if self._closed:
            return
        self._closed = True
        for obj, meth in ((self._script, "unload"), (self._session, "detach")):
            if obj is None:
                continue
            try:
                getattr(obj, meth)()
            except Exception:
                pass
        self._pool.shutdown(wait=False)
        self._script = self._session = self._exports = None

    def _adb(self, *args: str, timeout: float = 15.0) -> str:
        """Best-effort adb call. Never raises -- a failed adb command should
        not crash the recovery path, it should just leave the app dead so the
        next reconnect() attempt tries again."""
        try:
            if self.env.adb_serial:
                full_cmd = ["adb", "-s", self.env.adb_serial, *args]
            else:
                full_cmd = ["adb", *args]
            result = subprocess.run(full_cmd, capture_output=True,
                                    text=True, timeout=timeout)
            return (result.stdout or "") + (result.stderr or "")
        except Exception as exc:
            self._on_log(f"[adb] {' '.join(args)} failed: {exc}")
            return ""

    def _relaunch_app(self) -> None:
        self._on_log(f"[recover] force-stopping and relaunching {PACKAGE_NAME}")
        self._adb("shell", "am", "force-stop", PACKAGE_NAME)
        self._adb("shell", "monkey", "-p", PACKAGE_NAME,
                  "-c", "android.intent.category.LAUNCHER", "1")

    def reconnect(self, wait_ready_s: float = 60.0) -> Dict[str, Any]:
        """Recover from the target process dying underneath Frida.

        Tears down the dead session/script (best-effort -- both are already
        gone from the process's point of view), relaunches the app via adb,
        waits for it to boot back up, then re-attaches and reloads the bundle
        exactly as ``connect()`` does on first use.
        """
        self.crash_count += 1
        for obj, meth in ((self._script, "unload"), (self._session, "detach")):
            if obj is None:
                continue
            try:
                getattr(obj, meth)()
            except Exception:
                pass
        self._script = self._session = self._exports = None
        self._ready_evt.clear()
        self._errors.clear()

        if self.env.auto_navigate_menu:
            self._on_log(f"[recover] force-stopping {PACKAGE_NAME} for menu navigation recovery")
            self._adb("shell", "am", "force-stop", PACKAGE_NAME)
        else:
            self._relaunch_app()
            time.sleep(self.env.recover_wait_s)
        return self.connect(wait_ready_s=wait_ready_s)

    # -- messaging ---------------------------------------------------------
    def _on_message(self, message: Dict[str, Any], data: Any) -> None:
        mtype = message.get("type")
        if mtype == "send":
            payload = message.get("payload")
            if isinstance(payload, dict) and payload.get("__gym__") == "ready":
                self.tick_source = payload.get("tick_source")
                self.missing_symbols = payload.get("missing", []) or []
                self._ready_evt.set()
            else:
                self._on_log(str(payload))
        elif mtype == "error":
            desc = message.get("description") or str(message)
            stack = message.get("stack")
            self._errors.append(stack or desc)
            self._on_log(f"[js-error] {desc}")

    @property
    def errors(self) -> List[str]:
        return list(self._errors)

    # -- rpc ---------------------------------------------------------------
    def _call(self, name: str, *args: Any) -> Dict[str, Any]:
        if self._exports is None:
            raise BridgeError("bridge is not connected")
        fn = getattr(self._exports, name, None)
        if fn is None:
            raise BridgeError(f"JS export '{name}' not found")

        fut = self._pool.submit(fn, *args)
        try:
            result = fut.result(timeout=self.env.rpc_timeout_s)
        except FuturesTimeout as exc:
            raise BridgeTimeout(
                f"rpc '{name}' exceeded {self.env.rpc_timeout_s}s. The JS "
                f"watchdog ({self.env.step_timeout_ms}ms) should have resolved "
                "it first, so the target is probably wedged or detached."
            ) from exc
        except Exception as exc:
            raise BridgeError(f"rpc '{name}' failed: {exc}") from exc

        if isinstance(result, dict) and result.get("ok") is False:
            raise BridgeError(f"rpc '{name}': {result.get('error')}")
        return result

    # -- public surface ----------------------------------------------------
    def ping(self) -> Dict[str, Any]:
        return self._call("ping")

    def info(self) -> Dict[str, Any]:
        return self._call("info")

    def stats(self) -> Dict[str, Any]:
        return self._call("stats")

    def peek(self) -> Dict[str, Any]:
        return self._call("peek")

    def set_config(self, patch: Dict[str, Any]) -> Dict[str, Any]:
        return self._call("setConfig", patch)

    def step(self, action: List[float]) -> Dict[str, Any]:
        return self._call("step", list(action))

    def reset(self, kill_player: bool, clear_enemies: bool,
              settle_ticks: int, force_spawn: bool = True) -> Dict[str, Any]:
        return self._call("reset", {
            "kill_player": bool(kill_player),
            "clear_enemies": bool(clear_enemies),
            "settle_ticks": int(settle_ticks),
            "force_spawn": bool(force_spawn),
        })

    def force_spawn(self) -> Dict[str, Any]:
        return self._call("forceSpawn")

"""Gadget session management.

Connection model is unchanged from ``Frida_finalScripts/run_hook.py``: the game
is a repackaged APK with frida-gadget embedded, reachable over a forwarded TCP
port. Always attach, never spawn.

    adb forward tcp:27042 tcp:27042
"""

from __future__ import annotations

import sys
import threading
from pathlib import Path
from typing import Any, Callable, Iterator

from .bundler import bundle, make_prelude
from .config import GymConfig
from .sinks import QueueSink, Sink

AGENT_ENTRY = Path(__file__).resolve().parent.parent / "agent" / "main.js"


class GymSession:
    """Attach to the gadget, load the agent, route observations to a sink.

    Usage::

        cfg = GymConfig(obs_interval_frames=10)
        cfg.env.block_sarge.enabled = True

        with GymSession(cfg) as gym:
            for obs in gym.observations(timeout=5.0):
                print(obs["player"]["pos"])
    """

    def __init__(
        self,
        config: GymConfig | None = None,
        sink: Sink | None = None,
        agent_entry: str | Path | None = None,
        on_event: Callable[[dict[str, Any]], None] | None = None,
    ) -> None:
        self.config = config or GymConfig()
        self.sink = sink if sink is not None else QueueSink()
        self.agent_entry = Path(agent_entry) if agent_entry else AGENT_ENTRY
        self.on_event = on_event

        self._device = None
        self._session = None
        self._script = None

        #: Populated from the agent's `ready` event.
        self.ready_info: dict[str, Any] | None = None
        self._ready = threading.Event()

        #: Last FPS report, if env.fps_monitor is enabled.
        self.last_fps: float | None = None

        self.obs_count = 0
        self.error_count = 0
        self._last_seq: int | None = None
        self.seq_gaps = 0

    # -- lifecycle ----------------------------------------------------------

    def build_source(self) -> str:
        """Bundle the agent and prepend the config prelude."""
        code = bundle(str(self.agent_entry))
        return make_prelude(self.config.to_dict()) + code

    def start(self) -> "GymSession":
        import frida

        source = self.build_source()

        print(f"[*] Connecting to gadget at {self.config.device_address} ...")
        self._device = frida.get_device_manager().add_remote_device(
            self.config.device_address
        )

        print(f"[*] Attaching to {self.config.process_name!r} ...")
        self._session = self._device.attach(self.config.process_name)

        print(f"[*] Loading agent ({len(source)} bytes) ...")
        self._script = self._session.create_script(source)
        self._script.on("message", self._on_message)
        self._script.load()
        print("[*] Agent loaded.")
        return self

    def wait_ready(self, timeout: float = 10.0) -> bool:
        """Block until the agent reports startup state. Returns False on timeout."""
        return self._ready.wait(timeout)

    def stop(self) -> None:
        for closer in (
            lambda: self._script.unload() if self._script else None,
            lambda: self._session.detach() if self._session else None,
            self.sink.close,
        ):
            try:
                closer()
            except Exception:  # noqa: BLE001 - teardown is best-effort
                pass
        self._script = None
        self._session = None

    def __enter__(self) -> "GymSession":
        return self.start()

    def __exit__(self, *exc: object) -> None:
        self.stop()

    # -- message routing ----------------------------------------------------

    def _on_message(self, message: dict[str, Any], data: Any) -> None:
        kind = message.get("type")

        if kind == "error":
            # A JS exception. Surface it loudly -- silently swallowing this is
            # how you end up staring at an empty observation stream.
            self.error_count += 1
            desc = message.get("description") or message
            print(f"[-] JS error: {desc}", file=sys.stderr)
            stack = message.get("stack")
            if stack:
                print(stack, file=sys.stderr)
            return

        if kind != "send":
            return

        payload = message.get("payload")
        if not isinstance(payload, dict):
            print(f"[js] {payload}")
            return

        ptype = payload.get("type")

        if ptype == "obs":
            self.obs_count += 1
            seq = payload.get("seq")
            if isinstance(seq, int):
                if self._last_seq is not None and seq != self._last_seq + 1:
                    self.seq_gaps += 1
                self._last_seq = seq
            try:
                self.sink.handle(payload)
            except Exception as exc:  # noqa: BLE001
                print(f"[-] sink failed: {exc}", file=sys.stderr)
            return

        if ptype == "fps":
            self.last_fps = payload.get("fps")

        elif ptype == "ready":
            self.ready_info = payload
            self._ready.set()
            missing = payload.get("missing_prereqs") or []
            if missing:
                print(f"[!] agent missing prerequisites: {missing}", file=sys.stderr)

        elif ptype == "error":
            self.error_count += 1
            print(f"[-] agent error: {payload.get('message')}", file=sys.stderr)

        if self.on_event is not None:
            try:
                self.on_event(payload)
            except Exception as exc:  # noqa: BLE001
                print(f"[-] on_event failed: {exc}", file=sys.stderr)

    # -- consumption --------------------------------------------------------

    def observations(self, timeout: float | None = None) -> Iterator[dict[str, Any]]:
        """Yield observations from the sink.

        Only valid when the sink is a :class:`QueueSink` (the default).
        """
        if not isinstance(self.sink, QueueSink):
            raise TypeError(
                "observations() needs a QueueSink; "
                f"this session has {type(self.sink).__name__}"
            )
        return self.sink.iter_observations(timeout=timeout)

    def stats(self) -> dict[str, Any]:
        s: dict[str, Any] = {
            "observations": self.obs_count,
            "errors": self.error_count,
            "seq_gaps": self.seq_gaps,
            "last_fps": self.last_fps,
        }
        if isinstance(self.sink, QueueSink):
            s["queued"] = self.sink.qsize()
            s["sink_dropped"] = self.sink.dropped
        return s

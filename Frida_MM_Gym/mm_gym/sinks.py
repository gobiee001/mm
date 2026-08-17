"""Observation sinks.

A sink receives every observation the agent emits. Sinks are deliberately dumb
and synchronous -- they run on Frida's message-delivery thread, so they must not
block for long. ``QueueSink`` is the one to use when a consumer needs to do real
work: it hands off immediately and lets the consumer drain at its own pace.
"""

from __future__ import annotations

import json
import queue
import sys
import threading
from abc import ABC, abstractmethod
from pathlib import Path
from typing import Any, Iterator


class Sink(ABC):
    """Receives observations. ``handle`` runs on the Frida message thread."""

    @abstractmethod
    def handle(self, obs: dict[str, Any]) -> None: ...

    def close(self) -> None:
        """Flush and release resources. Safe to call more than once."""


class QueueSink(Sink):
    """Thread-safe hand-off to a consumer.

    Bounded with a drop-oldest policy: a slow consumer costs you the oldest
    observations rather than unbounded memory. ``dropped`` counts what was
    discarded, so a training loop can tell whether it is keeping up.
    """

    def __init__(self, maxsize: int = 4096) -> None:
        self._q: queue.Queue[dict[str, Any]] = queue.Queue(maxsize=maxsize)
        self.dropped = 0
        self._lock = threading.Lock()

    def handle(self, obs: dict[str, Any]) -> None:
        try:
            self._q.put_nowait(obs)
        except queue.Full:
            # Drop the oldest to make room for the newest.
            try:
                self._q.get_nowait()
                with self._lock:
                    self.dropped += 1
            except queue.Empty:
                pass
            try:
                self._q.put_nowait(obs)
            except queue.Full:
                with self._lock:
                    self.dropped += 1

    def get(self, timeout: float | None = None) -> dict[str, Any] | None:
        """Pop one observation, or None on timeout."""
        try:
            return self._q.get(timeout=timeout)
        except queue.Empty:
            return None

    def drain(self) -> list[dict[str, Any]]:
        """Pop everything currently queued."""
        out: list[dict[str, Any]] = []
        while True:
            try:
                out.append(self._q.get_nowait())
            except queue.Empty:
                return out

    def iter_observations(self, timeout: float | None = None) -> Iterator[dict[str, Any]]:
        """Yield observations until ``timeout`` elapses with none available."""
        while True:
            obs = self.get(timeout=timeout)
            if obs is None:
                return
            yield obs

    def qsize(self) -> int:
        return self._q.qsize()


class JsonlSink(Sink):
    """Append each observation as one JSON line."""

    def __init__(self, path: str | Path, flush_every: int = 50) -> None:
        self.path = Path(path)
        self.path.parent.mkdir(parents=True, exist_ok=True)
        self._fh = self.path.open("a", encoding="utf-8")
        self._flush_every = max(1, flush_every)
        self._since_flush = 0
        self.written = 0
        self._lock = threading.Lock()

    def handle(self, obs: dict[str, Any]) -> None:
        line = json.dumps(obs, separators=(",", ":"))
        with self._lock:
            if self._fh.closed:
                return
            self._fh.write(line + "\n")
            self.written += 1
            self._since_flush += 1
            if self._since_flush >= self._flush_every:
                self._fh.flush()
                self._since_flush = 0

    def close(self) -> None:
        with self._lock:
            if not self._fh.closed:
                self._fh.flush()
                self._fh.close()


class ConsoleSink(Sink):
    """One compact line per observation, for eyeballing correctness."""

    def __init__(self, stream: Any = None, every: int = 1) -> None:
        self._stream = stream or sys.stdout
        self._every = max(1, every)
        self._n = 0

    def handle(self, obs: dict[str, Any]) -> None:
        self._n += 1
        if self._n % self._every:
            return

        p = obs.get("player") or {}
        w = p.get("weapon") or {}
        pos = p.get("pos") or {}
        vel = p.get("vel") or {}
        counts = obs.get("counts") or {}

        def num(v: Any, nd: int = 1) -> str:
            return f"{v:.{nd}f}" if isinstance(v, (int, float)) else "-"

        self._stream.write(
            f"[{obs.get('seq')}] f={obs.get('frame')} "
            f"hp={p.get('hp')} pw={num(p.get('power'))} "
            f"pos=({num(pos.get('x'))},{num(pos.get('y'))}) "
            f"vel=({num(vel.get('x'))},{num(vel.get('y'))}) "
            f"aim={num(p.get('aim_angle'), 2)} "
            f"clip={w.get('clip')}/{w.get('clip_capacity')} "
            f"ammo={w.get('ammo')} rl={w.get('is_reloading')} "
            f"wt={w.get('type')} "
            f"enemies={len(obs.get('enemies') or [])} {dict(counts)}\n"
        )
        self._stream.flush()


class MultiSink(Sink):
    """Fan out to several sinks. One failing sink never blocks the others."""

    def __init__(self, *sinks: Sink) -> None:
        self.sinks = [s for s in sinks if s is not None]

    def handle(self, obs: dict[str, Any]) -> None:
        for s in self.sinks:
            try:
                s.handle(obs)
            except Exception as exc:  # noqa: BLE001 - a sink must not break the stream
                print(f"[-] sink {type(s).__name__} failed: {exc}", file=sys.stderr)

    def close(self) -> None:
        for s in self.sinks:
            try:
                s.close()
            except Exception:  # noqa: BLE001
                pass

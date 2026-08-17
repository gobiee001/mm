// Outbound messaging.
//
// send() is fire-and-forget: it queues the payload for delivery over the
// gadget's TCP channel and returns immediately, so it never blocks the game
// thread. Python receives these via script.on('message', ...).

import { config } from "./config.js";

let _seq = 0;
let _dropped = 0;

function _send(payload) {
    try {
        send(payload);
    } catch (e) {
        // A failed send must never propagate into the game's update loop.
        _dropped++;
    }
}

// Observation payloads. Gated by config.emit and stamped with a gap-free
// sequence number so the consumer can detect drops.
export function emitObs(payload) {
    if (!config.emit) return;
    payload.seq = _seq++;
    _send(payload);
}

// Everything else (fps reports, startup diagnostics, warnings). Not gated by
// config.emit and not sequenced.
export function emitEvent(payload) {
    _send(payload);
}

export function droppedCount() {
    return _dropped;
}

export function seqCount() {
    return _seq;
}

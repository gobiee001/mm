// cpVect (struct { float x, y; }) return-ABI resolution.
//
// The getBodyPosition() / getBodyVelocity() family returns an 8-byte, 2-float
// POD by value. On ARM32 that can arrive three different ways, and the old
// scripts in Frida_finalScripts assumed sret without ever executing a single
// call -- every call site was commented out. So we probe instead of guessing.
//
// Candidates, in preference order:
//   "struct" -- declare the return as ['float','float'] and let libffi apply
//               the platform ABI. This is the most likely correct answer and
//               the only one that is not a manual reimplementation of an ABI.
//   "sret"   -- hidden out-pointer as arg0, `this` as arg1 (what the old code
//               assumed).
//   "packed" -- 64-bit integer return; x in the low word, y in the high word.
//
// If none produce plausible values we fall back to "finite_diff": velocity
// derived from successive positions using the dt handed to updateStep. That
// path needs no ABI knowledge at all, so it always works.
//
// The chosen mode is published in every observation as diag.vec_abi.

import { nf } from "./symbols.js";
import { config, logInfo } from "./config.js";

const ABI_ORDER = ["struct", "sret", "packed"];

// Scratch for the sret out-pointer. cpVect is exactly 8 bytes -- allocate 16
// for safety but never read past 8. (The old Enemies.js logVector read 16 bytes
// out of this 8-byte struct, i.e. 8 bytes past the end.)
const sretOut = Memory.alloc(16);

// Reinterpret raw 32-bit patterns as floats, same trick as
// Frida_finalScripts/joystick/joystick.js.
const _buf = new ArrayBuffer(4);
const _f32 = new Float32Array(_buf);
const _i32 = new Int32Array(_buf);

function bitsToFloat(bits) {
    _i32[0] = bits | 0;
    return _f32[0];
}

let _chosen = null;   // resolved ABI name, or "finite_diff"

// Build every candidate wrapper for one mangled symbol. Cheap enough to do per
// getter at init; nf() returns null rather than throwing when a signature is
// rejected.
export function buildVariants(symbolName) {
    return {
        name: symbolName,
        struct: nf(symbolName, ["float", "float"], ["pointer"]),
        sret: nf(symbolName, "pointer", ["pointer", "pointer"]),
        packed: nf(symbolName, "uint64", ["pointer"])
    };
}

function invoke(variants, abi, thisPtr) {
    if (variants === null || thisPtr === null || thisPtr.isNull()) return null;
    try {
        if (abi === "struct") {
            if (variants.struct === null) return null;
            const r = variants.struct(thisPtr);
            return { x: r[0], y: r[1] };
        }
        if (abi === "sret") {
            if (variants.sret === null) return null;
            variants.sret(sretOut, thisPtr);
            return { x: sretOut.readFloat(), y: sretOut.add(4).readFloat() };
        }
        if (abi === "packed") {
            if (variants.packed === null) return null;
            const r = variants.packed(thisPtr);
            const lo = r.and(uint64("0xffffffff")).toNumber();
            const hi = r.shr(32).and(uint64("0xffffffff")).toNumber();
            return { x: bitsToFloat(lo), y: bitsToFloat(hi) };
        }
    } catch (e) {
        return null;
    }
    return null;
}

const COORD_BOUND = 1.0e6;

function plausible(v) {
    if (v === null) return false;
    if (typeof v.x !== "number" || typeof v.y !== "number") return false;
    if (!isFinite(v.x) || !isFinite(v.y)) return false;
    if (Math.abs(v.x) > COORD_BOUND || Math.abs(v.y) > COORD_BOUND) return false;
    return true;
}

// Resolve the ABI once, using a known-good CCNode::getPosition reading as the
// oracle. Physics-body and node coordinates can legitimately differ by a fixed
// offset or scale, so candidates are accepted on plausibility and then *ranked*
// by closeness to the oracle -- we do not demand an exact match.
//
// posVariants must be the getBodyPosition variants (position has an oracle;
// velocity does not).
export function probe(posVariants, thisPtr, oracle) {
    if (_chosen !== null) return _chosen;

    if (config.vec_abi && config.vec_abi !== "auto") {
        _chosen = config.vec_abi;
        logInfo("[+] cpvect: ABI forced by config -> " + _chosen);
        return _chosen;
    }

    const scored = [];
    for (let i = 0; i < ABI_ORDER.length; i++) {
        const abi = ABI_ORDER[i];
        const v = invoke(posVariants, abi, thisPtr);
        if (!plausible(v)) {
            logInfo("[.] cpvect: candidate '" + abi + "' rejected"
                + (v === null ? " (call failed)" : " (implausible: " + v.x + ", " + v.y + ")"));
            continue;
        }
        const d = (oracle !== null && oracle !== undefined)
            ? Math.hypot(v.x - oracle.x, v.y - oracle.y)
            : Number.POSITIVE_INFINITY;
        scored.push({ abi: abi, v: v, d: d });
        logInfo("[.] cpvect: candidate '" + abi + "' -> ("
            + v.x.toFixed(2) + ", " + v.y.toFixed(2) + ") oracleDelta="
            + (isFinite(d) ? d.toFixed(2) : "n/a"));
    }

    if (scored.length === 0) {
        _chosen = "finite_diff";
        logInfo("[!] cpvect: no candidate produced plausible values -> "
            + "falling back to finite-difference velocity.");
        return _chosen;
    }

    scored.sort(function (a, b) { return a.d - b.d; });
    _chosen = scored[0].abi;
    logInfo("[+] cpvect: resolved ABI -> '" + _chosen + "'"
        + (oracle ? " (oracle at " + oracle.x.toFixed(2) + ", " + oracle.y.toFixed(2) + ")" : ""));
    return _chosen;
}

export function chosen() {
    return _chosen;
}

export function isResolved() {
    return _chosen !== null;
}

// Read a cpVect using the resolved ABI. Returns null when unresolved, when the
// fallback is active, or on any read failure.
export function readVec(variants, thisPtr) {
    if (_chosen === null || _chosen === "finite_diff") return null;
    return invoke(variants, _chosen, thisPtr);
}

// ---------------------------------------------------------------------------
// Finite-difference velocity: (pos - prevPos) / dt.
//
// Guaranteed-working fallback, and also useful as a cross-check against the
// native path. Keyed by pointer string. Entries are dropped wholesale once the
// map grows past a cap, since entity pointers churn as drones spawn and die.
// ---------------------------------------------------------------------------

const MAX_TRACKED = 512;

export function createVelocityTracker() {
    let prev = {};
    let size = 0;

    return {
        update: function (key, pos, dt) {
            if (pos === null) return null;
            if (size > MAX_TRACKED) {
                prev = {};
                size = 0;
            }
            const last = prev[key];
            prev[key] = { x: pos.x, y: pos.y };
            if (last === undefined) {
                size++;
                return { x: 0.0, y: 0.0 };
            }
            if (!dt || dt <= 0) return { x: 0.0, y: 0.0 };
            return { x: (pos.x - last.x) / dt, y: (pos.y - last.y) / dt };
        },
        reset: function () {
            prev = {};
            size = 0;
        }
    };
}

// SoldierHostController::updateStep(float dt, cpVect, cpVect, float)
//
// This is the player's per-frame logic step. Two jobs:
//   1. Run every enabled actuator (health, power, ammo, loadout).
//   2. Latch the controller pointer and dt for the observation builder.
//
// Spawn detection reuses the pointer-identity trick from
// Frida_finalScripts/weapon.js:72 -- a new SoldierHostController instance means
// game start or respawn.
//
// args[0] = this, args[1] = dt (float).

import { resolve } from "../core/symbols.js";
import { logInfo } from "../core/config.js";
import * as player from "../entities/player.js";

// dt arrives as a float in a register slot; reinterpret the raw bits.
const _buf = new ArrayBuffer(4);
const _f32 = new Float32Array(_buf);
const _i32 = new Int32Array(_buf);

function argToFloat(a) {
    try {
        _i32[0] = a.toInt32();
        const v = _f32[0];
        // Sanity-bound it: a frame delta outside this range means we read the
        // wrong slot, and a garbage dt would poison finite-difference velocity.
        if (isFinite(v) && v > 0 && v < 1.0) return v;
    } catch (e) { /* fall through */ }
    return 0;
}

export function install(ctx, actuators) {
    const addr = resolve("_ZN21SoldierHostController10updateStepEf6cpVectS0_f");
    if (addr === null) {
        return { ok: false, detail: "SoldierHostController::updateStep unresolved" };
    }

    let lastPtr = ptr(0);

    Interceptor.attach(addr, {
        onEnter: function (args) {
            const p = args[0];
            if (p.isNull()) return;

            const dt = argToFloat(args[1]);

            // Resolve the cpVect ABI on the first live controller we see.
            player.ensureProbe(p);

            // New controller instance -> spawn or respawn.
            if (!p.equals(lastPtr)) {
                lastPtr = p;
                logInfo("[*] player_tick: new SoldierHostController " + p);
                player.onNewSpawn();
                ctx.state.spawnCount++;

                for (let i = 0; i < actuators.length; i++) {
                    const a = actuators[i];
                    if (typeof a.onNewSpawn !== "function") continue;
                    try {
                        a.onNewSpawn(ctx, p);
                    } catch (e) {
                        logInfo("[!] actuator " + a.name + " onNewSpawn: " + e.message);
                    }
                }
            }

            // Per-frame actuation.
            for (let i = 0; i < actuators.length; i++) {
                const a = actuators[i];
                if (typeof a.onPlayerTick !== "function") continue;
                try {
                    a.onPlayerTick(ctx, p, dt);
                } catch (e) {
                    // Already defensive inside each actuator; this is belt and braces.
                }
            }

            player.latch(p, dt);
            ctx.state.playerFrames++;
        }
    });

    logInfo("[+] hook player_tick installed @ " + addr);
    return { ok: true, detail: String(addr) };
}

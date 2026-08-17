// Actuator registry.
//
// An actuator forces player state. Contract:
//
//   name          string
//   enabled(cfg)  -> bool
//   init(ctx)     -> { ok, detail }        called once at load
//   onPlayerTick(ctx, playerPtr, dt)       optional, every player frame
//   onNewSpawn(ctx, playerPtr)             optional, on a new controller pointer
//
// Adding an actuator is one new file plus one entry below. The hook code in
// hooks/player_tick.js never changes.

import { health } from "./health.js";
import { power } from "./power.js";
import { ammo } from "./ammo.js";
import { loadout } from "./loadout.js";

export const ALL_ACTUATORS = [health, power, ammo, loadout];

// Filter to the enabled set and run init(). Anything whose init reports
// !ok is dropped rather than left half-wired.
export function initActuators(ctx) {
    const active = [];
    const report = [];

    for (let i = 0; i < ALL_ACTUATORS.length; i++) {
        const a = ALL_ACTUATORS[i];
        let on = false;
        try {
            on = a.enabled(ctx.config);
        } catch (e) {
            on = false;
        }
        if (!on) {
            report.push({ name: a.name, status: "disabled" });
            continue;
        }

        let res;
        try {
            res = a.init(ctx);
        } catch (e) {
            res = { ok: false, detail: "init threw: " + e.message };
        }

        if (res && res.ok) {
            active.push(a);
            report.push({ name: a.name, status: "active", detail: res.detail });
        } else {
            report.push({
                name: a.name,
                status: "failed",
                detail: res ? res.detail : "unknown"
            });
        }
    }

    return { active: active, report: report };
}

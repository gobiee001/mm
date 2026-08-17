// Environment-control registry.
//
// An env control alters the game environment rather than player state. Contract:
//
//   name           string
//   enabled(cfg)   -> bool
//   install(ctx)   -> { ok, detail }     called once at load; installs its own hooks
//
// No per-frame callback: these attach or replace native functions themselves.
//
// Adding a control is one new file plus one entry below.

import { fastForward } from "./fast_forward.js";
import { fpsUnlock } from "./fps_unlock.js";
import { fpsMonitor } from "./fps_monitor.js";
import { stopRendering } from "./stop_rendering.js";
import { blockAudio } from "./block_audio.js";
import { blockSarge } from "./block_sarge.js";

export const ALL_ENV = [
    fastForward,
    fpsUnlock,
    fpsMonitor,
    stopRendering,
    blockAudio,
    blockSarge
];

export function initEnv(ctx) {
    const applied = [];
    const report = [];

    for (let i = 0; i < ALL_ENV.length; i++) {
        const e = ALL_ENV[i];
        let on = false;
        try {
            on = e.enabled(ctx.config);
        } catch (err) {
            on = false;
        }
        if (!on) {
            report.push({ name: e.name, status: "disabled" });
            continue;
        }

        let res;
        try {
            res = e.install(ctx);
        } catch (err) {
            res = { ok: false, detail: "install threw: " + err.message };
        }

        if (res && res.ok) {
            applied.push(e.name);
            report.push({ name: e.name, status: "active", detail: res.detail });
        } else {
            report.push({
                name: e.name,
                status: "failed",
                detail: res ? res.detail : "unknown"
            });
        }
    }

    return { applied: applied, report: report };
}

// Time-scale multiplier.
//
// Ported from Frida_finalScripts/core/fastforward.js, with the hardcoded 3.0
// made configurable.
//
// CCScheduler holds its timestep multiplier at this+0x14. Overwriting it on
// every CCScheduler::update call makes the whole game (physics, AI, animation)
// run faster.
//
// CAUTION: this changes the dt handed to every updateStep, which feeds the
// finite-difference velocity fallback in core/cpvect.js and shifts the
// wall-clock meaning of obs_interval_frames. The applied scale is reported as
// diag.time_scale in every observation.

import { resolve } from "../core/symbols.js";
import { logInfo } from "../core/config.js";

const TIME_SCALE_OFFSET = 0x14;

export const fastForward = {
    name: "fast_forward",

    enabled: function (cfg) {
        return cfg.env.fast_forward.enabled;
    },

    install: function (ctx) {
        const addr = resolve("_ZN7cocos2d11CCScheduler6updateEf");
        if (addr === null) {
            return { ok: false, detail: "CCScheduler::update unresolved" };
        }

        const scale = ctx.config.env.fast_forward.time_scale;

        Interceptor.attach(addr, {
            onEnter: function (args) {
                try {
                    args[0].add(TIME_SCALE_OFFSET).writeFloat(scale);
                } catch (e) {
                    // swallow
                }
            }
        });

        // Publish so the observation builder can report it.
        ctx.state.timeScale = scale;

        logInfo("[+] env fast_forward: time scale " + scale + "x");
        return { ok: true, detail: scale + "x" };
    }
};

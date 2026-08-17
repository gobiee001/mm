// FPS measurement.
//
// The measurement half of the old Frida_finalScripts/core/fpsMonitor.js, now
// independent of VSYNC unlocking (env/fps_unlock.js).
//
// Counts CCDisplayLinkDirector::mainLoop calls -- the true engine frame tick --
// and reports roughly once a second. The report is driven entirely by the hook
// itself, so there is no JS timer and no background thread.
//
// Emits {type: "fps", fps, frames, window_ms, t} and also publishes the last
// value into ctx.state.fps so it can ride along in diag.fps.

import { resolve } from "../core/symbols.js";
import { logInfo } from "../core/config.js";
import { emitEvent } from "../core/emit.js";

export const fpsMonitor = {
    name: "fps_monitor",

    enabled: function (cfg) {
        return cfg.env.fps_monitor.enabled;
    },

    install: function (ctx) {
        const addr = resolve("_ZN7cocos2d21CCDisplayLinkDirector8mainLoopEv");
        if (addr === null) {
            return { ok: false, detail: "CCDisplayLinkDirector::mainLoop unresolved" };
        }

        const windowMs = ctx.config.env.fps_monitor.report_interval_ms;
        let frames = 0;
        let last = Date.now();

        Interceptor.attach(addr, {
            onEnter: function (args) {
                frames++;
                const now = Date.now();
                const delta = now - last;
                if (delta < windowMs) return;

                // Guard the divide independently of the window check: with
                // report_interval_ms == 0, two mainLoop calls inside the same
                // millisecond give delta == 0 and would emit Infinity.
                if (delta <= 0) return;

                const fps = (frames * 1000.0) / delta;
                ctx.state.fps = fps;

                emitEvent({
                    type: "fps",
                    fps: fps,
                    frames: frames,
                    window_ms: delta,
                    t: now / 1000.0
                });

                frames = 0;
                last = now;
            }
        });

        logInfo("[+] env fps_monitor: reporting every ~" + windowMs + "ms");
        return { ok: true, detail: "every " + windowMs + "ms" };
    }
};

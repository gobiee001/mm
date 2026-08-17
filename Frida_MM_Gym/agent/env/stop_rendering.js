// Suppress rendering work.
//
// Ported from Frida_finalScripts/core/stoprendering.js, which writes three
// CCDirector fields on every drawScene call:
//
//   this+0x74 = 0  (S32)  -- rendering-related
//   this+0x38 = 0  (S32)  -- rendering-related
//   this+0x51 = 1  (U8)   -- display-stats / debug-overlay flag
//
// The 0x51 write is NOT part of stopping rendering: it is the same byte
// Frida_finalScripts/enable_debug_mode.js writes to turn the stats overlay on.
// It is kept here behind the `show_stats` sub-flag, defaulting to true so
// behaviour matches the original script exactly, but it can now be separated.
//
// CAUTION: whether CCNode::convertToWorldSpace still yields live screen
// coordinates with this enabled is unverified. Map-space positions are
// unaffected either way. See README verification step 11.

import { resolve } from "../core/symbols.js";
import { logInfo } from "../core/config.js";

const OFF_RENDER_A = 0x74;
const OFF_RENDER_B = 0x38;
const OFF_DISPLAY_STATS = 0x51;

export const stopRendering = {
    name: "stop_rendering",

    enabled: function (cfg) {
        return cfg.env.stop_rendering.enabled;
    },

    install: function (ctx) {
        const addr = resolve("_ZN7cocos2d10CCDirector9drawSceneEv");
        if (addr === null) {
            return { ok: false, detail: "CCDirector::drawScene unresolved" };
        }

        const showStats = ctx.config.env.stop_rendering.show_stats;

        Interceptor.attach(addr, {
            onEnter: function (args) {
                const director = args[0];
                try {
                    director.add(OFF_RENDER_A).writeS32(0);
                    director.add(OFF_RENDER_B).writeS32(0);
                    if (showStats) {
                        director.add(OFF_DISPLAY_STATS).writeU8(1);
                    }
                } catch (e) {
                    // swallow
                }
            }
        });

        ctx.state.stopRendering = true;

        logInfo("[+] env stop_rendering: active (show_stats=" + showStats + ")");
        return { ok: true, detail: "show_stats=" + showStats };
    }
};

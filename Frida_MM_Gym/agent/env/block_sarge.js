// Disable Sarge.
//
// Replaces SurvivalStage::updateSarge(float) with a no-op.
//
// Ported from Frida_finalScripts/block_sarge.js but using the SILENT stub from
// Frida_finalScripts/Tests/test_drones_player.js:113-115. The standalone
// block_sarge.js logs on every call, which is ~60 lines/sec of console spam.
//
// Uses Interceptor.replace, so it must be installed exactly once -- never run
// this alongside test_drones_player.js, which stubs the same function inline.

import { resolve } from "../core/symbols.js";
import { logInfo } from "../core/config.js";

export const blockSarge = {
    name: "block_sarge",

    enabled: function (cfg) {
        return cfg.env.block_sarge.enabled;
    },

    install: function (ctx) {
        const addr = resolve("_ZN13SurvivalStage11updateSargeEf");
        if (addr === null) {
            return { ok: false, detail: "SurvivalStage::updateSarge unresolved" };
        }

        try {
            // Held on the object so it is never garbage collected.
            this._callback = new NativeCallback(function (self, dt) {
                // Silent no-op.
            }, "void", ["pointer", "float"]);

            Interceptor.replace(addr, this._callback);
        } catch (e) {
            return { ok: false, detail: "replace failed: " + e.message };
        }

        logInfo("[+] env block_sarge: updateSarge stubbed (silent)");
        return { ok: true, detail: "stubbed" };
    }
};

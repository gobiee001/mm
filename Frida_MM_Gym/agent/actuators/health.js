// Force player HP every frame.
//
// Ported from Frida_finalScripts/Player/getHostSoldierHp.js.

import { nf } from "../core/symbols.js";
import { logInfo } from "../core/config.js";

const setHP = nf("_ZN21SoldierHostController5setHPEi", "void", ["pointer", "int"]);
const getHP = nf("_ZN21SoldierHostController5getHPEv", "int", ["pointer"]);

export const health = {
    name: "health",

    enabled: function (cfg) {
        return cfg.actuators.health.enabled;
    },

    init: function (ctx) {
        if (setHP === null) {
            return { ok: false, detail: "SoldierHostController::setHP unresolved" };
        }
        this._value = ctx.config.actuators.health.value;
        logInfo("[+] actuator health: locking HP to " + this._value);
        return { ok: true, detail: "HP -> " + this._value };
    },

    onPlayerTick: function (ctx, playerPtr, dt) {
        try {
            setHP(playerPtr, this._value);
        } catch (e) {
            // Never let an actuator failure escape into the game loop.
        }
    }
};

export { getHP };

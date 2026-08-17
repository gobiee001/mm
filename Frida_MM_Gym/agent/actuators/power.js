// Force player boost/power every frame.
//
// Ported from Frida_finalScripts/Player/getSetPower.js, which resolves the right
// symbols but writes 10.0. Default here is 100.0.
//
// Note: Frida_finalScripts/Player/setGetPower.js is NOT the reference -- it
// declares setPower(float) as ['pointer','int'] and passes 200, which pushes an
// integer bit pattern into a float parameter.

import { nf } from "../core/symbols.js";
import { logInfo } from "../core/config.js";

const setPower = nf("_ZN21SoldierHostController8setPowerEf", "void", ["pointer", "float"]);
const getPower = nf("_ZN21SoldierHostController8getPowerEv", "float", ["pointer"]);

export const power = {
    name: "power",

    enabled: function (cfg) {
        return cfg.actuators.power.enabled;
    },

    init: function (ctx) {
        if (setPower === null) {
            return { ok: false, detail: "SoldierHostController::setPower unresolved" };
        }
        this._value = ctx.config.actuators.power.value;
        logInfo("[+] actuator power: locking power to " + this._value);
        return { ok: true, detail: "power -> " + this._value };
    },

    onPlayerTick: function (ctx, playerPtr, dt) {
        try {
            setPower(playerPtr, this._value);
        } catch (e) {
            // swallow
        }
    }
};

export { getPower };

// Infinite ammo, with the reload still happening.
//
// Two independent mechanisms:
//
// 1. Every frame, top the *reserve* ammo back up to capacity. Reserve never
//    depletes, so when the clip empties the game triggers its own reload
//    naturally and it always succeeds. The animation and its delay are
//    untouched -- this alone satisfies "reload should happen, but infinite
//    ammo".
//
// 2. Detect the isReloading() true -> false edge and refill the clip to
//    capacity, guaranteeing a full magazine on reload completion.
//
// Deliberately NOT done: hooking Weapon::reloadWeapon() and refilling onLeave.
// That function only *initiates* the reload (it starts a timer); refilling there
// would leave the clip full while the timer still runs, and risks
// short-circuiting the animation we want to keep.

import { logInfo, logDebug } from "../core/config.js";
import {
    primaryOf, capacities,
    getClip, setClip, getAmmo, setAmmo, isReloading
} from "../core/weapon.js";

export const ammo = {
    name: "ammo",

    enabled: function (cfg) {
        return cfg.actuators.ammo.enabled;
    },

    init: function (ctx) {
        const missing = [];
        if (setAmmo === null) missing.push("Weapon::setAmmo");
        if (setClip === null) missing.push("Weapon::setClip");
        if (isReloading === null) missing.push("Weapon::isReloading");
        if (missing.length > 0) {
            return { ok: false, detail: "unresolved: " + missing.join(", ") };
        }

        const a = ctx.config.actuators.ammo;
        this._refillReserve = a.refill_reserve_every_frame;
        this._refillClipOnReloadEnd = a.refill_clip_on_reload_end;

        // Previous isReloading() state, keyed by weapon pointer string, so the
        // falling edge survives weapon swaps and respawns.
        this._wasReloading = {};

        logInfo("[+] actuator ammo: reserve="
            + (this._refillReserve ? "infinite" : "off")
            + ", clip-on-reload-end="
            + (this._refillClipOnReloadEnd ? "on" : "off"));
        return { ok: true, detail: "infinite reserve + clip refill on reload end" };
    },

    onNewSpawn: function (ctx, playerPtr) {
        // Weapon instances are recreated on respawn; stale edge state would
        // otherwise suppress the first refill of the new life.
        this._wasReloading = {};
    },

    onPlayerTick: function (ctx, playerPtr, dt) {
        const weapon = primaryOf(playerPtr);
        if (weapon === null) return;

        const caps = capacities(weapon);
        if (caps === null) return;

        try {
            // 1. Keep the reserve topped up so a reload can always draw from it.
            if (this._refillReserve && caps.ammo !== null && setAmmo !== null) {
                if (getAmmo === null || getAmmo(weapon) < caps.ammo) {
                    setAmmo(weapon, caps.ammo);
                }
            }

            // 2. Refill the clip on the reload falling edge.
            if (this._refillClipOnReloadEnd && caps.clip !== null) {
                const key = weapon.toString();
                const now = !!isReloading(weapon);
                const was = this._wasReloading[key] === true;

                if (was && !now) {
                    setClip(weapon, caps.clip);
                    logDebug("[.] ammo: reload finished, clip -> " + caps.clip);
                }
                this._wasReloading[key] = now;
            }
        } catch (e) {
            // swallow
        }
    }
};

// Restrict the player to a single weapon (UZI by default).
//
// Policy: set ONCE PER SPAWN. The equip fires only when a new
// SoldierHostController pointer is observed -- game start or respawn -- exactly
// as Frida_finalScripts/weapon.js:64-98 does. We do not re-enforce every frame,
// so a mid-round pickup is left alone.
//
// What weapon.js did not do, and this does: strip the other slots
// (secondary / dual / side) so the UZI really is the only weapon.
//
// ItemType values (from weapon.js:11-15):
//   1 MACHETE   2 FRAGNADE  3 DEAGLE   4 MAGNUM   5 UZI      6 MP5
//   7 AK47      8 M16       9 SHOTGUN 10 M93BA   11 SMAW    12 ROCKET
//  13 RIOTSHIELD 16 M14    17 PHASR   18 GDEAGLE 19 FLAMETHROWER
//  20 GASNADE  21 EMP      23 PROXYNADE 24 SAW   25 SAWGUN  26 TAVOR
//  27 MINIGUN  28 TEC9     29 RG6     30 EMPNADE 31 XM8     32 MORTAR

import { nf } from "../core/symbols.js";
import { logInfo } from "../core/config.js";
import {
    getSecondaryWeapon, getDualWeapon, getSideWeapon,
    getType, primaryOf
} from "../core/weapon.js";

const sharedWeaponFactory = nf("_ZN13WeaponFactory19sharedWeaponFactoryEv", "pointer", []);
const createWeaponFromAmmoType = nf(
    "_ZN13WeaponFactory24createWeaponFromAmmoTypeE8ItemType",
    "pointer", ["pointer", "int"]
);
const addPrimaryWeapon = nf(
    "_ZN21SoldierHostController16addPrimaryWeaponEP6Weapon",
    "void", ["pointer", "pointer"]
);

const removeSecondary = nf("_ZN21SoldierHostController21removeSecondaryWeaponEv", "void", ["pointer"]);
const removeDual = nf("_ZN21SoldierHostController16removeDualWeaponEv", "void", ["pointer"]);
const removeSide = nf("_ZN21SoldierHostController16removeSideWeaponEv", "void", ["pointer"]);

function slotOccupied(getter, playerPtr) {
    if (getter === null) return null;
    try {
        const w = getter(playerPtr);
        return (w !== null && !w.isNull());
    } catch (e) {
        return null;
    }
}

export const loadout = {
    name: "loadout",

    enabled: function (cfg) {
        return cfg.actuators.loadout.enabled;
    },

    init: function (ctx) {
        const missing = [];
        if (sharedWeaponFactory === null) missing.push("WeaponFactory::sharedWeaponFactory");
        if (createWeaponFromAmmoType === null) missing.push("WeaponFactory::createWeaponFromAmmoType");
        if (addPrimaryWeapon === null) missing.push("SoldierHostController::addPrimaryWeapon");
        if (missing.length > 0) {
            return { ok: false, detail: "unresolved: " + missing.join(", ") };
        }

        const l = ctx.config.actuators.loadout;
        this._weaponType = l.weapon_type;
        this._stripOthers = l.strip_other_slots;

        logInfo("[+] actuator loadout: weapon_type=" + this._weaponType
            + ", strip_other_slots=" + this._stripOthers
            + " (applied once per spawn)");
        return { ok: true, detail: "type " + this._weaponType + " once per spawn" };
    },

    // Called by player_tick when a new SoldierHostController pointer appears.
    onNewSpawn: function (ctx, playerPtr) {
        try {
            const factory = sharedWeaponFactory();
            if (factory === null || factory.isNull()) {
                logInfo("[-] loadout: sharedWeaponFactory returned NULL");
                return;
            }

            const weapon = createWeaponFromAmmoType(factory, this._weaponType);
            if (weapon === null || weapon.isNull()) {
                logInfo("[-] loadout: createWeaponFromAmmoType(" + this._weaponType + ") returned NULL");
                return;
            }

            addPrimaryWeapon(playerPtr, weapon);

            if (this._stripOthers) {
                if (removeSecondary !== null) { try { removeSecondary(playerPtr); } catch (e) {} }
                if (removeDual !== null) { try { removeDual(playerPtr); } catch (e) {} }
                if (removeSide !== null) { try { removeSide(playerPtr); } catch (e) {} }
            }

            // Report what actually stuck, so verification does not depend on
            // trusting the calls above.
            const prim = primaryOf(playerPtr);
            let primType = null;
            if (prim !== null && getType !== null) {
                try { primType = getType(prim); } catch (e) {}
            }

            logInfo("[+] loadout: spawn " + playerPtr
                + " primary=" + prim + " type=" + primType
                + " secondary=" + slotOccupied(getSecondaryWeapon, playerPtr)
                + " dual=" + slotOccupied(getDualWeapon, playerPtr)
                + " side=" + slotOccupied(getSideWeapon, playerPtr));
        } catch (e) {
            logInfo("[!] loadout: error during equip: " + e.message);
        }
    }
};

// Weapon accessors, shared by the ammo actuator and the player observation
// builder.
//
// Every symbol here is confirmed present in this build but was entirely unused
// by the old scripts -- Frida_finalScripts/Player/player_ammo.js read ammo from
// the raw offset Weapon+0x1ee instead. The real accessors are preferred; 0x1ee
// is kept only as a documented fallback (see readClipRaw).

import { nf } from "./symbols.js";

// Weapon slots on the soldier (declared on SoldierController, inherited by
// SoldierHostController).
export const getPrimaryWeapon = nf("_ZN17SoldierController16getPrimaryWeaponEv", "pointer", ["pointer"]);
export const getSecondaryWeapon = nf("_ZN17SoldierController18getSecondaryWeaponEv", "pointer", ["pointer"]);
export const getDualWeapon = nf("_ZN17SoldierController13getDualWeaponEv", "pointer", ["pointer"]);
export const getSideWeapon = nf("_ZN17SoldierController13getSideWeaponEv", "pointer", ["pointer"]);

// Weapon state.
export const getClip = nf("_ZN6Weapon7getClipEv", "int", ["pointer"]);
export const setClip = nf("_ZN6Weapon7setClipEi", "void", ["pointer", "int"]);
export const getAmmo = nf("_ZN6Weapon7getAmmoEv", "int", ["pointer"]);
export const setAmmo = nf("_ZN6Weapon7setAmmoEi", "void", ["pointer", "int"]);
export const getClipCapacity = nf("_ZN6Weapon15getClipCapacityEv", "int", ["pointer"]);
export const getAmmoCapacity = nf("_ZN6Weapon15getAmmoCapacityEv", "int", ["pointer"]);
export const isReloading = nf("_ZN6Weapon11isReloadingEv", "bool", ["pointer"]);
export const isTriggering = nf("_ZN6Weapon12isTriggeringEv", "bool", ["pointer"]);
export const getType = nf("_ZN6Weapon7getTypeEv", "int", ["pointer"]);
export const getReloadTime = nf("_ZN6Weapon13getReloadTimeEv", "float", ["pointer"]);

// Legacy raw offset used by Frida_finalScripts/Player/player_ammo.js. Superseded
// by getClip(); retained for cross-checking if the accessor ever misbehaves.
const CLIP_RAW_OFFSET = 0x1ee;

export function readClipRaw(weaponPtr) {
    if (weaponPtr === null || weaponPtr.isNull()) return null;
    try {
        return weaponPtr.add(CLIP_RAW_OFFSET).readS16();
    } catch (e) {
        return null;
    }
}

// ---------------------------------------------------------------------------
// Capacity cache.
//
// getClipCapacity() / getAmmoCapacity() are constant for the lifetime of a
// weapon instance, so calling them 60x/sec is wasted work. Keyed by pointer
// string; cleared wholesale when it grows past a cap, since weapons are
// recreated on every respawn.
// ---------------------------------------------------------------------------

const MAX_CACHED = 64;
let _caps = {};
let _capCount = 0;

export function capacities(weaponPtr) {
    if (weaponPtr === null || weaponPtr.isNull()) return null;
    const key = weaponPtr.toString();
    const hit = _caps[key];
    if (hit !== undefined) return hit;

    if (_capCount > MAX_CACHED) {
        _caps = {};
        _capCount = 0;
    }

    let clipCap = null;
    let ammoCap = null;
    try {
        if (getClipCapacity !== null) clipCap = getClipCapacity(weaponPtr);
    } catch (e) { /* leave null */ }
    try {
        if (getAmmoCapacity !== null) ammoCap = getAmmoCapacity(weaponPtr);
    } catch (e) { /* leave null */ }

    const entry = { clip: clipCap, ammo: ammoCap };
    _caps[key] = entry;
    _capCount++;
    return entry;
}

export function resetCapacityCache() {
    _caps = {};
    _capCount = 0;
}

// Safe wrapper -- returns the primary weapon pointer or null.
export function primaryOf(playerPtr) {
    if (getPrimaryWeapon === null || playerPtr === null || playerPtr.isNull()) return null;
    try {
        const w = getPrimaryWeapon(playerPtr);
        if (w === null || w.isNull()) return null;
        return w;
    } catch (e) {
        return null;
    }
}

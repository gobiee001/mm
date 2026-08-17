// Player snapshot builder.
//
// latch() runs on every SoldierHostController::updateStep and does only the
// cheap work: remember the controller pointer and dt, and keep the
// finite-difference velocity tracker current.
//
// snapshot() does the full read and is called only on emit frames, from inside
// EnemyManager::updateStep. Same game thread, same frame, so the controller and
// its weapon are alive.
//
// Aim angle comes from SoldierHostController::getFireAngle -- the player's
// actual aim. Note that Frida_finalScripts/joystick/aim_joystick.js reads
// Joypad::getFireAngle instead, which is the input device, and force-overwrites
// it to 180.

import { nf } from "../core/symbols.js";
import { getMapPosition, getScreenPosition } from "../core/ccnode.js";
import { probe, readVec, chosen, buildVariants, createVelocityTracker } from "../core/cpvect.js";
import {
    primaryOf, capacities,
    getClip, getAmmo, isReloading, isTriggering, getType, getReloadTime
} from "../core/weapon.js";

const getHP = nf("_ZN21SoldierHostController5getHPEv", "int", ["pointer"]);
const getPower = nf("_ZN21SoldierHostController8getPowerEv", "float", ["pointer"]);
const getFireAngle = nf("_ZN21SoldierHostController12getFireAngleEv", "float", ["pointer"]);
const getSoldierView = nf("_ZN21SoldierHostController14getSoldierViewEv", "pointer", ["pointer"]);
const isDead = nf("_ZN17SoldierController6isDeadEv", "bool", ["pointer"]);
const getAlive = nf("_ZN17SoldierController8getAliveEv", "bool", ["pointer"]);

const posVariants = buildVariants("_ZN17SoldierController15getBodyPositionEv");
const velVariants = buildVariants("_ZN17SoldierController15getBodyVelocityEv");

const _velTracker = createVelocityTracker();

let _ptr = null;
let _dt = 0;
let _fdVel = null;      // finite-difference velocity, kept current per frame
let _probed = false;

function nodeOf(playerPtr) {
    if (getSoldierView === null) return null;
    try {
        const v = getSoldierView(playerPtr);
        if (v === null || v.isNull()) return null;
        return v;
    } catch (e) {
        return null;
    }
}

function mapPos(playerPtr) {
    const node = nodeOf(playerPtr);
    let pos = (node !== null) ? getMapPosition(node) : null;
    if (pos === null) pos = readVec(posVariants, playerPtr);
    return pos;
}

function scalar(fn, p) {
    if (fn === null) return null;
    try {
        const v = fn(p);
        return (typeof v === "number" && !isFinite(v)) ? null : v;
    } catch (e) {
        return null;
    }
}

// Resolve the cpVect ABI once, using CCNode::getPosition as the ground-truth
// oracle. Called on the first player tick, where a live controller is available.
export function ensureProbe(playerPtr) {
    if (_probed) return;
    _probed = true;
    const node = nodeOf(playerPtr);
    const oracle = (node !== null) ? getMapPosition(node) : null;
    probe(posVariants, playerPtr, oracle);
}

// Cheap per-frame latch.
export function latch(playerPtr, dt) {
    _ptr = playerPtr;
    _dt = dt;

    // Only pay for position sampling when the native velocity path is
    // unavailable; otherwise velocity is read directly at snapshot time.
    if (chosen() === "finite_diff") {
        const pos = mapPos(playerPtr);
        if (pos !== null) {
            _fdVel = _velTracker.update(playerPtr.toString(), pos, dt);
        }
    }
}

export function onNewSpawn() {
    // The controller and its weapon are new objects; stale deltas would produce
    // one bogus velocity spike.
    _velTracker.reset();
    _fdVel = null;
}

export function currentPtr() {
    return _ptr;
}

export function currentDt() {
    return _dt;
}

// Full read. Returns { present: false } when there is no live player.
export function snapshot(cfg) {
    const p = _ptr;
    if (p === null || p.isNull()) return { present: false };

    const pos = mapPos(p);
    if (pos === null) return { present: false, ptr: p.toString() };

    let vel = readVec(velVariants, p);
    if (vel === null) vel = _fdVel;
    if (vel === null) vel = { x: 0.0, y: 0.0 };

    const out = {
        present: true,
        ptr: p.toString(),
        hp: scalar(getHP, p),
        power: scalar(getPower, p),
        alive: scalar(getAlive, p),
        dead: scalar(isDead, p),
        pos: pos,
        vel: vel,
        aim_angle: scalar(getFireAngle, p)
    };

    if (cfg.include_screen_coords) {
        const node = nodeOf(p);
        out.screen = (node !== null) ? getScreenPosition(node) : null;
    }

    // Weapon block. `clip` is rounds in the gun; `ammo` is the reserve.
    const w = primaryOf(p);
    if (w === null) {
        out.weapon = null;
    } else {
        const caps = capacities(w);
        out.weapon = {
            ptr: w.toString(),
            type: scalar(getType, w),
            clip: scalar(getClip, w),
            clip_capacity: caps ? caps.clip : null,
            ammo: scalar(getAmmo, w),
            ammo_capacity: caps ? caps.ammo : null,
            is_reloading: scalar(isReloading, w),
            is_triggering: scalar(isTriggering, w),
            reload_time: scalar(getReloadTime, w)
        };
    }

    return out;
}

// Exposed so hooks/enemy_tick.js can compute enemy distances without a second
// position read.
export function currentMapPos() {
    if (_ptr === null || _ptr.isNull()) return null;
    return mapPos(_ptr);
}

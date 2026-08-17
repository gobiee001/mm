// Enemy sweep.
//
// Walks every descriptor's CCDictionary and snapshots each live drone.
//
// MUST run on the game thread from inside EnemyManager::updateStep. The
// dictionaries are mutated when drones spawn and die, so every per-entity read
// is individually wrapped -- a freed pointer skips that drone rather than
// killing the whole frame.

import { getDictionaryObjects } from "../core/ccdict.js";
import { getMapPosition, getScreenPosition } from "../core/ccnode.js";
import { readVec, chosen, createVelocityTracker } from "../core/cpvect.js";
import { buildEnemyTypes } from "./enemy_types.js";

let _types = null;
const _velTracker = createVelocityTracker();

export function initEnemies() {
    _types = buildEnemyTypes();
    const summary = [];
    for (let i = 0; i < _types.length; i++) {
        const t = _types[i];
        summary.push(t.name + "{pos:" + (t.posVariants.struct !== null || t.posVariants.sret !== null)
            + ",vel:" + (t.velVariants.struct !== null || t.velVariants.sret !== null)
            + ",rot:" + (t.rotation !== null)
            + ",fire:" + (t.fireAngle !== null)
            + ",hp:" + (t.hp !== null) + "}");
    }
    return summary;
}

function scalar(fn, ptr) {
    if (fn === null) return null;
    try {
        const v = fn(ptr);
        return isFinite(v) ? v : null;
    } catch (e) {
        return null;
    }
}

// Snapshot one drone. Returns null if it cannot be read at all.
function snapshotDrone(type, dronePtr, idx, playerPos, dt, cfg) {
    const key = dronePtr.toString();

    // Position: prefer the CCNode path, which is verified working. Fall back to
    // the physics-body getter only if the node hop fails.
    const node = type.resolveNode(dronePtr);
    let pos = (node !== null) ? getMapPosition(node) : null;
    if (pos === null) {
        pos = readVec(type.posVariants, dronePtr);
    }
    if (pos === null) return null;

    let screen = null;
    if (cfg.include_screen_coords && node !== null) {
        screen = getScreenPosition(node);
    }

    // Velocity: native cpVect read, or finite-difference when the ABI probe
    // could not settle on a candidate.
    let vel = readVec(type.velVariants, dronePtr);
    if (vel === null) {
        vel = _velTracker.update(key, pos, dt);
    }

    const entry = {
        idx: idx,
        type: type.name,
        ptr: key,
        pos: pos,
        vel: vel,
        body_angle: scalar(type.rotation, dronePtr),
        fire_angle: scalar(type.fireAngle, dronePtr)
    };

    if (cfg.include_screen_coords) entry.screen = screen;
    if (cfg.include_enemy_hp) entry.hp = scalar(type.hp, dronePtr);

    if (playerPos !== null) {
        entry.dist = Math.hypot(pos.x - playerPos.x, pos.y - playerPos.y);
    }

    return entry;
}

// Sweep all enemy dictionaries off the EnemyManager pointer.
// Returns { enemies: [...], counts: {hawk, humanoid, worm} }.
export function sweep(enemyManagerPtr, playerPos, dt, cfg) {
    const enemies = [];
    const counts = {};

    if (_types === null || enemyManagerPtr === null || enemyManagerPtr.isNull()) {
        return { enemies: enemies, counts: counts };
    }

    for (let t = 0; t < _types.length; t++) {
        const type = _types[t];
        counts[type.name] = 0;

        let dictPtr;
        try {
            dictPtr = enemyManagerPtr.add(type.dictOffset).readPointer();
        } catch (e) {
            continue;
        }
        if (dictPtr.isNull()) continue;

        const drones = getDictionaryObjects(dictPtr);
        counts[type.name] = drones.length;

        for (let i = 0; i < drones.length; i++) {
            const p = drones[i];
            if (p.isNull()) continue;
            try {
                const snap = snapshotDrone(type, p, i, playerPos, dt, cfg);
                if (snap !== null) enemies.push(snap);
            } catch (e) {
                // Drone died mid-sweep; skip it and keep going.
            }
        }
    }

    return { enemies: enemies, counts: counts };
}

export function velocitySource() {
    return chosen() === "finite_diff" ? "finite_diff" : "native";
}

export function resetVelocityTracker() {
    _velTracker.reset();
}

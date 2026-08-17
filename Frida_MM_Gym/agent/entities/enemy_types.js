// Enemy type descriptor registry.
//
// Hawk / Humanoid / Worm are DATA here, not three copy-pasted code paths as in
// Frida_finalScripts/Enemies/{HawkDrone,HumanoidDrone,WormDrone}.js. Adding a
// fourth type is one descriptor object.
//
// There is no getType() on any drone class -- the binary contains exactly three
// (HawkDrone, HumanoidDrone, WormDrone) and the type is derived from which
// EnemyManager dictionary the pointer came out of.
//
// Per-type facts, all verified against the symbol dump:
//   * All three have getBodyPosition / getBodyVelocity / getBodyRotation / getHP.
//   * Only Hawk and Humanoid have getFireAngle. WormDrone genuinely has none.
//   * Hawk and Worm pointers ARE CCNodes. Humanoid is not: hop
//     HumanoidDrone+0x1ac -> SoldierAIController* -> getSoldierView() -> CCNode*.
//
// EnemyManager dictionary offsets (hardcoded, valid for this APK build):
//   +0x14 HawkDrone, +0x18 HumanoidDrone, +0x1c WormDrone

import { nf } from "../core/symbols.js";
import { buildVariants } from "../core/cpvect.js";

const getAISoldierView = nf(
    "_ZN19SoldierAIController14getSoldierViewEv",
    "pointer", ["pointer"]
);

const HUMANOID_AI_CONTROLLER_OFFSET = 0x1ac;

// Hawk and Worm are CCNodes directly.
function identityNode(dronePtr) {
    return dronePtr;
}

// Humanoid needs two hops to reach a CCNode.
function humanoidNode(dronePtr) {
    if (getAISoldierView === null) return null;
    try {
        const ai = dronePtr.add(HUMANOID_AI_CONTROLLER_OFFSET).readPointer();
        if (ai.isNull()) return null;
        const view = getAISoldierView(ai);
        if (view === null || view.isNull()) return null;
        return view;
    } catch (e) {
        return null;
    }
}

const DESCRIPTORS = [
    {
        name: "hawk",
        dictOffset: 0x14,
        resolveNode: identityNode,
        symbols: {
            position: "_ZN9HawkDrone15getBodyPositionEv",
            velocity: "_ZN9HawkDrone15getBodyVelocityEv",
            rotation: "_ZN9HawkDrone15getBodyRotationEv",
            fireAngle: "_ZN9HawkDrone12getFireAngleEv",
            hp: "_ZN9HawkDrone5getHPEv"
        }
    },
    {
        name: "humanoid",
        dictOffset: 0x18,
        resolveNode: humanoidNode,
        symbols: {
            position: "_ZN13HumanoidDrone15getBodyPositionEv",
            velocity: "_ZN13HumanoidDrone15getBodyVelocityEv",
            // The real symbol. Frida_finalScripts/Enemies/HumanoidDrone.js
            // aliased this to getFireAngle by mistake.
            rotation: "_ZN13HumanoidDrone15getBodyRotationEv",
            fireAngle: "_ZN13HumanoidDrone12getFireAngleEv",
            hp: "_ZN13HumanoidDrone5getHPEv"
        }
    },
    {
        name: "worm",
        dictOffset: 0x1c,
        resolveNode: identityNode,
        symbols: {
            position: "_ZN9WormDrone15getBodyPositionEv",
            velocity: "_ZN9WormDrone15getBodyVelocityEv",
            rotation: "_ZN9WormDrone15getBodyRotationEv",
            // WormDrone has no getFireAngle in this binary.
            fireAngle: null,
            hp: "_ZN9WormDrone5getHPEv"
        }
    }
];

// Resolve each descriptor's natives once. cpVect-returning getters get all ABI
// candidates built; scalar getters are plain NativeFunctions.
export function buildEnemyTypes() {
    const out = [];
    for (let i = 0; i < DESCRIPTORS.length; i++) {
        const d = DESCRIPTORS[i];
        out.push({
            name: d.name,
            dictOffset: d.dictOffset,
            resolveNode: d.resolveNode,
            posVariants: buildVariants(d.symbols.position),
            velVariants: buildVariants(d.symbols.velocity),
            rotation: d.symbols.rotation ? nf(d.symbols.rotation, "float", ["pointer"]) : null,
            fireAngle: d.symbols.fireAngle ? nf(d.symbols.fireAngle, "float", ["pointer"]) : null,
            hp: d.symbols.hp ? nf(d.symbols.hp, "int", ["pointer"]) : null
        });
    }
    return out;
}

export { DESCRIPTORS };

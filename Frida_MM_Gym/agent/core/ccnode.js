// cocos2d::CCNode coordinate helpers.
//
// Both calls below are verified working against this build (see
// Frida_finalScripts/Tests/test_drones_player.js:172-192).
//
//   CCNode::getPosition(float* outX, float* outY)          -> node/map space
//   CCNode::convertToWorldSpace(const CCPoint&)            -> screen space
//
// convertToWorldSpace uses the ARM sret convention: the hidden out-pointer is
// arg0, `this` is arg1, and the input CCPoint is arg2. Passing a zeroed CCPoint
// yields the node's own origin in world space.

import { nf } from "./symbols.js";

const getPositionFn = nf(
    "_ZN7cocos2d6CCNode11getPositionEPfS1_",
    "void", ["pointer", "pointer", "pointer"]
);

const convertToWorldSpaceFn = nf(
    "_ZN7cocos2d6CCNode19convertToWorldSpaceERKNS_7CCPointE",
    "pointer", ["pointer", "pointer", "pointer"]
);

// Pre-allocated scratch. Safe to share: every call happens sequentially on the
// game thread from inside a hook, never re-entrantly.
const zeroPoint = Memory.alloc(8);
zeroPoint.writeFloat(0.0);
zeroPoint.add(4).writeFloat(0.0);

const outX = Memory.alloc(4);
const outY = Memory.alloc(4);
const outPoint = Memory.alloc(8);

export function isReady() {
    return getPositionFn !== null;
}

export function hasScreenSpace() {
    return convertToWorldSpaceFn !== null;
}

// Node-local / in-game map coordinates. Returns null on any failure.
export function getMapPosition(nodePtr) {
    if (getPositionFn === null || nodePtr === null || nodePtr.isNull()) return null;
    try {
        getPositionFn(nodePtr, outX, outY);
        return { x: outX.readFloat(), y: outY.readFloat() };
    } catch (e) {
        return null;
    }
}

// Screen / viewport coordinates. Returns null when unavailable.
export function getScreenPosition(nodePtr) {
    if (convertToWorldSpaceFn === null || nodePtr === null || nodePtr.isNull()) return null;
    try {
        convertToWorldSpaceFn(outPoint, nodePtr, zeroPoint);
        return { x: outPoint.readFloat(), y: outPoint.add(4).readFloat() };
    } catch (e) {
        return null;
    }
}

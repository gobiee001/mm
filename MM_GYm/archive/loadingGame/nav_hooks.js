/**
 * nav_hooks.js - Frida script for Mini Militia menu navigation automation
 *
 * Hooks layer constructors and exposes RPC methods to invoke:
 * 1. MultiplayerGameLayer::onLocal(CCObject*)
 * 2. LocalGameLayer::onSurvival(CCObject*)
 */

'use strict';

const MODULE_NAME = "libcocos2dcpp.so";

let multiplayerLayerPtr = null;
let localLayerPtr = null;

function resolveSymbol(name) {
    let addr = Module.findExportByName(MODULE_NAME, name);
    if (addr !== null) return addr;

    try {
        const mod = Process.getModuleByName(MODULE_NAME);
        const syms = mod.enumerateSymbols();
        for (let i = 0; i < syms.length; i++) {
            if (syms[i].name === name) {
                return syms[i].address;
            }
        }
    } catch (e) {
        console.error("[Frida] Symbol search error:", e);
    }
    return null;
}

function initHooks() {
    console.log("[Frida] Initializing navigation hooks...");

    // Hook MultiplayerGameLayer constructors (C1/C2)
    const mpC1 = resolveSymbol("_ZN20MultiplayerGameLayerC1Ev");
    const mpC2 = resolveSymbol("_ZN20MultiplayerGameLayerC2Ev");
    const mpTarget = mpC2 || mpC1;

    if (mpTarget) {
        Interceptor.attach(mpTarget, {
            onLeave: function (retval) {
                multiplayerLayerPtr = this.context.r0;
                console.log("[Frida] Captured MultiplayerGameLayer instance at:", multiplayerLayerPtr);
            }
        });
        console.log("[Frida] Hooked MultiplayerGameLayer constructor at:", mpTarget);
    } else {
        console.warn("[Frida] MultiplayerGameLayer constructor not found.");
    }

    // Hook LocalGameLayer constructors (C1/C2)
    const localC1 = resolveSymbol("_ZN14LocalGameLayerC1Ev");
    const localC2 = resolveSymbol("_ZN14LocalGameLayerC2Ev");
    const localTarget = localC2 || localC1;

    if (localTarget) {
        Interceptor.attach(localTarget, {
            onLeave: function (retval) {
                localLayerPtr = this.context.r0;
                console.log("[Frida] Captured LocalGameLayer instance at:", localLayerPtr);
            }
        });
        console.log("[Frida] Hooked LocalGameLayer constructor at:", localTarget);
    } else {
        console.warn("[Frida] LocalGameLayer constructor not found.");
    }

    // Hook onLocal and onSurvival to observe manual/automatic invocations
    const onLocalAddr = resolveSymbol("_ZN20MultiplayerGameLayer7onLocalEPN7cocos2d8CCObjectE");
    if (onLocalAddr) {
        Interceptor.attach(onLocalAddr, {
            onEnter: function (args) {
                multiplayerLayerPtr = args[0]; // r0 = this
                console.log("[Frida] onLocal invoked! this =", args[0], "pSender =", args[1]);
            }
        });
    }

    const onSurvivalAddr = resolveSymbol("_ZN14LocalGameLayer10onSurvivalEPN7cocos2d8CCObjectE");
    if (onSurvivalAddr) {
        Interceptor.attach(onSurvivalAddr, {
            onEnter: function (args) {
                localLayerPtr = args[0]; // r0 = this
                console.log("[Frida] onSurvival invoked! this =", args[0], "pSender =", args[1]);
            }
        });
    }
}

// Cocos2d-x Scene Graph Search fallback: Find layer from running scene if already created
function findCurrentLayer(targetClassName) {
    try {
        const sharedDirectorAddr = resolveSymbol("_ZN7cocos2d10CCDirector14sharedDirectorEv");
        const getRunningSceneAddr = resolveSymbol("_ZN7cocos2d10CCDirector15getRunningSceneEv");
        const getChildrenAddr = resolveSymbol("_ZNK7cocos2d6CCNode11getChildrenEv");
        const countAddr = resolveSymbol("_ZNK7cocos2d7CCArray5countEv");
        const objectAtIndexAddr = resolveSymbol("_ZNK7cocos2d7CCArray12objectAtIndexEj");

        if (!sharedDirectorAddr || !getRunningSceneAddr) return null;

        const sharedDirector = new NativeFunction(sharedDirectorAddr, 'pointer', []);
        const getRunningScene = new NativeFunction(getRunningSceneAddr, 'pointer', ['pointer']);
        
        const director = sharedDirector();
        if (director.isNull()) return null;

        const scene = getRunningScene(director);
        if (scene.isNull()) return null;

        if (getChildrenAddr && countAddr && objectAtIndexAddr) {
            const getChildren = new NativeFunction(getChildrenAddr, 'pointer', ['pointer']);
            const count = new NativeFunction(countAddr, 'uint', ['pointer']);
            const objectAtIndex = new NativeFunction(objectAtIndexAddr, 'pointer', ['pointer', 'uint']);

            const childrenArray = getChildren(scene);
            if (!childrenArray.isNull()) {
                const total = count(childrenArray);
                for (let i = 0; i < total; i++) {
                    const child = objectAtIndex(childrenArray, i);
                    if (!child.isNull()) {
                        return child;
                    }
                }
            }
        }
        return scene;
    } catch (e) {
        console.error("[Frida] Scene graph traversal error:", e);
        return null;
    }
}

initHooks();

rpc.exports = {
    getStatus: function () {
        return {
            multiplayerLayer: multiplayerLayerPtr ? multiplayerLayerPtr.toString() : null,
            localLayer: localLayerPtr ? localLayerPtr.toString() : null
        };
    },

    callOnLocal: function () {
        const onLocalAddr = resolveSymbol("_ZN20MultiplayerGameLayer7onLocalEPN7cocos2d8CCObjectE");
        if (!onLocalAddr) {
            return { success: false, error: "Symbol _ZN20MultiplayerGameLayer7onLocalEPN7cocos2d8CCObjectE not found" };
        }

        let targetPtr = multiplayerLayerPtr;
        if (!targetPtr) {
            targetPtr = findCurrentLayer("MultiplayerGameLayer");
            if (targetPtr) multiplayerLayerPtr = targetPtr;
        }

        if (!targetPtr) {
            return { success: false, error: "MultiplayerGameLayer instance pointer not yet captured." };
        }

        try {
            // Clear debounce lock flag at offset 0x108
            targetPtr.add(0x108).writeU8(0);

            const onLocal = new NativeFunction(onLocalAddr, 'void', ['pointer', 'pointer']);
            // r0 = targetPtr, r1 = NULL
            onLocal(targetPtr, ptr(0));

            console.log("[Frida] Successfully invoked MultiplayerGameLayer::onLocal!");
            return { success: true, instance: targetPtr.toString() };
        } catch (e) {
            return { success: false, error: e.message };
        }
    },

    callOnSurvival: function () {
        const onSurvivalAddr = resolveSymbol("_ZN14LocalGameLayer10onSurvivalEPN7cocos2d8CCObjectE");
        if (!onSurvivalAddr) {
            return { success: false, error: "Symbol _ZN14LocalGameLayer10onSurvivalEPN7cocos2d8CCObjectE not found" };
        }

        let targetPtr = localLayerPtr;
        if (!targetPtr) {
            targetPtr = findCurrentLayer("LocalGameLayer");
            if (targetPtr) localLayerPtr = targetPtr;
        }

        if (!targetPtr) {
            return { success: false, error: "LocalGameLayer instance pointer not yet captured." };
        }

        try {
            // Clear debounce lock flag at offset 0x108
            targetPtr.add(0x108).writeU8(0);

            const onSurvival = new NativeFunction(onSurvivalAddr, 'void', ['pointer', 'pointer']);
            // r0 = targetPtr, r1 = NULL
            onSurvival(targetPtr, ptr(0));

            console.log("[Frida] Successfully invoked LocalGameLayer::onSurvival!");
            return { success: true, instance: targetPtr.toString() };
        } catch (e) {
            return { success: false, error: e.message };
        }
    }
};

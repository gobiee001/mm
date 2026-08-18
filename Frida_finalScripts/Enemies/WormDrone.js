import { getDictionaryObjects } from "../core/IterOverCCDic.js";

let moduleName = "libcocos2dcpp.so";
let moduleBase = Module.findBaseAddress(moduleName);

if (moduleBase === null) {
    console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
} else {
    console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

    // Resolve C++ exports
    const initEnemiesAddr = Module.findExportByName(
        moduleName,
        "_ZN12EnemyManager11initEnemiesEv"
    );

    const updateStepAddr = Module.findExportByName(
        moduleName,
        "_ZN12EnemyManager10updateStepEf"
    );

    const getBodyVelocityAddr = Module.findExportByName(
        moduleName,
        "_ZN9WormDrone15getBodyVelocityEv"
    );

    const getBodyVelocity = getBodyVelocityAddr ? new NativeFunction(
        getBodyVelocityAddr,
        'pointer',
        ['pointer', 'pointer']
    ) : null;

    const getPositionAddr = Module.findExportByName(
        moduleName,
        "_ZN7cocos2d6CCNode11getPositionEPfS1_"
    );

    const getNodePosition = getPositionAddr ? new NativeFunction(
        getPositionAddr,
        'void',
        ['pointer', 'pointer', 'pointer']
    ) : null;

    const convertToWorldSpaceAddr = Module.findExportByName(
        moduleName,
        "_ZN7cocos2d6CCNode19convertToWorldSpaceERKNS_7CCPointE"
    );

    const convertToWorldSpace = convertToWorldSpaceAddr ? new NativeFunction(
        convertToWorldSpaceAddr,
        'pointer',
        ['pointer', 'pointer', 'pointer']
    ) : null;

    const getBodyRotationAddr = Module.findExportByName(
        moduleName,
        "_ZN9WormDrone15getBodyRotationEv"
    );

    const getBodyRotation = getBodyRotationAddr ? new NativeFunction(
        getBodyRotationAddr,
        'float',
        ['pointer']
    ) : null;

    const getWormHPAddr = Module.findExportByName(
        moduleName,
        "_ZN9WormDrone5getHPEv"
    );

    const getWormHP = getWormHPAddr ? new NativeFunction(
        getWormHPAddr,
        'int',
        ['pointer']
    ) : null;

    // Pre-allocate CCPoint buffers for coordinate conversion
    const zeroPoint = Memory.alloc(8);
    zeroPoint.writeFloat(0.0);
    zeroPoint.add(4).writeFloat(0.0);

    const screenOutPoint = Memory.alloc(8);
    const mapXBuf = Memory.alloc(4);
    const mapYBuf = Memory.alloc(4);

    // Modularized helper functions for reading and logging attributes
    function logWormVelocity(outBuffer, wormPtr) {
        if (getBodyVelocity !== null) {
            getBodyVelocity(outBuffer, wormPtr);
            const vel_x = outBuffer.readDouble();
            const vel_y = outBuffer.add(8).readDouble();
            console.log(`        Velocity: vel_x=${vel_x.toFixed(2)}, vel_y=${vel_y.toFixed(2)}`);
        }
    }

    function logWormPosition(wormPtr) {
        if (getNodePosition !== null && !wormPtr.isNull()) {
            getNodePosition(wormPtr, mapXBuf, mapYBuf);
            const mapX = mapXBuf.readFloat();
            const mapY = mapYBuf.readFloat();

            let screenX = null, screenY = null;
            if (convertToWorldSpace !== null) {
                convertToWorldSpace(screenOutPoint, wormPtr, zeroPoint);
                screenX = screenOutPoint.readFloat();
                screenY = screenOutPoint.add(4).readFloat();
            }

            const screenStr = screenX !== null ? `(${screenX.toFixed(2)}, ${screenY.toFixed(2)})` : "N/A";
            console.log(`        Position: Map=(${mapX.toFixed(2)}, ${mapY.toFixed(2)}) | Screen=${screenStr}`);
        }
    }

    function logWormRotation(wormPtr) {
        if (getBodyRotation !== null) {
            const rotation = getBodyRotation(wormPtr);
            console.log(`        Rotation: ${rotation.toFixed(2)} rad`);
        }
    }

    function logWormHP(wormPtr) {
        if (getWormHP !== null) {
            const hp = getWormHP(wormPtr);
            console.log(`        HP: ${hp}`);
        }
    }

    if (initEnemiesAddr !== null && updateStepAddr !== null && getNodePosition !== null) {
        console.log("[+] WormDrone.js: Successfully resolved exports.");

        let enemyManagerPtr = ptr(0);

        // Intercept initEnemies to capture the 'this' pointer (EnemyManager instance)
        Interceptor.attach(initEnemiesAddr, {
            onEnter: function (args) {
                enemyManagerPtr = args[0];
                console.log("[+] EnemyManager::initEnemies called. this = " + enemyManagerPtr);
            }
        });

        // Pre-allocate 16-byte output buffer for velocity vectors
        const out = Memory.alloc(16);
        let frameCount = 0;

        // Intercept EnemyManager::updateStep to iterate over worm drones
        Interceptor.attach(updateStepAddr, {
            onEnter: function (args) {
                // If script is loaded mid-game, capture 'this' pointer from updateStep
                if (enemyManagerPtr.isNull()) {
                    enemyManagerPtr = args[0];
                }

                frameCount++;
                // Throttle logging to once every 60 frames (~1 second) to avoid console flood
                if (frameCount % 60 === 0) {
                    // CCDictionary of active worm drones is at offset 0x1c from the EnemyManager pointer
                    const dictPtr = enemyManagerPtr.add(0x1c).readPointer();
                    
                    if (!dictPtr.isNull()) {
                        const worms = getDictionaryObjects(dictPtr);
                        console.log(`[+] Active WormDrones Count: ${worms.length}`);
                        
                        if (worms.length > 0) {
                            console.log(`[+] Active WormDrone Pointers: [ ${worms.map(w => w.toString()).join(", ")} ]`);
                            for (let i = 0; i < worms.length; i++) {
                                const wormPtr = worms[i];
                                if (!wormPtr.isNull()) {
                                    console.log(`    WormDrone [${i}]: ${wormPtr}`);
                                    logWormPosition(wormPtr);
                                    // logWormVelocity(out, wormPtr);
                                    // logWormRotation(wormPtr);
                                    // logWormHP(wormPtr);
                                }
                            }
                        }
                    }
                }
            }
        });
    } else {
        console.log("[-] WormDrone.js: Failed to resolve one or more exports.");
    }
}

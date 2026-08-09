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

    const getBodyVelocity = new NativeFunction(
        getBodyVelocityAddr,
        'pointer',
        ['pointer', 'pointer']
    );

    const getBodyPositionAddr = Module.findExportByName(
        moduleName,
        "_ZN9WormDrone15getBodyPositionEv"
    );

    const getBodyPosition = new NativeFunction(
        getBodyPositionAddr,
        'pointer',
        ['pointer', 'pointer']
    );

    const getBodyRotationAddr = Module.findExportByName(
        moduleName,
        "_ZN9WormDrone15getBodyRotationEv"
    );

    const getBodyRotation = new NativeFunction(
        getBodyRotationAddr,
        'float',
        ['pointer']
    );

    const getWormHPAddr = Module.findExportByName(
        moduleName,
        "_ZN9WormDrone5getHPEv"
    );

    const getWormHP = new NativeFunction(
        getWormHPAddr,
        'int',
        ['pointer']
    );

    // Modularized helper functions for reading and logging attributes
    function logWormVelocity(outBuffer, wormPtr) {
        getBodyVelocity(outBuffer, wormPtr);
        const vel_x = outBuffer.readFloat();
        const vel_y = outBuffer.add(4).readFloat();
        const vel_z = outBuffer.add(8).readFloat();
        const vel_w = outBuffer.add(12).readFloat();
        console.log(`        Velocity: vel_x=${vel_x.toFixed(2)}, vel_y=${vel_y.toFixed(2)}, vel_z=${vel_z.toFixed(2)}, vel_w=${vel_w.toFixed(2)}`);
    }

    function logWormPosition(outBuffer, wormPtr) {
        getBodyPosition(outBuffer, wormPtr);
        const pos_x = outBuffer.readFloat();
        const pos_y = outBuffer.add(4).readFloat();
        const pos_z = outBuffer.add(8).readFloat();
        const pos_w = outBuffer.add(12).readFloat();
        console.log(`        Position: pos_x=${pos_x.toFixed(2)}, pos_y=${pos_y.toFixed(2)}, pos_z=${pos_z.toFixed(2)}, pos_w=${pos_w.toFixed(2)}`);
    }

    function logWormRotation(wormPtr) {
        const rotation = getBodyRotation(wormPtr);
        console.log(`        Rotation: ${rotation.toFixed(2)} rad`);
    }

    // ...
    function logWormHP(wormPtr) {
        const hp = getWormHP(wormPtr);
        console.log(`        HP: ${hp}`);
    }

    if (initEnemiesAddr !== null && updateStepAddr !== null && 
        getBodyVelocityAddr !== null && getBodyPositionAddr !== null && 
        getBodyRotationAddr !== null && getWormHPAddr !== null) {
        
        console.log("[+] WormDrone.js: Successfully resolved exports.");

        let enemyManagerPtr = ptr(0);

        // Intercept initEnemies to capture the 'this' pointer (EnemyManager instance)
        Interceptor.attach(initEnemiesAddr, {
            onEnter: function (args) {
                enemyManagerPtr = args[0];
                console.log("[+] EnemyManager::initEnemies called. this = " + enemyManagerPtr);
            }
        });

        // Pre-allocate 16-byte output buffer for position and velocity vectors (struct return)
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
                                    logWormVelocity(out, wormPtr);
                                    logWormPosition(out, wormPtr);
                                    logWormRotation(wormPtr);
                                    logWormHP(wormPtr);
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

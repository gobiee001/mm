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
        "_ZN9HawkDrone15getBodyVelocityEv"
    );

    const getBodyVelocity = new NativeFunction(
        getBodyVelocityAddr,
        'pointer',
        ['pointer', 'pointer']
    );

    // getBodyPosition is read via memory offsets instead of function call

    const getBodyRotationAddr = Module.findExportByName(
        moduleName,
        "_ZN9HawkDrone15getBodyRotationEv"
    );

    const getBodyRotation = new NativeFunction(
        getBodyRotationAddr,
        'float',
        ['pointer']
    );

    const getFireAngleAddr = Module.findExportByName(
        moduleName,
        "_ZN9HawkDrone12getFireAngleEv"
    );

    const getFireAngle = new NativeFunction(
        getFireAngleAddr,
        'float',
        ['pointer']
    );

    const getHawkHPAddr = Module.findExportByName(
        moduleName,
        "_ZN9HawkDrone5getHPEv"
    );

    const getHawkHP = new NativeFunction(
        getHawkHPAddr,
        'int',
        ['pointer']
    );

    // Modularized helper functions for reading and logging attributes
    function logHawkVelocity(outBuffer, hawkPtr) {
        getBodyVelocity(outBuffer, hawkPtr);
        const vel_x = outBuffer.readFloat();
        const vel_y = outBuffer.add(4).readFloat();
        const vel_z = outBuffer.add(8).readFloat();
        const vel_w = outBuffer.add(12).readFloat();
        console.log(`        Velocity: vel_x=${vel_x.toFixed(2)}, vel_y=${vel_y.toFixed(2)}, vel_z=${vel_z.toFixed(2)}, vel_w=${vel_w.toFixed(2)}`);
    }

    function logHawkPosition(outBuffer, hawkPtr) {
        const bodyStatePtr = hawkPtr.add(0x1c8).readPointer();
        let pos_x = 0.0, pos_y = 0.0, pos_z = 0.0, pos_w = 0.0;
        if (!bodyStatePtr.isNull()) {
            pos_x = bodyStatePtr.add(0x28).readFloat();
            pos_y = bodyStatePtr.add(0x2c).readFloat();
            pos_z = bodyStatePtr.add(0x30).readFloat();
            pos_w = bodyStatePtr.add(0x34).readFloat();
        }
        console.log(`        Position: pos_x=${pos_x.toFixed(2)}, pos_y=${pos_y.toFixed(2)}, pos_z=${pos_z.toFixed(2)}, pos_w=${pos_w.toFixed(2)}`);
    }

    function logHawkRotation(hawkPtr) {
        const rotation = getBodyRotation(hawkPtr);
        console.log(`        Rotation: ${rotation.toFixed(2)} rad`);
    }

    function logHawkFireAngle(hawkPtr) {
        const fireAngle = getFireAngle(hawkPtr);
        console.log(`        Fire Angle: ${fireAngle.toFixed(2)} rad`);
    }

    function logHawkHP(hawkPtr) {
        const hp = getHawkHP(hawkPtr);
        console.log(`        HP: ${hp}`);
    }

    if (initEnemiesAddr !== null && updateStepAddr !== null && 
        getBodyVelocityAddr !== null && 
        getBodyRotationAddr !== null && getFireAngleAddr !== null && 
        getHawkHPAddr !== null) {
        
        console.log("[+] HawkDrone.js: Successfully resolved exports.");

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

        // Intercept EnemyManager::updateStep to iterate over hawk drones
        Interceptor.attach(updateStepAddr, {
            onEnter: function (args) {
                // If script is loaded mid-game, capture 'this' pointer from updateStep
                if (enemyManagerPtr.isNull()) {
                    enemyManagerPtr = args[0];
                }

                frameCount++;
                // Throttle logging to once every 60 frames (~1 second) to avoid console flood
                if (frameCount % 60 === 0) {
                    // CCDictionary of active hawk drones is at offset 0x14 from the EnemyManager pointer
                    const dictPtr = enemyManagerPtr.add(0x14).readPointer();
                    
                    if (!dictPtr.isNull()) {
                        const hawks = getDictionaryObjects(dictPtr);
                        console.log(`[+] Active HawkDrones Count: ${hawks.length}`);
                        
                        if (hawks.length > 0) {
                            console.log(`[+] Active HawkDrone Pointers: [ ${hawks.map(h => h.toString()).join(", ")} ]`);
                            for (let i = 0; i < hawks.length; i++) {
                                const hawkPtr = hawks[i];
                                if (!hawkPtr.isNull()) {
                                    console.log(`    HawkDrone [${i}]: ${hawkPtr}`);
                                    logHawkVelocity(out, hawkPtr);
                                    logHawkPosition(out, hawkPtr);
                                    logHawkRotation(hawkPtr);
                                    logHawkFireAngle(hawkPtr);
                                    logHawkHP(hawkPtr);
                                }
                            }
                        }
                    }
                }
            }
        });
    } else {
        console.log("[-] HawkDrone.js: Failed to resolve one or more exports.");
    }
}

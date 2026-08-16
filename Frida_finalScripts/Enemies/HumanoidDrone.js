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
        "_ZN13HumanoidDrone15getBodyVelocityEv"
    );

    const getBodyVelocity = new NativeFunction(
        getBodyVelocityAddr,
        'pointer',
        ['pointer', 'pointer']
    );

    const getBodyPositionAddr = Module.findExportByName(
        moduleName,
        "_ZN13HumanoidDrone15getBodyPositionEv"
    );

    const getBodyPosition = new NativeFunction(
        getBodyPositionAddr,
        'pointer',
        ['pointer', 'pointer']
    );

    const getBodyRotationAddr = Module.findExportByName(
        moduleName,
        "_ZN13HumanoidDrone12getFireAngleEv"
    );

    const getBodyRotation = new NativeFunction(
        getBodyRotationAddr,
        'float',
        ['pointer']
    );

    const getFireAngleAddr = Module.findExportByName(
        moduleName,
        "_ZN13HumanoidDrone12getFireAngleEv"
    );

    const getFireAngle = new NativeFunction(
        getFireAngleAddr,
        'float',
        ['pointer']
    );

    const getHumanoidHPAddr = Module.findExportByName(
        moduleName,
        "_ZN13HumanoidDrone5getHPEv"
    );

    const getHumanoidHP = new NativeFunction(
        getHumanoidHPAddr,
        'int',
        ['pointer']
    );

    // Modularized helper functions for reading and logging attributes
    function logHumanoidVelocity(outBuffer, humanoidPtr) {
        getBodyVelocity(outBuffer, humanoidPtr);
        const vel_x = outBuffer.readFloat();
        const vel_y = outBuffer.add(4).readFloat();
        const vel_z = outBuffer.add(8).readFloat();
        const vel_w = outBuffer.add(12).readFloat();
        console.log(`        Velocity: vel_x=${vel_x.toFixed(2)}, vel_y=${vel_y.toFixed(2)}, vel_z=${vel_z.toFixed(2)}, vel_w=${vel_w.toFixed(2)}`);
    }

    function logHumanoidPosition(outBuffer, humanoidPtr) {
        getBodyPosition(outBuffer, humanoidPtr);
        const pos_x = outBuffer.readFloat();
        const pos_y = outBuffer.add(4).readFloat();
        const pos_z = outBuffer.add(8).readFloat();
        const pos_w = outBuffer.add(12).readFloat();
        console.log(`        Position: pos_x=${pos_x.toFixed(2)}, pos_y=${pos_y.toFixed(2)}, pos_z=${pos_z.toFixed(2)}, pos_w=${pos_w.toFixed(2)}`);
    }

    function logHumanoidRotation(humanoidPtr) {
        const rotation = getBodyRotation(humanoidPtr);
        console.log(`        Rotation: ${rotation.toFixed(2)} rad`);
    }

    function logHumanoidFireAngle(humanoidPtr) {
        const fireAngle = getFireAngle(humanoidPtr);
        console.log(`        Fire Angle: ${fireAngle.toFixed(2)} rad`);
    }

    function logHumanoidHP(humanoidPtr) {
        const hp = getHumanoidHP(humanoidPtr);
        console.log(`        HP: ${hp}`);
    }

    if (initEnemiesAddr !== null && updateStepAddr !== null && 
        getBodyVelocityAddr !== null && getBodyPositionAddr !== null && 
        getBodyRotationAddr !== null && getFireAngleAddr !== null && 
        getHumanoidHPAddr !== null) {
        
        console.log("[+] HumanoidDrone.js: Successfully resolved exports.");

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

        // Intercept EnemyManager::updateStep to iterate over humanoid drones
        Interceptor.attach(updateStepAddr, {
            onEnter: function (args) {
                // If script is loaded mid-game, capture 'this' pointer from updateStep
                if (enemyManagerPtr.isNull()) {
                    enemyManagerPtr = args[0];
                }

                frameCount++;
                // Throttle logging to once every 60 frames (~1 second) to avoid console flood
                if (frameCount % 60 === 0) {
                    // CCDictionary of active humanoid drones is at offset 0x18 from the EnemyManager pointer
                    const dictPtr = enemyManagerPtr.add(0x18).readPointer();
                    
                    if (!dictPtr.isNull()) {
                        const humanoids = getDictionaryObjects(dictPtr);
                        console.log(`[+] Active HumanoidDrones Count: ${humanoids.length}`);
                        
                        if (humanoids.length > 0) {
                            console.log(`[+] Active HumanoidDrone Pointers: [ ${humanoids.map(h => h.toString()).join(", ")} ]`);
                            for (let i = 0; i < humanoids.length; i++) {
                                const humanoidPtr = humanoids[i];
                                if (!humanoidPtr.isNull()) {
                                    console.log(`    HumanoidDrone [${i}]: ${humanoidPtr}`);
                                    logHumanoidVelocity(out, humanoidPtr);
                                    logHumanoidPosition(out, humanoidPtr);
                                    logHumanoidRotation(humanoidPtr);
                                    logHumanoidFireAngle(humanoidPtr);
                                    logHumanoidHP(humanoidPtr);
                                }
                            }
                        }
                    }
                }
            }
        });
    } else {
        console.log("[-] HumanoidDrone.js: Failed to resolve one or more exports.");
    }
}

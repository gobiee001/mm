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

    const getBodyVelocity = getBodyVelocityAddr ? new NativeFunction(
        getBodyVelocityAddr,
        'pointer',
        ['pointer', 'pointer']
    ) : null;

    const getAISoldierViewAddr = Module.findExportByName(
        moduleName,
        "_ZN19SoldierAIController14getSoldierViewEv"
    );

    const getAISoldierView = getAISoldierViewAddr ? new NativeFunction(
        getAISoldierViewAddr,
        'pointer',
        ['pointer']
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
        "_ZN13HumanoidDrone12getFireAngleEv"
    );

    const getBodyRotation = getBodyRotationAddr ? new NativeFunction(
        getBodyRotationAddr,
        'float',
        ['pointer']
    ) : null;

    const getFireAngleAddr = Module.findExportByName(
        moduleName,
        "_ZN13HumanoidDrone12getFireAngleEv"
    );

    const getFireAngle = getFireAngleAddr ? new NativeFunction(
        getFireAngleAddr,
        'float',
        ['pointer']
    ) : null;

    const getHumanoidHPAddr = Module.findExportByName(
        moduleName,
        "_ZN13HumanoidDrone5getHPEv"
    );

    const getHumanoidHP = getHumanoidHPAddr ? new NativeFunction(
        getHumanoidHPAddr,
        'int',
        ['pointer']
    ) : null;

    // Pre-allocate reusable buffers
    const zeroPoint = Memory.alloc(8);
    zeroPoint.writeFloat(0.0);
    zeroPoint.add(4).writeFloat(0.0);

    const screenOutPoint = Memory.alloc(8);
    const mapXBuf = Memory.alloc(4);
    const mapYBuf = Memory.alloc(4);

    // Modularized helper functions for reading and logging attributes
    function logHumanoidVelocity(outBuffer, humanoidPtr) {
        if (getBodyVelocity !== null) {
            getBodyVelocity(outBuffer, humanoidPtr);
            const vel_x = outBuffer.readDouble();
            const vel_y = outBuffer.add(8).readDouble();
            console.log(`        Velocity: vel_x=${vel_x.toFixed(2)}, vel_y=${vel_y.toFixed(2)}`);
        }
    }

    function logHumanoidPosition(humanoidPtr) {
        try {
            const aiControllerPtr = humanoidPtr.add(0x1ac).readPointer();
            if (!aiControllerPtr.isNull() && getAISoldierView !== null && getNodePosition !== null) {
                const hViewPtr = getAISoldierView(aiControllerPtr);
                if (!hViewPtr.isNull()) {
                    // 1. In-game Map Coordinates via CCNode::getPosition
                    getNodePosition(hViewPtr, mapXBuf, mapYBuf);
                    const mapX = mapXBuf.readFloat();
                    const mapY = mapYBuf.readFloat();

                    // 2. Screen Coordinates via CCNode::convertToWorldSpace
                    let screenX = null, screenY = null;
                    if (convertToWorldSpace !== null) {
                        convertToWorldSpace(screenOutPoint, hViewPtr, zeroPoint);
                        screenX = screenOutPoint.readFloat();
                        screenY = screenOutPoint.add(4).readFloat();
                    }

                    const screenStr = screenX !== null ? `(${screenX.toFixed(2)}, ${screenY.toFixed(2)})` : "N/A";
                    console.log(`        Position: Map=(${mapX.toFixed(2)}, ${mapY.toFixed(2)}) | Screen=${screenStr}`);
                }
            }
        } catch (e) {}
    }

    function logHumanoidRotation(humanoidPtr) {
        if (getBodyRotation !== null) {
            const rotation = getBodyRotation(humanoidPtr);
            console.log(`        Rotation: ${rotation.toFixed(2)} rad`);
        }
    }

    function logHumanoidFireAngle(humanoidPtr) {
        if (getFireAngle !== null) {
            const fireAngle = getFireAngle(humanoidPtr);
            console.log(`        Fire Angle: ${fireAngle.toFixed(2)} rad`);
        }
    }

    function logHumanoidHP(humanoidPtr) {
        if (getHumanoidHP !== null) {
            const hp = getHumanoidHP(humanoidPtr);
            console.log(`        HP: ${hp}`);
        }
    }

    if (initEnemiesAddr !== null && updateStepAddr !== null) {
        console.log("[+] HumanoidDrone.js: Successfully resolved exports.");

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
                                    logHumanoidPosition(humanoidPtr);
                                    // logHumanoidVelocity(out, humanoidPtr);
                                    // logHumanoidRotation(humanoidPtr);
                                    // logHumanoidFireAngle(humanoidPtr);
                                    // logHumanoidHP(humanoidPtr);
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

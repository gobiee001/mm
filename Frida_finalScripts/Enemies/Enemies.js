import { getDictionaryObjects } from "../core/IterOverCCDic.js";

let moduleName = "libcocos2dcpp.so";
let moduleBase = Module.findBaseAddress(moduleName);

if (moduleBase === null) {
    console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
} else {
    console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

    // Resolve EnemyManager core functions
    const initEnemiesAddr = Module.findExportByName(moduleName, "_ZN12EnemyManager11initEnemiesEv");
    const updateStepAddr = Module.findExportByName(moduleName, "_ZN12EnemyManager10updateStepEf");

    // Resolve HawkDrone functions
    const getHawkVelocityAddr = Module.findExportByName(moduleName, "_ZN9HawkDrone15getBodyVelocityEv");
    const getHawkRotationAddr = Module.findExportByName(moduleName, "_ZN9HawkDrone15getBodyRotationEv");
    const getHawkFireAngleAddr = Module.findExportByName(moduleName, "_ZN9HawkDrone12getFireAngleEv");
    const getHawkHPAddr = Module.findExportByName(moduleName, "_ZN9HawkDrone5getHPEv");

    // Resolve HumanoidDrone functions
    const getHumanoidVelocityAddr = Module.findExportByName(moduleName, "_ZN13HumanoidDrone15getBodyVelocityEv");
    const getAISoldierViewAddr = Module.findExportByName(moduleName, "_ZN19SoldierAIController14getSoldierViewEv");
    const getHumanoidFireAngleAddr = Module.findExportByName(moduleName, "_ZN13HumanoidDrone12getFireAngleEv");
    const getHumanoidHPAddr = Module.findExportByName(moduleName, "_ZN13HumanoidDrone5getHPEv");

    // Resolve WormDrone functions
    const getWormVelocityAddr = Module.findExportByName(moduleName, "_ZN9WormDrone15getBodyVelocityEv");
    const getWormRotationAddr = Module.findExportByName(moduleName, "_ZN9WormDrone15getBodyRotationEv");
    const getWormHPAddr = Module.findExportByName(moduleName, "_ZN9WormDrone5getHPEv");

    // Resolve CCNode functions
    const getPositionAddr = Module.findExportByName(moduleName, "_ZN7cocos2d6CCNode11getPositionEPfS1_");
    const convertToWorldSpaceAddr = Module.findExportByName(moduleName, "_ZN7cocos2d6CCNode19convertToWorldSpaceERKNS_7CCPointE");

    // Initialize NativeFunctions
    const getHawkVelocity = getHawkVelocityAddr ? new NativeFunction(getHawkVelocityAddr, 'pointer', ['pointer', 'pointer']) : null;
    const getHawkRotation = getHawkRotationAddr ? new NativeFunction(getHawkRotationAddr, 'float', ['pointer']) : null;
    const getHawkFireAngle = getHawkFireAngleAddr ? new NativeFunction(getHawkFireAngleAddr, 'float', ['pointer']) : null;
    const getHawkHP = getHawkHPAddr ? new NativeFunction(getHawkHPAddr, 'int', ['pointer']) : null;

    const getHumanoidVelocity = getHumanoidVelocityAddr ? new NativeFunction(getHumanoidVelocityAddr, 'pointer', ['pointer', 'pointer']) : null;
    const getAISoldierView = getAISoldierViewAddr ? new NativeFunction(getAISoldierViewAddr, 'pointer', ['pointer']) : null;
    const getHumanoidFireAngle = getHumanoidFireAngleAddr ? new NativeFunction(getHumanoidFireAngleAddr, 'float', ['pointer']) : null;
    const getHumanoidHP = getHumanoidHPAddr ? new NativeFunction(getHumanoidHPAddr, 'int', ['pointer']) : null;

    const getWormVelocity = getWormVelocityAddr ? new NativeFunction(getWormVelocityAddr, 'pointer', ['pointer', 'pointer']) : null;
    const getWormRotation = getWormRotationAddr ? new NativeFunction(getWormRotationAddr, 'float', ['pointer']) : null;
    const getWormHP = getWormHPAddr ? new NativeFunction(getWormHPAddr, 'int', ['pointer']) : null;

    const getNodePosition = getPositionAddr ? new NativeFunction(getPositionAddr, 'void', ['pointer', 'pointer', 'pointer']) : null;
    const convertToWorldSpace = convertToWorldSpaceAddr ? new NativeFunction(convertToWorldSpaceAddr, 'pointer', ['pointer', 'pointer', 'pointer']) : null;

    // Pre-allocate reusable buffers
    const zeroPoint = Memory.alloc(8);
    zeroPoint.writeFloat(0.0);
    zeroPoint.add(4).writeFloat(0.0);

    const screenOutPoint = Memory.alloc(8);
    const mapXBuf = Memory.alloc(4);
    const mapYBuf = Memory.alloc(4);
    const out = Memory.alloc(16);

    // Logging helpers
    function logVector(name, outBuffer, ptr, nativeFunc) {
        if (nativeFunc) {
            nativeFunc(outBuffer, ptr);
            const x = outBuffer.readFloat();
            const y = outBuffer.add(4).readFloat();
            const z = outBuffer.add(8).readFloat();
            const w = outBuffer.add(12).readFloat();
            console.log(`        ${name}: x=${x.toFixed(2)}, y=${y.toFixed(2)}, z=${z.toFixed(2)}, w=${w.toFixed(2)}`);
        }
    }

    function logNodePosition(nodePtr) {
        if (nodePtr && !nodePtr.isNull() && getNodePosition !== null) {
            getNodePosition(nodePtr, mapXBuf, mapYBuf);
            const mapX = mapXBuf.readFloat();
            const mapY = mapYBuf.readFloat();

            let screenX = null, screenY = null;
            if (convertToWorldSpace !== null) {
                convertToWorldSpace(screenOutPoint, nodePtr, zeroPoint);
                screenX = screenOutPoint.readFloat();
                screenY = screenOutPoint.add(4).readFloat();
            }

            const screenStr = screenX !== null ? `(${screenX.toFixed(2)}, ${screenY.toFixed(2)})` : "N/A";
            console.log(`        Position: Map=(${mapX.toFixed(2)}, ${mapY.toFixed(2)}) | Screen=${screenStr}`);
        }
    }

    if (initEnemiesAddr !== null && updateStepAddr !== null && getNodePosition !== null) {
        console.log("[+] Enemies.js: Core EnemyManager hooks ready.");

        let enemyManagerPtr = ptr(0);

        // Capture EnemyManager pointer on init
        Interceptor.attach(initEnemiesAddr, {
            onEnter: function (args) {
                enemyManagerPtr = args[0];
                console.log("[+] EnemyManager::initEnemies called. this = " + enemyManagerPtr);
            }
        });

        let frameCount = 0;

        Interceptor.attach(updateStepAddr, {
            onEnter: function (args) {
                if (enemyManagerPtr.isNull()) {
                    enemyManagerPtr = args[0];
                }

                frameCount++;
                if (frameCount % 60 === 0 && !enemyManagerPtr.isNull()) {
                    // 1. Process HawkDrones (offset 0x14)
                    const hawkDictPtr = enemyManagerPtr.add(0x14).readPointer();
                    if (!hawkDictPtr.isNull()) {
                        const hawks = getDictionaryObjects(hawkDictPtr);
                        if (hawks.length > 0) {
                            console.log(`[+] Active HawkDrones Count: ${hawks.length}`);
                            for (let i = 0; i < hawks.length; i++) {
                                const hawkPtr = hawks[i];
                                if (!hawkPtr.isNull()) {
                                    console.log(`    HawkDrone [${i}]: ${hawkPtr}`);
                                    logNodePosition(hawkPtr);
                                    // logVector("Velocity", out, hawkPtr, getHawkVelocity);
                                    // if (getHawkRotation) console.log(`        Rotation: ${getHawkRotation(hawkPtr).toFixed(2)} rad`);
                                    // if (getHawkFireAngle) console.log(`        Fire Angle: ${getHawkFireAngle(hawkPtr).toFixed(2)} rad`);
                                    // if (getHawkHP) console.log(`        HP: ${getHawkHP(hawkPtr)}`);
                                }
                            }
                        }
                    }

                    // 2. Process HumanoidDrones (offset 0x18)
                    const humanoidDictPtr = enemyManagerPtr.add(0x18).readPointer();
                    if (!humanoidDictPtr.isNull()) {
                        const humanoids = getDictionaryObjects(humanoidDictPtr);
                        if (humanoids.length > 0) {
                            console.log(`[+] Active HumanoidDrones Count: ${humanoids.length}`);
                            for (let i = 0; i < humanoids.length; i++) {
                                const humanoidPtr = humanoids[i];
                                if (!humanoidPtr.isNull()) {
                                    console.log(`    HumanoidDrone [${i}]: ${humanoidPtr}`);
                                    try {
                                        const aiControllerPtr = humanoidPtr.add(0x1ac).readPointer();
                                        if (!aiControllerPtr.isNull() && getAISoldierView !== null) {
                                            const hViewPtr = getAISoldierView(aiControllerPtr);
                                            logNodePosition(hViewPtr);
                                        }
                                    } catch (e) {}
                                    // logVector("Velocity", out, humanoidPtr, getHumanoidVelocity);
                                    // if (getHumanoidFireAngle) console.log(`        Fire Angle: ${getHumanoidFireAngle(humanoidPtr).toFixed(2)} rad`);
                                    // if (getHumanoidHP) console.log(`        HP: ${getHumanoidHP(humanoidPtr)}`);
                                }
                            }
                        }
                    }

                    // 3. Process WormDrones (offset 0x1c)
                    const wormDictPtr = enemyManagerPtr.add(0x1c).readPointer();
                    if (!wormDictPtr.isNull()) {
                        const worms = getDictionaryObjects(wormDictPtr);
                        if (worms.length > 0) {
                            console.log(`[+] Active WormDrones Count: ${worms.length}`);
                            for (let i = 0; i < worms.length; i++) {
                                const wormPtr = worms[i];
                                if (!wormPtr.isNull()) {
                                    console.log(`    WormDrone [${i}]: ${wormPtr}`);
                                    logNodePosition(wormPtr);
                                    // logVector("Velocity", out, wormPtr, getWormVelocity);
                                    // if (getWormRotation) console.log(`        Rotation: ${getWormRotation(wormPtr).toFixed(2)} rad`);
                                    // if (getWormHP) console.log(`        HP: ${getWormHP(wormPtr)}`);
                                }
                            }
                        }
                    }
                }
            }
        });
    } else {
        console.log("[-] Enemies.js: Failed to resolve core EnemyManager exports.");
    }
}
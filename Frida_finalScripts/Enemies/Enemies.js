import { getDictionaryObjects } from "../core/IterOverCCDic.js";

let moduleName = "libcocos2dcpp.so";
let moduleBase = Module.findBaseAddress(moduleName);

if (moduleBase === null) {
    console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
} else {
    console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

    const activeEnemiesAddr = Module.findExportByName(
        moduleName,
        "activeEnemies"
    );

    const updateStepAddr = Module.findExportByName(
        moduleName,
        "_ZN21SoldierHostController10updateStepEf6cpVectS0_f"
    );

    const getBodyVelocityAddr = Module.findExportByName(
        moduleName,
        "_ZN5Enemy15getBodyVelocityEv"
    );

    const getBodyVelocity = new NativeFunction(
        getBodyVelocityAddr,
        'pointer',
        ['pointer', 'pointer']
    );

    const getBodyPositionAddr = Module.findExportByName(
        moduleName,
        "_ZN5Enemy15getBodyPositionEv"
    );

    const getBodyPosition = new NativeFunction(
        getBodyPositionAddr,
        'pointer',
        ['pointer', 'pointer']
    );

    const getFireAngleAddr = Module.findExportByName(
        moduleName,
        "_ZN5Enemy12getFireAngleEv"
    );

    const getFireAngle = new NativeFunction(
        getFireAngleAddr,
        'float',
        ['pointer']
    );

    const getEnemyHPAddr = Module.findExportByName(
        moduleName,
        "_ZN5Enemy5getHPEv"
    );

    const getEnemyHP = new NativeFunction(
        getEnemyHPAddr,
        'int',
        ['pointer']
    );

    // Modularized helper functions for reading and logging attributes
    function logEnemyVelocity(outBuffer, enemyPtr) {
        getBodyVelocity(outBuffer, enemyPtr);
        const vel_x = outBuffer.readFloat();
        const vel_y = outBuffer.add(4).readFloat();
        const vel_z = outBuffer.add(8).readFloat();
        const vel_w = outBuffer.add(12).readFloat();
        console.log(`        Velocity: vel_x=${vel_x.toFixed(2)}, vel_y=${vel_y.toFixed(2)}, vel_z=${vel_z.toFixed(2)}, vel_w=${vel_w.toFixed(2)}`);
    }

    function logEnemyPosition(outBuffer, enemyPtr) {
        getBodyPosition(outBuffer, enemyPtr);
        const pos_x = outBuffer.readFloat();
        const pos_y = outBuffer.add(4).readFloat();
        const pos_z = outBuffer.add(8).readFloat();
        const pos_w = outBuffer.add(12).readFloat();
        console.log(`        Position: pos_x=${pos_x.toFixed(2)}, pos_y=${pos_y.toFixed(2)}, pos_z=${pos_z.toFixed(2)}, pos_w=${pos_w.toFixed(2)}`);
    }

    function logEnemyFireAngle(enemyPtr) {
        const fireAngle = getFireAngle(enemyPtr);
        console.log(`        Fire Angle: ${fireAngle.toFixed(2)} rad`);
    }

    // ...
    function logEnemyHP(enemyPtr) {
        const hp = getEnemyHP(enemyPtr);
        console.log(`        HP: ${hp}`);
    }

    if (updateStepAddr !== null && activeEnemiesAddr !== null && 
        getBodyVelocityAddr !== null && getBodyPositionAddr !== null && 
        getFireAngleAddr !== null && getEnemyHPAddr !== null) {
        
        console.log("[+] Enemies.js: Successfully resolved exports. Hooking updateStep...");

        // Allocate 16-byte buffer for struct return values
        const out = Memory.alloc(16);
        let frameCount = 0;

        Interceptor.attach(updateStepAddr, {
            onEnter: function (args) {
                frameCount++;
                // Throttle logging to once every 60 frames (~1 second) to avoid console spam
                if (frameCount % 60 === 0) {
                    const dictPtr = activeEnemiesAddr.readPointer();
                    if (!dictPtr.isNull()) {
                        const enemies = getDictionaryObjects(dictPtr);
                        console.log(`[+] Active Enemies Count: ${enemies.length}`);
                        
                        // Log all enemy pointers before detailed iteration
                        if (enemies.length > 0) {
                            console.log(`[+] Active Enemy Pointers: [ ${enemies.map(p => p.toString()).join(", ")} ]`);
                        }
                        
                        for (let i = 0; i < enemies.length; i++) {
                            const enemyPtr = enemies[i];
                            if (!enemyPtr.isNull()) {
                                console.log(`    Enemy [${i}]: ${enemyPtr}`);
                                logEnemyVelocity(out, enemyPtr);
                                logEnemyPosition(out, enemyPtr);
                                logEnemyFireAngle(enemyPtr);
                                logEnemyHP(enemyPtr);
                            }
                        }
                    }
                }
            }
        });
    } else {
        console.log("[-] Enemies.js: Failed to resolve one or more exports (activeEnemies, updateStep, velocity, position, fireAngle, or HP).");
    }
}
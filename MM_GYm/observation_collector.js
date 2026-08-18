/**
 * Mini Militia RL Environment - Pure Observation Collection Layer
 * 
 * Primary Frame Hook: PhysicsManager::updateStep(float dt) -> onEnter (_ZN14PhysicsManager10updateStepEf)
 * Multi-Stage Fallback: SurvivalStage::updateStep, TrainingStage::updateStep, Stage::updateStep
 * 
 * Features:
 *  - 1-to-1 Frame Observation collection directly on PhysicsManager::updateStep onEnter
 *  - Zero per-frame memory allocations / symbol resolutions
 *  - Complete Player State: in-game map position (x, y), velocity (vx, vy), reloading (bool), ammo_in_mag (int)
 *  - Complete Active Enemy State: id, in-game map position (x, y), velocity (vx, vy), type (0: Hawk, 1: Humanoid, 2: Worm), aim_angle
 *  - High-precision coordinate extraction matching CCNode::getPosition
 *  - Dual Transport Support: formatted console printing and low-latency JSON / send() for Python Gymnasium consumption
 */

'use strict';

import { CONFIG as DEFAULT_CONFIG } from './config.js';

const MODULE_NAME = "libcocos2dcpp.so";

export function initObservationCollector(moduleBase, customConfig) {
    const config = customConfig || DEFAULT_CONFIG;
    console.log("[+] ========================================================");
    console.log("[+] Mini Militia Observation Collection Layer Initialized");
    console.log("[+] Primary Hook: SurvivalStage::updateStep");
    console.log("[+] Target Module Base: " + moduleBase);
    console.log("[+] ========================================================");

    let modObj = null;
    try {
        modObj = Process.getModuleByName(MODULE_NAME);
    } catch (e) {}

    function resolveExport(name) {
        let addr = Module.findExportByName(MODULE_NAME, name);
        if (addr !== null) return addr;
        if (modObj) {
            try {
                const sym = modObj.enumerateSymbols().find(s => s.name === name);
                if (sym) return sym.address;
            } catch (e) {}
        }
        return null;
    }

    // 1. Core Physics & Stage Hook Exports
    const physicsUpdateAddr  = resolveExport("_ZN14PhysicsManager10updateStepEf");
    const survivalUpdateAddr = resolveExport("_ZN13SurvivalStage10updateStepEf");
    const trainingUpdateAddr = resolveExport("_ZN13TrainingStage10updateStepEf");
    const stageUpdateAddr    = resolveExport("_ZN5Stage10updateStepEf");

    const initEnemiesAddr = resolveExport("_ZN12EnemyManager11initEnemiesEv");
    const enemyManagerUpdateAddr = resolveExport("_ZN12EnemyManager10updateStepEf");
    const playerUpdateAddr = resolveExport("_ZN21SoldierHostController10updateStepEf6cpVectS0_f");

    // 2. Player & Weapon Native Functions
    const getPlayerPositionAddr = resolveExport("_ZN17SoldierController15getBodyPositionEv");
    const getPlayerPosition = getPlayerPositionAddr ? new NativeFunction(getPlayerPositionAddr, 'pointer', ['pointer', 'pointer']) : null;

    const getSoldierViewAddr = resolveExport("_ZN21SoldierHostController14getSoldierViewEv");
    const getSoldierView = getSoldierViewAddr ? new NativeFunction(getSoldierViewAddr, 'pointer', ['pointer']) : null;

    const getPlayerVelocityAddr = resolveExport("_ZN17SoldierController15getBodyVelocityEv");
    const getPlayerVelocity = getPlayerVelocityAddr ? new NativeFunction(getPlayerVelocityAddr, 'pointer', ['pointer', 'pointer']) : null;

    const getPrimaryWeaponAddr = resolveExport("_ZN17SoldierController16getPrimaryWeaponEv");
    const getPrimaryWeapon = getPrimaryWeaponAddr ? new NativeFunction(getPrimaryWeaponAddr, 'pointer', ['pointer']) : null;

    const isReloadingAddr = resolveExport("_ZN6Weapon11isReloadingEv");
    const isReloadingFunc = isReloadingAddr ? new NativeFunction(isReloadingAddr, 'int', ['pointer']) : null;

    // 3. Enemy Drone Native Functions
    const getHawkVelocityAddr = resolveExport("_ZN9HawkDrone15getBodyVelocityEv");
    const getHawkVelocity = getHawkVelocityAddr ? new NativeFunction(getHawkVelocityAddr, 'pointer', ['pointer', 'pointer']) : null;

    const getHawkFireAngleAddr = resolveExport("_ZN9HawkDrone12getFireAngleEv");
    const getHawkFireAngle = getHawkFireAngleAddr ? new NativeFunction(getHawkFireAngleAddr, 'float', ['pointer']) : null;

    const getHawkRotationAddr = resolveExport("_ZN9HawkDrone15getBodyRotationEv");
    const getHawkRotation = getHawkRotationAddr ? new NativeFunction(getHawkRotationAddr, 'float', ['pointer']) : null;

    const getHumanoidVelocityAddr = resolveExport("_ZN13HumanoidDrone15getBodyVelocityEv");
    const getHumanoidVelocity = getHumanoidVelocityAddr ? new NativeFunction(getHumanoidVelocityAddr, 'pointer', ['pointer', 'pointer']) : null;

    const getAISoldierViewAddr = resolveExport("_ZN19SoldierAIController14getSoldierViewEv");
    const getAISoldierView = getAISoldierViewAddr ? new NativeFunction(getAISoldierViewAddr, 'pointer', ['pointer']) : null;

    const getHumanoidFireAngleAddr = resolveExport("_ZN13HumanoidDrone12getFireAngleEv");
    const getHumanoidFireAngle = getHumanoidFireAngleAddr ? new NativeFunction(getHumanoidFireAngleAddr, 'float', ['pointer']) : null;

    const getWormVelocityAddr = resolveExport("_ZN9WormDrone15getBodyVelocityEv");
    const getWormVelocity = getWormVelocityAddr ? new NativeFunction(getWormVelocityAddr, 'pointer', ['pointer', 'pointer']) : null;

    const getWormRotationAddr = resolveExport("_ZN9WormDrone15getBodyRotationEv");
    const getWormRotation = getWormRotationAddr ? new NativeFunction(getWormRotationAddr, 'float', ['pointer']) : null;

    // 4. Cocos2d-x Exports
    const getPositionAddr = resolveExport("_ZN7cocos2d6CCNode11getPositionEPfS1_");
    const getNodePosition = getPositionAddr ? new NativeFunction(getPositionAddr, 'void', ['pointer', 'pointer', 'pointer']) : null;

    const dictCountAddr = resolveExport("_ZN7cocos2d12CCDictionary5countEv");
    const dictCount = dictCountAddr ? new NativeFunction(dictCountAddr, 'int', ['pointer']) : null;

    const getDictObjectAddr = resolveExport("_ZNK7cocos2d13CCDictElement9getObjectEv");
    const getDictObject = getDictObjectAddr ? new NativeFunction(getDictObjectAddr, 'pointer', ['pointer']) : null;

    const getDictIntKeyAddr = resolveExport("_ZNK7cocos2d13CCDictElement9getIntKeyEv");
    const getDictIntKey = getDictIntKeyAddr ? new NativeFunction(getDictIntKeyAddr, 'int', ['pointer']) : null;

    // 5. Pre-allocated Reusable Buffers
    const mapXBuf = Memory.alloc(4);
    const mapYBuf = Memory.alloc(4);
    const playerPosBuf = Memory.alloc(16);
    const playerVelBuf = Memory.alloc(16);
    const enemyVelBuf = Memory.alloc(16);
    const floatBuf = Memory.alloc(4);

    let playerControllerPtr = ptr(0);
    let soldierViewPtr = ptr(0);
    let enemyManagerPtr = ptr(0);

    let frameNumber = 0;
    let updateStepCalls = 0;
    let observationsGenerated = 0;
    let firstObservationReported = false;

    function extractDt(argVal) {
        if (!argVal) return 0.0166667;
        try {
            floatBuf.writeU32(argVal.toUInt32());
            const val = floatBuf.readFloat();
            return (val > 0.00001 && val < 1.0) ? val : 0.0166667;
        } catch (e) {
            return 0.0166667;
        }
    }

    // 6. Instance Caching Hooks
    if (initEnemiesAddr !== null) {
        try {
            Interceptor.attach(initEnemiesAddr, {
                onEnter: function (args) {
                    enemyManagerPtr = args[0];
                }
            });
        } catch (e) {}
    }

    if (enemyManagerUpdateAddr !== null) {
        try {
            Interceptor.attach(enemyManagerUpdateAddr, {
                onEnter: function (args) {
                    if (enemyManagerPtr.isNull()) {
                        enemyManagerPtr = args[0];
                    }
                }
            });
        } catch (e) {}
    }

    if (playerUpdateAddr !== null) {
        try {
            Interceptor.attach(playerUpdateAddr, {
                onEnter: function (args) {
                    try {
                        playerControllerPtr = args[0];
                        if (!playerControllerPtr.isNull() && getSoldierView !== null) {
                            soldierViewPtr = getSoldierView(playerControllerPtr);
                        }
                    } catch (e) {}
                }
            });
        } catch (e) {}
    }

    // 7. Player Observation Collector
    function collectPlayerState() {
        let px = 0.0, py = 0.0;
        let pvx = 0.0, pvy = 0.0;
        let reloading = false;
        let ammoInMag = 0;

        if (!playerControllerPtr.isNull()) {
            try {
                if (soldierViewPtr.isNull() && getSoldierView !== null) {
                    soldierViewPtr = getSoldierView(playerControllerPtr);
                }

                // In-Game Map Position via SoldierView CCNode::getPosition
                if (!soldierViewPtr.isNull() && getNodePosition !== null) {
                    getNodePosition(soldierViewPtr, mapXBuf, mapYBuf);
                    px = mapXBuf.readFloat();
                    py = mapYBuf.readFloat();
                } else if (getPlayerPosition !== null) {
                    getPlayerPosition(playerPosBuf, playerControllerPtr);
                    px = playerPosBuf.readFloat();
                    py = playerPosBuf.add(4).readFloat();
                }
            } catch (e) {}

            try {
                // Velocity from SoldierController (64-bit double cpVect)
                if (getPlayerVelocity !== null) {
                    getPlayerVelocity(playerVelBuf, playerControllerPtr);
                    pvx = playerVelBuf.readDouble();
                    pvy = playerVelBuf.add(8).readDouble();
                }
            } catch (e) {}

            try {
                // Weapon Ammo & Reload State
                if (getPrimaryWeapon !== null) {
                    const weaponPtr = getPrimaryWeapon(playerControllerPtr);
                    if (weaponPtr && !weaponPtr.isNull()) {
                        if (isReloadingFunc !== null) {
                            reloading = (isReloadingFunc(weaponPtr) !== 0);
                        }
                        ammoInMag = weaponPtr.add(0x1ee).readS16();
                    }
                }
            } catch (e) {}
        }

        return {
            position: { x: px, y: py },
            velocity: { x: pvx, y: pvy },
            reloading: reloading,
            ammo_in_mag: ammoInMag
        };
    }

    // 8. Enemy Observation Collector
    function collectEnemyState() {
        const enemies = [];
        if (enemyManagerPtr.isNull()) return enemies;

        function iterateDict(dictOffset, typeCode, processDroneCallback) {
            try {
                const dictPtr = enemyManagerPtr.add(dictOffset).readPointer();
                if (dictPtr.isNull()) return;

                const count = (dictCount !== null) ? dictCount(dictPtr) : 1;
                if (count <= 0) return;

                let elem = dictPtr.add(0x14).readPointer();
                let index = 0;

                while (!elem.isNull() && index < 32) {
                    let objPtr = ptr(0);
                    if (getDictObject !== null) {
                        objPtr = getDictObject(elem);
                    }
                    
                    let elemId = 0;
                    try {
                        if (getDictIntKey !== null) {
                            elemId = getDictIntKey(elem);
                        }
                    } catch (e) {}

                    if (elemId === 0) {
                        elemId = objPtr.toUInt32();
                    }

                    if (!objPtr.isNull()) {
                        processDroneCallback(objPtr, elemId, typeCode);
                    }

                    elem = elem.add(0x110).readPointer();
                    index++;
                }
            } catch (e) {}
        }

        // A. Hawk Drones (Offset 0x14 | Type 0)
        iterateDict(0x14, 0, function (hawkPtr, id, type) {
            let x = 0.0, y = 0.0;
            try {
                if (getNodePosition !== null) {
                    getNodePosition(hawkPtr, mapXBuf, mapYBuf);
                    x = mapXBuf.readFloat();
                    y = mapYBuf.readFloat();
                }
            } catch (e) {}

            let vx = 0.0, vy = 0.0;
            try {
                if (getHawkVelocity !== null) {
                    getHawkVelocity(enemyVelBuf, hawkPtr);
                    vx = enemyVelBuf.readDouble();
                    vy = enemyVelBuf.add(8).readDouble();
                }
            } catch (e) {}

            let aimAngle = 0.0;
            try {
                if (getHawkFireAngle !== null) {
                    aimAngle = getHawkFireAngle(hawkPtr);
                } else if (getHawkRotation !== null) {
                    aimAngle = getHawkRotation(hawkPtr);
                }
            } catch (e) {}

            enemies.push({
                id: id,
                position: { x: x, y: y },
                velocity: { x: vx, y: vy },
                type: type,
                aim_angle: aimAngle
            });
        });

        // B. Humanoid Drones (Offset 0x18 | Type 1)
        iterateDict(0x18, 1, function (humanoidPtr, id, type) {
            let x = 0.0, y = 0.0;
            try {
                const aiControllerPtr = humanoidPtr.add(0x1ac).readPointer();
                if (!aiControllerPtr.isNull() && getAISoldierView !== null) {
                    const hViewPtr = getAISoldierView(aiControllerPtr);
                    if (!hViewPtr.isNull() && getNodePosition !== null) {
                        getNodePosition(hViewPtr, mapXBuf, mapYBuf);
                        x = mapXBuf.readFloat();
                        y = mapYBuf.readFloat();
                    }
                }
            } catch (e) {}

            let vx = 0.0, vy = 0.0;
            try {
                if (getHumanoidVelocity !== null) {
                    getHumanoidVelocity(enemyVelBuf, humanoidPtr);
                    vx = enemyVelBuf.readDouble();
                    vy = enemyVelBuf.add(8).readDouble();
                }
            } catch (e) {}

            let aimAngle = 0.0;
            try {
                if (getHumanoidFireAngle !== null) {
                    aimAngle = getHumanoidFireAngle(humanoidPtr);
                }
            } catch (e) {}

            enemies.push({
                id: id,
                position: { x: x, y: y },
                velocity: { x: vx, y: vy },
                type: type,
                aim_angle: aimAngle
            });
        });

        // C. Worm Drones (Offset 0x1c | Type 2)
        iterateDict(0x1c, 2, function (wormPtr, id, type) {
            let x = 0.0, y = 0.0;
            try {
                if (getNodePosition !== null) {
                    getNodePosition(wormPtr, mapXBuf, mapYBuf);
                    x = mapXBuf.readFloat();
                    y = mapYBuf.readFloat();
                }
            } catch (e) {}

            let vx = 0.0, vy = 0.0;
            try {
                if (getWormVelocity !== null) {
                    getWormVelocity(enemyVelBuf, wormPtr);
                    vx = enemyVelBuf.readDouble();
                    vy = enemyVelBuf.add(8).readDouble();
                }
            } catch (e) {}

            let aimAngle = 0.0;
            try {
                if (getWormRotation !== null) {
                    aimAngle = getWormRotation(wormPtr);
                }
            } catch (e) {}

            enemies.push({
                id: id,
                position: { x: x, y: y },
                velocity: { x: vx, y: vy },
                type: type,
                aim_angle: aimAngle
            });
        });

        return enemies;
    }

    // 9. Observation Output & Transport
    function outputObservation(snapshot) {
        observationsGenerated++;

        if (!firstObservationReported) {
            firstObservationReported = true;
            console.log(`[+] ACTIVE TICK: Received frame 1 from ${snapshot.stage}::updateStep! Streaming observations...`);
        }

        if (config.output_mode === 'pretty') {
            let out = `[FRAME ${snapshot.frame}][Stage: ${snapshot.stage}][dt=${snapshot.dt.toFixed(4)}]\n`;
            out += `PLAYER:\n`;
            out += `  pos=(${snapshot.player.position.x.toFixed(2)}, ${snapshot.player.position.y.toFixed(2)})\n`;
            out += `  vel=(${snapshot.player.velocity.x.toFixed(2)}, ${snapshot.player.velocity.y.toFixed(2)})\n`;
            out += `  reloading=${snapshot.player.reloading}\n`;
            out += `  ammo=${snapshot.player.ammo_in_mag}\n`;
            out += `ENEMIES: ${snapshot.enemies.length}\n`;
            for (let i = 0; i < snapshot.enemies.length; i++) {
                const e = snapshot.enemies[i];
                out += `  [${i}] id=${e.id} type=${e.type} pos=(${e.position.x.toFixed(2)}, ${e.position.y.toFixed(2)}) vel=(${e.velocity.x.toFixed(2)}, ${e.velocity.y.toFixed(2)}) aim=${e.aim_angle.toFixed(2)}\n`;
            }
            console.log(out);
        } else if (config.output_mode === 'json') {
            console.log(JSON.stringify(snapshot));
        } else if (config.output_mode === 'send') {
            send(snapshot);
        }
    }

    function handleUpdateStep(args, stageName) {
        updateStepCalls++;
        frameNumber++;

        const dt = extractDt(args[1]);

        const observation = {
            frame: frameNumber,
            dt: dt,
            stage: stageName,
            player: collectPlayerState(),
            enemies: collectEnemyState()
        };

        outputObservation(observation);
    }

    // 10. Frame Hooks (Primary: PhysicsManager::updateStep)
    if (physicsUpdateAddr !== null) {
        try {
            Interceptor.attach(physicsUpdateAddr, {
                onEnter(args) {
                    handleUpdateStep(args, "PhysicsManager");
                }
            });
            console.log("[+] Primary Hook attached: PhysicsManager::updateStep (_ZN14PhysicsManager10updateStepEf)");
        } catch (e) {
            console.log("[-] Error attaching to PhysicsManager::updateStep: " + e.message);
        }
    } else if (survivalUpdateAddr !== null) {
        try {
            Interceptor.attach(survivalUpdateAddr, {
                onEnter(args) {
                    handleUpdateStep(args, "SurvivalStage");
                }
            });
            console.log("[+] Fallback Hook attached: SurvivalStage::updateStep (_ZN13SurvivalStage10updateStepEf)");
        } catch (e) {
            console.log("[-] Error attaching to SurvivalStage::updateStep: " + e.message);
        }
    } else if (trainingUpdateAddr !== null) {
        try {
            Interceptor.attach(trainingUpdateAddr, {
                onEnter(args) {
                    handleUpdateStep(args, "TrainingStage");
                }
            });
            console.log("[+] Fallback Hook attached: TrainingStage::updateStep (_ZN13TrainingStage10updateStepEf)");
        } catch (e) {}
    } else if (stageUpdateAddr !== null) {
        try {
            Interceptor.attach(stageUpdateAddr, {
                onEnter(args) {
                    handleUpdateStep(args, "Stage");
                }
            });
            console.log("[+] Fallback Hook attached: Stage::updateStep (_ZN5Stage10updateStepEf)");
        } catch (e) {}
    }
}

// Standalone execution support
const initialBase = Module.findBaseAddress(MODULE_NAME);
if (initialBase !== null) {
    initObservationCollector(initialBase, DEFAULT_CONFIG);
} else {
    const checkTimer = setInterval(function () {
        const base = Module.findBaseAddress(MODULE_NAME);
        if (base !== null) {
            clearInterval(checkTimer);
            initObservationCollector(base, DEFAULT_CONFIG);
        }
    }, 250);
}

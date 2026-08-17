/**
 * Mini Militia RL Environment - Unified Frame-Hook Observation & Runtime Control Layer
 * 
 * Primary Frame Hook: SurvivalStage::updateStep(float dt) -> onEnter (_ZN13SurvivalStage10updateStepEf)
 * Multi-Stage Support: TrainingStage::updateStep, Stage::updateStep
 * 
 * Features:
 *  - 1-to-1 Frame Observation collection directly on SurvivalStage::updateStep onEnter
 *  - Zero per-frame memory allocations / symbol resolutions
 *  - Complete Player State: in-game map position (x, y), velocity (vx, vy), reloading (bool), ammo_in_mag (int)
 *  - Complete Active Enemy State: id, in-game map position (x, y), velocity (vx, vy), type (0: Hawk, 1: Humanoid, 2: Worm), aim_angle
 *  - Full multi-method extraction for all enemy drone types (Hawk, Humanoid, Worm)
 *  - Player Custom Spawn Weapon: Auto-equips UZI (ItemType 5) on spawn / respawn
 *  - Strict Ammo Order: Equips weapon -> sets reserve non-mag ammo -> sets clip ammo
 *  - Configurable Runtime Controls: infinite reload ammo, disable Sarge, disable rendering, game speed, FPS monitor / VSync unlock, infinite health, infinite boost, disable sound
 *  - Dual Transport Support: formatted console printing and low-latency JSON / send() for Python Gymnasium consumption
 */

'use strict';

// =============================================================================
// RUNTIME CONFIGURATION
// =============================================================================
const CONFIG = {
    // Weapon Spawn Config: 5 is UZI (3: DEAGLE, 4: MAGNUM, 5: UZI, 6: MP5, 7: AK47, 8: M16, 9: SHOTGUN, 11: SMAW)
    always_spawn_with_weapon: true,
    spawn_weapon_type: 5,     // 5 = UZI

    infinite_reload_ammo: true,
    disable_sarge: true,
    disable_rendering: false, // Set to true for headless speedup during RL training
    game_speed: 1.0,          // Time scale multiplier (e.g. 1.0, 3.0, 5.0)
    show_fps: true,
    infinite_health: true,
    infinite_boost: true,
    disable_sound: true,
    
    // Output mode: 'pretty' (human readable multi-line), 'json' (compact single-line json), 'send' (Frida send() to Python)
    output_mode: 'pretty'
};

const MODULE_NAME = "libcocos2dcpp.so";

function initializeInstrumentation(moduleBase) {
    console.log("[+] ========================================================");
    console.log("[+] Mini Militia Unified RL Instrumentation Layer");
    console.log("[+] Primary Hook: SurvivalStage::updateStep");
    console.log("[+] Target Module Base: " + moduleBase);
    console.log("[+] ========================================================");

    // =========================================================================
    // SYMBOL RESOLUTION HELPER
    // =========================================================================
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

    // =========================================================================
    // 1. RESOLVE CORE HOOK EXPORTS
    // =========================================================================
    const survivalUpdateAddr = resolveExport("_ZN13SurvivalStage10updateStepEf");
    const trainingUpdateAddr = resolveExport("_ZN13TrainingStage10updateStepEf");
    const stageUpdateAddr    = resolveExport("_ZN5Stage10updateStepEf");

    const initEnemiesAddr = resolveExport("_ZN12EnemyManager11initEnemiesEv");
    const enemyManagerUpdateAddr = resolveExport("_ZN12EnemyManager10updateStepEf");
    const playerUpdateAddr = resolveExport("_ZN21SoldierHostController10updateStepEf6cpVectS0_f");
    const respawnPlayerAddr = resolveExport("_ZN14SoldierManager13respawnPlayerEPN7cocos2d8CCObjectE");

    console.log("[*] Stage Update Symbols:");
    console.log("    - SurvivalStage::updateStep: " + survivalUpdateAddr);
    console.log("    - TrainingStage::updateStep: " + trainingUpdateAddr);
    console.log("    - Stage::updateStep:         " + stageUpdateAddr);

    // =========================================================================
    // 2. RESOLVE PLAYER & WEAPON NATIVE FUNCTIONS
    // =========================================================================
    const getPlayerPositionAddr = resolveExport("_ZN17SoldierController15getBodyPositionEv");
    const getPlayerPosition = getPlayerPositionAddr ? new NativeFunction(getPlayerPositionAddr, 'pointer', ['pointer', 'pointer']) : null;

    const getSoldierViewAddr = resolveExport("_ZN21SoldierHostController14getSoldierViewEv");
    const getSoldierView = getSoldierViewAddr ? new NativeFunction(getSoldierViewAddr, 'pointer', ['pointer']) : null;

    const getPlayerVelocityAddr = resolveExport("_ZN17SoldierController15getBodyVelocityEv");
    const getPlayerVelocity = getPlayerVelocityAddr ? new NativeFunction(getPlayerVelocityAddr, 'pointer', ['pointer', 'pointer']) : null;

    const getPrimaryWeaponAddr = resolveExport("_ZN17SoldierController16getPrimaryWeaponEv");
    const getPrimaryWeapon = getPrimaryWeaponAddr ? new NativeFunction(getPrimaryWeaponAddr, 'pointer', ['pointer']) : null;

    const addPrimaryWeaponAddr = resolveExport("_ZN21SoldierHostController16addPrimaryWeaponEP6Weapon");
    const addPrimaryWeapon = addPrimaryWeaponAddr ? new NativeFunction(addPrimaryWeaponAddr, 'void', ['pointer', 'pointer']) : null;

    const sharedWeaponFactoryAddr = resolveExport("_ZN13WeaponFactory19sharedWeaponFactoryEv");
    const sharedWeaponFactory = sharedWeaponFactoryAddr ? new NativeFunction(sharedWeaponFactoryAddr, 'pointer', []) : null;

    const createWeaponAddr = resolveExport("_ZN13WeaponFactory24createWeaponFromAmmoTypeE8ItemType");
    const createWeaponFromAmmoType = createWeaponAddr ? new NativeFunction(createWeaponAddr, 'pointer', ['pointer', 'int']) : null;

    const isReloadingAddr = resolveExport("_ZN6Weapon11isReloadingEv");
    const isReloadingFunc = isReloadingAddr ? new NativeFunction(isReloadingAddr, 'int', ['pointer']) : null;

    const getClipAddr = resolveExport("_ZN6Weapon7getClipEv");
    const getClipFunc = getClipAddr ? new NativeFunction(getClipAddr, 'int', ['pointer']) : null;

    const getAmmoAddr = resolveExport("_ZN6Weapon7getAmmoEv");
    const getAmmoFunc = getAmmoAddr ? new NativeFunction(getAmmoAddr, 'int', ['pointer']) : null;

    const setAmmoAddr = resolveExport("_ZN6Weapon7setAmmoEi");
    const setAmmoFunc = setAmmoAddr ? new NativeFunction(setAmmoAddr, 'void', ['pointer', 'int']) : null;

    const getPlayerHPAddr = resolveExport("_ZN21SoldierHostController5getHPEv");
    const getPlayerHP = getPlayerHPAddr ? new NativeFunction(getPlayerHPAddr, 'int', ['pointer']) : null;

    const setPlayerHPAddr = resolveExport("_ZN21SoldierHostController5setHPEi");
    const setPlayerHP = setPlayerHPAddr ? new NativeFunction(setPlayerHPAddr, 'void', ['pointer', 'int']) : null;

    const getPowerAddr = resolveExport("_ZN21SoldierHostController8getPowerEv");
    const getPower = getPowerAddr ? new NativeFunction(getPowerAddr, 'float', ['pointer']) : null;

    const setPowerAddr = resolveExport("_ZN21SoldierHostController8setPowerEf");
    const setPower = setPowerAddr ? new NativeFunction(setPowerAddr, 'void', ['pointer', 'float']) : null;

    // =========================================================================
    // 3. RESOLVE ENEMY & DRONE NATIVE FUNCTIONS
    // =========================================================================
    // HawkDrone (Type 0)
    const getHawkPositionAddr = resolveExport("_ZN9HawkDrone15getBodyPositionEv");
    const getHawkPosition = getHawkPositionAddr ? new NativeFunction(getHawkPositionAddr, 'pointer', ['pointer', 'pointer']) : null;

    const getHawkVelocityAddr = resolveExport("_ZN9HawkDrone15getBodyVelocityEv");
    const getHawkVelocity = getHawkVelocityAddr ? new NativeFunction(getHawkVelocityAddr, 'pointer', ['pointer', 'pointer']) : null;

    const getHawkFireAngleAddr = resolveExport("_ZN9HawkDrone12getFireAngleEv");
    const getHawkFireAngle = getHawkFireAngleAddr ? new NativeFunction(getHawkFireAngleAddr, 'float', ['pointer']) : null;

    const getHawkRotationAddr = resolveExport("_ZN9HawkDrone15getBodyRotationEv");
    const getHawkRotation = getHawkRotationAddr ? new NativeFunction(getHawkRotationAddr, 'float', ['pointer']) : null;

    // HumanoidDrone (Type 1)
    const getHumanoidPositionAddr = resolveExport("_ZN13HumanoidDrone15getBodyPositionEv");
    const getHumanoidPosition = getHumanoidPositionAddr ? new NativeFunction(getHumanoidPositionAddr, 'pointer', ['pointer', 'pointer']) : null;

    const getHumanoidVelocityAddr = resolveExport("_ZN13HumanoidDrone15getBodyVelocityEv");
    const getHumanoidVelocity = getHumanoidVelocityAddr ? new NativeFunction(getHumanoidVelocityAddr, 'pointer', ['pointer', 'pointer']) : null;

    const getAISoldierViewAddr = resolveExport("_ZN19SoldierAIController14getSoldierViewEv");
    const getAISoldierView = getAISoldierViewAddr ? new NativeFunction(getAISoldierViewAddr, 'pointer', ['pointer']) : null;

    const getHumanoidFireAngleAddr = resolveExport("_ZN13HumanoidDrone12getFireAngleEv");
    const getHumanoidFireAngle = getHumanoidFireAngleAddr ? new NativeFunction(getHumanoidFireAngleAddr, 'float', ['pointer']) : null;

    // WormDrone (Type 2)
    const getWormPositionAddr = resolveExport("_ZN9WormDrone15getBodyPositionEv");
    const getWormPosition = getWormPositionAddr ? new NativeFunction(getWormPositionAddr, 'pointer', ['pointer', 'pointer']) : null;

    const getWormVelocityAddr = resolveExport("_ZN9WormDrone15getBodyVelocityEv");
    const getWormVelocity = getWormVelocityAddr ? new NativeFunction(getWormVelocityAddr, 'pointer', ['pointer', 'pointer']) : null;

    const getWormRotationAddr = resolveExport("_ZN9WormDrone15getBodyRotationEv");
    const getWormRotation = getWormRotationAddr ? new NativeFunction(getWormRotationAddr, 'float', ['pointer']) : null;

    // =========================================================================
    // 4. RESOLVE COCOS2D-X UTILITY EXPORTS
    // =========================================================================
    const getPositionAddr = resolveExport("_ZN7cocos2d6CCNode11getPositionEPfS1_");
    const getNodePosition = getPositionAddr ? new NativeFunction(getPositionAddr, 'void', ['pointer', 'pointer', 'pointer']) : null;

    const dictCountAddr = resolveExport("_ZN7cocos2d12CCDictionary5countEv");
    const dictCount = dictCountAddr ? new NativeFunction(dictCountAddr, 'int', ['pointer']) : null;

    const getDictObjectAddr = resolveExport("_ZNK7cocos2d13CCDictElement9getObjectEv");
    const getDictObject = getDictObjectAddr ? new NativeFunction(getDictObjectAddr, 'pointer', ['pointer']) : null;

    const getDictIntKeyAddr = resolveExport("_ZNK7cocos2d13CCDictElement9getIntKeyEv");
    const getDictIntKey = getDictIntKeyAddr ? new NativeFunction(getDictIntKeyAddr, 'int', ['pointer']) : null;

    // =========================================================================
    // 5. PRE-ALLOCATED STATIC MEMORY BUFFERS (Zero-allocation during updateStep)
    // =========================================================================
    const mapXBuf = Memory.alloc(4);
    const mapYBuf = Memory.alloc(4);
    const playerPosBuf = Memory.alloc(16);
    const playerVelBuf = Memory.alloc(16);
    const enemyPosBuf = Memory.alloc(16);
    const enemyVelBuf = Memory.alloc(16);
    const floatBuf = Memory.alloc(4);

    // Dynamic cached game instance pointers
    let playerControllerPtr = ptr(0);
    let lastPlayerInstance = ptr(0);
    let soldierViewPtr = ptr(0);
    let enemyManagerPtr = ptr(0);

    // Frame tracking diagnostics
    let frameNumber = 0;
    let updateStepCalls = 0;
    let observationsGenerated = 0;
    let firstObservationReported = false;

    // Helper to safely extract float dt from args[1]
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

    // Helper to equip weapon on player
    function equipWeapon(soldierPtr, weaponType) {
        if (soldierPtr.isNull() || sharedWeaponFactory === null || createWeaponFromAmmoType === null || addPrimaryWeapon === null) {
            return;
        }
        try {
            const factory = sharedWeaponFactory();
            if (factory !== null && !factory.isNull()) {
                const weapon = createWeaponFromAmmoType(factory, weaponType);
                if (weapon !== null && !weapon.isNull()) {
                    addPrimaryWeapon(soldierPtr, weapon);
                    console.log(`[+] Auto-equipped weapon type ${weaponType} (UZI) to Player: ${soldierPtr}`);
                }
            }
        } catch (e) {
            console.log(`[-] Failed to equip weapon: ${e.message}`);
        }
    }

    // =========================================================================
    // 6. CACHING & SPAWN HOOKS
    // =========================================================================
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

    // Respawn Hook to reset weapon assignment
    if (respawnPlayerAddr !== null) {
        try {
            Interceptor.attach(respawnPlayerAddr, {
                onEnter: function (args) {
                    lastPlayerInstance = ptr(0); // Trigger re-equip on respawn
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
                        if (!playerControllerPtr.isNull()) {
                            if (getSoldierView !== null) {
                                soldierViewPtr = getSoldierView(playerControllerPtr);
                            }

                            // 1. Auto-equip Uzi on new instance or spawn
                            if (CONFIG.always_spawn_with_weapon) {
                                if (!playerControllerPtr.equals(lastPlayerInstance)) {
                                    lastPlayerInstance = playerControllerPtr;
                                    equipWeapon(playerControllerPtr, CONFIG.spawn_weapon_type);
                                }
                            }

                            // 2. Apply runtime state modifications if enabled
                            if (CONFIG.infinite_health && setPlayerHP !== null) {
                                setPlayerHP(playerControllerPtr, 100);
                            }
                            if (CONFIG.infinite_boost && setPower !== null) {
                                setPower(playerControllerPtr, 10.0);
                            }
                            if (CONFIG.infinite_reload_ammo && getPrimaryWeapon !== null) {
                                const wPtr = getPrimaryWeapon(playerControllerPtr);
                                if (wPtr && !wPtr.isNull()) {
                                    // 1. Update ammo which is not in mag (reserve ammo) first
                                    if (setAmmoFunc !== null) {
                                        setAmmoFunc(wPtr, 999);
                                    }
                                    // 2. Update ammo in magazine (clip)
                                    wPtr.add(0x1ee).writeS16(99);
                                }
                            }
                        }
                    } catch (e) {}
                }
            });
        } catch (e) {}
    }

    // =========================================================================
    // 7. COMPACT OBSERVATION COLLECTORS (MAP COORDINATES)
    // =========================================================================

    // Player State Collector (In-Game Map Space)
    function collectPlayerState() {
        let px = 0.0, py = 0.0;
        let pvx = 0.0, pvy = 0.0;
        let reloading = false;
        let ammoInMag = 0;

        if (!playerControllerPtr.isNull()) {
            try {
                // 1. In-game Map Position (getBodyPosition or CCNode::getPosition)
                if (getPlayerPosition !== null) {
                    getPlayerPosition(playerPosBuf, playerControllerPtr);
                    px = playerPosBuf.readFloat();
                    py = playerPosBuf.add(4).readFloat();
                } else if (!soldierViewPtr.isNull() && getNodePosition !== null) {
                    getNodePosition(soldierViewPtr, mapXBuf, mapYBuf);
                    px = mapXBuf.readFloat();
                    py = mapYBuf.readFloat();
                }
            } catch (e) {}

            try {
                // 2. Velocity from SoldierController
                if (getPlayerVelocity !== null) {
                    getPlayerVelocity(playerVelBuf, playerControllerPtr);
                    pvx = playerVelBuf.readFloat();
                    pvy = playerVelBuf.add(4).readFloat();
                }
            } catch (e) {}

            try {
                // 3. Primary Weapon Ammo & Reload State
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

    // Enemy State Collector (In-Game Map Space)
    function collectEnemyState() {
        const enemies = [];
        if (enemyManagerPtr.isNull()) {
            return enemies;
        }

        // --- Helper: Iterate CCDictionary directly from memory ---
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

        // 1. Hawk Drones (Offset 0x14 | Type 0) -> Map Coordinates
        iterateDict(0x14, 0, function (hawkPtr, id, type) {
            let x = 0.0, y = 0.0;
            try {
                if (getHawkPosition !== null) {
                    getHawkPosition(enemyPosBuf, hawkPtr);
                    x = enemyPosBuf.readFloat();
                    y = enemyPosBuf.add(4).readFloat();
                } else if (getNodePosition !== null) {
                    getNodePosition(hawkPtr, mapXBuf, mapYBuf);
                    x = mapXBuf.readFloat();
                    y = mapYBuf.readFloat();
                }
            } catch (e) {}

            let vx = 0.0, vy = 0.0;
            try {
                if (getHawkVelocity !== null) {
                    getHawkVelocity(enemyVelBuf, hawkPtr);
                    vx = enemyVelBuf.readFloat();
                    vy = enemyVelBuf.add(4).readFloat();
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

        // 2. Humanoid Drones (Offset 0x18 | Type 1) -> Map Coordinates
        iterateDict(0x18, 1, function (humanoidPtr, id, type) {
            let x = 0.0, y = 0.0;
            try {
                if (getHumanoidPosition !== null) {
                    getHumanoidPosition(enemyPosBuf, humanoidPtr);
                    x = enemyPosBuf.readFloat();
                    y = enemyPosBuf.add(4).readFloat();
                } else {
                    const aiControllerPtr = humanoidPtr.add(0x1ac).readPointer();
                    if (!aiControllerPtr.isNull() && getAISoldierView !== null) {
                        const hViewPtr = getAISoldierView(aiControllerPtr);
                        if (!hViewPtr.isNull() && getNodePosition !== null) {
                            getNodePosition(hViewPtr, mapXBuf, mapYBuf);
                            x = mapXBuf.readFloat();
                            y = mapYBuf.readFloat();
                        }
                    }
                }
            } catch (e) {}

            let vx = 0.0, vy = 0.0;
            try {
                if (getHumanoidVelocity !== null) {
                    getHumanoidVelocity(enemyVelBuf, humanoidPtr);
                    vx = enemyVelBuf.readFloat();
                    vy = enemyVelBuf.add(4).readFloat();
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

        // 3. Worm Drones (Offset 0x1c | Type 2) -> Map Coordinates
        iterateDict(0x1c, 2, function (wormPtr, id, type) {
            let x = 0.0, y = 0.0;
            try {
                if (getWormPosition !== null) {
                    getWormPosition(enemyPosBuf, wormPtr);
                    x = enemyPosBuf.readFloat();
                    y = enemyPosBuf.add(4).readFloat();
                } else if (getNodePosition !== null) {
                    getNodePosition(wormPtr, mapXBuf, mapYBuf);
                    x = mapXBuf.readFloat();
                    y = mapYBuf.readFloat();
                }
            } catch (e) {}

            let vx = 0.0, vy = 0.0;
            try {
                if (getWormVelocity !== null) {
                    getWormVelocity(enemyVelBuf, wormPtr);
                    vx = enemyVelBuf.readFloat();
                    vy = enemyVelBuf.add(4).readFloat();
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

    // =========================================================================
    // 8. OBSERVATION TRANSPORT & OUTPUT
    // =========================================================================
    function outputObservation(snapshot) {
        observationsGenerated++;

        if (!firstObservationReported) {
            firstObservationReported = true;
            console.log(`[+] ACTIVE TICK: Received frame 1 from ${snapshot.stage}::updateStep! Streaming observations...`);
        }

        if (CONFIG.output_mode === 'pretty') {
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
        } else if (CONFIG.output_mode === 'json') {
            console.log(JSON.stringify(snapshot));
        } else if (CONFIG.output_mode === 'send') {
            send(snapshot);
        }
    }

    // Observation handler for updateStep
    function handleUpdateStep(args, stageName) {
        updateStepCalls++;
        frameNumber++;

        const dt = extractDt(args[1]);

        // Construct complete frame observation snapshot
        const observation = {
            frame: frameNumber,
            dt: dt,
            stage: stageName,
            player: collectPlayerState(),
            enemies: collectEnemyState()
        };

        outputObservation(observation);
    }

    // =========================================================================
    // 9. FRAME HOOK INTERCEPTION: SurvivalStage::updateStep (Primary)
    // =========================================================================
    if (survivalUpdateAddr !== null) {
        try {
            Interceptor.attach(survivalUpdateAddr, {
                onEnter(args) {
                    handleUpdateStep(args, "SurvivalStage");
                }
            });
            console.log("[+] Primary Hook attached: SurvivalStage::updateStep (_ZN13SurvivalStage10updateStepEf)");
        } catch (e) {
            console.log("[-] Error attaching to SurvivalStage::updateStep: " + e.message);
        }
    }

    if (trainingUpdateAddr !== null) {
        try {
            Interceptor.attach(trainingUpdateAddr, {
                onEnter(args) {
                    handleUpdateStep(args, "TrainingStage");
                }
            });
            console.log("[+] Hook attached: TrainingStage::updateStep (_ZN13TrainingStage10updateStepEf)");
        } catch (e) {}
    }

    if (stageUpdateAddr !== null) {
        try {
            Interceptor.attach(stageUpdateAddr, {
                onEnter(args) {
                    handleUpdateStep(args, "Stage");
                }
            });
            console.log("[+] Hook attached: Stage::updateStep (_ZN5Stage10updateStepEf)");
        } catch (e) {}
    }

    // =========================================================================
    // 10. RUNTIME CONTROLS IMPLEMENTATION (WITH SAFE TRY/CATCH)
    // =========================================================================

    // A. Block Sarge
    if (CONFIG.disable_sarge) {
        const updateSargeAddr = resolveExport("_ZN13SurvivalStage11updateSargeEf");
        if (updateSargeAddr !== null) {
            try {
                Interceptor.replace(updateSargeAddr, new NativeCallback(function (self, dt) {
                    // No-op to silence Sarge
                }, 'void', ['pointer', 'float']));
                console.log("[+] Runtime Control: SurvivalStage::updateSarge blocked.");
            } catch (e) {
                // Ignore if already replaced
            }
        }

        const headChatterAddr = resolveExport("_ZN13TrainingStage11headChatterEf");
        if (headChatterAddr !== null) {
            try {
                Interceptor.replace(headChatterAddr, new NativeCallback(function (self, dt) {
                    // No-op to silence TrainingStage Sarge head chatter
                }, 'void', ['pointer', 'float']));
                console.log("[+] Runtime Control: TrainingStage::headChatter blocked.");
            } catch (e) {
                // Ignore if already replaced
            }
        }
    }

    // B. Game Speed Modifier (CCScheduler::update)
    if (CONFIG.game_speed !== 1.0) {
        const schedulerUpdateAddr = resolveExport("_ZN7cocos2d11CCScheduler6updateEf");
        if (schedulerUpdateAddr !== null) {
            try {
                Interceptor.attach(schedulerUpdateAddr, {
                    onEnter(args) {
                        const scheduler = args[0];
                        if (!scheduler.isNull()) {
                            scheduler.add(0x14).writeFloat(CONFIG.game_speed);
                        }
                    }
                });
                console.log("[+] Runtime Control: Game speed modifier set to " + CONFIG.game_speed + "x");
            } catch (e) {}
        }
    }

    // C. Disable Rendering (Headless speedup for RL)
    if (CONFIG.disable_rendering) {
        const drawSceneAddr = resolveExport("_ZN7cocos2d10CCDirector9drawSceneEv");
        if (drawSceneAddr !== null) {
            try {
                Interceptor.attach(drawSceneAddr, {
                    onEnter(args) {
                        const director = args[0];
                        if (!director.isNull()) {
                            director.add(0x74).writeS32(0);
                            director.add(0x38).writeS32(0);
                            director.add(0x51).writeU8(1);
                        }
                    }
                });
                console.log("[+] Runtime Control: CCDirector rendering disabled.");
            } catch (e) {}
        }
    }

    // D. Disable Audio
    if (CONFIG.disable_sound) {
        const audioSymbols = [
            "_ZN13CocosDenshion17SimpleAudioEngine10playEffectEPKcbfff",
            "_ZN13CocosDenshion17SimpleAudioEngine10playEffectEPKcibfff",
            "_ZN13CocosDenshion17SimpleAudioEngine19playBackgroundMusicEPKcb"
        ];
        audioSymbols.forEach(name => {
            const addr = resolveExport(name);
            if (addr !== null) {
                try {
                    const isPlayEffect = (name.indexOf("playEffect") !== -1);
                    Interceptor.replace(addr, new NativeCallback(function () {
                        if (isPlayEffect) return 0;
                    }, isPlayEffect ? "uint" : "void", []));
                } catch (e) {}
            }
        });
        console.log("[+] Runtime Control: Audio playback disabled.");
    }

    // E. FPS Monitor & VSync Unlocker
    if (CONFIG.show_fps) {
        const eglSwapIntervalAddr = Module.findExportByName("libEGL.so", "eglSwapInterval");
        const eglSwapBuffersAddr = Module.findExportByName("libEGL.so", "eglSwapBuffers");

        if (eglSwapBuffersAddr && eglSwapIntervalAddr) {
            try {
                const eglSwapInterval = new NativeFunction(eglSwapIntervalAddr, 'int', ['pointer', 'int']);
                let vsyncUnlocked = false;

                Interceptor.attach(eglSwapBuffersAddr, {
                    onEnter(args) {
                        if (!vsyncUnlocked) {
                            eglSwapInterval(args[0], 0);
                            vsyncUnlocked = true;
                            console.log("[+] Runtime Control: Dynamic VSync unlocked via eglSwapInterval(dpy, 0)");
                        }
                    }
                });
            } catch (e) {}
        }

        const mainLoopAddr = resolveExport("_ZN7cocos2d21CCDisplayLinkDirector8mainLoopEv");
        if (mainLoopAddr !== null) {
            try {
                let fpsFrames = 0;
                let lastFpsTime = Date.now();

                Interceptor.attach(mainLoopAddr, {
                    onEnter(args) {
                        fpsFrames++;
                        const now = Date.now();
                        const delta = now - lastFpsTime;
                        if (delta >= 1000) {
                            const currentFps = (fpsFrames * 1000.0) / delta;
                            console.log(`[FPS Monitor] FPS: ${currentFps.toFixed(1)} | updateStep: ${updateStepCalls} | obs: ${observationsGenerated}`);
                            fpsFrames = 0;
                            lastFpsTime = now;
                        }
                    }
                });
            } catch (e) {}
        }
    }

    console.log("[+] ========================================================");
    console.log("[+] Mini Militia Unified RL Instrumentation Layer Ready!");
    console.log("[+] ========================================================");
}

// Ensure script attaches even if loaded before libcocos2dcpp.so
const initialBase = Module.findBaseAddress(MODULE_NAME);
if (initialBase !== null) {
    initializeInstrumentation(initialBase);
} else {
    console.log("[*] " + MODULE_NAME + " not yet in memory. Waiting for module load...");
    const checkTimer = setInterval(function () {
        const base = Module.findBaseAddress(MODULE_NAME);
        if (base !== null) {
            clearInterval(checkTimer);
            initializeInstrumentation(base);
        }
    }, 250);
}

import { getDictionaryObjects } from "../core/IterOverCCDic.js";

let moduleName = "libcocos2dcpp.so";
let moduleBase = Module.findBaseAddress(moduleName);

if (moduleBase === null) {
    console.log("[-] libcocos2dcpp.so is not loaded yet. Open the game or wait until the main screen loads, then load the script.");
} else {
    console.log("[+] libcocos2dcpp.so found at base: " + moduleBase);

    // 1. Resolve EnemyManager exports
    const initEnemiesAddr = Module.findExportByName(
        moduleName,
        "_ZN12EnemyManager11initEnemiesEv"
    );

    const enemyUpdateAddr = Module.findExportByName(
        moduleName,
        "_ZN12EnemyManager10updateStepEf"
    );

    // 2. Resolve Player exports
    const playerUpdateAddr = Module.findExportByName(
        moduleName,
        "_ZN21SoldierHostController10updateStepEf6cpVectS0_f"
    );

    const getPlayerHPAddr = Module.findExportByName(
        moduleName,
        "_ZN21SoldierHostController5getHPEv"
    );

    const getPlayerHP = getPlayerHPAddr ? new NativeFunction(
        getPlayerHPAddr,
        'int',
        ['pointer']
    ) : null;

    const setPlayerHPAddr = Module.findExportByName(
        moduleName,
        "_ZN21SoldierHostController5setHPEi"
    );

    const setPlayerHP = setPlayerHPAddr ? new NativeFunction(
        setPlayerHPAddr,
        'void',
        ['pointer', 'int']
    ) : null;

    const getSoldierViewAddr = Module.findExportByName(
        moduleName,
        "_ZN21SoldierHostController14getSoldierViewEv"
    );

    const getSoldierView = getSoldierViewAddr ? new NativeFunction(
        getSoldierViewAddr,
        'pointer',
        ['pointer']
    ) : null;

    // 3. Resolve HumanoidDrone / SoldierAIController exports
    const getHumanoidPositionAddr = Module.findExportByName(
        moduleName,
        "_ZN13HumanoidDrone15getBodyPositionEv"
    );
    const getHumanoidPosition = getHumanoidPositionAddr ? new NativeFunction(
        getHumanoidPositionAddr,
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

    // 4. Resolve CCNode standard Position & World Space exports
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

    // 5. Optional block Sarge
    const updateSargeAddr = Module.findExportByName(
        moduleName,
        "_ZN13SurvivalStage11updateSargeEf"
    );

    if (updateSargeAddr !== null) {
        console.log("[+] Block Sarge hook applied: stubbing _ZN13SurvivalStage11updateSargeEf");
        Interceptor.replace(updateSargeAddr, new NativeCallback(function (self, dt) {
            // Silence Sarge updates
        }, 'void', ['pointer', 'float']));
    } else {
        console.log("[-] Warning: _ZN13SurvivalStage11updateSargeEf export not found.");
    }

    if (initEnemiesAddr !== null && enemyUpdateAddr !== null && playerUpdateAddr !== null && getNodePosition !== null) {
        console.log("[+] test_drones_player.js: Successfully resolved all Cocos2d-x CCNode and game exports.");

        // Pre-allocate reusable buffers
        const zeroPoint = Memory.alloc(8);
        zeroPoint.writeFloat(0.0);
        zeroPoint.add(4).writeFloat(0.0);

        const screenOutPoint = Memory.alloc(8);
        const mapXBuf = Memory.alloc(4);
        const mapYBuf = Memory.alloc(4);
        const droneVecOut = Memory.alloc(16);

        let enemyManagerPtr = ptr(0);
        let playerControllerPtr = ptr(0);
        let soldierViewPtr = ptr(0);
        let playerHP = 0;
        let hasPlayer = false;

        // Capture EnemyManager pointer
        Interceptor.attach(initEnemiesAddr, {
            onEnter: function (args) {
                enemyManagerPtr = args[0];
            }
        });

        // Hook player update step to lock HP and capture soldierView
        Interceptor.attach(playerUpdateAddr, {
            onEnter: function (args) {
                playerControllerPtr = args[0];
                if (!playerControllerPtr.isNull()) {
                    // Lock player HP to 100 on every tick
                    if (setPlayerHP !== null) {
                        setPlayerHP(playerControllerPtr, 100);
                    }

                    if (getPlayerHP !== null) {
                        playerHP = getPlayerHP(playerControllerPtr);
                    }

                    // Retrieve the SoldierView CCNode
                    if (getSoldierView !== null) {
                        soldierViewPtr = getSoldierView(playerControllerPtr);
                        if (!soldierViewPtr.isNull()) {
                            hasPlayer = true;
                        }
                    }
                }
            }
        });

        // Helper function to extract Map and Screen coordinates from any CCNode pointer
        function getCoords(nodePtr) {
            if (nodePtr.isNull() || getNodePosition === null) return null;
            try {
                // 1. In-game Map Coordinates via CCNode::getPosition
                getNodePosition(nodePtr, mapXBuf, mapYBuf);
                const mapX = mapXBuf.readFloat();
                const mapY = mapYBuf.readFloat();

                // 2. Screen Viewport Coordinates via CCNode::convertToWorldSpace
                let screenX = null, screenY = null;
                if (convertToWorldSpace !== null) {
                    convertToWorldSpace(screenOutPoint, nodePtr, zeroPoint);
                    screenX = screenOutPoint.readFloat();
                    screenY = screenOutPoint.add(4).readFloat();
                }

                return { mapX, mapY, screenX, screenY };
            } catch (e) {
                return null;
            }
        }

        let frameCount = 0;

        // Hook EnemyManager update step to read all drones and calculate precise distances
        Interceptor.attach(enemyUpdateAddr, {
            onEnter: function (args) {
                if (enemyManagerPtr.isNull()) {
                    enemyManagerPtr = args[0];
                }

                frameCount++;
                // Log once every 60 frames (~1 second) to prevent console flood
                if (frameCount % 60 === 0 && !enemyManagerPtr.isNull() && hasPlayer && !soldierViewPtr.isNull()) {
                    const pCoords = getCoords(soldierViewPtr);
                    if (!pCoords) return;

                    console.log(`\n=================== Positions & Distance Comparison ===================`);
                    
                    const pMapStr = `(${pCoords.mapX.toFixed(2)}, ${pCoords.mapY.toFixed(2)})`;
                    const pScreenStr = (pCoords.screenX !== null)
                        ? `(${pCoords.screenX.toFixed(2)}, ${pCoords.screenY.toFixed(2)})`
                        : "N/A";

                    console.log(`[+] Player (HP: ${playerHP}) | Map: ${pMapStr} | Screen: ${pScreenStr}`);

                    function logDroneEntry(droneType, index, dMapX, dMapY, dScreenX, dScreenY) {
                        // Euclidean distance in shared in-game Map space
                        const distMap = Math.hypot(dMapX - pCoords.mapX, dMapY - pCoords.mapY).toFixed(2);
                        
                        // Euclidean distance in Screen Viewport space
                        const distScreen = (dScreenX !== null && pCoords.screenX !== null)
                            ? Math.hypot(dScreenX - pCoords.screenX, dScreenY - pCoords.screenY).toFixed(2)
                            : "N/A";

                        const dMapStr = `(${dMapX.toFixed(2)}, ${dMapY.toFixed(2)})`;
                        const dScreenStr = (dScreenX !== null) ? `(${dScreenX.toFixed(2)}, ${dScreenY.toFixed(2)})` : "N/A";

                        console.log(`    -> ${droneType} [${index}]: Map=${dMapStr}, Screen=${dScreenStr} | Distance: MapΔ=${distMap}, ScreenΔ=${distScreen}`);
                    }

                    // 1. Active HawkDrones (offset 0x14 - direct CCNode)
                    const hawkDictPtr = enemyManagerPtr.add(0x14).readPointer();
                    if (!hawkDictPtr.isNull()) {
                        const hawks = getDictionaryObjects(hawkDictPtr);
                        console.log(`[+] Active Hawk Drones: ${hawks.length}`);
                        for (let i = 0; i < hawks.length; i++) {
                            if (!hawks[i].isNull()) {
                                const dCoords = getCoords(hawks[i]);
                                if (dCoords) {
                                    logDroneEntry("HawkDrone", i, dCoords.mapX, dCoords.mapY, dCoords.screenX, dCoords.screenY);
                                }
                            }
                        }
                    }

                    // 2. Active HumanoidDrones (offset 0x18 - AI controller wrapper)
                    const humanoidDictPtr = enemyManagerPtr.add(0x18).readPointer();
                    if (!humanoidDictPtr.isNull()) {
                        const humanoids = getDictionaryObjects(humanoidDictPtr);
                        console.log(`[+] Active Humanoid Drones: ${humanoids.length}`);
                        for (let i = 0; i < humanoids.length; i++) {
                            const hPtr = humanoids[i];
                            if (!hPtr.isNull()) {
                                try {
                                    const aiControllerPtr = hPtr.add(0x1ac).readPointer();
                                    if (!aiControllerPtr.isNull() && getAISoldierView !== null) {
                                        const hViewPtr = getAISoldierView(aiControllerPtr);
                                        if (!hViewPtr.isNull()) {
                                            const dCoords = getCoords(hViewPtr);
                                            if (dCoords) {
                                                logDroneEntry("HumanoidDrone", i, dCoords.mapX, dCoords.mapY, dCoords.screenX, dCoords.screenY);
                                            }
                                        }
                                    }
                                } catch (e) {}
                            }
                        }
                    }

                    // 3. Active WormDrones (offset 0x1c - direct CCNode)
                    const wormDictPtr = enemyManagerPtr.add(0x1c).readPointer();
                    if (!wormDictPtr.isNull()) {
                        const worms = getDictionaryObjects(wormDictPtr);
                        console.log(`[+] Active Worm Drones: ${worms.length}`);
                        for (let i = 0; i < worms.length; i++) {
                            if (!worms[i].isNull()) {
                                const dCoords = getCoords(worms[i]);
                                if (dCoords) {
                                    logDroneEntry("WormDrone", i, dCoords.mapX, dCoords.mapY, dCoords.screenX, dCoords.screenY);
                                }
                            }
                        }
                    }

                    console.log(`========================================================================`);
                }
            }
        });
    } else {
        console.log("[-] test_drones_player.js: Failed to resolve one or more required exports.");
    }
}

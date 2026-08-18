/**
 * Mini Militia RL Environment - Runtime Controls & Modifiers Layer
 * 
 * Features:
 *  - Player Custom Spawn Weapon: Auto-equips designated weapon on spawn / respawn
 *  - Strict Ammo Order: Equips weapon -> sets reserve non-mag ammo -> sets clip ammo
 *  - Infinite Health / God mode: Locks HP to 100
 *  - Infinite Boost: Locks power to 10.0
 *  - Block Sarge: Stubs dialogue & update loops
 *  - Game Speed Modifier: Modifies CCScheduler update timescale
 *  - Headless Mode: Disables CCDirector rendering for RL speedup
 *  - Disable Audio: Stubs playEffect / playBackgroundMusic
 *  - Pure Native VSync / FPS Unlocker: eglSwapInterval(dpy, 0)
 *  - FPS Monitor: Measures real-time render framerate via CCDisplayLinkDirector::mainLoop
 */

'use strict';

import { CONFIG as DEFAULT_CONFIG } from './config.js';

const MODULE_NAME = "libcocos2dcpp.so";

export function initRuntimeControls(moduleBase, customConfig) {
    const config = customConfig || DEFAULT_CONFIG;
    console.log("[+] ========================================================");
    console.log("[+] Mini Militia Runtime Controls Layer Initialized");
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

    // 1. Resolve Native Functions
    const playerUpdateAddr = resolveExport("_ZN21SoldierHostController10updateStepEf6cpVectS0_f");
    const respawnPlayerAddr = resolveExport("_ZN14SoldierManager13respawnPlayerEPN7cocos2d8CCObjectE");

    const getPrimaryWeaponAddr = resolveExport("_ZN17SoldierController16getPrimaryWeaponEv");
    const getPrimaryWeapon = getPrimaryWeaponAddr ? new NativeFunction(getPrimaryWeaponAddr, 'pointer', ['pointer']) : null;

    const addPrimaryWeaponAddr = resolveExport("_ZN21SoldierHostController16addPrimaryWeaponEP6Weapon");
    const addPrimaryWeapon = addPrimaryWeaponAddr ? new NativeFunction(addPrimaryWeaponAddr, 'void', ['pointer', 'pointer']) : null;

    const sharedWeaponFactoryAddr = resolveExport("_ZN13WeaponFactory19sharedWeaponFactoryEv");
    const sharedWeaponFactory = sharedWeaponFactoryAddr ? new NativeFunction(sharedWeaponFactoryAddr, 'pointer', []) : null;

    const createWeaponAddr = resolveExport("_ZN13WeaponFactory24createWeaponFromAmmoTypeE8ItemType");
    const createWeaponFromAmmoType = createWeaponAddr ? new NativeFunction(createWeaponAddr, 'pointer', ['pointer', 'int']) : null;

    const setAmmoAddr = resolveExport("_ZN6Weapon7setAmmoEi");
    const setAmmoFunc = setAmmoAddr ? new NativeFunction(setAmmoAddr, 'void', ['pointer', 'int']) : null;

    const setPlayerHPAddr = resolveExport("_ZN21SoldierHostController5setHPEi");
    const setPlayerHP = setPlayerHPAddr ? new NativeFunction(setPlayerHPAddr, 'void', ['pointer', 'int']) : null;

    const setPowerAddr = resolveExport("_ZN21SoldierHostController8setPowerEf");
    const setPower = setPowerAddr ? new NativeFunction(setPowerAddr, 'void', ['pointer', 'float']) : null;

    let lastPlayerInstance = ptr(0);

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
                    console.log(`[+] Auto-equipped weapon type ${weaponType} to Player: ${soldierPtr}`);
                }
            }
        } catch (e) {
            console.log(`[-] Failed to equip weapon: ${e.message}`);
        }
    }

    // 2. Player State & Spawn Modification Hooks
    if (respawnPlayerAddr !== null) {
        try {
            Interceptor.attach(respawnPlayerAddr, {
                onEnter: function () {
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
                        const playerControllerPtr = args[0];
                        if (!playerControllerPtr.isNull()) {
                            // A. Auto-equip Weapon
                            if (config.always_spawn_with_weapon) {
                                if (!playerControllerPtr.equals(lastPlayerInstance)) {
                                    lastPlayerInstance = playerControllerPtr;
                                    equipWeapon(playerControllerPtr, config.spawn_weapon_type);
                                }
                            }

                            // B. Infinite Health
                            if (config.infinite_health && setPlayerHP !== null) {
                                setPlayerHP(playerControllerPtr, 100);
                            }

                            // C. Infinite Boost
                            if (config.infinite_boost && setPower !== null) {
                                setPower(playerControllerPtr, 10.0);
                            }

                            // D. Infinite Reload Ammo
                            if (config.infinite_reload_ammo && getPrimaryWeapon !== null) {
                                const wPtr = getPrimaryWeapon(playerControllerPtr);
                                if (wPtr && !wPtr.isNull()) {
                                    if (setAmmoFunc !== null) {
                                        setAmmoFunc(wPtr, 999);
                                    }
                                    wPtr.add(0x1ee).writeS16(99);
                                }
                            }
                        }
                    } catch (e) {}
                }
            });
            console.log("[+] Player runtime modifiers attached (HP/Ammo/Boost/Weapon).");
        } catch (e) {}
    }

    // 3. Block Sarge
    if (config.disable_sarge) {
        const updateSargeAddr = resolveExport("_ZN13SurvivalStage11updateSargeEf");
        if (updateSargeAddr !== null) {
            try {
                Interceptor.replace(updateSargeAddr, new NativeCallback(function () {}, 'void', ['pointer', 'float']));
                console.log("[+] Runtime Control: SurvivalStage::updateSarge blocked.");
            } catch (e) {}
        }

        const headChatterAddr = resolveExport("_ZN13TrainingStage11headChatterEf");
        if (headChatterAddr !== null) {
            try {
                Interceptor.replace(headChatterAddr, new NativeCallback(function () {}, 'void', ['pointer', 'float']));
                console.log("[+] Runtime Control: TrainingStage::headChatter blocked.");
            } catch (e) {}
        }
    }

    // 4. Game Speed Modifier
    if (config.game_speed !== 1.0) {
        const schedulerUpdateAddr = resolveExport("_ZN7cocos2d11CCScheduler6updateEf");
        if (schedulerUpdateAddr !== null) {
            try {
                Interceptor.attach(schedulerUpdateAddr, {
                    onEnter(args) {
                        const scheduler = args[0];
                        if (!scheduler.isNull()) {
                            scheduler.add(0x14).writeFloat(config.game_speed);
                        }
                    }
                });
                console.log("[+] Runtime Control: Game speed modifier set to " + config.game_speed + "x");
            } catch (e) {}
        }
    }

    // 5. Disable Rendering (Headless speedup for RL)
    if (config.disable_rendering) {
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

    // 6. Disable Audio
    if (config.disable_sound) {
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

    // 7. VSync & FPS Unlocker (Pure Native)
    if (config.unlock_fps) {
        const eglSwapIntervalAddr = Module.findExportByName("libEGL.so", "eglSwapInterval");
        const eglSwapBuffersAddr = Module.findExportByName("libEGL.so", "eglSwapBuffers");

        if (eglSwapBuffersAddr && eglSwapIntervalAddr) {
            try {
                const eglSwapInterval = new NativeFunction(eglSwapIntervalAddr, 'int', ['pointer', 'int']);
                let vsyncUnlocked = false;

                Interceptor.attach(eglSwapBuffersAddr, {
                    onEnter(args) {
                        if (!vsyncUnlocked) {
                            const dpy = args[0];
                            const res = eglSwapInterval(dpy, 0);
                            vsyncUnlocked = true;
                            console.log(`[+] Runtime Control: Dynamic VSync unlocked via eglSwapInterval(dpy, 0) -> return ${res}`);
                        }
                    }
                });
                console.log("[+] Dynamic VSYNC unlocker initialized.");
            } catch (e) {
                console.log("[-] Failed to initialize VSync unlocker: " + e.message);
            }
        }
    }

    // 8. FPS Monitor
    if (config.show_fps) {
        const mainLoopAddr = resolveExport("_ZN7cocos2d21CCDisplayLinkDirector8mainLoopEv");
        if (mainLoopAddr !== null) {
            try {
                let fpsFrames = 0;
                let lastFpsTime = Date.now();

                Interceptor.attach(mainLoopAddr, {
                    onEnter() {
                        fpsFrames++;
                        const now = Date.now();
                        const delta = now - lastFpsTime;
                        if (delta >= 1000) {
                            const currentFps = (fpsFrames * 1000.0) / delta;
                            console.log(`[FPS Monitor] Render FPS: ${currentFps.toFixed(1)}`);
                            fpsFrames = 0;
                            lastFpsTime = now;
                        }
                    }
                });
                console.log("[+] FPS monitor installed via CCDisplayLinkDirector::mainLoop");
            } catch (e) {}
        }
    }
}

// Standalone execution support
const initialBase = Module.findBaseAddress(MODULE_NAME);
if (initialBase !== null) {
    initRuntimeControls(initialBase, DEFAULT_CONFIG);
} else {
    const checkTimer = setInterval(function () {
        const base = Module.findBaseAddress(MODULE_NAME);
        if (base !== null) {
            clearInterval(checkTimer);
            initRuntimeControls(base, DEFAULT_CONFIG);
        }
    }, 250);
}

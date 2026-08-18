/**
 * Mini Militia RL Environment - Unified Frame-Hook Observation & Runtime Layer
 * 
 * Orchestrator script that ties together:
 *  - config.js: Central runtime switches & configuration parameters
 *  - runtime_controls.js: Game modifiers, weapon equips, speed multiplier, headless mode, audio & VSync unlocker
 *  - observation_collector.js: High-performance frame-by-frame observation sampling & transport
 */

'use strict';

import { CONFIG } from './config.js';
import { initRuntimeControls } from './runtime_controls.js';
import { initObservationCollector } from './observation_collector.js';

const MODULE_NAME = "libcocos2dcpp.so";

function startAll(moduleBase) {
    console.log("[+] ========================================================");
    console.log("[+] Mini Militia Unified RL Instrumentation Layer");
    console.log("[+] Target Module Base: " + moduleBase);
    console.log("[+] ========================================================");

    // 1. Initialize Runtime Modifiers (Cheats, Speed, Render, Weapon, VSync)
    initRuntimeControls(moduleBase, CONFIG);

    // 2. Initialize Observation Collection (Frame hooks, State samplers, Output stream)
    initObservationCollector(moduleBase, CONFIG);

    console.log("[+] ========================================================");
    console.log("[+] Unified RL Instrumentation Layer Ready!");
    console.log("[+] ========================================================");
}

const initialBase = Module.findBaseAddress(MODULE_NAME);
if (initialBase !== null) {
    startAll(initialBase);
} else {
    console.log("[*] " + MODULE_NAME + " not yet in memory. Waiting for module load...");
    const checkTimer = setInterval(function () {
        const base = Module.findBaseAddress(MODULE_NAME);
        if (base !== null) {
            clearInterval(checkTimer);
            startAll(base);
        }
    }, 250);
}

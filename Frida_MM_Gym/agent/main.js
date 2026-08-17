// Frida_MM_Gym agent entry point.
//
// Wiring order matters:
//   1. Confirm libcocos2dcpp.so is loaded.
//   2. Install env controls (they only need static symbols).
//   3. Init actuators.
//   4. Install the player hook, then the enemy hook (the frame driver).
//
// Python prepends `const GYM_CONFIG = {...};` before this bundle, so config is
// available synchronously -- see core/config.js.

import { MODULE_NAME, moduleBase } from "./core/symbols.js";
import { config, logInfo } from "./core/config.js";
import { emitEvent } from "./core/emit.js";
import { isReady as ccdictReady } from "./core/ccdict.js";
import { isReady as ccnodeReady, hasScreenSpace } from "./core/ccnode.js";
import { initEnv } from "./env/index.js";
import { initActuators } from "./actuators/index.js";
import { initEnemies } from "./entities/enemies.js";
import * as playerTick from "./hooks/player_tick.js";
import * as enemyTick from "./hooks/enemy_tick.js";

function formatReport(title, rows) {
    const lines = ["    " + title + ":"];
    for (let i = 0; i < rows.length; i++) {
        const r = rows[i];
        lines.push("      - " + r.name + ": " + r.status
            + (r.detail ? " (" + r.detail + ")" : ""));
    }
    return lines.join("\n");
}

function main() {
    const base = moduleBase();
    if (base === null) {
        const msg = "[-] " + MODULE_NAME + " is not loaded yet. "
            + "Open the game and wait for the main screen, then load the script.";
        console.log(msg);
        emitEvent({ type: "error", stage: "startup", message: msg });
        return;
    }

    logInfo("[+] " + MODULE_NAME + " @ " + base);

    // Shared mutable state, threaded through every module.
    const ctx = {
        config: config,
        state: {
            enemyManager: ptr(0),
            timeScale: 1.0,
            fps: null,
            spawnCount: 0,
            playerFrames: 0,
            stopRendering: false,
            env: []
        }
    };

    // --- Environment controls -------------------------------------------------
    const env = initEnv(ctx);
    ctx.state.env = env.applied;

    // --- Actuators -----------------------------------------------------------
    const act = initActuators(ctx);

    // --- Prerequisites for observations --------------------------------------
    const prereq = [];
    if (!ccnodeReady()) prereq.push("CCNode::getPosition");
    if (!ccdictReady()) prereq.push("CCDictionary iteration");

    const enemySummary = initEnemies();

    // --- Hooks ---------------------------------------------------------------
    const ph = playerTick.install(ctx, act.active);
    const eh = enemyTick.install(ctx);

    // --- Startup report ------------------------------------------------------
    const lines = [
        "",
        "=================== Frida_MM_Gym ready ===================",
        "    module:           " + MODULE_NAME + " @ " + base,
        "    obs interval:     every " + config.obs_interval_frames + " frame(s)",
        "    emit:             " + config.emit,
        "    screen coords:    " + config.include_screen_coords
            + (hasScreenSpace() ? "" : " (convertToWorldSpace UNAVAILABLE)"),
        "    vec_abi:          " + config.vec_abi + " (resolved on first player frame)",
        formatReport("actuators", act.report),
        formatReport("env", env.report),
        "    enemy types:      " + enemySummary.join(" "),
        "    player hook:      " + (ph.ok ? "ok " + ph.detail : "FAILED " + ph.detail),
        "    enemy hook:       " + (eh.ok ? "ok " + eh.detail : "FAILED " + eh.detail)
    ];

    if (prereq.length > 0) {
        lines.push("    [!] MISSING PREREQS: " + prereq.join(", "));
    }
    if (config.env.stop_rendering.enabled && config.include_screen_coords) {
        lines.push("    [!] stop_rendering + include_screen_coords: screen coords "
            + "may go stale. Verify, or set include_screen_coords=false.");
    }
    if (config.env.fast_forward.enabled) {
        lines.push("    [!] fast_forward scales dt; obs_interval_frames no longer "
            + "maps to wall-clock time the same way.");
    }
    lines.push("==========================================================");
    lines.push("");

    console.log(lines.join("\n"));

    // Machine-readable twin of the above, so Python can assert on startup state.
    emitEvent({
        type: "ready",
        module_base: String(base),
        config: config,
        actuators: act.report,
        env: env.report,
        enemy_types: enemySummary,
        hooks: { player: ph, enemy: eh },
        missing_prereqs: prereq
    });
}

main();

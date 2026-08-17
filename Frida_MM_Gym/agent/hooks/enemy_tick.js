// EnemyManager::updateStep(float)
//
// THE FRAME DRIVER. Every obs_interval_frames-th call, this builds the complete
// observation synchronously -- enemy sweep plus the latched player state -- and
// pushes it with send().
//
// Why here and not from a timer or an RPC: the enemy CCDictionaries are mutated
// by the game thread as drones spawn and die. Walking them anywhere other than
// inside this tick is a use-after-free. There is deliberately no setInterval, no
// background thread, and no RPC export that touches game memory.
//
// The EnemyManager pointer is captured from initEnemies() when possible and
// falls back to args[0] here.

import { resolve } from "../core/symbols.js";
import { logInfo } from "../core/config.js";
import { emitObs, droppedCount } from "../core/emit.js";
import { chosen } from "../core/cpvect.js";
import * as player from "../entities/player.js";
import { sweep, velocitySource } from "../entities/enemies.js";

export function install(ctx) {
    const updateAddr = resolve("_ZN12EnemyManager10updateStepEf");
    if (updateAddr === null) {
        return { ok: false, detail: "EnemyManager::updateStep unresolved" };
    }

    // Optional: gives us the manager pointer before the first update.
    const initAddr = resolve("_ZN12EnemyManager11initEnemiesEv");
    if (initAddr !== null) {
        Interceptor.attach(initAddr, {
            onEnter: function (args) {
                ctx.state.enemyManager = args[0];
                logInfo("[+] enemy_tick: EnemyManager = " + args[0]);
            }
        });
    }

    const cfg = ctx.config;
    let frame = 0;

    Interceptor.attach(updateAddr, {
        onEnter: function (args) {
            frame++;

            if (ctx.state.enemyManager === null || ctx.state.enemyManager.isNull()) {
                ctx.state.enemyManager = args[0];
            }

            const interval = cfg.obs_interval_frames;
            if (interval <= 0 || (frame % interval) !== 0) return;

            try {
                const dt = player.currentDt();
                const p = player.snapshot(cfg);
                const playerPos = (p.present && p.pos) ? p.pos : null;

                const swept = sweep(ctx.state.enemyManager, playerPos, dt, cfg);

                emitObs({
                    type: "obs",
                    frame: frame,
                    t: Date.now() / 1000.0,
                    dt: dt,
                    player: p,
                    enemies: swept.enemies,
                    counts: swept.counts,
                    diag: {
                        vec_abi: chosen(),
                        vel_source: velocitySource(),
                        dropped: droppedCount(),
                        time_scale: ctx.state.timeScale,
                        fps: ctx.state.fps,
                        spawns: ctx.state.spawnCount,
                        env: ctx.state.env
                    }
                });
            } catch (e) {
                // An observation failure must never break the game loop.
                logInfo("[!] enemy_tick: snapshot failed: " + e.message);
            }
        }
    });

    logInfo("[+] hook enemy_tick installed @ " + updateAddr
        + " (emit every " + cfg.obs_interval_frames + " frames)");
    return { ok: true, detail: String(updateAddr) };
}

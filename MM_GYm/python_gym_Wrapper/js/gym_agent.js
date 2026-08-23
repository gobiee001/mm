/**
 * Mini Militia Gym - Agent Entry Point
 *
 * Exposes a synchronous-feeling RPC surface to Python. env.step() calls
 * rpc.exports.step(action), which returns a Promise resolved from inside the
 * physics tick hook after exactly `frame_skip` ticks. frida-python blocks on
 * that promise, so one env.step() == one IPC round-trip carrying one payload.
 *
 * The legacy design streamed every physics tick to Python and had it count
 * messages, which is ~frame_skip x the IPC and gives no control over which
 * ticks a reward was accumulated across.
 *
 * Caveat, stated plainly: by default this is soft synchronisation. The game
 * thread is never halted, so it keeps running between the resolve and the
 * next step() call. Each payload therefore reports `ticks` actually
 * observed; Python compares it against frame_skip and surfaces any slip
 * rather than silently mis-attributing reward.
 *
 * When cfg.hard_sync is true (see gym_sync.js), the game is frozen between
 * steps instead: beginStep() releases exactly `ticks` frames, each with a
 * fixed dt, and nothing advances until the next step()/reset() call. In that
 * mode `ticks` always equals the requested target (tick_slip is always 0) -
 * onPhysicsTick/settle below are unaware of the difference and need no
 * changes either way; hard-sync only decides whether the ticks it's counting
 * actually happen.
 */

'use strict';

import { MODULE_NAME, initSymbols, resolveExport, attach, getSymbolReport } from './gym_symbols.js';
import { buildConfig } from './gym_config.js';
import { initRuntime } from './gym_runtime.js';
import { initHardSync } from './gym_sync.js';
import { initActions } from './gym_actions.js';
import { initObserver } from './gym_observer.js';

const cfg = buildConfig();

const diag = {
    joypad_write_err: 0, controller_write_err: 0, damage_hook_err: 0,
    player_view_err: 0, player_pos_err: 0, player_vel_err: 0, player_hp_err: 0,
    weapon_err: 0, dict_err: 0, enemy_pos_err: 0, enemy_vel_err: 0, enemy_hp_err: 0,
    synth_id_count: 0, equip_err: 0, reset_err: 0, dt_fallback: 0,
    step_timeouts: 0, overlapped_steps: 0,
    // Touch-gate simulation (see gym_actions.js) - synthetic touch priming
    // health and the cpVect setter fallback channel.
    touch_prime_count: 0, touch_reprime_count: 0, touch_err: 0, set_dir_err: 0
};

let ready = false;
let actions = null;
let observer = null;
let runtime = null;
let hardSync = null;
let tickSource = null;
let totalTicks = 0;   // ticks since attach (soft sync) or since the first RPC call armed hard_sync

// ---- Frame-skip accumulator ---------------------------------------------
let pending = null;

function newAcc(target) {
    return {
        target: target,
        ticks: 0,
        idle_ticks: 0,
        engaged_ticks: 0,
        enemy_ticks: 0,
        dead_ticks: 0,
        min_dist: Infinity,
        dt_sum: 0.0,
        dt_min: Infinity,
        dt_max: 0.0,
        isIdle: () => (actions !== null ? actions.isIdle() : true)
    };
}

function accPayload(a) {
    return {
        ticks: a.ticks,
        idle_ticks: a.idle_ticks,
        engaged_ticks: a.engaged_ticks,
        enemy_ticks: a.enemy_ticks,
        dead_ticks: a.dead_ticks,
        min_dist: (a.min_dist === Infinity) ? -1.0 : a.min_dist,
        dt_sum: a.dt_sum,
        dt_mean: a.ticks > 0 ? a.dt_sum / a.ticks : 0.0,
        dt_min: (a.dt_min === Infinity) ? 0.0 : a.dt_min,
        dt_max: a.dt_max
    };
}

const dtBuf = Memory.alloc(4);
function extractDt(arg) {
    if (!arg) { diag.dt_fallback++; return 0.0166667; }
    try {
        dtBuf.writeU32(arg.toUInt32());
        const v = dtBuf.readFloat();
        if (v > 0.00001 && v < 1.0) return v;
    } catch (e) {}
    diag.dt_fallback++;
    return 0.0166667;
}

function settle(p) {
    if (pending === null) return;
    const cur = pending;
    pending = null;
    if (cur.watchdog !== null) { try { clearTimeout(cur.watchdog); } catch (e) {} }
    if (cur.done) return;
    cur.done = true;

    const acc = cur.acc;
    const counters = observer.diffCounters(cur.before);
    cur.resolve({
        ok: true,
        kind: cur.kind,
        obs: observer.buildObservation(),
        events: counters,
        acc: accPayload(acc),
        timed_out: !!p,
        total_ticks: totalTicks,
        has_player: observer.hasPlayer()
    });
}

function onPhysicsTick(args) {
    totalTicks++;

    // Any queued reset runs here, on the game thread, never from an RPC callback.
    observer.applyPendingReset();

    if (pending === null) {
        observer.onTick(null);
        return;
    }

    const acc = pending.acc;
    const dt = extractDt(args && args[1]);
    acc.dt_sum += dt;
    if (dt < acc.dt_min) acc.dt_min = dt;
    if (dt > acc.dt_max) acc.dt_max = dt;

    observer.onTick(acc);

    if (acc.ticks >= acc.target) settle(false);
}

function beginStep(kind, ticks) {
    if (pending !== null) {
        diag.overlapped_steps++;
        settle(true);
    }
    return new Promise((resolve) => {
        const cur = {
            kind: kind,
            acc: newAcc(Math.max(1, ticks | 0)),
            before: observer.snapshotCounters(),
            resolve: resolve,
            done: false,
            watchdog: null
        };
        pending = cur;
        if (cfg.hard_sync) hardSync.release(cur.acc.target);
        if (cfg.step_timeout_ms > 0) {
            cur.watchdog = setTimeout(() => {
                if (pending === cur && !cur.done) {
                    diag.step_timeouts++;
                    settle(true);
                }
            }, cfg.step_timeout_ms);
        }
    });
}

function notReady() {
    return { ok: false, error: "instrumentation not initialised (is the game loaded?)" };
}

// ---- RPC surface ---------------------------------------------------------
rpc.exports = {
    ping() {
        return {
            ok: true,
            ready: ready,
            module: MODULE_NAME,
            tick_source: tickSource,
            total_ticks: totalTicks
        };
    },

    info() {
        if (!ready) return notReady();
        const rep = getSymbolReport();
        return {
            ok: true,
            config: cfg,
            tick_source: tickSource,
            capabilities: observer.capabilities,
            action_hooks: { player: actions.ok, fire: actions.hasFireHook },
            hard_sync: { enabled: cfg.hard_sync, ok: hardSync.ok },
            symbols_found: rep.found.length,
            symbols_missing: rep.missing,
            diag: diag
        };
    },

    /** Hold `action` for frame_skip physics ticks, then return obs + events. */
    step(action) {
        if (!ready) return notReady();
        actions.setAction(action);
        return beginStep("step", cfg.frame_skip);
    },

    /**
     * Soft reset. Optionally kills the player and/or clears all drones, then
     * lets `settleTicks` physics ticks elapse so the respawn completes before
     * the first observation is taken.
     */
    reset(opts) {
        if (!ready) return notReady();
        const o = opts || {};
        actions.clearAction();
        if (o.kill_player || o.clear_enemies) {
            observer.requestSoftReset({
                kill_player: !!o.kill_player,
                clear_enemies: !!o.clear_enemies
            });
        }
        return beginStep("reset", o.settle_ticks || 1);
    },

    /** Non-blocking current state. Does not advance or wait for ticks. */
    peek() {
        if (!ready) return notReady();
        return {
            ok: true,
            obs: observer.buildObservation(),
            counters: observer.snapshotCounters(),
            total_ticks: totalTicks,
            has_player: observer.hasPlayer()
        };
    },

    stats() {
        return {
            ok: true,
            diag: diag,
            total_ticks: totalTicks,
            render_frames: runtime ? runtime.renderStats.frames : 0,
            hard_sync_pending: hardSync ? hardSync.pendingFrames() : 0,
            counters: ready ? observer.snapshotCounters() : null
        };
    },

    /** Live-tune a subset of config without reloading the script. */
    setConfig(patch) {
        for (const k in patch) cfg[k] = patch[k];
        return { ok: true, config: cfg };
    }
};

// ---- Bootstrap -----------------------------------------------------------
function start(base) {
    initSymbols();
    runtime = initRuntime(cfg, diag);
    hardSync = initHardSync(cfg, diag);
    actions = initActions(cfg, diag);
    observer = initObserver(cfg, diag);

    const sources = [
        ["_ZN14PhysicsManager10updateStepEf", "PhysicsManager"],
        ["_ZN13SurvivalStage10updateStepEf", "SurvivalStage"],
        ["_ZN13TrainingStage10updateStepEf", "TrainingStage"],
        ["_ZN5Stage10updateStepEf", "Stage"]
    ];
    for (const [sym, name] of sources) {
        if (resolveExport(sym) === null) continue;
        if (attach(sym, { onEnter(args) { onPhysicsTick(args); } })) {
            tickSource = name;
            break;
        }
    }

    ready = true;
    const rep = getSymbolReport();
    console.log("[gym] ready | base=" + base + " | tick source=" + tickSource +
                " | symbols " + rep.found.length + " found, " + rep.missing.length + " missing");
    if (rep.missing.length > 0) console.log("[gym] missing: " + rep.missing.join(", "));
    send({ __gym__: "ready", tick_source: tickSource, missing: rep.missing });
}

const base0 = Module.findBaseAddress(MODULE_NAME);
if (base0 !== null) {
    start(base0);
} else {
    console.log("[gym] waiting for " + MODULE_NAME + " ...");
    const t = setInterval(() => {
        const b = Module.findBaseAddress(MODULE_NAME);
        if (b !== null) { clearInterval(t); start(b); }
    }, 200);
}

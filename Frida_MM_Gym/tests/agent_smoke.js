// Offline smoke test for the bundled agent.
//
// Executes the real bundle inside a mocked Frida API (tests/mock_frida.js) and a
// tiny fake game, then drives the hooks and asserts on what the agent produced.
//
// This verifies module wiring, symbol resolution, every actuator, the cpVect ABI
// probe, the reload edge detector, the enemy sweep, and the emitted payload
// shape -- none of which "it parses cleanly" tells you anything about.
//
// Usage: node tests/agent_smoke.js <bundle.js>
// Driven by tests/run_smoke.py, which generates the bundle first.

"use strict";

const fs = require("fs");
const vm = require("vm");
const path = require("path");
const { createMock } = require("./mock_frida.js");

const PLAYER_TICK = "_ZN21SoldierHostController10updateStepEf6cpVectS0_f";
const ENEMY_TICK = "_ZN12EnemyManager10updateStepEf";
const ENEMY_INIT = "_ZN12EnemyManager11initEnemiesEv";
const SCHEDULER = "_ZN7cocos2d11CCScheduler6updateEf";
const MAIN_LOOP = "_ZN7cocos2d21CCDisplayLinkDirector8mainLoopEv";
const DRAW_SCENE = "_ZN7cocos2d10CCDirector9drawSceneEv";
const SARGE = "_ZN13SurvivalStage11updateSargeEf";

let failures = 0;
let checks = 0;
const results = [];

function check(name, cond, detail) {
    checks++;
    if (cond) {
        results.push("  PASS  " + name);
    } else {
        failures++;
        results.push("  FAIL  " + name + (detail !== undefined ? "  -> " + detail : ""));
    }
}

function eq(name, actual, expected) {
    check(name, actual === expected, `got ${JSON.stringify(actual)}, want ${JSON.stringify(expected)}`);
}

function near(name, actual, expected, tol) {
    const ok = typeof actual === "number" && Math.abs(actual - expected) <= (tol || 1e-3);
    check(name, ok, `got ${actual}, want ~${expected}`);
}

// ---------------------------------------------------------------------------

function loadAgent(bundlePath, configOverride, mockOptions) {
    const source = fs.readFileSync(bundlePath, "utf8");
    const mock = createMock(mockOptions || {});

    // Replace the injected config with the one this scenario wants.
    const body = source.replace(/^var GYM_CONFIG = .*$/m,
        "var GYM_CONFIG = " + JSON.stringify(configOverride) + ";");

    const context = vm.createContext(mock.sandbox);
    vm.runInContext(body, context, { filename: path.basename(bundlePath) });
    return mock;
}

function dt60() {
    return 1 / 60;
}

// Drive n player frames followed by n enemy frames, interleaved as the engine
// would: player logic step, then enemy logic step, per frame.
function runFrames(mock, n) {
    const playerHook = mock.hooks.get(PLAYER_TICK);
    const enemyHook = mock.hooks.get(ENEMY_TICK);
    const dtArg = mock.floatArg(dt60());
    const zero = new mock.FakePtr(0);

    for (let i = 0; i < n; i++) {
        if (playerHook) {
            playerHook.onEnter.call({}, [mock.pointers.player, dtArg, zero, zero, zero]);
        }
        if (enemyHook) {
            enemyHook.onEnter.call({}, [mock.pointers.enemyManager, dtArg]);
        }
    }
}

function observations(mock) {
    return mock.sent.filter((m) => m && m.type === "obs");
}

function readyEvent(mock) {
    return mock.sent.find((m) => m && m.type === "ready") || null;
}

// ===========================================================================
// Scenario 1 -- everything on: all actuators, observations every 5 frames.
// ===========================================================================

function scenarioMain(bundlePath) {
    results.push("\n[scenario] all actuators on, obs every 5 frames");

    const cfg = {
        obs_interval_frames: 5,
        emit: true,
        include_screen_coords: true,
        include_enemy_hp: true,
        vec_abi: "auto",
        log_level: "quiet",
        actuators: {
            health: { enabled: true, value: 100 },
            power: { enabled: true, value: 100.0 },
            ammo: { enabled: true, refill_reserve_every_frame: true, refill_clip_on_reload_end: true },
            loadout: { enabled: true, weapon_type: 5, strip_other_slots: true }
        },
        env: {
            fast_forward: { enabled: false, time_scale: 3.0 },
            fps_unlock: { enabled: false },
            fps_monitor: { enabled: false, report_interval_ms: 1000 },
            stop_rendering: { enabled: false, show_stats: true },
            block_audio: { enabled: false },
            block_sarge: { enabled: false }
        }
    };

    const mock = loadAgent(bundlePath, cfg);

    // -- startup ----------------------------------------------------------
    const ready = readyEvent(mock);
    check("ready event emitted", ready !== null);
    if (ready) {
        eq("no missing prereqs", (ready.missing_prereqs || []).length, 0);
        eq("player hook installed", ready.hooks.player.ok, true);
        eq("enemy hook installed", ready.hooks.enemy.ok, true);
        const failed = (ready.actuators || []).filter((a) => a.status === "failed");
        check("no actuator failed to init", failed.length === 0, JSON.stringify(failed));
        const active = (ready.actuators || []).filter((a) => a.status === "active").map((a) => a.name);
        eq("4 actuators active", active.length, 4);
    }

    check("both tick hooks registered",
        mock.hooks.has(PLAYER_TICK) && mock.hooks.has(ENEMY_TICK));
    check("initEnemies hooked", mock.hooks.has(ENEMY_INIT));

    // -- run --------------------------------------------------------------
    mock.hooks.get(ENEMY_INIT).onEnter.call({}, [mock.pointers.enemyManager]);
    runFrames(mock, 10);

    // -- actuators --------------------------------------------------------
    eq("health locked to 100", mock.game.hp, 100);
    eq("power locked to 100.0", mock.game.power, 100.0);
    eq("reserve ammo topped to capacity", mock.game.ammo, mock.game.ammoCapacity);

    eq("UZI equipped once per spawn", mock.game.addPrimaryCalls, 1);
    eq("created weapon type is UZI(5)", mock.game.createdType, 5);
    eq("weapon type now UZI", mock.game.weaponType, 5);
    check("other slots stripped",
        mock.game.slots.secondary === null &&
        mock.game.slots.dual === null &&
        mock.game.slots.side === null,
        JSON.stringify(mock.game.removedSlots));

    // -- cpVect ABI -------------------------------------------------------
    const obs = observations(mock);
    check("observations emitted", obs.length >= 2, `count=${obs.length}`);
    if (obs.length === 0) return;

    const o = obs[obs.length - 1];
    eq("probe chose the struct ABI", o.diag.vec_abi, "struct");
    eq("velocity from native path", o.diag.vel_source, "native");
    eq("no dropped sends", o.diag.dropped, 0);

    // -- observation shape: player ----------------------------------------
    eq("player present", o.player.present, true);
    eq("player hp in obs", o.player.hp, 100);
    near("player pos.x", o.player.pos.x, 100.0);
    near("player pos.y", o.player.pos.y, 200.0);
    near("player screen.x (camera offset applied)", o.player.screen.x, 50.0);
    near("player screen.y (camera offset applied)", o.player.screen.y, 170.0);
    near("player vel.x from getBodyVelocity", o.player.vel.x, 1.5);
    near("player vel.y from getBodyVelocity", o.player.vel.y, -0.5);
    near("player aim_angle", o.player.aim_angle, 0.75);

    // -- observation shape: weapon ----------------------------------------
    check("weapon block present", o.player.weapon !== null);
    eq("weapon.type is UZI", o.player.weapon.type, 5);
    eq("clip_capacity reported", o.player.weapon.clip_capacity, 32);
    eq("ammo at capacity", o.player.weapon.ammo, 250);
    eq("is_reloading false", o.player.weapon.is_reloading, false);
    near("reload_time", o.player.weapon.reload_time, 1.4);

    // -- observation shape: enemies ---------------------------------------
    eq("enemy count", o.enemies.length, 4);
    eq("hawk count", o.counts.hawk, 2);
    eq("humanoid count", o.counts.humanoid, 1);
    eq("worm count", o.counts.worm, 1);

    const kinds = o.enemies.map((e) => e.type).sort().join(",");
    eq("enemy types present", kinds, "hawk,hawk,humanoid,worm");

    const hawk0 = o.enemies.find((e) => e.type === "hawk" && e.idx === 0);
    check("hawk0 found", !!hawk0);
    if (hawk0) {
        near("hawk0 pos.x from CCNode", hawk0.pos.x, 300.0);
        near("hawk0 vel.x from getBodyVelocity", hawk0.vel.x, 0.5);
        near("hawk0 body_angle", hawk0.body_angle, 0.1);
        near("hawk0 fire_angle", hawk0.fire_angle, 1.0);
        eq("hawk0 hp", hawk0.hp, 20);
        // Player is at (100,200); hawk0 at (300,250).
        near("hawk0 distance to player", hawk0.dist, Math.hypot(200, 50), 0.01);
        check("hawk0 screen present", hawk0.screen && typeof hawk0.screen.x === "number");
    }

    const worm = o.enemies.find((e) => e.type === "worm");
    check("worm found", !!worm);
    if (worm) {
        eq("worm fire_angle is null (no getFireAngle in binary)", worm.fire_angle, null);
        check("worm body_angle present", typeof worm.body_angle === "number");
    }

    const humanoid = o.enemies.find((e) => e.type === "humanoid");
    check("humanoid found", !!humanoid);
    if (humanoid) {
        // Resolved through +0x1ac -> SoldierAIController -> getSoldierView.
        near("humanoid pos.x via AI controller hop", humanoid.pos.x, 300.0);
    }

    // -- emit cadence -----------------------------------------------------
    eq("emitted every 5th frame", obs.length, 2);
    eq("frame numbers are multiples of 5", obs.map((x) => x.frame).join(","), "5,10");
    eq("seq is gap-free", obs.map((x) => x.seq).join(","), "0,1");
}

// ===========================================================================
// Scenario 2 -- the reload falling edge refills the clip.
// ===========================================================================

function scenarioReload(bundlePath) {
    results.push("\n[scenario] reload edge detection");

    const cfg = {
        obs_interval_frames: 1, emit: true, include_screen_coords: false,
        include_enemy_hp: false, vec_abi: "auto", log_level: "quiet",
        actuators: {
            health: { enabled: false, value: 100 },
            power: { enabled: false, value: 100.0 },
            ammo: { enabled: true, refill_reserve_every_frame: true, refill_clip_on_reload_end: true },
            loadout: { enabled: false, weapon_type: 5, strip_other_slots: true }
        },
        env: {
            fast_forward: { enabled: false, time_scale: 3.0 },
            fps_unlock: { enabled: false }, fps_monitor: { enabled: false, report_interval_ms: 1000 },
            stop_rendering: { enabled: false, show_stats: true },
            block_audio: { enabled: false }, block_sarge: { enabled: false }
        }
    };

    const mock = loadAgent(bundlePath, cfg);
    mock.hooks.get(ENEMY_INIT).onEnter.call({}, [mock.pointers.enemyManager]);

    // Empty the clip and start reloading.
    mock.game.clip = 0;
    mock.game.reloading = true;
    runFrames(mock, 3);

    eq("clip stays empty while reloading", mock.game.clip, 0);
    let obs = observations(mock);
    eq("is_reloading true is observable", obs[obs.length - 1].player.weapon.is_reloading, true);

    // Reload completes -- the falling edge should refill.
    mock.game.reloading = false;
    runFrames(mock, 1);

    eq("clip refilled to capacity on reload end", mock.game.clip, mock.game.clipCapacity);
    obs = observations(mock);
    const last = obs[obs.length - 1];
    eq("is_reloading false after edge", last.player.weapon.is_reloading, false);
    eq("clip in obs equals capacity", last.player.weapon.clip, 32);

    // Firing drains the clip again; the reserve must not drain.
    mock.game.clip = 5;
    mock.game.ammo = 3;
    runFrames(mock, 1);
    eq("reserve re-topped after being drained", mock.game.ammo, mock.game.ammoCapacity);
    eq("clip untouched while not reloading", mock.game.clip, 5);
}

// ===========================================================================
// Scenario 3 -- all six env toggles on.
// ===========================================================================

function scenarioEnv(bundlePath) {
    results.push("\n[scenario] all six env toggles on");

    const cfg = {
        obs_interval_frames: 5, emit: true, include_screen_coords: true,
        include_enemy_hp: true, vec_abi: "auto", log_level: "quiet",
        actuators: {
            health: { enabled: true, value: 100 }, power: { enabled: true, value: 100.0 },
            ammo: { enabled: true, refill_reserve_every_frame: true, refill_clip_on_reload_end: true },
            loadout: { enabled: true, weapon_type: 5, strip_other_slots: true }
        },
        env: {
            fast_forward: { enabled: true, time_scale: 3.0 },
            fps_unlock: { enabled: true },
            fps_monitor: { enabled: true, report_interval_ms: 0 },
            stop_rendering: { enabled: true, show_stats: true },
            block_audio: { enabled: true },
            block_sarge: { enabled: true }
        }
    };

    const mock = loadAgent(bundlePath, cfg);
    const ready = readyEvent(mock);

    const active = (ready.env || []).filter((e) => e.status === "active").map((e) => e.name).sort();
    eq("all six env controls active", active.join(","),
        "block_audio,block_sarge,fast_forward,fps_monitor,fps_unlock,stop_rendering");

    // fast_forward writes the time scale at CCScheduler+0x14.
    check("scheduler hooked", mock.hooks.has(SCHEDULER));
    const sched = new mock.FakePtr(0x70000);
    mock.hooks.get(SCHEDULER).onEnter.call({}, [sched, mock.floatArg(dt60())]);
    near("time scale written to scheduler+0x14", sched.add(0x14).readFloat(), 3.0);

    // stop_rendering writes three CCDirector fields.
    check("drawScene hooked", mock.hooks.has(DRAW_SCENE));
    const director = new mock.FakePtr(0x72000);
    director.add(0x74).writeS32(999);
    director.add(0x38).writeS32(999);
    mock.hooks.get(DRAW_SCENE).onEnter.call({}, [director]);
    eq("director+0x74 zeroed", director.add(0x74).readS32(), 0);
    eq("director+0x38 zeroed", director.add(0x38).readS32(), 0);
    eq("director+0x51 stats byte set", director.add(0x51).readU8(), 1);

    // fps_unlock applies eglSwapInterval(dpy, 0) on the first swap.
    check("eglSwapBuffers hooked", mock.hooks.has("eglSwapBuffers"));
    mock.hooks.get("eglSwapBuffers").onEnter.call({}, [new mock.FakePtr(0x74000)]);
    eq("eglSwapInterval(dpy, 0) applied", mock.game.swapInterval, 0);

    // block_audio / block_sarge use Interceptor.replace.
    eq("sarge stubbed", mock.replaced.has(SARGE), true);
    const sargeStub = mock.replaced.get(SARGE);
    check("sarge stub is a void callback", sargeStub._retType === "void");
    check("sarge stub is silent", (function () {
        const before = mock.logs.length;
        sargeStub(new mock.FakePtr(0x76000), 0.016);
        return mock.logs.length === before;
    })());
    eq("3 audio functions replaced",
        ["_ZN13CocosDenshion17SimpleAudioEngine10playEffectEPKcbfff",
         "_ZN13CocosDenshion17SimpleAudioEngine10playEffectEPKcibfff",
         "_ZN13CocosDenshion17SimpleAudioEngine19playBackgroundMusicEPKcb"]
            .filter((s) => mock.replaced.has(s)).length, 3);
    eq("playEffect stub returns 0",
        mock.replaced.get("_ZN13CocosDenshion17SimpleAudioEngine10playEffectEPKcbfff")(), 0);

    // fps_monitor emits on the mainLoop hook, with no JS timer involved.
    // Drive the virtual clock so the window is crossed deterministically:
    // 60 frames over exactly 1000ms must report 60 fps.
    check("mainLoop hooked", mock.hooks.has(MAIN_LOOP));
    const ml = mock.hooks.get(MAIN_LOOP);
    for (let i = 0; i < 60; i++) {
        mock.advanceClock(1000 / 60);
        ml.onEnter.call({}, []);
    }
    const fpsMsgs = mock.sent.filter((m) => m && m.type === "fps");
    check("fps events emitted", fpsMsgs.length > 0, `count=${fpsMsgs.length}`);
    check("fps value is finite", fpsMsgs.length > 0 && isFinite(fpsMsgs[0].fps),
        fpsMsgs.length ? String(fpsMsgs[0].fps) : "no events");
    if (fpsMsgs.length) near("60 frames over 1000ms reports ~60 fps", fpsMsgs[0].fps, 60, 2);

    // A zero-length window must not emit Infinity: two calls in the same
    // virtual millisecond are dropped rather than divided by zero.
    const before = mock.sent.filter((m) => m && m.type === "fps").length;
    ml.onEnter.call({}, []);
    ml.onEnter.call({}, []);
    const after = mock.sent.filter((m) => m && m.type === "fps");
    check("no Infinity fps from a zero-length window",
        after.length === before || after.every((m) => isFinite(m.fps)),
        JSON.stringify(after.slice(before)));

    // time_scale and fps ride along in diag.
    mock.hooks.get(ENEMY_INIT).onEnter.call({}, [mock.pointers.enemyManager]);
    runFrames(mock, 5);
    const obs = observations(mock);
    check("observation emitted with env on", obs.length > 0);
    if (obs.length) {
        eq("diag.time_scale reported", obs[obs.length - 1].diag.time_scale, 3.0);
        check("diag.env lists applied controls",
            (obs[obs.length - 1].diag.env || []).length === 6);
    }

    // No JS timer anywhere -- the contract the whole design rests on.
    check("agent never calls setInterval/setTimeout",
        mock.sandbox.setInterval === undefined && mock.sandbox.setTimeout === undefined);
}

// ===========================================================================
// Scenario 4 -- finite-difference velocity fallback.
// ===========================================================================

function scenarioFiniteDiff(bundlePath) {
    results.push("\n[scenario] finite-difference velocity fallback");

    const cfg = {
        obs_interval_frames: 1, emit: true, include_screen_coords: false,
        include_enemy_hp: false, vec_abi: "finite_diff", log_level: "quiet",
        actuators: {
            health: { enabled: false, value: 100 }, power: { enabled: false, value: 100.0 },
            ammo: { enabled: false, refill_reserve_every_frame: true, refill_clip_on_reload_end: true },
            loadout: { enabled: false, weapon_type: 5, strip_other_slots: true }
        },
        env: {
            fast_forward: { enabled: false, time_scale: 3.0 }, fps_unlock: { enabled: false },
            fps_monitor: { enabled: false, report_interval_ms: 1000 },
            stop_rendering: { enabled: false, show_stats: true },
            block_audio: { enabled: false }, block_sarge: { enabled: false }
        }
    };

    const mock = loadAgent(bundlePath, cfg);
    mock.hooks.get(ENEMY_INIT).onEnter.call({}, [mock.pointers.enemyManager]);

    // Frame 1 establishes the baseline.
    runFrames(mock, 1);
    // Move the player 3 units in x over one 1/60s frame -> vx = 180.
    const sv = mock.pointers.soldierView.addr;
    mock.nodePos.set(sv, { x: 103.0, y: 200.0 });
    runFrames(mock, 1);

    const obs = observations(mock);
    const o = obs[obs.length - 1];
    eq("vec_abi pinned to finite_diff", o.diag.vec_abi, "finite_diff");
    eq("vel_source reports finite_diff", o.diag.vel_source, "finite_diff");
    near("finite-diff vx = 3 / (1/60) = 180", o.player.vel.x, 180.0, 0.5);
    near("finite-diff vy = 0", o.player.vel.y, 0.0, 0.5);
}

// ===========================================================================
// Scenario 5 -- graceful degradation when symbols are missing.
// ===========================================================================

function scenarioMissingSymbols(bundlePath) {
    results.push("\n[scenario] missing symbols degrade gracefully");

    const cfg = {
        obs_interval_frames: 2, emit: true, include_screen_coords: true,
        include_enemy_hp: true, vec_abi: "auto", log_level: "quiet",
        actuators: {
            health: { enabled: true, value: 100 }, power: { enabled: true, value: 100.0 },
            ammo: { enabled: true, refill_reserve_every_frame: true, refill_clip_on_reload_end: true },
            loadout: { enabled: true, weapon_type: 5, strip_other_slots: true }
        },
        env: {
            fast_forward: { enabled: true, time_scale: 2.0 }, fps_unlock: { enabled: false },
            fps_monitor: { enabled: false, report_interval_ms: 1000 },
            stop_rendering: { enabled: false, show_stats: true },
            block_audio: { enabled: false }, block_sarge: { enabled: true }
        }
    };

    // Drop setPower and the Sarge stub target.
    const mock = loadAgent(bundlePath, cfg, {
        missingSymbols: [
            "_ZN21SoldierHostController8setPowerEf",
            "_ZN13SurvivalStage11updateSargeEf"
        ]
    });

    const ready = readyEvent(mock);
    check("agent still reports ready", ready !== null);

    const powerRow = (ready.actuators || []).find((a) => a.name === "power");
    eq("power actuator reports failed", powerRow.status, "failed");
    check("power failure names the symbol", /setPower/.test(powerRow.detail || ""), powerRow.detail);

    const sargeRow = (ready.env || []).find((e) => e.name === "block_sarge");
    eq("block_sarge reports failed", sargeRow.status, "failed");

    const ffRow = (ready.env || []).find((e) => e.name === "fast_forward");
    eq("fast_forward still active", ffRow.status, "active");

    const healthRow = (ready.actuators || []).find((a) => a.name === "health");
    eq("health still active", healthRow.status, "active");

    // Observations must keep flowing despite the failures.
    mock.hooks.get(ENEMY_INIT).onEnter.call({}, [mock.pointers.enemyManager]);
    runFrames(mock, 4);
    const obs = observations(mock);
    check("observations still emitted", obs.length >= 2, `count=${obs.length}`);
    eq("health actuator still worked", mock.game.hp, 100);
    check("diag.env excludes the failed control",
        (obs[0].diag.env || []).indexOf("block_sarge") === -1);
}

// ===========================================================================
// Scenario 6 -- an enemy dying mid-sweep must not kill the sweep.
// ===========================================================================

function scenarioDroneChurn(bundlePath) {
    results.push("\n[scenario] entity churn during sweep");

    const cfg = {
        obs_interval_frames: 1, emit: true, include_screen_coords: true,
        include_enemy_hp: true, vec_abi: "auto", log_level: "quiet",
        actuators: {
            health: { enabled: false, value: 100 }, power: { enabled: false, value: 100.0 },
            ammo: { enabled: false, refill_reserve_every_frame: true, refill_clip_on_reload_end: true },
            loadout: { enabled: false, weapon_type: 5, strip_other_slots: true }
        },
        env: {
            fast_forward: { enabled: false, time_scale: 3.0 }, fps_unlock: { enabled: false },
            fps_monitor: { enabled: false, report_interval_ms: 1000 },
            stop_rendering: { enabled: false, show_stats: true },
            block_audio: { enabled: false }, block_sarge: { enabled: false }
        }
    };

    const mock = loadAgent(bundlePath, cfg);
    mock.hooks.get(ENEMY_INIT).onEnter.call({}, [mock.pointers.enemyManager]);
    runFrames(mock, 1);
    eq("baseline enemy count", observations(mock)[0].enemies.length, 4);

    // Make one hawk's node position unreadable, as if it had been freed.
    const hawk0 = mock.game.drones.hawk[0];
    mock.nodePos.delete(hawk0.addr);

    runFrames(mock, 1);
    const obs = observations(mock);
    const o = obs[obs.length - 1];
    check("sweep survived a bad entity", o.enemies.length >= 3, `count=${o.enemies.length}`);
    eq("remaining types still read", o.enemies.filter((e) => e.type === "worm").length, 1);
    check("no error events emitted",
        mock.sent.filter((m) => m && m.type === "error").length === 0);
}

// ===========================================================================

function main() {
    const bundlePath = process.argv[2];
    if (!bundlePath) {
        console.error("usage: node tests/agent_smoke.js <bundle.js>");
        process.exit(2);
    }

    const scenarios = [
        scenarioMain,
        scenarioReload,
        scenarioEnv,
        scenarioFiniteDiff,
        scenarioMissingSymbols,
        scenarioDroneChurn
    ];

    for (const fn of scenarios) {
        try {
            fn(bundlePath);
        } catch (e) {
            failures++;
            results.push(`  FAIL  ${fn.name} threw: ${e && e.stack ? e.stack : e}`);
        }
    }

    console.log(results.join("\n"));
    console.log(`\n${checks - failures}/${checks} checks passed`);
    if (failures > 0) {
        console.log(`${failures} FAILURE(S)`);
        process.exit(1);
    }
    console.log("ALL PASS");
}

main();

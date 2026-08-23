/**
 * Executes the bundled agent under stubbed Frida globals.
 *
 * The RPC + promise frame-skip is the riskiest part of the rewrite and cannot
 * be exercised without a device, so this harness fakes just enough of the
 * Frida runtime to drive it: symbol resolution, Interceptor registration,
 * buffer-backed Memory, and a hand-cranked physics tick.
 *
 * Usage: node js_harness.js <bundle.js>
 * Exits non-zero on the first failed assertion.
 */

'use strict';

const fs = require('fs');
const vm = require('vm');

const bundlePath = process.argv[2];
if (!bundlePath) { console.error('usage: node js_harness.js <bundle.js>'); process.exit(2); }

// ---- assertions ----------------------------------------------------------
let passed = 0;
const failures = [];
function check(name, cond, detail) {
    if (cond) { passed++; console.log('  ok   ' + name); }
    else { failures.push(name + (detail ? ' -- ' + detail : '')); console.log('  FAIL ' + name + (detail ? ' -- ' + detail : '')); }
}
function eq(name, actual, expected) {
    check(name, actual === expected, `expected ${expected}, got ${actual}`);
}

// ---- fake NativePointer --------------------------------------------------
class FakePtr {
    constructor(value = 0, buf = null, off = 0, sym = null) {
        this._v = value >>> 0;
        this._buf = buf;
        this._off = off;
        this._sym = sym;
    }
    isNull() { return this._buf === null && this._v === 0; }
    equals(o) { return !!o && o._v === this._v && o._buf === this._buf && o._off === this._off; }
    add(n) { return new FakePtr(this._v + n, this._buf, this._off + n, this._sym); }
    toUInt32() { return this._v >>> 0; }
    toInt32() { return this._v | 0; }
    toString() { return this._sym || ('0x' + this._v.toString(16)); }

    _rd(fn, size) {
        if (!this._buf || this._off + size > this._buf.length) return 0;
        return this._buf[fn](this._off);
    }
    _wr(fn, size, v) {
        if (this._buf && this._off + size <= this._buf.length) this._buf[fn](v, this._off);
        return this;
    }
    readFloat() { return this._rd('readFloatLE', 4); }
    readDouble() { return this._rd('readDoubleLE', 8); }
    readS16() { return this._rd('readInt16LE', 2); }
    readS32() { return this._rd('readInt32LE', 4); }
    readU8() { return this._rd('readUInt8', 1); }
    readU32() { return this._rd('readUInt32LE', 4); }
    readPointer() { return new FakePtr(0); }
    writeFloat(v) { return this._wr('writeFloatLE', 4, v); }
    writeDouble(v) { return this._wr('writeDoubleLE', 8, v); }
    writeS16(v) { return this._wr('writeInt16LE', 2, v); }
    writeS32(v) { return this._wr('writeInt32LE', 4, v); }
    writeInt(v) { return this._wr('writeInt32LE', 4, v); }
    writeU32(v) { return this._wr('writeUInt32LE', 4, v >>> 0); }
    writeU8(v) { return this._wr('writeUInt8', 1, v & 0xff); }
    writeByte(v) { return this._wr('writeUInt8', 1, v & 0xff); }
}

// Symbols the harness pretends exist. Everything the reward path needs.
const SYMBOLS = new Set([
    '_ZN14PhysicsManager10updateStepEf',
    '_ZN21SoldierHostController10updateStepEf6cpVectS0_f',
    '_ZN12EnemyManager10updateStepEf',
    '_ZN12EnemyManager11initEnemiesEv',
    '_ZN9HawkDrone9addDamageEiSsi',
    '_ZN13HumanoidDrone9addDamageEiSsi',
    '_ZN9WormDrone9addDamageEiSsi',
    '_ZN9HawkDrone5getHPEv',
    '_ZN12EnemyManager16onEnemyDestroyedEPN7cocos2d8CCObjectE',
    '_ZN12EnemyManager11awardPointsEP5Enemyi',
    '_ZN21SoldierHostController13weaponDidFireEP4Item',
    '_ZN21SoldierHostController9addDamageEfSsib',
    '_ZN21SoldierHostController10killPlayerEv',
    '_ZN10StageLayer11onEndedGameEPN7cocos2d8CCObjectE',
    '_ZN21SoldierHostController5getHPEv',
    '_ZN12EnemyManager14killAllEnemiesEv',
    '_ZN6Joypad10getXOffsetEv',
    '_ZN6Joypad10getYOffsetEv',
    '_ZN6Joypad12getFireAngleEv',
    '_ZN6Joypad4fireEv',
    '_ZN6Joypad10updateStepEf',
    '_ZN7cocos2d11CCScheduler6updateEf',
]);

let hawkHP = 30;                        // drives the overkill-clamp test, shared fixture

function symPtr(name) { return new FakePtr(0xdead0000 + name.length, null, 0, name); }

/**
 * Builds a fresh sandbox and runs the bundle in it, returning an isolated
 * set of {rpc, hooks, replacedHooks, nativeCalls, nativeCallArgs}. Each call
 * is a brand-new VM context - no state (including gym_sync.js's own
 * frozen/framesRemaining closure) leaks between calls. The main suite below
 * loads the bundle once; the hard-sync section loads it again, fresh, so it
 * isn't polluted by every step()/reset() the main suite already ran.
 */
function loadBundle(bundleSource) {
    const hooks = {};              // symbol -> {onEnter, onLeave} (Interceptor.attach)
    const replacedHooks = {};      // symbol -> raw callback fn (Interceptor.replace)
    const nativeCalls = {};        // symbol -> invocation count
    const nativeCallArgs = {};     // symbol -> args from the most recent call

    const sandbox = {
        console: { log: () => {} },
        Math, JSON, Date, Infinity, NaN, isFinite, isNaN,
        Promise, Error, Map, Set, Array, Object, Number, String, Boolean,
        ArrayBuffer, Float32Array, Int32Array, Uint32Array,
        setTimeout, clearTimeout, setInterval, clearInterval,

        ptr: (v) => (v instanceof FakePtr ? v : new FakePtr(Number(v) || 0)),
        NULL: new FakePtr(0),

        Memory: { alloc: (n) => new FakePtr(0x1000, Buffer.alloc(n), 0) },

        Process: { getModuleByName: () => ({ enumerateSymbols: () => [] }) },

        Module: {
            findBaseAddress: () => new FakePtr(0xb0000000),
            findExportByName: (mod, name) => (SYMBOLS.has(name) ? symPtr(name) : null),
        },

        Interceptor: {
            attach: (addr, cb) => { hooks[addr._sym] = cb; return { detach() {} }; },
            replace: (addr, cb) => { replacedHooks[addr._sym] = cb; },
        },

        NativeFunction: function (addr, ret) {
            const name = addr._sym;
            return function (...args) {
                nativeCalls[name] = (nativeCalls[name] || 0) + 1;
                nativeCallArgs[name] = args;
                if (name === '_ZN9HawkDrone5getHPEv') return hawkHP;
                if (name === '_ZN21SoldierHostController5getHPEv') return 100;
                return ret === 'pointer' ? new FakePtr(0) : 0;
            };
        },

        NativeCallback: function (fn) { return fn; },

        send: () => {},
        recv: () => ({ wait() {} }),
        rpc: {},
    };
    sandbox.global = sandbox;

    vm.createContext(sandbox);
    vm.runInContext(bundleSource, sandbox, { filename: 'bundle.js' });

    return { rpc: sandbox.rpc.exports, hooks, replacedHooks, nativeCalls, nativeCallArgs };
}

const bundleSource = fs.readFileSync(bundlePath, 'utf8');
const { rpc, hooks, replacedHooks, nativeCalls, nativeCallArgs } = loadBundle(bundleSource);

// ---- helpers -------------------------------------------------------------
const f32 = new Float32Array(1);
const i32 = new Int32Array(f32.buffer);
function floatArg(v) { f32[0] = v; return new FakePtr(i32[0] >>> 0); }

const PLAYER = new FakePtr(0x11110000);
const ENEMY_MGR = new FakePtr(0x22220000);
const DRONE = new FakePtr(0x33330000);

function tick(n) {
    for (let i = 0; i < n; i++) {
        if (hooks['_ZN21SoldierHostController10updateStepEf6cpVectS0_f']) {
            hooks['_ZN21SoldierHostController10updateStepEf6cpVectS0_f'].onEnter([PLAYER, floatArg(0.016667)]);
        }
        if (hooks['_ZN12EnemyManager10updateStepEf']) {
            hooks['_ZN12EnemyManager10updateStepEf'].onEnter([ENEMY_MGR, floatArg(0.016667)]);
        }
        hooks['_ZN14PhysicsManager10updateStepEf'].onEnter([new FakePtr(1), floatArg(0.016667)]);
    }
}

/**
 * Drain microtasks so a resolved promise's .then runs, then crank ticks.
 *
 * rpc.exports.step(action) no longer takes a per-call frame_skip - it always
 * uses cfg.frame_skip. To keep every existing call site/assertion in this
 * file unchanged, an explicit `frameSkip` here is applied via setConfig()
 * first (the officially supported way to change it), then the same number
 * of ticks are cranked as before.
 */
async function stepWith(action, frameSkip, extra) {
    if (frameSkip !== undefined) rpc.setConfig({ frame_skip: frameSkip });
    const p = rpc.step(action);
    await null;
    if (extra) extra();
    tick(frameSkip !== undefined ? frameSkip : 0);
    await null;
    return p;
}

// ---- tests ---------------------------------------------------------------
(async () => {
    console.log('\nJS agent harness');
    console.log('----------------');

    const ping = rpc.ping();
    check('bootstraps and reports ready', ping.ready === true);
    eq('selects PhysicsManager as tick source', ping.tick_source, 'PhysicsManager');

    const info = rpc.info();
    check('reports damage hook resolved', info.capabilities.damage_hook === true);
    check('reports kill hook resolved', info.capabilities.kill_hook === true);
    check('reports shot hook resolved', info.capabilities.shot_hook === true);
    check('reports reset primitives resolved',
          info.capabilities.reset_kill_player && info.capabilities.reset_kill_enemies);
    eq('frame_skip reached JS from __PY_CONFIG__', info.config.frame_skip, 10);

    // --- frame skip ---
    let r = await stepWith([0, 0, 1, 0, 1], 10);
    eq('step resolves after exactly frame_skip ticks', r.acc.ticks, 10);
    check('step did not time out', r.timed_out === false);
    check('dt was extracted from the float arg',
          Math.abs(r.acc.dt_mean - 0.016667) < 1e-4, `dt_mean=${r.acc.dt_mean}`);

    r = await stepWith([0, 0, 1, 0, 1], 3);
    eq('honours a per-call frame skip', r.acc.ticks, 3);

    // --- events ---
    hawkHP = 30;
    r = await stepWith([0, 0, 1, 0, 1], 5, () => {
        hooks['_ZN9HawkDrone9addDamageEiSsi'].onEnter([DRONE, new FakePtr(12), new FakePtr(0), new FakePtr(0)]);
        hooks['_ZN21SoldierHostController13weaponDidFireEP4Item'].onEnter([PLAYER, new FakePtr(0)]);
    });
    eq('damage event counted', r.events.damage_dealt, 12);
    eq('shot event counted', r.events.shots_fired, 1);

    hawkHP = 5;
    r = await stepWith([0, 0, 1, 0, 1], 5, () => {
        hooks['_ZN9HawkDrone9addDamageEiSsi'].onEnter([DRONE, new FakePtr(100), new FakePtr(0), new FakePtr(0)]);
    });
    eq('overkill is clamped to remaining HP', r.events.damage_dealt, 5);
    eq('raw damage still reported', r.events.damage_raw, 100);

    r = await stepWith([0, 0, 1, 0, 1], 5, () => {
        hooks['_ZN12EnemyManager11awardPointsEP5Enemyi'].onEnter([ENEMY_MGR, DRONE, new FakePtr(10)]);
        hooks['_ZN12EnemyManager16onEnemyDestroyedEPN7cocos2d8CCObjectE'].onEnter([ENEMY_MGR, DRONE]);
    });
    eq('kill credited', r.events.kills_credited, 1);
    eq('destruction counted', r.events.enemies_destroyed, 1);
    eq('points captured', r.events.points, 10);

    r = await stepWith([0, 0, 1, 0, 1], 5, () => {
        hooks['_ZN21SoldierHostController9addDamageEfSsib'].onEnter(
            [PLAYER, floatArg(17.5), new FakePtr(0), new FakePtr(0), new FakePtr(0)]);
        hooks['_ZN21SoldierHostController10killPlayerEv'].onEnter([PLAYER]);
    });
    check('damage taken read as float', Math.abs(r.events.damage_taken - 17.5) < 1e-3,
          `got ${r.events.damage_taken}`);
    eq('death counted', r.events.player_deaths, 1);

    r = await stepWith([0, 0, 1, 0, 1], 5);
    eq('counters are per-step deltas, not cumulative', r.events.damage_dealt, 0);

    // --- action mapping: the legacy bug ---
    await stepWith([-1, -1, -1, 0, -1], 2);
    let rv = null;
    const retval = { replace(v) { rv = v; } };
    hooks['_ZN6Joypad10getXOffsetEv'].onLeave.call({ context: {} }, retval);
    f32[0] = 0; i32[0] = rv.toUInt32();
    check('move_x = -1 stays -1 (legacy mapRange collapsed it)',
          Math.abs(f32[0] + 1.0) < 1e-6, `got ${f32[0]}`);

    await stepWith([0.5, 0, 1, 0, 1], 2);
    hooks['_ZN6Joypad10getXOffsetEv'].onLeave.call({ context: {} }, retval);
    i32[0] = rv.toUInt32();
    check('move_x = 0.5 passes through unscaled', Math.abs(f32[0] - 0.5) < 1e-6, `got ${f32[0]}`);

    await stepWith([0, 0, 0, 0, 1], 2);
    hooks['_ZN6Joypad10getXOffsetEv'].onLeave.call({ context: {} }, retval);
    i32[0] = rv.toUInt32();
    check('move_x = 0 means stand still, not full-left', Math.abs(f32[0]) < 1e-6, `got ${f32[0]}`);

    let fireRv = null;
    await stepWith([0, 0, 1, 0, 1], 2);
    hooks['_ZN6Joypad4fireEv'].onLeave.call({ context: {} }, { replace(v) { fireRv = v; } });
    eq('shoot > threshold fires', fireRv.toUInt32(), 1);
    await stepWith([0, 0, 1, 0, -1], 2);
    hooks['_ZN6Joypad4fireEv'].onLeave.call({ context: {} }, { replace(v) { fireRv = v; } });
    eq('shoot < threshold holds fire', fireRv.toUInt32(), 0);

    // aim must be overridden every call, not only when the vector is large
    await stepWith([0, 0, 1, 0, 1], 2);
    let aimRv = null;
    hooks['_ZN6Joypad12getFireAngleEv'].onLeave.call({ context: {} }, { replace(v) { aimRv = v; } });
    i32[0] = aimRv.toUInt32();
    check('aim right == 0 deg', Math.abs(f32[0]) < 1e-4, `got ${f32[0]}`);
    await stepWith([0, 0, 0, 0, 1], 2);      // zero aim => hold last angle
    hooks['_ZN6Joypad12getFireAngleEv'].onLeave.call({ context: {} }, { replace(v) { aimRv = v; } });
    i32[0] = aimRv.toUInt32();
    check('zero aim holds the last angle instead of leaking the joypad',
          Math.abs(f32[0]) < 1e-4, `got ${f32[0]}`);

    // --- reset ---
    const rp = rpc.reset({ kill_player: true, clear_enemies: true, settle_ticks: 7 });
    await null;
    tick(7);
    const rr = await rp;
    eq('reset settles for the requested tick count', rr.acc.ticks, 7);
    eq('reset is tagged', rr.kind, 'reset');
    check('killAllEnemies invoked on the game thread',
          (nativeCalls['_ZN12EnemyManager14killAllEnemiesEv'] || 0) >= 1);
    check('killPlayer invoked on the game thread',
          (nativeCalls['_ZN21SoldierHostController10killPlayerEv'] || 0) >= 1);

    // --- watchdog ---
    rpc.setConfig({ frame_skip: 1000 });          // far more ticks than we crank
    const tp = rpc.step([0, 0, 0, 0, 0]);
    await null;
    tick(2);
    const tr = await Promise.race([
        tp,
        new Promise((res) => setTimeout(() => res({ __late: true }), 8000)),
    ]);
    check('watchdog resolves a stalled step', tr.__late !== true && tr.timed_out === true);
    check('stalled step still reports the ticks it saw', tr.acc && tr.acc.ticks === 2,
          `ticks=${tr.acc && tr.acc.ticks}`);
    check('timeout recorded in diagnostics', rpc.stats().diag.step_timeouts >= 1);

    // --- diagnostics ---
    const st = rpc.stats();
    check('total ticks tracked', st.total_ticks > 0);
    check('diag counters exposed', typeof st.diag.dt_fallback === 'number');
    check('dt never fell back to the hardcoded default', st.diag.dt_fallback === 0,
          `dt_fallback=${st.diag.dt_fallback}`);

    // --- hard sync (js/gym_sync.js) -------------------------------------
    // Only meaningful against a bundle built with hard_sync: true. Loaded
    // into a BRAND NEW, isolated VM context (loadBundle again) rather than
    // reusing the shared `rpc` above - the main suite already called
    // step()/reset() dozens of times, each one additively arming release()
    // that its tick() helper never actually "spends" (tick() fires the
    // PhysicsManager/SoldierHostController/EnemyManager hooks directly and
    // does NOT route through the replaced CCScheduler::update - that
    // decoupling is intentional, matching the real engine's independent
    // call sites), so gym_sync.js's own frozen/framesRemaining state would
    // already be armed with a large, un-drained leftover credit by this
    // point if reused. A fresh context starts clean.
    const SCHED = '_ZN7cocos2d11CCScheduler6updateEf';
    if (info.hard_sync && info.hard_sync.enabled) {
        const hs = loadBundle(bundleSource);
        const hsInfo = hs.rpc.info();
        check('hard_sync installed successfully', hsInfo.hard_sync.ok === true);

        const schedPtr = new FakePtr(0x44440000);
        const dtEq = (v, expected, name) =>
            check(name, Math.abs(v - expected) < 1e-6, `expected ${expected}, got ${v}`);

        // Before the first release(): pass-through, real dt forwarded as-is.
        let before = hs.nativeCalls[SCHED] || 0;
        hs.replacedHooks[SCHED](schedPtr, 0.05);
        eq('hard_sync passes through before the first release()',
           (hs.nativeCalls[SCHED] || 0) - before, 1);
        dtEq(hs.nativeCallArgs[SCHED][1], 0.05, 'pass-through forwards the real dt unchanged');

        // step() internally calls hardSync.release(cfg.frame_skip).
        hs.rpc.setConfig({ frame_skip: 4 });
        hs.rpc.step([0, 0, 0, 0, 0]);

        let afterArm = hs.nativeCalls[SCHED] || 0;
        for (let i = 0; i < 4; i++) hs.replacedHooks[SCHED](schedPtr, 0.05);
        eq('exactly frame_skip real updates fire once released',
           (hs.nativeCalls[SCHED] || 0) - afterArm, 4);
        dtEq(hs.nativeCallArgs[SCHED][1], 0.0166667,
             'released frames use the fixed dt, not the caller-supplied one');

        // A 5th call this "frame" must be swallowed - frozen again.
        let beforeExtra = hs.nativeCalls[SCHED] || 0;
        hs.replacedHooks[SCHED](schedPtr, 0.05);
        eq('freezes again once the released frames are exhausted',
           (hs.nativeCalls[SCHED] || 0) - beforeExtra, 0);

        // game_speed must have no effect on the fixed dt under hard_sync.
        hs.rpc.setConfig({ frame_skip: 1, game_speed: 3.5 });
        hs.rpc.step([0, 0, 0, 0, 0]);
        hs.replacedHooks[SCHED](schedPtr, 0.05);
        dtEq(hs.nativeCallArgs[SCHED][1], 0.0166667,
             'game_speed does not scale the fixed dt under hard_sync');
        hs.rpc.setConfig({ game_speed: 1.0 });

        // reset() must also release frames, or it would deadlock against
        // the frozen scheduler until the watchdog fires.
        hs.rpc.reset({ settle_ticks: 2 });
        let beforeReset = hs.nativeCalls[SCHED] || 0;
        hs.replacedHooks[SCHED](schedPtr, 0.05);
        hs.replacedHooks[SCHED](schedPtr, 0.05);
        eq('reset() also releases the requested number of frames',
           (hs.nativeCalls[SCHED] || 0) - beforeReset, 2);
    } else {
        check('hard_sync is off in this bundle (default suite)',
              !info.hard_sync || info.hard_sync.enabled === false);
    }

    console.log(`\n${passed} passed, ${failures.length} failed`);
    if (failures.length) { failures.forEach((f) => console.log('  - ' + f)); process.exit(1); }
    process.exit(0);
})().catch((e) => { console.error('harness error: ' + (e && e.stack || e)); process.exit(2); });

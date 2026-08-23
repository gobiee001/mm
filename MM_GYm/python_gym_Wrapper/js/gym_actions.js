/**
 * Mini Militia Gym - Action Injection Layer
 *
 * Fixes over the legacy Actions/aim_move_shoot-Copy.js:
 *  - Range mapping: the legacy mapRange() mapped [0,1] -> [-1,1], so feeding it
 *    a [-1,1] Box collapsed the whole negative half onto -1.0. Here the input
 *    IS [-1,1] and is only clamped.
 *  - No undefined regions: once an action has been received every hooked getter
 *    is overridden unconditionally. Previously a near-zero command fell through
 *    to the real joypad, so "stand still" / "no aim" leaked stale touch state.
 *  - Aim holds the last commanded angle instead of leaking the game's value.
 *  - No CYCLE self-test timer driving the game behind the agent's back.
 *
 * Two further fixes ported from Actions/aim_move_shoot_native.js, where they
 * were found, fixed and confirmed working against the live game:
 *
 *  - TOUCH GATE: Stage only samples Joypad::getXOffset()/getYOffset() for
 *    movement while the pad is in its "finger down" state. Writing the raw
 *    struct fields below never opens that gate from cold - it only worked
 *    previously if a real finger had touched the joystick at least once.
 *    Fixed by simulating a real touch: startControl() -> touchBeganHandler()
 *    once, then touchMoveHandler() every tick, holding the synthetic touch
 *    down forever ("stand still" = zero deflection, never a release).
 *
 *  - REAL TRANSLATION: even with the touch gate open, the player would only
 *    rotate to face the commanded direction and never actually translate.
 *    SoldierHostController::updateStep(dt, vect1, vect2, f) normalizes vect1
 *    (a pair of doubles, confirmed via a live ARM32 register dump - Ghidra's
 *    decompile of the call sites was not reliable enough to trust directly)
 *    to get the direction it applies as real force/velocity. vect1 arrives
 *    as uncorrelated leftover register content, never the joystick reading;
 *    vect2 already mirrors the commanded input but is only ever used as a
 *    magnitude/blend scalar, never a direction. Fixed by overriding vect1
 *    directly in that hook's onEnter with the commanded (move_x, move_y).
 */

'use strict';

import { resolveExport, nativeFn, attach } from './gym_symbols.js';

export function initActions(cfg, diag) {
    const act = {
        move_x: 0.0,
        move_y: 0.0,
        aim_x: 0.0,
        aim_y: 0.0,
        shoot: false,
        has_action: false,
        aim_angle_deg: 0.0,
        has_aim: false
    };

    // Touch-gate priming constants. Not exposed via cfg - these describe how
    // to simulate a touch, not something a training run needs to tune.
    const SYNTH_TOUCH_ID = 7777;
    const FORCE_ENABLE_CONTROLS = true;
    const PRIME_AIM_PAD = false;
    const ANCHOR_FALLBACK = { x: 120.0, y: 120.0 };
    const VERIFY_EVERY = 60;
    const REPRIME_AFTER_MISSES = 2;
    const MAX_PRIME_ATTEMPTS = 5;

    diag.touch_prime_count = 0;
    diag.touch_reprime_count = 0;
    diag.touch_err = 0;
    diag.set_dir_err = 0;

    const setPlayerHP = nativeFn("_ZN21SoldierHostController5setHPEi", 'void', ['pointer', 'int']);
    const setPower = nativeFn("_ZN21SoldierHostController8setPowerEf", 'void', ['pointer', 'float']);
    const setThrust = nativeFn("_ZN21SoldierHostController9setThrustEb", 'void', ['pointer', 'int']);

    const fbuf = new ArrayBuffer(4);
    const f32 = new Float32Array(fbuf);
    const i32 = new Int32Array(fbuf);
    function floatBits(f) { f32[0] = f; return i32[0] >>> 0; }

    // Encodes a JS number as an IEEE-754 double, split into its low/high
    // 32-bit words - used to write SoldierHostController::updateStep's vect1
    // argument (the real-translation fix) directly into ARM32 args[]/stack.
    const dwbuf = new ArrayBuffer(8);
    const dwView = new DataView(dwbuf);
    function doubleToWords(v) {
        dwView.setFloat64(0, v, true);
        return [dwView.getUint32(0, true), dwView.getUint32(4, true)];
    }

    // ---- CCPoint / cpVect ABI helpers --------------------------------------
    // cocos2d::CCPoint has a user-declared copy constructor, so the C++ ABI
    // passes it BY INVISIBLE REFERENCE: touchBeganHandler(CCPoint, long)
    // really takes (this, CCPoint*, long). cpVect is a plain Chipmunk POD
    // struct, passed by value - on armeabi-v7a (softfp) that lands in two
    // core registers, so it's passed as raw float bits via uint32 to keep
    // libffi's softfp-vs-VFP configuration out of the picture entirely; on
    // arm64 cpVect is a homogeneous float aggregate in s0/s1, so a real
    // struct type is used there instead.
    const IS_ARM32 = (Process.pointerSize === 4);
    const VEC = IS_ARM32 ? ['uint32', 'uint32'] : [['float', 'float']];

    const ptBuf = Memory.alloc(8);
    function ccPoint(x, y) {
        ptBuf.writeFloat(x);
        ptBuf.add(4).writeFloat(y);
        return ptBuf;
    }
    function callVec(fn, self, x, y) {
        if (fn === null) return false;
        if (IS_ARM32) fn(self, floatBits(x), floatBits(y));
        else fn(self, [x, y]);
        return true;
    }

    const padTypeFn       = nativeFn("_ZN6Joypad7padTypeEv", 'int', ['pointer']);
    const startControl    = nativeFn("_ZN6Joypad12startControlEv", 'void', ['pointer']);
    const setMoveDirection = nativeFn("_ZN6Joypad16setMoveDirectionE6cpVect", 'void', ['pointer'].concat(VEC));
    const setAimDirection  = nativeFn("_ZN6Joypad15setAimDirectionE6cpVect", 'void', ['pointer'].concat(VEC));
    const touchBegan      = nativeFn("_ZN6Joypad17touchBeganHandlerEN7cocos2d7CCPointEl", 'void', ['pointer', 'pointer', 'long']);
    const beginTouch      = nativeFn("_ZN6Joypad10beginTouchEN7cocos2d7CCPointEl", 'void', ['pointer', 'pointer', 'long']);
    const touchMove       = nativeFn("_ZN6Joypad16touchMoveHandlerEN7cocos2d7CCPointEl", 'void', ['pointer', 'pointer', 'long']);
    const touchEnd        = nativeFn("_ZN6Joypad15touchEndHandlerEN7cocos2d7CCPointEl", 'void', ['pointer', 'pointer', 'long']);
    const disableMovement = nativeFn("_ZN6Joypad15disableMovementEb", 'void', ['pointer', 'int']);
    const disableFiring   = nativeFn("_ZN6Joypad13disableFiringEb", 'void', ['pointer', 'int']);
    const getXOffsetFn    = nativeFn("_ZN6Joypad10getXOffsetEv", 'float', ['pointer']);
    const getYOffsetFn    = nativeFn("_ZN6Joypad10getYOffsetEv", 'float', ['pointer']);
    const nodeGetPosition = nativeFn("_ZN7cocos2d6CCNode11getPositionEPfS1_", 'void', ['pointer', 'pointer', 'pointer']);

    // ---- Pad registry -------------------------------------------------------
    // Two Joypad instances exist (move stick + aim stick). The game only
    // calls getFireAngle() on the aim pad and getXOffset() on the move pad,
    // so roles are learned by observing the callers rather than guessed from
    // padType().
    const pads = new Map();
    let movePad = null;
    let aimPad = null;
    let frameCount = 0;
    let bypassOverrides = false;   // true while verify() reads the real pad state

    const xBuf = Memory.alloc(4);
    const yBuf = Memory.alloc(4);

    function resolveAnchor(rec) {
        if (nodeGetPosition !== null) {
            try {
                nodeGetPosition(rec.ptr, xBuf, yBuf);
                const px = xBuf.readFloat();
                const py = yBuf.readFloat();
                if (isFinite(px) && isFinite(py) && (Math.abs(px) > 1.0 || Math.abs(py) > 1.0)) {
                    return { x: px, y: py };
                }
            } catch (e) {}
        }
        try {
            const cx = rec.ptr.add(0x104).readFloat();
            const cy = rec.ptr.add(0x108).readFloat();
            if (isFinite(cx) && isFinite(cy) &&
                Math.abs(cx) > 1.0 && Math.abs(cx) < 4000.0 &&
                Math.abs(cy) > 1.0 && Math.abs(cy) < 4000.0) {
                return { x: cx, y: cy };
            }
        } catch (e) {}
        return { x: ANCHOR_FALLBACK.x, y: ANCHOR_FALLBACK.y };
    }

    function registerPad(padPtr) {
        const key = padPtr.toString();
        let rec = pads.get(key);
        if (rec !== undefined) return rec;

        let type = -1;
        if (padTypeFn !== null) {
            try { type = padTypeFn(padPtr); } catch (e) {}
        }

        rec = { ptr: padPtr, type: type, anchor: null, touchActive: false, primeAttempts: 0, misses: 0, role: "unknown" };
        rec.anchor = resolveAnchor(rec);
        pads.set(key, rec);
        return rec;
    }

    function classifyPads() {
        if (movePad === null && aimPad !== null && pads.size >= 2) {
            for (const rec of pads.values()) {
                if (!rec.ptr.equals(aimPad.ptr)) {
                    movePad = rec;
                    rec.role = "move";
                    break;
                }
            }
        }
    }

    function primePad(rec) {
        if (rec.primeAttempts >= MAX_PRIME_ATTEMPTS) return;
        rec.primeAttempts++;

        if (FORCE_ENABLE_CONTROLS) {
            if (disableMovement !== null) { try { disableMovement(rec.ptr, 0); } catch (e) {} }
            if (disableFiring !== null) { try { disableFiring(rec.ptr, 0); } catch (e) {} }
        }
        if (startControl !== null) {
            try { startControl(rec.ptr); } catch (e) {}
        }

        const pt = ccPoint(rec.anchor.x, rec.anchor.y);
        const candidates = [touchBegan, beginTouch];
        for (const fn of candidates) {
            if (fn === null) continue;
            try {
                fn(rec.ptr, pt, SYNTH_TOUCH_ID);
                rec.touchActive = true;
                diag.touch_prime_count++;
                return;
            } catch (e) {
                diag.touch_err++;
            }
        }
    }

    function releasePad(rec) {
        if (rec.touchActive && touchEnd !== null) {
            try { touchEnd(rec.ptr, ccPoint(rec.anchor.x, rec.anchor.y), SYNTH_TOUCH_ID); } catch (e) {}
        }
        rec.touchActive = false;
    }

    function driveMovePad(rec) {
        if (!rec.touchActive) primePad(rec);

        const mx = act.move_x;
        const my = act.move_y;

        // Hold the touch down and steer it. Idle == zero deflection, NOT a
        // release: releasing closes the gate we just opened.
        if (rec.touchActive && touchMove !== null) {
            try {
                touchMove(rec.ptr,
                          ccPoint(rec.anchor.x + mx * cfg.joystick_radius, rec.anchor.y + my * cfg.joystick_radius),
                          SYNTH_TOUCH_ID);
            } catch (e) { diag.touch_err++; }
        }
        try { callVec(setMoveDirection, rec.ptr, mx, my); } catch (e) { diag.set_dir_err++; }
    }

    function driveAimPad(rec) {
        if (PRIME_AIM_PAD && !rec.touchActive) primePad(rec);
        if (act.has_aim) {
            try { callVec(setAimDirection, rec.ptr, act.aim_x, act.aim_y); } catch (e) { diag.set_dir_err++; }
        }
    }

    // Reads the move pad back through its own getters with our overrides
    // bypassed, so this sees what the game really thinks, not what we wrote.
    function verifyMovePad() {
        if (movePad === null || getXOffsetFn === null || getYOffsetFn === null) return null;
        bypassOverrides = true;
        let ax = NaN, ay = NaN;
        try {
            ax = getXOffsetFn(movePad.ptr);
            ay = getYOffsetFn(movePad.ptr);
        } catch (e) {} finally {
            bypassOverrides = false;
        }
        return { x: ax, y: ay };
    }

    function clamp1(v) {
        if (typeof v !== 'number' || !isFinite(v)) return 0.0;
        return v < -1.0 ? -1.0 : (v > 1.0 ? 1.0 : v);
    }

    /** action = [move_x, move_y, aim_x, aim_y, shoot], each in [-1, 1]. */
    function setAction(a) {
        act.move_x = clamp1(a[0]);
        act.move_y = clamp1(a[1]);
        act.aim_x = clamp1(a[2]);
        act.aim_y = clamp1(a[3]);
        act.shoot = clamp1(a[4]) > cfg.shoot_threshold;
        act.has_action = true;

        // Hold the last commanded aim angle rather than leaking the real joypad.
        if (Math.abs(act.aim_x) > cfg.aim_deadzone || Math.abs(act.aim_y) > cfg.aim_deadzone) {
            let ang = Math.atan2(act.aim_y, act.aim_x) * 180.0 / Math.PI;
            if (ang < 0) ang += 360.0;
            act.aim_angle_deg = ang;
            act.has_aim = true;
        }
    }

    function clearAction() {
        act.move_x = 0.0; act.move_y = 0.0;
        act.aim_x = 0.0; act.aim_y = 0.0;
        act.shoot = false;
    }

    function isMoving() {
        return Math.abs(act.move_x) > cfg.move_deadzone ||
               Math.abs(act.move_y) > cfg.move_deadzone;
    }

    /** Idle == neither moving nor shooting. Proximity is applied by the observer. */
    function isIdle() {
        return !isMoving() && !act.shoot;
    }

    // 1. Movement axes: identify the move pad and override the samples -----
    attach("_ZN6Joypad10getXOffsetEv", {
        onEnter(args) {
            if (bypassOverrides) return;
            const padPtr = args[0];
            if (movePad === null && padPtr && !padPtr.isNull()) {
                movePad = registerPad(padPtr);
                movePad.role = "move";
            }
        },
        onLeave(retval) {
            if (bypassOverrides || !act.has_action) return;
            retval.replace(ptr(floatBits(act.move_x)));
            try { this.context.s0 = act.move_x; } catch (e) {}
        }
    });

    attach("_ZN6Joypad10getYOffsetEv", {
        onLeave(retval) {
            if (bypassOverrides || !act.has_action) return;
            retval.replace(ptr(floatBits(act.move_y)));
            try { this.context.s0 = act.move_y; } catch (e) {}
        }
    });

    // 2. Per-frame touch-gate driver + synthetic touch state ---------------
    attach("_ZN6Joypad10updateStepEf", {
        onEnter(args) { this.joypad = args[0]; },
        onLeave() {
            const jp = this.joypad;
            if (!jp || jp.isNull()) return;

            const rec = registerPad(jp);
            classifyPads();

            if (!act.has_action) return;

            const isMove = (movePad !== null && rec.ptr.equals(movePad.ptr));
            const isAim = (aimPad !== null && rec.ptr.equals(aimPad.ptr));

            // Before roles are known, drive every pad seen - a pad that isn't
            // the mover simply ignores move input anyway.
            if (isMove || movePad === null) driveMovePad(rec);
            if (isAim) driveAimPad(rec);

            // Legacy struct writes, kept as a fallback layer alongside the
            // touch-gate simulation above.
            try {
                if (isMoving()) {
                    const cx = jp.add(0x104).readFloat();
                    const cy = jp.add(0x108).readFloat();
                    jp.add(0x110).writeInt(1);
                    jp.add(0x11c).writeFloat(cx + act.move_x * cfg.joystick_radius);
                    jp.add(0x120).writeFloat(cy + act.move_y * cfg.joystick_radius);
                    jp.add(0x12f).writeByte(1);
                    jp.add(0x130).writeByte(1);
                    jp.add(0x131).writeByte(0);
                } else {
                    jp.add(0x110).writeInt(0);
                    jp.add(0x12f).writeByte(0);
                    jp.add(0x130).writeByte(0);
                }
            } catch (e) { diag.joypad_write_err++; }
        }
    });

    // 3. Aim: identify the aim pad and override the angle -------------------
    attach("_ZN6Joypad12getFireAngleEv", {
        onEnter(args) {
            const padPtr = args[0];
            if (aimPad === null && padPtr && !padPtr.isNull()) {
                aimPad = registerPad(padPtr);
                aimPad.role = "aim";
            }
        },
        onLeave(retval) {
            if (!act.has_aim) return;
            retval.replace(ptr(floatBits(act.aim_angle_deg)));
            try { this.context.s0 = act.aim_angle_deg; } catch (e) {}
        }
    });

    // 4. Trigger -----------------------------------------------------------
    attach("_ZN6Joypad4fireEv", {
        onLeave(retval) {
            if (!act.has_action) return;
            retval.replace(ptr(act.shoot ? 1 : 0));
            try { this.context.r0 = act.shoot ? 1 : 0; } catch (e) {}
        }
    });

    // 5. Real-translation fix + direct controller writes + modifiers -------
    const hasPlayerHook = attach("_ZN21SoldierHostController10updateStepEf6cpVectS0_f", {
        onEnter(args) {
            const c = args[0];
            if (!c || c.isNull()) return;

            frameCount++;
            const moving = isMoving();

            // vect1 (args[2..5], a pair of doubles) is the direction
            // updateStep normalizes and applies as real force/velocity.
            // vect2 (args[6..9]) already mirrors the commanded move via the
            // getXOffset/getYOffset overrides above, but is only ever used as
            // a magnitude/blend scalar - vect1 is what actually needs to be
            // ours. See the file header for the full diagnosis.
            if (act.has_action) {
                const [xlo, xhi] = doubleToWords(act.move_x);
                const [ylo, yhi] = doubleToWords(act.move_y);
                args[2] = ptr(xlo);
                args[3] = ptr(xhi);
                args[4] = ptr(ylo);
                args[5] = ptr(yhi);
            }

            if (act.has_action) {
                try {
                    c.add(0x48).writeByte(moving ? 1 : 0);
                    c.add(0x118).writeFloat(act.move_x);
                    c.add(0x11c).writeFloat(act.move_y);
                    c.add(0x120).writeByte(moving ? 1 : 0);
                    c.add(0x121).writeByte(moving ? 1 : 0);
                } catch (e) { diag.controller_write_err++; }

                if (setThrust !== null) {
                    try { setThrust(c, moving ? 1 : 0); } catch (e) {}
                }
            }

            if (cfg.infinite_health && setPlayerHP !== null) {
                try { setPlayerHP(c, 100); } catch (e) {}
            }
            if (cfg.infinite_boost && setPower !== null) {
                try { setPower(c, 10.0); } catch (e) {}
            }

            // Periodic self-heal: if the move pad stops reporting our
            // commanded deflection (a real finger lifted it, respawn reset
            // it, ...), prime it again. Covers long unattended RL runs.
            if (movePad !== null && frameCount % VERIFY_EVERY === 0 && act.has_action) {
                const actual = verifyMovePad();
                if (actual !== null) {
                    const wantMag = Math.hypot(act.move_x, act.move_y);
                    const gotMag = Math.hypot(actual.x, actual.y);
                    const healthy = (wantMag <= cfg.move_deadzone) || (gotMag > wantMag * 0.25);

                    if (healthy) {
                        movePad.misses = 0;
                    } else {
                        movePad.misses++;
                        if (movePad.misses >= REPRIME_AFTER_MISSES) {
                            releasePad(movePad);
                            movePad.anchor = resolveAnchor(movePad);
                            movePad.primeAttempts = 0;
                            primePad(movePad);
                            diag.touch_reprime_count++;
                            movePad.misses = 0;
                        }
                    }
                }
            }
        }
    });

    return {
        state: act,
        setAction: setAction,
        clearAction: clearAction,
        isIdle: isIdle,
        isMoving: isMoving,
        ok: hasPlayerHook,
        hasFireHook: resolveExport("_ZN6Joypad4fireEv") !== null
    };
}

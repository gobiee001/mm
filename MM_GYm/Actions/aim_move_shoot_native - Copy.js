{
    // ============================================================================
    // Mini Militia - Native Joypad Action Injection
    //
    // Two bugs fixed here:
    //
    // 1. "Had to move the joystick once before the script worked": Stage only
    //    samples Joypad::getXOffset()/getYOffset() while the pad is in its
    //    "finger down" state. The legacy script faked that state by writing
    //    guessed struct offsets, which never opens the gate from cold. This
    //    script instead calls the game's own touch handlers to open it:
    //
    //      startControl() -> touchBeganHandler(anchor, id)   [once, "prime"]
    //      touchMoveHandler(anchor + dir * radius, id)       [every frame]
    //      setMoveDirection(cpVect) / setAimDirection(cpVect)[every frame]
    //
    //    The synthetic touch is held down forever; "stand still" is zero
    //    deflection, never a release (releasing would close the gate again).
    //
    // 2. Player rotated to face the commanded direction but never translated:
    //    SoldierHostController::updateStep(dt, vect1, vect2, f) normalizes
    //    vect1 (a pair of doubles) to get the direction it actually applies as
    //    force/velocity. vect1 arrives as uncorrelated leftover register
    //    content, never the real joystick reading (confirmed via a raw
    //    register dump of the live call). vect2 already mirrors our input
    //    correctly but is only ever used as a magnitude/blend scalar, never a
    //    direction. Fix: override vect1 directly in this hook's onEnter with
    //    our commanded (move_x, move_y), encoded as doubles.
    // ============================================================================

    const moduleName = "libcocos2dcpp.so";

    // ---- Configuration ---------------------------------------------------------
    let TEST_MODE = "CYCLE";              // "CYCLE" (self test) | "LISTEN" (Python RL)
    const SYNTH_TOUCH_ID = 7777;          // id for our synthetic finger
    const JOYSTICK_RADIUS = 60.0;         // stick deflection in points
    const MOVE_DEADZONE = 0.01;
    const AIM_DEADZONE = 0.01;
    const FORCE_ENABLE_CONTROLS = true;   // disableMovement(false) / disableFiring(false) on prime
    const PRIME_AIM_PAD = false;          // aim is polled unconditionally, so off by default
    const USE_RAW_OFFSET_WRITES = true;   // keep the legacy struct pokes as a fallback layer
    const ANCHOR_FALLBACK = { x: 120.0, y: 120.0 };
    const VERIFY_EVERY = 60;              // frames between commanded-vs-actual read-back
    const REPRIME_AFTER_MISSES = 2;       // failed verifications before re-priming
    const MAX_PRIME_ATTEMPTS = 5;         // stop hammering the game if priming keeps throwing
    const MOVE_HOLD_MS = 4000;            // once a move direction is accepted, hold it this long before a new one can replace it

    // ---- Action state ([-1, 1], matching the gym wrapper) -----------------------
    const currentActions = {
        move_x: 0.0,
        move_y: 0.0,
        aim_x: 0.0,
        aim_y: 0.0,
        shoot: false,
        aim_angle_deg: 0.0,
        has_action: false,
        has_aim: false
    };

    const fbuf = new ArrayBuffer(4);
    const f32 = new Float32Array(fbuf);
    const i32 = new Int32Array(fbuf);
    function floatBits(f) { f32[0] = f; return i32[0] >>> 0; }

    function clamp1(v) {
        if (typeof v !== 'number' || !isFinite(v)) return 0.0;
        return v < -1.0 ? -1.0 : (v > 1.0 ? 1.0 : v);
    }

    // normalized === true means the caller is sending [0, 1] (legacy payload shape),
    // where 0.5 is centre. Default is [-1, 1] straight through.
    function unit(v) {
        const c = (typeof v === 'number' && isFinite(v)) ? Math.max(0.0, Math.min(1.0, v)) : 0.5;
        return c * 2.0 - 1.0;
    }

    let lastLoggedX = null;
    let lastLoggedY = null;

    // Move-direction hold latch: once a direction is accepted, it stays applied
    // for MOVE_HOLD_MS regardless of what arrives in the meantime - a fresh
    // command only takes effect once the hold window has elapsed. Aim/shoot are
    // NOT held; they always apply immediately.
    let heldMoveX = 0.0;
    let heldMoveY = 0.0;
    let moveHeldSince = 0;

    function updateActions(mx, my, ax, ay, shoot, normalized) {
        const conv = normalized ? unit : clamp1;
        const requestedX = conv(mx);
        const requestedY = conv(my);
        const now = Date.now();
        const changed = (requestedX !== heldMoveX || requestedY !== heldMoveY);
        const holdExpired = (now - moveHeldSince) >= MOVE_HOLD_MS;

        if (!currentActions.has_action || !changed || holdExpired) {
            if (changed || !currentActions.has_action) moveHeldSince = now;
            heldMoveX = requestedX;
            heldMoveY = requestedY;
        }
        // else: still inside the hold window with a different direction requested - ignore it, keep holding.

        currentActions.move_x = heldMoveX;
        currentActions.move_y = heldMoveY;
        currentActions.aim_x = conv(ax);
        currentActions.aim_y = conv(ay);
        currentActions.shoot = normalized ? (shoot > 0.5) : (clamp1(shoot) > 0.5);
        currentActions.has_action = true;

        if (Math.abs(currentActions.aim_x) > AIM_DEADZONE || Math.abs(currentActions.aim_y) > AIM_DEADZONE) {
            let ang = Math.atan2(currentActions.aim_y, currentActions.aim_x) * 180.0 / Math.PI;
            if (ang < 0) ang += 360.0;
            currentActions.aim_angle_deg = ang;
            currentActions.has_aim = true;
        }

        // The only log line this script prints, and only when it changes.
        if (currentActions.move_x !== lastLoggedX || currentActions.move_y !== lastLoggedY) {
            console.log(`[INPUT] x=${currentActions.move_x.toFixed(2)}, y=${currentActions.move_y.toFixed(2)}`);
            lastLoggedX = currentActions.move_x;
            lastLoggedY = currentActions.move_y;
        }
    }

    function isMoving() {
        return Math.abs(currentActions.move_x) > MOVE_DEADZONE ||
               Math.abs(currentActions.move_y) > MOVE_DEADZONE;
    }

    const moduleBase = Module.findBaseAddress(moduleName);

    if (moduleBase !== null) {
        let modObj = null;
        try { modObj = Process.getModuleByName(moduleName); } catch (e) {}

        function resolveSymbol(symbolName) {
            let addr = Module.findExportByName(moduleName, symbolName);
            if (addr !== null) return addr;
            if (modObj !== null) {
                try {
                    const sym = modObj.enumerateSymbols().find(s => s.name === symbolName);
                    if (sym) return sym.address;
                } catch (e) {}
            }
            return null;
        }

        function nativeFn(symbolName, retType, argTypes) {
            const addr = resolveSymbol(symbolName);
            if (addr === null) return null;
            try {
                return new NativeFunction(addr, retType, argTypes);
            } catch (e) {
                return null;
            }
        }

        function attach(symbolName, callbacks) {
            const addr = resolveSymbol(symbolName);
            if (addr === null) return false;
            try {
                Interceptor.attach(addr, callbacks);
                return true;
            } catch (e) {
                return false;
            }
        }

        // Encodes a JS number as an IEEE-754 double, split into its low/high
        // 32-bit words - used to write SoldierHostController::updateStep's
        // vect1 argument (see fix #2 above) directly into ARM32 args[]/stack.
        const dwbuf = new ArrayBuffer(8);
        const dwView = new DataView(dwbuf);
        function doubleToWords(v) {
            dwView.setFloat64(0, v, true);
            return [dwView.getUint32(0, true), dwView.getUint32(4, true)];
        }

        // Float returns come back in r0 on Android armeabi-v7a (softfp), which is
        // what retval.replace() writes. On arm64 the value is in s0/v0 instead.
        const IS_ARM64 = (Process.arch === 'arm64');
        function replaceFloatRetval(ctx, retval, value) {
            retval.replace(ptr(floatBits(value)));
            if (IS_ARM64) {
                try { ctx.s0 = value; } catch (e) {}
            }
        }

        // ---- Native functions --------------------------------------------------
        // Two different argument conventions are in play here:
        //
        //  * cocos2d::CCPoint has a user-declared copy constructor, so it is not
        //    trivially copyable and the C++ ABI passes it BY INVISIBLE REFERENCE.
        //    touchBeganHandler(CCPoint, long) really takes (this, CCPoint*, long).
        //
        //  * cpVect is a plain Chipmunk POD struct, so it IS passed by value. On
        //    Android armeabi-v7a (softfp) that means two core registers holding
        //    the raw float bits, which we pass as uint32 to keep libffi's
        //    softfp/VFP configuration out of the picture entirely. On arm64 it is
        //    an HFA in s0/s1, so there we let Frida marshal a real struct.
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

        const padTypeFn        = nativeFn("_ZN6Joypad7padTypeEv", 'int', ['pointer']);
        const startControl     = nativeFn("_ZN6Joypad12startControlEv", 'void', ['pointer']);
        const setMoveDirection = nativeFn("_ZN6Joypad16setMoveDirectionE6cpVect", 'void', ['pointer'].concat(VEC));
        const setAimDirection  = nativeFn("_ZN6Joypad15setAimDirectionE6cpVect", 'void', ['pointer'].concat(VEC));
        const touchBegan       = nativeFn("_ZN6Joypad17touchBeganHandlerEN7cocos2d7CCPointEl", 'void', ['pointer', 'pointer', 'long']);
        const beginTouch       = nativeFn("_ZN6Joypad10beginTouchEN7cocos2d7CCPointEl", 'void', ['pointer', 'pointer', 'long']);
        const touchMove        = nativeFn("_ZN6Joypad16touchMoveHandlerEN7cocos2d7CCPointEl", 'void', ['pointer', 'pointer', 'long']);
        const touchEnd         = nativeFn("_ZN6Joypad15touchEndHandlerEN7cocos2d7CCPointEl", 'void', ['pointer', 'pointer', 'long']);
        const disableMovement  = nativeFn("_ZN6Joypad15disableMovementEb", 'void', ['pointer', 'int']);
        const disableFiring    = nativeFn("_ZN6Joypad13disableFiringEb", 'void', ['pointer', 'int']);
        const getXOffsetFn     = nativeFn("_ZN6Joypad10getXOffsetEv", 'float', ['pointer']);
        const getYOffsetFn     = nativeFn("_ZN6Joypad10getYOffsetEv", 'float', ['pointer']);
        const nodeGetPosition  = nativeFn("_ZN7cocos2d6CCNode11getPositionEPfS1_", 'void', ['pointer', 'pointer', 'pointer']);

        const setPlayerHP = nativeFn("_ZN21SoldierHostController5setHPEi", 'void', ['pointer', 'int']);
        const setPower    = nativeFn("_ZN21SoldierHostController8setPowerEf", 'void', ['pointer', 'float']);
        const setThrust   = nativeFn("_ZN21SoldierHostController9setThrustEb", 'void', ['pointer', 'int']);

        // ---- Pad registry ------------------------------------------------------
        // Two Joypad instances exist. The game only calls getFireAngle() on the
        // aim pad and getXOffset()/getYOffset() on the move pad, so we learn the
        // roles by observing the callers rather than guessing from padType().
        const pads = new Map();           // ptr string -> record
        let movePad = null;
        let aimPad = null;
        let frameCount = 0;
        let bypassOverrides = false;      // true while we read the pad back for verification
        const diag = { prime: 0, reprime: 0, touchErr: 0, setDirErr: 0, verifyFail: 0 };

        const xBuf = Memory.alloc(4);
        const yBuf = Memory.alloc(4);

        function resolveAnchor(rec) {
            // 1. The pad node's own position, via CCNode::getPosition(float*, float*)
            //    (out-params, so no float-ABI guesswork).
            if (nodeGetPosition !== null) {
                try {
                    nodeGetPosition(rec.ptr, xBuf, yBuf);
                    const px = xBuf.readFloat();
                    const py = yBuf.readFloat();
                    if (isFinite(px) && isFinite(py) && (Math.abs(px) > 1.0 || Math.abs(py) > 1.0)) {
                        return { x: px, y: py, src: "CCNode::getPosition" };
                    }
                } catch (e) {}
            }
            // 2. The legacy stick-centre guess.
            try {
                const cx = rec.ptr.add(0x104).readFloat();
                const cy = rec.ptr.add(0x108).readFloat();
                if (isFinite(cx) && isFinite(cy) &&
                    Math.abs(cx) > 1.0 && Math.abs(cx) < 4000.0 &&
                    Math.abs(cy) > 1.0 && Math.abs(cy) < 4000.0) {
                    return { x: cx, y: cy, src: "struct 0x104/0x108" };
                }
            } catch (e) {}
            // 3. Config fallback.
            return { x: ANCHOR_FALLBACK.x, y: ANCHOR_FALLBACK.y, src: "ANCHOR_FALLBACK" };
        }

        function registerPad(padPtr) {
            const key = padPtr.toString();
            let rec = pads.get(key);
            if (rec !== undefined) return rec;

            let type = -1;
            if (padTypeFn !== null) {
                try { type = padTypeFn(padPtr); } catch (e) {}
            }

            rec = {
                ptr: padPtr,
                type: type,
                anchor: null,
                touchActive: false,
                primeAttempts: 0,
                misses: 0,
                role: "unknown"
            };
            rec.anchor = resolveAnchor(rec);
            pads.set(key, rec);
            return rec;
        }

        function classifyPads() {
            // Whichever pad is not the aim pad is the move pad (there are two).
            if (movePad === null && aimPad !== null && pads.size >= 2) {
                for (const rec of pads.values()) {
                    if (!rec.ptr.equals(aimPad.ptr)) {
                        movePad = rec;
                        rec.role = "move (inferred: not the getFireAngle pad)";
                        break;
                    }
                }
            }
        }

        // ---- The fix: open the touch gate the way a finger does ----------------
        function primePad(rec, label) {
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
                    diag.prime++;
                    return;
                } catch (e) {
                    diag.touchErr++;
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
            if (!rec.touchActive) primePad(rec, "move");

            const mx = currentActions.move_x;
            const my = currentActions.move_y;

            // Hold the touch down and steer it. Idle == zero deflection, NOT a
            // release: releasing closes the gate we just opened.
            if (rec.touchActive && touchMove !== null) {
                try {
                    touchMove(rec.ptr,
                              ccPoint(rec.anchor.x + mx * JOYSTICK_RADIUS, rec.anchor.y + my * JOYSTICK_RADIUS),
                              SYNTH_TOUCH_ID);
                } catch (e) { diag.touchErr++; }
            }
            try { callVec(setMoveDirection, rec.ptr, mx, my); } catch (e) { diag.setDirErr++; }
        }

        function driveAimPad(rec) {
            if (PRIME_AIM_PAD && !rec.touchActive) primePad(rec, "aim");
            if (currentActions.has_aim) {
                try { callVec(setAimDirection, rec.ptr, currentActions.aim_x, currentActions.aim_y); } catch (e) { diag.setDirErr++; }
            }
        }

        // Read the pad back through its own getters with our overrides bypassed,
        // so we see what the game really sees - not what we injected.
        function verify(rec) {
            if (getXOffsetFn === null || getYOffsetFn === null) return null;
            bypassOverrides = true;
            let ax = NaN, ay = NaN;
            try {
                ax = getXOffsetFn(rec.ptr);
                ay = getYOffsetFn(rec.ptr);
            } catch (e) {} finally {
                bypassOverrides = false;
            }
            return { x: ax, y: ay };
        }

        // ---- 1. Per-frame driver on Joypad::updateStep -------------------------
        attach("_ZN6Joypad10updateStepEf", {
            onEnter: function (args) { this.joypad = args[0]; },
            onLeave: function () {
                const padPtr = this.joypad;
                if (!padPtr || padPtr.isNull()) return;

                const rec = registerPad(padPtr);
                classifyPads();

                if (!currentActions.has_action) return;

                const isMove = (movePad !== null && rec.ptr.equals(movePad.ptr));
                const isAim = (aimPad !== null && rec.ptr.equals(aimPad.ptr));

                // Before roles are known, drive every pad we have seen: a pad that
                // is not the mover ignores move input anyway.
                if (isMove || movePad === null) driveMovePad(rec);
                if (isAim) driveAimPad(rec);

                // Legacy struct writes, kept as a fallback layer. Restricted to the
                // move pad once known - the old script poked both pads.
                if (USE_RAW_OFFSET_WRITES && (isMove || movePad === null)) {
                    try {
                        const moving = isMoving();
                        if (moving) {
                            const cx = padPtr.add(0x104).readFloat();
                            const cy = padPtr.add(0x108).readFloat();
                            padPtr.add(0x110).writeInt(1);
                            padPtr.add(0x11c).writeFloat(cx + currentActions.move_x * JOYSTICK_RADIUS);
                            padPtr.add(0x120).writeFloat(cy + currentActions.move_y * JOYSTICK_RADIUS);
                            padPtr.add(0x12f).writeByte(1);
                            padPtr.add(0x130).writeByte(1);
                            padPtr.add(0x131).writeByte(0);
                        } else {
                            padPtr.add(0x110).writeInt(0);
                            padPtr.add(0x12f).writeByte(0);
                            padPtr.add(0x130).writeByte(0);
                        }
                    } catch (e) {}
                }
            }
        });

        // ---- 2. Movement axes: identify the move pad and override the samples --
        attach("_ZN6Joypad10getXOffsetEv", {
            onEnter: function (args) {
                if (bypassOverrides) return;
                const padPtr = args[0];
                if (movePad === null && padPtr && !padPtr.isNull()) {
                    movePad = registerPad(padPtr);
                    movePad.role = "move (observed: game called getXOffset)";
                }
            },
            onLeave: function (retval) {
                if (bypassOverrides || !currentActions.has_action) return;
                replaceFloatRetval(this.context, retval, currentActions.move_x);
            }
        });

        attach("_ZN6Joypad10getYOffsetEv", {
            onLeave: function (retval) {
                if (bypassOverrides || !currentActions.has_action) return;
                replaceFloatRetval(this.context, retval, currentActions.move_y);
            }
        });

        // ---- 3. Aim: identify the aim pad and override the angle ---------------
        attach("_ZN6Joypad12getFireAngleEv", {
            onEnter: function (args) {
                const padPtr = args[0];
                if (aimPad === null && padPtr && !padPtr.isNull()) {
                    aimPad = registerPad(padPtr);
                    aimPad.role = "aim (observed: game called getFireAngle)";
                }
            },
            onLeave: function (retval) {
                if (!currentActions.has_aim) return;
                replaceFloatRetval(this.context, retval, currentActions.aim_angle_deg);
            }
        });

        // ---- 4. Trigger --------------------------------------------------------
        attach("_ZN6Joypad4fireEv", {
            onLeave: function (retval) {
                if (!currentActions.has_action) return;
                retval.replace(ptr(currentActions.shoot ? 1 : 0));
            }
        });

        // ---- 5. Real translation fix + controller-side writes + god mode -------
        attach("_ZN21SoldierHostController10updateStepEf6cpVectS0_f", {
            onEnter: function (args) {
                const controller = args[0];
                if (!controller || controller.isNull()) return;

                frameCount++;
                const moving = isMoving();

                // vect1 (args[2..5], a pair of doubles) is the direction
                // updateStep normalizes and applies as real force/velocity.
                // vect2 (args[6..9]) already mirrors our move via the getXOffset/
                // getYOffset overrides above, but is only ever used as a
                // magnitude/blend scalar - vect1 is what actually needs to be ours.
                if (currentActions.has_action) {
                    const [xlo, xhi] = doubleToWords(currentActions.move_x);
                    const [ylo, yhi] = doubleToWords(currentActions.move_y);
                    args[2] = ptr(xlo);
                    args[3] = ptr(xhi);
                    args[4] = ptr(ylo);
                    args[5] = ptr(yhi);
                }

                if (setPlayerHP !== null) { try { setPlayerHP(controller, 100); } catch (e) {} }
                if (setPower !== null) { try { setPower(controller, 10.0); } catch (e) {} }

                if (currentActions.has_action) {
                    if (USE_RAW_OFFSET_WRITES) {
                        try {
                            controller.add(0x48).writeByte(moving ? 1 : 0);
                            controller.add(0x118).writeFloat(currentActions.move_x);
                            controller.add(0x11c).writeFloat(currentActions.move_y);
                            controller.add(0x120).writeByte(moving ? 1 : 0);
                            controller.add(0x121).writeByte(moving ? 1 : 0);
                        } catch (e) {}
                    }
                    if (setThrust !== null) {
                        try { setThrust(controller, moving ? 1 : 0); } catch (e) {}
                    }
                }

                // Periodic self-heal. If the pad stops reporting our commanded
                // deflection (a real finger lifted it, respawn reset it, ...),
                // prime it again.
                if (movePad !== null && frameCount % VERIFY_EVERY === 0 && currentActions.has_action) {
                    const actual = verify(movePad);
                    if (actual !== null) {
                        const wantMag = Math.hypot(currentActions.move_x, currentActions.move_y);
                        const gotMag = Math.hypot(actual.x, actual.y);
                        const healthy = (wantMag <= MOVE_DEADZONE) || (gotMag > wantMag * 0.25);

                        if (healthy) {
                            movePad.misses = 0;
                        } else {
                            diag.verifyFail++;
                            movePad.misses++;
                            if (movePad.misses >= REPRIME_AFTER_MISSES) {
                                releasePad(movePad);
                                movePad.anchor = resolveAnchor(movePad);
                                movePad.primeAttempts = 0;   // a working pad that lapsed gets a fresh budget
                                primePad(movePad, "move");
                                diag.reprime++;
                                movePad.misses = 0;
                            }
                        }
                    }
                }
            }
        });

        // ---- Python / RL input -------------------------------------------------
        recv(function onMessage(message) {
            try {
                if (message.type === 'send' && message.payload && message.payload.action === 'input') {
                    const p = message.payload;
                    TEST_MODE = "LISTEN";
                    updateActions(p.move_x, p.move_y, p.aim_x, p.aim_y, p.shoot, p.normalized === true);
                }
            } catch (e) {}
            recv(onMessage);
        });

        rpc.exports = {
            setAction: function (mx, my, ax, ay, shoot, normalized) {
                TEST_MODE = "LISTEN";
                updateActions(mx, my, ax, ay, shoot, normalized === true);
            },
            move: function (mx, my) {
                TEST_MODE = "LISTEN";
                updateActions(mx, my, currentActions.aim_x, currentActions.aim_y, currentActions.shoot ? 1 : 0, false);
            },
            stop: function () {
                TEST_MODE = "LISTEN";
                updateActions(0, 0, currentActions.aim_x, currentActions.aim_y, 0, false);
            },
            release: function () {
                // Hand control back to the real joystick.
                for (const rec of pads.values()) releasePad(rec);
                currentActions.has_action = false;
                currentActions.has_aim = false;
            },
            status: function () {
                return {
                    pads: Array.from(pads.values()).map(r => ({
                        ptr: r.ptr.toString(), padType: r.type, role: r.role, touchActive: r.touchActive,
                        anchor: [r.anchor.x, r.anchor.y], anchorSrc: r.anchor.src
                    })),
                    frames: frameCount,
                    actions: currentActions,
                    diag: diag
                };
            }
        };

        // ---- Self test ---------------------------------------------------------
        const TEST_INPUTS = [
            { move_x:  1.0, move_y:  0.0, aim_x:  1.0, aim_y:  0.0, shoot: 1.0, desc: "Move RIGHT, aim right, firing" },
            { move_x: -1.0, move_y:  0.0, aim_x: -1.0, aim_y:  0.0, shoot: 0.0, desc: "Move LEFT, aim left, hold fire" },
            { move_x:  0.0, move_y:  1.0, aim_x:  0.0, aim_y: -1.0, shoot: 1.0, desc: "Move UP (jetpack), aim down, firing" },
            { move_x:  0.0, move_y:  0.0, aim_x:  0.7, aim_y:  0.7, shoot: 0.0, desc: "Stand still, aim up-right, hold fire" }
        ];

        let testIdx = 0;
        if (TEST_MODE === "CYCLE") {
            setInterval(function () {
                if (TEST_MODE !== "CYCLE") return;
                const input = TEST_INPUTS[testIdx];
                updateActions(input.move_x, input.move_y, input.aim_x, input.aim_y, input.shoot, false);
                testIdx = (testIdx + 1) % TEST_INPUTS.length;
            }, MOVE_HOLD_MS);
        }
    }
}

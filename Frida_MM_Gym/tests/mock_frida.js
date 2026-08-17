// A mock of the Frida JS API, backed by a tiny fake game, so the agent can be
// executed offline in Node with no device attached.
//
// Faithful enough to exercise: symbol resolution, NativeFunction dispatch,
// Interceptor.attach/replace, Memory.alloc, pointer arithmetic and reads,
// send(), and the cpVect return-ABI probe.
//
// The fake game deliberately implements ONLY the "struct" cpVect return
// convention (retType ['float','float']); the sret and packed variants return
// implausible values. That way the probe in core/cpvect.js has a real decision
// to make and we can assert which way it goes.

"use strict";

const HEAP_SIZE = 1 << 20;

function createMock(options) {
    options = options || {};

    const heap = new DataView(new ArrayBuffer(HEAP_SIZE));
    const ptrSlots = new Map();      // address -> FakePtr (for readPointer)
    const addrToSymbol = new Map();  // address -> mangled name
    const symbolToAddr = new Map();

    let nextAddr = 0x10000;          // bump allocator for named objects
    let scratchAddr = 0x80000;       // separate region for Memory.alloc

    function alloc(size) {
        const a = scratchAddr;
        scratchAddr += Math.max(8, size + 8);
        if (scratchAddr > HEAP_SIZE) throw new Error("mock heap exhausted");
        return new FakePtr(a);
    }

    class FakePtr {
        constructor(addr) { this.addr = addr >>> 0; }
        add(o) { return new FakePtr(this.addr + o); }
        sub(o) { return new FakePtr(this.addr - o); }
        isNull() { return this.addr === 0; }
        equals(o) { return !!o && typeof o.addr === "number" && this.addr === o.addr; }
        toString() { return "0x" + this.addr.toString(16); }
        toInt32() { return this.addr | 0; }
        toUInt32() { return this.addr >>> 0; }

        readFloat() { return heap.getFloat32(this.addr, true); }
        writeFloat(v) { heap.setFloat32(this.addr, v, true); return this; }
        readS32() { return heap.getInt32(this.addr, true); }
        writeS32(v) { heap.setInt32(this.addr, v, true); return this; }
        readU32() { return heap.getUint32(this.addr, true); }
        writeU32(v) { heap.setUint32(this.addr, v, true); return this; }
        readS16() { return heap.getInt16(this.addr, true); }
        writeS16(v) { heap.setInt16(this.addr, v, true); return this; }
        readU8() { return heap.getUint8(this.addr); }
        writeU8(v) { heap.setUint8(this.addr, v); return this; }
        readPointer() { return ptrSlots.get(this.addr) || new FakePtr(0); }
        writePointer(p) { ptrSlots.set(this.addr, p); return this; }
    }

    const NULL = new FakePtr(0);

    function named(tag, size) {
        const a = nextAddr;
        nextAddr += (size || 0x400);
        const p = new FakePtr(a);
        p._tag = tag;
        return p;
    }

    // ---------------------------------------------------------------------
    // Fake game state
    // ---------------------------------------------------------------------

    const nodePos = new Map();   // node address -> {x, y}
    const bodyVel = new Map();   // entity address -> {x, y}

    const weapon = named("weapon");
    const soldierView = named("soldierView");
    const player = named("player");
    const factory = named("weaponFactory");
    const enemyManager = named("enemyManager");

    nodePos.set(soldierView.addr, { x: 100.0, y: 200.0 });
    bodyVel.set(player.addr, { x: 1.5, y: -0.5 });

    const GAME = {
        hp: 37,
        maxHp: 100,
        power: 2.5,
        fireAngle: 0.75,
        alive: 1,
        dead: 0,
        clip: 11,
        clipCapacity: 32,
        ammo: 60,
        ammoCapacity: 250,
        reloading: false,
        triggering: false,
        weaponType: 7,            // starts as AK47 so loadout has work to do
        reloadTime: 1.4,
        slots: { secondary: named("secWeapon"), dual: named("dualWeapon"), side: named("sideWeapon") },
        addPrimaryCalls: 0,
        removedSlots: [],
        replaced: [],
        drones: { hawk: [], humanoid: [], worm: [] }
    };

    // Build the three enemy dictionaries and their drones.
    function buildDrones(kind, n, dictOffset, opts) {
        const dict = named(kind + "Dict");
        ptrSlots.set(enemyManager.addr + dictOffset, dict);

        const entries = [];
        let prevElem = null;
        for (let i = 0; i < n; i++) {
            const drone = named(kind + i);
            const elem = named(kind + "Elem" + i);

            // uthash chain: dict+0x14 -> elem0, elem+0x110 -> next
            if (prevElem === null) ptrSlots.set(dict.addr + 0x14, elem);
            else ptrSlots.set(prevElem.addr + 0x110, elem);
            prevElem = elem;

            // CCDictElement::getObject(elem) -> drone
            elem._object = drone;

            let node = drone;
            if (opts && opts.viaAiController) {
                // HumanoidDrone+0x1ac -> SoldierAIController* -> getSoldierView()
                const ai = named(kind + "Ai" + i);
                const view = named(kind + "View" + i);
                ptrSlots.set(drone.addr + 0x1ac, ai);
                ai._soldierView = view;
                node = view;
            }

            nodePos.set(node.addr, { x: 300.0 + i * 40, y: 250.0 - i * 15 });
            bodyVel.set(drone.addr, { x: 0.5 * (i + 1), y: -0.25 * (i + 1) });

            drone._hp = 20 + i * 5;
            drone._rotation = 0.1 * (i + 1);
            drone._fireAngle = 1.0 + 0.1 * i;
            entries.push(drone);
        }
        GAME.drones[kind] = entries;
        return dict;
    }

    buildDrones("hawk", 2, 0x14, null);
    buildDrones("humanoid", 1, 0x18, { viaAiController: true });
    buildDrones("worm", 1, 0x1c, null);

    function dictCountOf(dictPtr) {
        for (const kind of ["hawk", "humanoid", "worm"]) {
            const off = kind === "hawk" ? 0x14 : (kind === "humanoid" ? 0x18 : 0x1c);
            const d = ptrSlots.get(enemyManager.addr + off);
            if (d && d.addr === dictPtr.addr) return GAME.drones[kind].length;
        }
        return 0;
    }

    // ---------------------------------------------------------------------
    // Native function implementations, keyed by mangled symbol
    // ---------------------------------------------------------------------

    function writeVec(outPtr, v) {
        outPtr.writeFloat(v.x);
        outPtr.add(4).writeFloat(v.y);
    }

    // cpVect getters honour ONLY the struct convention.
    function cpVectImpl(lookup) {
        return function (retType, args) {
            const isStruct = Array.isArray(retType);
            return function () {
                const a = arguments;
                if (isStruct) {
                    const v = lookup(a[0]);
                    return v ? [v.x, v.y] : [NaN, NaN];
                }
                // sret shape: (out, this) -- return garbage so the probe rejects it.
                if (args.length === 2) {
                    writeVec(a[0], { x: NaN, y: NaN });
                    return a[0];
                }
                // packed shape -- also garbage.
                return mockUint64("0x7fc000007fc00000");
            };
        };
    }

    const IMPLS = {
        // -- player -------------------------------------------------------
        "_ZN21SoldierHostController5getHPEv": () => () => GAME.hp,
        "_ZN21SoldierHostController5setHPEi": () => (p, v) => { GAME.hp = v; },
        "_ZN21SoldierHostController8getPowerEv": () => () => GAME.power,
        "_ZN21SoldierHostController8setPowerEf": () => (p, v) => { GAME.power = v; },
        "_ZN21SoldierHostController12getFireAngleEv": () => () => GAME.fireAngle,
        "_ZN21SoldierHostController14getSoldierViewEv": () => () => soldierView,
        "_ZN17SoldierController6isDeadEv": () => () => GAME.dead,
        "_ZN17SoldierController8getAliveEv": () => () => GAME.alive,
        "_ZN17SoldierController15getBodyPositionEv":
            cpVectImpl((p) => nodePos.get(soldierView.addr)),
        "_ZN17SoldierController15getBodyVelocityEv":
            cpVectImpl((p) => bodyVel.get(player.addr)),

        // -- weapon slots -------------------------------------------------
        "_ZN17SoldierController16getPrimaryWeaponEv": () => () => weapon,
        "_ZN17SoldierController18getSecondaryWeaponEv": () => () => GAME.slots.secondary || NULL,
        "_ZN17SoldierController13getDualWeaponEv": () => () => GAME.slots.dual || NULL,
        "_ZN17SoldierController13getSideWeaponEv": () => () => GAME.slots.side || NULL,

        // -- weapon state -------------------------------------------------
        "_ZN6Weapon7getClipEv": () => () => GAME.clip,
        "_ZN6Weapon7setClipEi": () => (w, v) => { GAME.clip = v; },
        "_ZN6Weapon7getAmmoEv": () => () => GAME.ammo,
        "_ZN6Weapon7setAmmoEi": () => (w, v) => { GAME.ammo = v; },
        "_ZN6Weapon15getClipCapacityEv": () => () => GAME.clipCapacity,
        "_ZN6Weapon15getAmmoCapacityEv": () => () => GAME.ammoCapacity,
        "_ZN6Weapon11isReloadingEv": () => () => GAME.reloading,
        "_ZN6Weapon12isTriggeringEv": () => () => GAME.triggering,
        "_ZN6Weapon7getTypeEv": () => () => GAME.weaponType,
        "_ZN6Weapon13getReloadTimeEv": () => () => GAME.reloadTime,

        // -- loadout ------------------------------------------------------
        "_ZN13WeaponFactory19sharedWeaponFactoryEv": () => () => factory,
        "_ZN13WeaponFactory24createWeaponFromAmmoTypeE8ItemType": () => (f, t) => {
            GAME.createdType = t;
            return weapon;
        },
        "_ZN21SoldierHostController16addPrimaryWeaponEP6Weapon": () => (p, w) => {
            GAME.addPrimaryCalls++;
            GAME.weaponType = GAME.createdType;
        },
        "_ZN21SoldierHostController21removeSecondaryWeaponEv": () => () => {
            GAME.slots.secondary = null; GAME.removedSlots.push("secondary");
        },
        "_ZN21SoldierHostController16removeDualWeaponEv": () => () => {
            GAME.slots.dual = null; GAME.removedSlots.push("dual");
        },
        "_ZN21SoldierHostController16removeSideWeaponEv": () => () => {
            GAME.slots.side = null; GAME.removedSlots.push("side");
        },

        // -- cocos2d ------------------------------------------------------
        "_ZN7cocos2d6CCNode11getPositionEPfS1_": () => (node, ox, oy) => {
            const p = nodePos.get(node.addr) || { x: 0, y: 0 };
            ox.writeFloat(p.x);
            oy.writeFloat(p.y);
        },
        "_ZN7cocos2d6CCNode19convertToWorldSpaceERKNS_7CCPointE": () => (out, node, inp) => {
            const p = nodePos.get(node.addr) || { x: 0, y: 0 };
            // Pretend the camera offsets everything by a constant.
            writeVec(out, { x: p.x - 50.0, y: p.y - 30.0 });
            return out;
        },
        "_ZN7cocos2d12CCDictionary5countEv": () => (d) => dictCountOf(d),
        "_ZNK7cocos2d13CCDictElement9getObjectEv": () => (e) => e._object || NULL,

        // -- enemies ------------------------------------------------------
        "_ZN19SoldierAIController14getSoldierViewEv": () => (ai) => ai._soldierView || NULL,

        // -- egl ----------------------------------------------------------
        "eglSwapInterval": () => (dpy, n) => { GAME.swapInterval = n; return 0; }
    };

    // Per-drone-type getters, generated so the mock stays in step with
    // agent/entities/enemy_types.js.
    for (const [cls, kind] of [["9HawkDrone", "hawk"], ["13HumanoidDrone", "humanoid"], ["9WormDrone", "worm"]]) {
        IMPLS["_ZN" + cls + "15getBodyPositionEv"] = cpVectImpl((p) => {
            // Physics body position: offset from the node, as a real engine might.
            const node = kind === "humanoid"
                ? (ptrSlots.get(p.addr + 0x1ac) || {})._soldierView
                : p;
            const np = node ? nodePos.get(node.addr) : null;
            return np ? { x: np.x + 2.0, y: np.y + 2.0 } : null;
        });
        IMPLS["_ZN" + cls + "15getBodyVelocityEv"] = cpVectImpl((p) => bodyVel.get(p.addr));
        IMPLS["_ZN" + cls + "15getBodyRotationEv"] = () => (p) => p._rotation || 0;
        IMPLS["_ZN" + cls + "5getHPEv"] = () => (p) => p._hp || 0;
        if (kind !== "worm") {
            IMPLS["_ZN" + cls + "12getFireAngleEv"] = () => (p) => p._fireAngle || 0;
        }
    }

    // Hookable functions with no body of their own.
    const HOOK_ONLY = [
        "_ZN21SoldierHostController10updateStepEf6cpVectS0_f",
        "_ZN12EnemyManager10updateStepEf",
        "_ZN12EnemyManager11initEnemiesEv",
        "_ZN7cocos2d11CCScheduler6updateEf",
        "_ZN7cocos2d21CCDisplayLinkDirector8mainLoopEv",
        "_ZN7cocos2d10CCDirector9drawSceneEv",
        "_ZN13SurvivalStage11updateSargeEf",
        "_ZN13CocosDenshion17SimpleAudioEngine10playEffectEPKcbfff",
        "_ZN13CocosDenshion17SimpleAudioEngine10playEffectEPKcibfff",
        "_ZN13CocosDenshion17SimpleAudioEngine19playBackgroundMusicEPKcb",
        "eglSwapBuffers"
    ];

    // Assign an address to every known symbol.
    const missingSymbols = new Set(options.missingSymbols || []);
    for (const name of Object.keys(IMPLS).concat(HOOK_ONLY)) {
        if (missingSymbols.has(name)) continue;
        const p = named("sym:" + name, 4);
        addrToSymbol.set(p.addr, name);
        symbolToAddr.set(name, p);
    }

    // ---------------------------------------------------------------------
    // Frida API surface
    // ---------------------------------------------------------------------

    const hooks = new Map();     // symbol -> { onEnter, onLeave }
    const replaced = new Map();  // symbol -> callback
    const sent = [];
    const logs = [];

    // Virtual clock. The agent reads Date.now() for observation timestamps and
    // for the FPS window; driving it explicitly keeps tests deterministic
    // instead of dependent on how many milliseconds a loop happens to take.
    const RealDate = Date;
    let nowMs = 1700000000000;

    function MockDate(...a) { return new RealDate(...a); }
    MockDate.now = function () { return nowMs; };
    MockDate.parse = RealDate.parse;
    MockDate.UTC = RealDate.UTC;
    MockDate.prototype = RealDate.prototype;

    function mockUint64(str) {
        const v = BigInt(str);
        return {
            _v: v,
            and(o) { return mockUint64("0x" + (v & o._v).toString(16)); },
            shr(n) { return mockUint64("0x" + (v >> BigInt(n)).toString(16)); },
            toNumber() { return Number(v); },
            toString() { return "0x" + v.toString(16); }
        };
    }

    const sandbox = {
        console: {
            log: function () {
                const line = Array.prototype.join.call(arguments, " ");
                logs.push(line);
                if (options.verbose) process.stdout.write(line + "\n");
            }
        },

        Module: {
            findBaseAddress(name) {
                if (name !== "libcocos2dcpp.so") return null;
                return new FakePtr(0xce6c5000 >>> 0);
            },
            findExportByName(lib, name) {
                return symbolToAddr.get(name) || null;
            }
        },

        Process: {
            getModuleByName(name) {
                return { name, enumerateSymbols: () => [] };
            }
        },

        Memory: { alloc },

        ptr: function (v) {
            if (v instanceof FakePtr) return v;
            if (typeof v === "string") return new FakePtr(parseInt(v, 16) || 0);
            return new FakePtr(Number(v) || 0);
        },

        uint64: mockUint64,

        // These MUST be `function` expressions, not object-literal method
        // shorthand: shorthand methods have no [[Construct]] slot, so the
        // agent's `new NativeFunction(...)` would throw
        // "NativeFunction is not a constructor".
        NativeFunction: function (addr, retType, argTypes) {
            const name = addrToSymbol.get(addr.addr);
            const factoryFn = name ? IMPLS[name] : null;
            if (!factoryFn) return function () { return 0; };
            return factoryFn(retType, argTypes || []);
        },

        NativeCallback: function (fn, retType, argTypes) {
            fn._isCallback = true;
            fn._retType = retType;
            fn._argTypes = argTypes;
            return fn;
        },

        Interceptor: {
            attach(addr, cbs) {
                const name = addrToSymbol.get(addr.addr);
                if (!name) throw new Error("attach on unknown address " + addr);
                hooks.set(name, cbs);
                return { detach() { hooks.delete(name); } };
            },
            replace(addr, cb) {
                const name = addrToSymbol.get(addr.addr);
                if (!name) throw new Error("replace on unknown address " + addr);
                replaced.set(name, cb);
                GAME.replaced.push(name);
            }
        },

        send(payload) { sent.push(payload); },

        Date: MockDate,
        Math, JSON, Object, Array, String, Number, Boolean, Error,
        isFinite, parseInt, parseFloat, ArrayBuffer, Float32Array, Int32Array,
        Uint8Array, DataView, Set, Map, BigInt
    };

    return {
        sandbox,
        FakePtr,
        game: GAME,
        pointers: { player, weapon, soldierView, enemyManager, factory },
        hooks,
        replaced,
        sent,
        logs,
        nodePos,
        bodyVel,
        // Advance the virtual clock the agent sees.
        advanceClock(ms) { nowMs += ms; return nowMs; },
        now() { return nowMs; },
        // Encode a float the way updateStep's dt arrives: raw bits in a slot.
        floatArg(v) {
            const b = new ArrayBuffer(4);
            new Float32Array(b)[0] = v;
            return new FakePtr(new Int32Array(b)[0] >>> 0);
        }
    };
}

module.exports = { createMock };

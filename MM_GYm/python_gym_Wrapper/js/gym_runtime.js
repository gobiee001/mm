/**
 * Mini Militia Gym - Runtime Modifiers
 *
 * Weapon equip, Sarge suppression, timescale, headless rendering, audio, VSync.
 * Ported from MM_GYm/runtime_controls.js with two corrections:
 *  - Audio stubs declare their real signatures instead of an empty arg list.
 *  - The infinite-ammo clamp is owned by the observer (it must not run while
 *    the shot counter is being read), so it is not duplicated here.
 */

'use strict';

import { resolveExport, nativeFn, attach } from './gym_symbols.js';

export function initRuntime(cfg, diag) {
    const getPrimaryWeapon = nativeFn("_ZN17SoldierController16getPrimaryWeaponEv", 'pointer', ['pointer']);
    const addPrimaryWeapon = nativeFn("_ZN21SoldierHostController16addPrimaryWeaponEP6Weapon", 'void', ['pointer', 'pointer']);
    const sharedWeaponFactory = nativeFn("_ZN13WeaponFactory19sharedWeaponFactoryEv", 'pointer', []);
    const createWeapon = nativeFn("_ZN13WeaponFactory24createWeaponFromAmmoTypeE8ItemType", 'pointer', ['pointer', 'int']);

    let lastSoldier = ptr(0);

    function equip(soldier, type) {
        if (sharedWeaponFactory === null || createWeapon === null || addPrimaryWeapon === null) return;
        try {
            const f = sharedWeaponFactory();
            if (f.isNull()) return;
            const w = createWeapon(f, type);
            if (!w.isNull()) addPrimaryWeapon(soldier, w);
        } catch (e) { diag.equip_err++; }
    }

    attach("_ZN14SoldierManager13respawnPlayerEPN7cocos2d8CCObjectE", {
        onEnter() { lastSoldier = ptr(0); }   // force re-equip after respawn
    });

    if (cfg.always_spawn_with_weapon) {
        attach("_ZN21SoldierHostController10updateStepEf6cpVectS0_f", {
            onEnter(args) {
                const c = args[0];
                if (c.isNull() || c.equals(lastSoldier)) return;
                lastSoldier = c;
                equip(c, cfg.spawn_weapon_type);
            }
        });
    }

    if (cfg.disable_sarge) {
        for (const sym of ["_ZN13SurvivalStage11updateSargeEf", "_ZN13TrainingStage11headChatterEf"]) {
            const addr = resolveExport(sym);
            if (addr === null) continue;
            try {
                Interceptor.replace(addr, new NativeCallback(function () {}, 'void', ['pointer', 'float']));
            } catch (e) {}
        }
    }

    // Skipped entirely when hard_sync is on: gym_sync.js replaces this exact
    // symbol (Interceptor.replace), which cannot safely coexist with an
    // attach hook on the same address. game_speed has no effect under
    // hard_sync (see gym_sync.js) rather than being reimplemented there.
    if (cfg.game_speed !== 1.0 && !cfg.hard_sync) {
        attach("_ZN7cocos2d11CCScheduler6updateEf", {
            onEnter(args) {
                const s = args[0];
                if (!s.isNull()) {
                    try { s.add(0x14).writeFloat(cfg.game_speed); } catch (e) {}
                }
            }
        });
    }

    if (cfg.disable_rendering) {
        attach("_ZN7cocos2d10CCDirector9drawSceneEv", {
            onEnter(args) {
                const d = args[0];
                if (d.isNull()) return;
                try {
                    d.add(0x74).writeS32(0);
                    d.add(0x38).writeS32(0);
                    d.add(0x51).writeU8(1);
                } catch (e) {}
            }
        });
    }

    if (cfg.disable_sound) {
        const stubs = [
            ["_ZN13CocosDenshion17SimpleAudioEngine10playEffectEPKcbfff",
             'uint', ['pointer', 'pointer', 'bool', 'float', 'float', 'float']],
            ["_ZN13CocosDenshion17SimpleAudioEngine10playEffectEPKcibfff",
             'uint', ['pointer', 'pointer', 'int', 'bool', 'float', 'float', 'float']],
            ["_ZN13CocosDenshion17SimpleAudioEngine19playBackgroundMusicEPKcb",
             'void', ['pointer', 'pointer', 'bool']]
        ];
        for (const [sym, ret, args] of stubs) {
            const addr = resolveExport(sym);
            if (addr === null) continue;
            try {
                const cb = (ret === 'uint')
                    ? new NativeCallback(function () { return 0; }, ret, args)
                    : new NativeCallback(function () {}, ret, args);
                Interceptor.replace(addr, cb);
            } catch (e) {}
        }
    }

    if (cfg.unlock_fps) {
        try {
            const siAddr = Module.findExportByName("libEGL.so", "eglSwapInterval");
            const sbAddr = Module.findExportByName("libEGL.so", "eglSwapBuffers");
            if (siAddr && sbAddr) {
                const swapInterval = new NativeFunction(siAddr, 'int', ['pointer', 'int']);
                let done = false;
                Interceptor.attach(sbAddr, {
                    onEnter(args) {
                        if (done) return;
                        done = true;
                        try { swapInterval(args[0], 0); } catch (e) {}
                    }
                });
            }
        } catch (e) {}
    }

    const render = { frames: 0 };
    if (cfg.show_fps) {
        attach("_ZN7cocos2d21CCDisplayLinkDirector8mainLoopEv", {
            onEnter() { render.frames++; }
        });
    }

    return { renderStats: render };
}

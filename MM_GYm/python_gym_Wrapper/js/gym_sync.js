/**
 * Mini Militia Gym - Hard Synchronization ("frame-exact" stepping)
 *
 * Default behaviour (this module inert, hard_sync=false) is "soft sync": the
 * game runs freely in real time and gym_agent.js merely counts physics ticks
 * as they naturally occur.
 *
 * When cfg.hard_sync is true, this module freezes the game's own update loop
 * and only lets it advance exactly N simulated frames at a time, on request,
 * using a fixed dt instead of real elapsed time. Proven standalone first in
 * MM_GYm/GamePause/game_pause_demo.js against the live game before being
 * ported here.
 *
 * Mechanism: cocos2d-x's CCDirector::drawScene() calls
 * CCScheduler::update(dt) every render callback, and every scheduled game
 * update (player, enemies, physics - anything using scheduleUpdateForTarget)
 * fans out from that one call (verified against the real cocos2d-x 2.2.5
 * source, CCScheduler.cpp / CCDirector.cpp). Replacing that one function lets
 * us decide, per call, whether any game logic advances at all this frame.
 *
 * Bootstrap safety: the replacement starts in PASS-THROUGH mode (real dt,
 * every call) until the very first release() call. Freezing from script-load
 * time would freeze the game before it ever finishes booting into a match
 * (splash screen -> menu -> spawn are all scheduler-driven), so the player
 * would never spawn. Only Python's first step()/reset() call arms the freeze.
 *
 * dt note: CCScheduler::update(float dt) multiplies dt by its own internal
 * m_fTimeScale field (struct offset 0x14) BEFORE dispatching to scheduled
 * targets (confirmed by reading CCScheduler.cpp directly). game_speed's
 * existing hook (gym_runtime.js) writes that same offset - and is disabled
 * whenever hard_sync is on (see gym_runtime.js), so it stays at its default
 * 1.0 here and FIXED_DT is passed through unscaled, with no double-application
 * risk. game_speed has no effect while hard_sync is on - it is not folded
 * into FIXED_DT (a bigger dt per tick changes physics behaviour, not speed).
 */

'use strict';

import { resolveExport, nativeFn } from './gym_symbols.js';

const FIXED_DT = 0.0166667; // matches gym_agent.js's extractDt() fallback constant

export function initHardSync(cfg, diag) {
    if (!cfg.hard_sync) {
        return { ok: false, release() {}, pendingFrames: () => 0 };
    }

    diag.hard_sync_err = 0;

    const addr = resolveExport("_ZN7cocos2d11CCScheduler6updateEf");
    if (addr === null) {
        diag.hard_sync_err++;
        return { ok: false, release() {}, pendingFrames: () => 0 };
    }

    let origUpdate = null;
    try {
        origUpdate = new NativeFunction(addr, 'void', ['pointer', 'float']);
    } catch (e) {
        diag.hard_sync_err++;
        return { ok: false, release() {}, pendingFrames: () => 0 };
    }

    let frozen = false;          // false = pass-through (bootstrap), true = gated
    let framesRemaining = 0;

    let installed = false;
    try {
        Interceptor.replace(addr, new NativeCallback(function (scheduler, dt) {
            if (!frozen) {
                origUpdate(scheduler, dt);
                return;
            }
            if (framesRemaining > 0) {
                origUpdate(scheduler, FIXED_DT);
                framesRemaining--;
            }
            // else: swallow the call entirely - no scheduled game logic
            // advances for this render callback. This IS the freeze.
        }, 'void', ['pointer', 'float']));
        installed = true;
    } catch (e) {
        diag.hard_sync_err++;
    }

    if (!installed) {
        return { ok: false, release() {}, pendingFrames: () => 0 };
    }

    return {
        ok: true,
        release(n) {
            frozen = true;
            framesRemaining += Math.max(0, n | 0);
        },
        pendingFrames() {
            return framesRemaining;
        }
    };
}

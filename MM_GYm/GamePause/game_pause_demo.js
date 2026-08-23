{
    // ============================================================================
    // Game Pause / Single-Step DEMO (standalone - does NOT touch the real
    // MM_GYm/python_gym_Wrapper implementation, this is just a proof of concept)
    //
    // What it proves: the game can be frozen and then advanced exactly ONE
    // simulated frame at a time, on a real clock (once every PAUSE_MS), instead
    // of running freely like it normally does.
    //
    // How: cocos2d-x's CCDirector::drawScene() calls CCScheduler::update(dt)
    // every render callback, and EVERY scheduled game update (player, enemies,
    // physics - anything using scheduleUpdateForTarget) fans out from that one
    // call (verified against the real cocos2d-x 2.2.5 source). So if WE control
    // that one function, we control whether the whole game's logic is allowed
    // to move forward at all.
    //
    // We replace CCScheduler::update with our own version that:
    //   - by default does NOTHING (swallows the call) -> game logic is frozen,
    //     nothing moves, no physics, no AI, nothing.
    //   - once every PAUSE_MS (1 second by default), lets exactly ONE real
    //     update through, using a fixed dt (not real elapsed time) -> the game
    //     advances by exactly one simulated frame, then freezes again.
    //
    // WHAT TO WATCH FOR IN-GAME: the player/enemies should sit completely
    // still, then visibly jump forward by a tiny amount once a second, then
    // sit still again. That "freeze -> tiny jump -> freeze" rhythm IS the
    // pause + single-step mechanism working.
    //
    // This only gates SIMULATED game logic. Rendering keeps running (you'll
    // still see a live, non-frozen picture) - only the things that make the
    // world change (movement, physics, AI) are held back.
    // ============================================================================

    const moduleName = "libcocos2dcpp.so";

    const PAUSE_MS = 1000;          // how long the game stays frozen between steps
    const FIXED_DT = 1.0 / 60.0;    // pretend exactly this much game time passed per step

    function log(msg) {
        console.log(msg);   // visible if run via `frida -U -l script.js` directly
        send(msg);           // visible via run_hook.py / any custom message handler
    }

    log("[pause-demo] looking for " + moduleName + "...");
    const moduleBase = Module.findBaseAddress(moduleName);

    if (moduleBase === null) {
        log("[pause-demo] " + moduleName + " is not loaded yet. Start or resume a match, then reload this script.");
    } else {
        log("[pause-demo] " + moduleName + " found at " + moduleBase);

        let modObj = null;
        try { modObj = Process.getModuleByName(moduleName); } catch (e) {}

        function resolveSymbol(name) {
            let addr = Module.findExportByName(moduleName, name);
            if (addr !== null) return addr;
            if (modObj !== null) {
                try {
                    const sym = modObj.enumerateSymbols().find(s => s.name === name);
                    if (sym) return sym.address;
                } catch (e) {}
            }
            return null;
        }

        // CCScheduler::update(float) - the single chokepoint every scheduled
        // per-frame game update fans out from.
        const updateAddr = resolveSymbol("_ZN7cocos2d11CCScheduler6updateEf");

        if (updateAddr === null) {
            log("[pause-demo] CCScheduler::update not found in this build - cannot proceed.");
        } else {
            log("[pause-demo] CCScheduler::update resolved at " + updateAddr);

            const origUpdate = new NativeFunction(updateAddr, 'void', ['pointer', 'float']);

            let framesRemaining = 0;   // > 0 means "let this many real updates through"
            let swallowedSinceLastStep = 0;
            let stepCount = 0;

            Interceptor.replace(updateAddr, new NativeCallback(function (scheduler, dt) {
                if (framesRemaining > 0) {
                    origUpdate(scheduler, FIXED_DT);   // let exactly one real tick through
                    framesRemaining--;
                    stepCount++;
                    log(`[pause-demo] STEP #${stepCount} ran  (froze ${swallowedSinceLastStep} calls before it, dt=${FIXED_DT.toFixed(4)})`);
                    swallowedSinceLastStep = 0;
                } else {
                    swallowedSinceLastStep++;
                    // Swallowed: origUpdate is NOT called, so nothing in the game
                    // updates for this render callback. This IS the "pause".
                }
            }, 'void', ['pointer', 'float']));

            log("[pause-demo] CCScheduler::update replaced. Game logic is now frozen by default.");
            log(`[pause-demo] Letting exactly 1 frame through every ${PAUSE_MS}ms. Watch the player in-game now.`);

            setInterval(function () {
                framesRemaining = 1;
            }, PAUSE_MS);

            // Optional: peek at counters from a Frida REPL (`frida -U -l script.js`
            // then type `rpc.exports.status()`). Not required for the demo itself.
            rpc.exports = {
                status: function () {
                    return {
                        stepCount: stepCount,
                        framesRemaining: framesRemaining,
                        swallowedSinceLastStep: swallowedSinceLastStep,
                        pauseMs: PAUSE_MS,
                        fixedDt: FIXED_DT
                    };
                }
            };
        }
    }
}

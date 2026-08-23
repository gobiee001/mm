/**
 * Mini Militia Gym - Runtime Configuration
 *
 * Defaults live here; the Python side prepends a `__PY_CONFIG__` object to the
 * bundle, which is shallow-merged over these. Nothing is string-patched — the
 * Python dataclasses are the single source of truth at runtime.
 */

'use strict';

export const DEFAULT_CONFIG = {
    // --- Frame skip / stepping -------------------------------------------
    frame_skip: 10,             // physics ticks held per env.step()
    step_timeout_ms: 5000,      // watchdog: resolve anyway if ticks stall
    sample_every_tick: true,    // sample enemies each tick (needed for idle detection)
    hard_sync: false,           // freeze the game between steps, advance exactly frame_skip
                                 // ticks with a fixed dt (see gym_sync.js). game_speed has
                                 // no effect while this is on.

    // --- Runtime modifiers ------------------------------------------------
    always_spawn_with_weapon: true,
    spawn_weapon_type: 5,       // 5 = UZI
    infinite_health: false,     // OFF: we want a real terminal signal
    infinite_boost: true,
    infinite_reload_ammo: false,// OFF: clamping ammo hides the shot signal
    reload_ammo_reserve: 999,
    disable_sarge: true,
    disable_rendering: true,
    disable_sound: true,
    game_speed: 1.0,
    unlock_fps: true,
    show_fps: false,

    // --- Observation ------------------------------------------------------
    max_enemies: 5,
    max_enemy_scan: 32,         // hard cap on dict walk length
    engagement_radius: 1000.0,  // enemy within this distance => "engaged"

    // --- Actions ----------------------------------------------------------
    move_deadzone: 0.01,
    aim_deadzone: 0.01,
    shoot_threshold: 0.0,
    joystick_radius: 60.0,

    // --- Diagnostics ------------------------------------------------------
    verbose: false
};

export function buildConfig() {
    const cfg = {};
    for (const k in DEFAULT_CONFIG) cfg[k] = DEFAULT_CONFIG[k];

    // eslint-disable-next-line no-undef
    if (typeof __PY_CONFIG__ !== 'undefined' && __PY_CONFIG__) {
        // eslint-disable-next-line no-undef
        const inj = __PY_CONFIG__;
        for (const k in inj) cfg[k] = inj[k];
    }
    return cfg;
}

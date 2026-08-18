/**
 * Mini Militia RL Environment - Runtime Configuration
 * 
 * Central configuration file for runtime modifiers and observation output settings.
 */

'use strict';

export const CONFIG = {
    // Weapon Spawn Config: 5 is UZI (3: DEAGLE, 4: MAGNUM, 5: UZI, 6: MP5, 7: AK47, 8: M16, 9: SHOTGUN, 11: SMAW)
    always_spawn_with_weapon: true,
    spawn_weapon_type: 5,     // 5 = UZI

    // Player & Weapon Modifiers
    infinite_health: true,    // Locks player HP to 100 on every tick
    infinite_boost: true,     // Locks player jetpack/power to 10.0
    infinite_reload_ammo: true,// Locks clip ammo to 99 and ensures full reserve ammo

    // Stage & Game Flow Modifiers
    disable_sarge: true,      // Stubs Sarge updates & dialogue chatter
    disable_rendering: false, // Set to true for headless speedup during RL training
    game_speed: 1.0,          // Time scale multiplier (e.g. 1.0, 3.0, 5.0)
    disable_sound: true,      // Disables background music and sound effects

    // Performance & Diagnostics
    unlock_fps: true,         // Pure Native Dynamic VSync Unlocker via eglSwapInterval(dpy, 0)
    show_fps: true,           // FPS Monitor via CCDisplayLinkDirector::mainLoop

    // Output Mode: 'pretty' (human-readable), 'json' (compact single-line JSON), 'send' (Frida send() to Python)
    output_mode: 'pretty'
};

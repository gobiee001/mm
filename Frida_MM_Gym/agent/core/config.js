// Configuration.
//
// Python prepends `const GYM_CONFIG = {...};` to the bundle before
// create_script(), so the config is available synchronously at load time. That
// avoids a recv() handshake race and keeps the invariant that JS never
// asynchronously requests anything.

const DEFAULTS = {
    obs_interval_frames: 10,
    emit: true,
    include_screen_coords: true,
    include_enemy_hp: true,
    vec_abi: "auto",              // "auto" | "sret" | "packed" | "vfp" | "finite_diff"
    log_level: "info",            // "quiet" | "info" | "debug"

    actuators: {
        health:  { enabled: true, value: 100 },
        power:   { enabled: true, value: 100.0 },
        ammo:    {
            enabled: true,
            refill_reserve_every_frame: true,
            refill_clip_on_reload_end: true
        },
        loadout: { enabled: true, weapon_type: 5, strip_other_slots: true }
    },

    env: {
        fast_forward:   { enabled: false, time_scale: 3.0 },
        fps_unlock:     { enabled: false },
        fps_monitor:    { enabled: false, report_interval_ms: 1000 },
        stop_rendering: { enabled: false, show_stats: true },
        block_audio:    { enabled: false },
        block_sarge:    { enabled: false }
    }
};

function isPlainObject(v) {
    return v !== null && typeof v === "object" && !Array.isArray(v);
}

function deepMerge(base, override) {
    const out = {};
    const keys = Object.keys(base);
    for (let i = 0; i < keys.length; i++) {
        const k = keys[i];
        out[k] = base[k];
    }
    if (!isPlainObject(override)) return out;

    const okeys = Object.keys(override);
    for (let i = 0; i < okeys.length; i++) {
        const k = okeys[i];
        const ov = override[k];
        if (isPlainObject(ov) && isPlainObject(out[k])) {
            out[k] = deepMerge(out[k], ov);
        } else {
            out[k] = ov;
        }
    }
    return out;
}

const injected = (typeof GYM_CONFIG !== "undefined") ? GYM_CONFIG : {};
export const config = deepMerge(DEFAULTS, injected);

export function logInfo(msg) {
    if (config.log_level !== "quiet") console.log(msg);
}

export function logDebug(msg) {
    if (config.log_level === "debug") console.log(msg);
}

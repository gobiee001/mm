/**
 * Mini Militia Gym - Observation & Event Accumulation Layer
 *
 * Two distinct mechanisms:
 *
 *  1. Monotonic EVENT COUNTERS driven by Interceptor hooks. Damage, kills,
 *     shots and deaths are captured at their source, so they are exact and
 *     correctly attributed. The legacy plan inferred all of these by diffing
 *     sampled state, which breaks on pointer-reuse ids, on respawns, and (for
 *     ammo) is defeated outright by the infinite-ammo clamp.
 *
 *  2. Per-tick SAMPLING for anything positional: player/enemy pose, and the
 *     proximity test behind the idle penalty.
 *
 * Cached native pointers are invalidated when their owning update loop stops
 * running, so a freed EnemyManager is never dereferenced after a stage change.
 */

'use strict';

import { resolveExport, nativeFn, attach } from './gym_symbols.js';

const STALE_TICKS = 60;          // no owning update in this many ticks => drop pointer
const DICT_FIRST_ELEM = 0x14;    // CCDictionary -> first CCDictElement
const DICT_NEXT = 0x110;         // CCDictElement -> next
const AMMO_OFFSET = 0x1ee;       // Weapon clip count (int16)

export function initObserver(cfg, diag) {

    // ---- Native functions -------------------------------------------------
    const getSoldierView = nativeFn("_ZN21SoldierHostController14getSoldierViewEv", 'pointer', ['pointer']);
    const getPlayerPos = nativeFn("_ZN17SoldierController15getBodyPositionEv", 'pointer', ['pointer', 'pointer']);
    const getPlayerVel = nativeFn("_ZN17SoldierController15getBodyVelocityEv", 'pointer', ['pointer', 'pointer']);
    const getPlayerHP = nativeFn("_ZN21SoldierHostController5getHPEv", 'int', ['pointer']);
    const getPower = nativeFn("_ZN21SoldierHostController8getPowerEv", 'float', ['pointer']);
    const getPrimaryWeapon = nativeFn("_ZN17SoldierController16getPrimaryWeaponEv", 'pointer', ['pointer']);
    const isReloading = nativeFn("_ZN6Weapon11isReloadingEv", 'int', ['pointer']);
    const setAmmo = nativeFn("_ZN6Weapon7setAmmoEi", 'void', ['pointer', 'int']);

    const getNodePos = nativeFn("_ZN7cocos2d6CCNode11getPositionEPfS1_", 'void', ['pointer', 'pointer', 'pointer']);
    const dictCount = nativeFn("_ZN7cocos2d12CCDictionary5countEv", 'int', ['pointer']);
    const getDictObject = nativeFn("_ZNK7cocos2d13CCDictElement9getObjectEv", 'pointer', ['pointer']);
    const getDictIntKey = nativeFn("_ZNK7cocos2d13CCDictElement9getIntKeyEv", 'int', ['pointer']);

    const getAIView = nativeFn("_ZN19SoldierAIController14getSoldierViewEv", 'pointer', ['pointer']);

    // Per-type drone accessors, with the Enemy base class as fallback.
    const enemyGetHP = nativeFn("_ZN5Enemy5getHPEv", 'int', ['pointer']);
    const enemyGetVel = nativeFn("_ZN5Enemy15getBodyVelocityEv", 'pointer', ['pointer', 'pointer']);
    const enemyFireAngle = nativeFn("_ZN5Enemy12getFireAngleEv", 'float', ['pointer']);

    const DRONES = [
        {   // 0: Hawk
            dictOffset: 0x14,
            getHP: nativeFn("_ZN9HawkDrone5getHPEv", 'int', ['pointer']) || enemyGetHP,
            getVel: nativeFn("_ZN9HawkDrone15getBodyVelocityEv", 'pointer', ['pointer', 'pointer']) || enemyGetVel,
            getAim: nativeFn("_ZN9HawkDrone12getFireAngleEv", 'float', ['pointer']) || enemyFireAngle,
            viaAI: false
        },
        {   // 1: Humanoid
            dictOffset: 0x18,
            getHP: nativeFn("_ZN13HumanoidDrone5getHPEv", 'int', ['pointer']) || enemyGetHP,
            getVel: nativeFn("_ZN13HumanoidDrone15getBodyVelocityEv", 'pointer', ['pointer', 'pointer']) || enemyGetVel,
            getAim: nativeFn("_ZN13HumanoidDrone12getFireAngleEv", 'float', ['pointer']) || enemyFireAngle,
            viaAI: true
        },
        {   // 2: Worm
            dictOffset: 0x1c,
            getHP: nativeFn("_ZN9WormDrone5getHPEv", 'int', ['pointer']) || enemyGetHP,
            getVel: nativeFn("_ZN9WormDrone15getBodyVelocityEv", 'pointer', ['pointer', 'pointer']) || enemyGetVel,
            getAim: nativeFn("_ZN9WormDrone15getBodyRotationEv", 'float', ['pointer']) || enemyFireAngle,
            viaAI: false
        }
    ];

    // Reset primitives (called on the game thread, never from an RPC callback).
    const killPlayerFn = nativeFn("_ZN21SoldierHostController10killPlayerEv", 'void', ['pointer']);
    const killAllEnemiesFn = nativeFn("_ZN12EnemyManager14killAllEnemiesEv", 'void', ['pointer']);
    const spawnPlayerFn = nativeFn("_ZN14SoldierManager11spawnPlayerEv", 'void', ['pointer']);

    // ---- Reusable buffers (no per-frame allocation) -----------------------
    const xBuf = Memory.alloc(4);
    const yBuf = Memory.alloc(4);
    const vecBuf = Memory.alloc(16);
    const fBuf = Memory.alloc(4);

    function argFloat(a) {
        try { fBuf.writeU32(a.toUInt32()); return fBuf.readFloat(); }
        catch (e) { return 0.0; }
    }

    // ---- Cached instance pointers with staleness tracking -----------------
    let playerCtl = ptr(0);
    let enemyMgr = ptr(0);
    let soldierMgr = ptr(0);
    let sincePlayerUpdate = 1e9;
    let sinceEnemyUpdate = 1e9;
    let sinceSoldierMgrUpdate = 1e9;

    attach("_ZN21SoldierHostController10updateStepEf6cpVectS0_f", {
        onEnter(args) { playerCtl = args[0]; sincePlayerUpdate = 0; }
    });
    attach("_ZN12EnemyManager10updateStepEf", {
        onEnter(args) { enemyMgr = args[0]; sinceEnemyUpdate = 0; }
    });
    attach("_ZN12EnemyManager11initEnemiesEv", {
        onEnter(args) { enemyMgr = args[0]; sinceEnemyUpdate = 0; }
    });
    attach("_ZN14SoldierManager10updateStepEf", {
        onEnter(args) { soldierMgr = args[0]; sinceSoldierMgrUpdate = 0; }
    });

    // ---- Monotonic event counters ----------------------------------------
    const counters = {
        damage_dealt: 0,        // effective (overkill-clamped) HP removed from drones
        damage_raw: 0,          // as reported by addDamage, pre-clamp
        damage_events: 0,
        enemies_destroyed: 0,
        kills_credited: 0,      // EnemyManager::awardPoints
        points: 0,
        shots_fired: 0,
        damage_taken: 0.0,
        player_deaths: 0,
        game_ended: 0
    };

    // Enemy::addDamage(int damage, std::string attacker, int type)
    // onEnter runs before HP is decremented, so getHP() gives the pre-hit value
    // and lets us discard overkill instead of paying for it.
    function attachDamage(symbol, getHP) {
        attach(symbol, {
            onEnter(args) {
                try {
                    const dmg = args[1].toInt32();
                    if (dmg <= 0) return;
                    counters.damage_raw += dmg;
                    let eff = dmg;
                    if (getHP !== null) {
                        const hp = getHP(args[0]);
                        if (hp >= 0 && dmg > hp) eff = hp;
                    }
                    counters.damage_dealt += eff;
                    counters.damage_events++;
                } catch (e) { diag.damage_hook_err++; }
            }
        });
    }
    attachDamage("_ZN9HawkDrone9addDamageEiSsi", DRONES[0].getHP);
    attachDamage("_ZN13HumanoidDrone9addDamageEiSsi", DRONES[1].getHP);
    attachDamage("_ZN9WormDrone9addDamageEiSsi", DRONES[2].getHP);

    attach("_ZN12EnemyManager16onEnemyDestroyedEPN7cocos2d8CCObjectE", {
        onEnter() { counters.enemies_destroyed++; }
    });
    attach("_ZN12EnemyManager11awardPointsEP5Enemyi", {
        onEnter(args) {
            counters.kills_credited++;
            try { counters.points += args[2].toInt32(); } catch (e) {}
        }
    });
    attach("_ZN21SoldierHostController13weaponDidFireEP4Item", {
        onEnter() { counters.shots_fired++; }
    });
    // SoldierHostController::addDamage(float, std::string, int, bool)
    attach("_ZN21SoldierHostController9addDamageEfSsib", {
        onEnter(args) {
            const d = argFloat(args[1]);
            if (d > 0) counters.damage_taken += d;
        }
    });
    attach("_ZN21SoldierHostController10killPlayerEv", {
        onEnter() { counters.player_deaths++; }
    });
    attach("_ZN10StageLayer11onEndedGameEPN7cocos2d8CCObjectE", {
        onEnter() { counters.game_ended++; }
    });

    const haveDamageHook = resolveExport("_ZN9HawkDrone9addDamageEiSsi") !== null;
    const haveKillHook = resolveExport("_ZN12EnemyManager11awardPointsEP5Enemyi") !== null ||
                         resolveExport("_ZN12EnemyManager16onEnemyDestroyedEPN7cocos2d8CCObjectE") !== null;
    const haveShotHook = resolveExport("_ZN21SoldierHostController13weaponDidFireEP4Item") !== null;

    // ---- Enemy slot pool (mutated in place) -------------------------------
    const POOL_SIZE = Math.max(1, cfg.max_enemy_scan | 0);
    const pool = [];
    for (let i = 0; i < POOL_SIZE; i++) {
        pool.push({ id: 0, type: 0, x: 0, y: 0, vx: 0, vy: 0, hp: 0, aim: 0, dist: 0, synth_id: false });
    }
    let poolLen = 0;

    // ---- Player sampling --------------------------------------------------
    const player = { x: 0, y: 0, vx: 0, vy: 0, hp: 0, power: 0, reloading: false, ammo: 0, valid: false };

    function samplePlayer() {
        player.valid = false;
        if (playerCtl.isNull() || sincePlayerUpdate > STALE_TICKS) return;

        let view = ptr(0);
        try {
            if (getSoldierView !== null) view = getSoldierView(playerCtl);
        } catch (e) { diag.player_view_err++; }

        try {
            if (!view.isNull() && getNodePos !== null) {
                getNodePos(view, xBuf, yBuf);
                player.x = xBuf.readFloat();
                player.y = yBuf.readFloat();
            } else if (getPlayerPos !== null) {
                getPlayerPos(vecBuf, playerCtl);
                player.x = vecBuf.readFloat();
                player.y = vecBuf.add(4).readFloat();
            } else {
                diag.player_pos_err++;
            }
        } catch (e) { diag.player_pos_err++; }

        try {
            if (getPlayerVel !== null) {
                getPlayerVel(vecBuf, playerCtl);
                player.vx = vecBuf.readDouble();
                player.vy = vecBuf.add(8).readDouble();
            }
        } catch (e) { diag.player_vel_err++; }

        try {
            player.hp = (getPlayerHP !== null) ? getPlayerHP(playerCtl) : 0;
        } catch (e) { diag.player_hp_err++; }

        try {
            player.power = (getPower !== null) ? getPower(playerCtl) : 0.0;
        } catch (e) {}

        try {
            if (getPrimaryWeapon !== null) {
                const w = getPrimaryWeapon(playerCtl);
                if (w && !w.isNull()) {
                    player.reloading = (isReloading !== null) ? (isReloading(w) !== 0) : false;
                    player.ammo = w.add(AMMO_OFFSET).readS16();
                    if (cfg.infinite_reload_ammo) {
                        if (setAmmo !== null) setAmmo(w, cfg.reload_ammo_reserve);
                        w.add(AMMO_OFFSET).writeS16(99);
                    }
                } else {
                    player.reloading = false;
                    player.ammo = 0;
                }
            }
        } catch (e) { diag.weapon_err++; }

        player.valid = true;
    }

    // ---- Enemy sampling ---------------------------------------------------
    function sampleEnemies() {
        poolLen = 0;
        if (enemyMgr.isNull() || sinceEnemyUpdate > STALE_TICKS) return;

        for (let t = 0; t < DRONES.length; t++) {
            const spec = DRONES[t];
            let dict;
            try {
                dict = enemyMgr.add(spec.dictOffset).readPointer();
            } catch (e) { diag.dict_err++; continue; }
            if (dict.isNull()) continue;

            let count = 0;
            try { count = (dictCount !== null) ? dictCount(dict) : 0; }
            catch (e) { diag.dict_err++; continue; }
            if (count <= 0) continue;

            // Bound the walk by the dictionary's own count, not just a magic cap.
            const limit = Math.min(count, POOL_SIZE - poolLen);
            let elem;
            try { elem = dict.add(DICT_FIRST_ELEM).readPointer(); }
            catch (e) { diag.dict_err++; continue; }

            let n = 0;
            while (!elem.isNull() && n < limit && poolLen < POOL_SIZE) {
                let obj = ptr(0);
                try { if (getDictObject !== null) obj = getDictObject(elem); }
                catch (e) { diag.dict_err++; break; }

                if (!obj.isNull()) {
                    const s = pool[poolLen];
                    s.type = t;
                    s.synth_id = false;
                    s.id = 0;
                    try {
                        if (getDictIntKey !== null) s.id = getDictIntKey(elem);
                    } catch (e) {}
                    if (s.id === 0) {
                        s.id = obj.toUInt32();
                        s.synth_id = true;      // pointer-derived: may alias after free
                        diag.synth_id_count++;
                    }

                    s.x = 0; s.y = 0;
                    try {
                        let node = obj;
                        if (spec.viaAI) {
                            const ai = obj.add(0x1ac).readPointer();
                            node = (!ai.isNull() && getAIView !== null) ? getAIView(ai) : ptr(0);
                        }
                        if (!node.isNull() && getNodePos !== null) {
                            getNodePos(node, xBuf, yBuf);
                            s.x = xBuf.readFloat();
                            s.y = yBuf.readFloat();
                        } else {
                            diag.enemy_pos_err++;
                        }
                    } catch (e) { diag.enemy_pos_err++; }

                    s.vx = 0; s.vy = 0;
                    try {
                        if (spec.getVel !== null) {
                            spec.getVel(vecBuf, obj);
                            s.vx = vecBuf.readDouble();
                            s.vy = vecBuf.add(8).readDouble();
                        }
                    } catch (e) { diag.enemy_vel_err++; }

                    s.hp = 0;
                    try {
                        if (spec.getHP !== null) s.hp = spec.getHP(obj);
                    } catch (e) { diag.enemy_hp_err++; }

                    s.aim = 0;
                    try {
                        if (spec.getAim !== null) s.aim = spec.getAim(obj);
                    } catch (e) {}

                    const dx = s.x - player.x;
                    const dy = s.y - player.y;
                    s.dist = Math.sqrt(dx * dx + dy * dy);

                    poolLen++;
                }

                try { elem = elem.add(DICT_NEXT).readPointer(); }
                catch (e) { diag.dict_err++; break; }
                n++;
            }
        }
    }

    /** Nearest-first, so slot k always means "k-th closest enemy". */
    function serializeEnemies() {
        const idx = [];
        for (let i = 0; i < poolLen; i++) idx.push(i);
        idx.sort((a, b) => pool[a].dist - pool[b].dist);

        const out = [];
        const n = Math.min(idx.length, cfg.max_enemies);
        for (let i = 0; i < n; i++) {
            const s = pool[idx[i]];
            out.push({
                id: s.id, type: s.type, hp: s.hp,
                x: s.x, y: s.y, vx: s.vx, vy: s.vy,
                aim: s.aim, dist: s.dist, synth_id: s.synth_id
            });
        }
        return out;
    }

    function minEnemyDistance() {
        let m = Infinity;
        for (let i = 0; i < poolLen; i++) if (pool[i].dist < m) m = pool[i].dist;
        return m;
    }

    // ---- Pending soft reset, executed on the game thread ------------------
    let resetRequest = null;

    function requestSoftReset(opts) { resetRequest = opts || {}; }

    function forceSpawnPlayer() {
        if (spawnPlayerFn !== null && !soldierMgr.isNull() && sinceSoldierMgrUpdate <= STALE_TICKS) {
            try {
                spawnPlayerFn(soldierMgr);
                return true;
            } catch (e) {
                diag.reset_err++;
                return false;
            }
        }
        return false;
    }

    function applyPendingReset() {
        if (resetRequest === null) return false;
        const opts = resetRequest;
        resetRequest = null;
        let did = false;

        if (opts.clear_enemies && killAllEnemiesFn !== null &&
            !enemyMgr.isNull() && sinceEnemyUpdate <= STALE_TICKS) {
            try { killAllEnemiesFn(enemyMgr); did = true; }
            catch (e) { diag.reset_err++; }
        }
        if (opts.kill_player && killPlayerFn !== null &&
            !playerCtl.isNull() && sincePlayerUpdate <= STALE_TICKS) {
            try { killPlayerFn(playerCtl); did = true; }
            catch (e) { diag.reset_err++; }
        }
        if (opts.force_spawn && spawnPlayerFn !== null &&
            !soldierMgr.isNull() && sinceSoldierMgrUpdate <= STALE_TICKS) {
            try { spawnPlayerFn(soldierMgr); did = true; }
            catch (e) { diag.reset_err++; }
        }
        return did;
    }

    // ---- Per-tick entry point --------------------------------------------
    function onTick(acc) {
        sincePlayerUpdate++;
        sinceEnemyUpdate++;
        sinceSoldierMgrUpdate++;

        samplePlayer();
        if (cfg.sample_every_tick || acc === null || acc.ticks + 1 >= acc.target) {
            sampleEnemies();
        }

        if (acc === null) return;

        acc.ticks++;
        const d = minEnemyDistance();
        if (d < acc.min_dist) acc.min_dist = d;
        if (poolLen > 0) acc.enemy_ticks++;

        const engaged = (d <= cfg.engagement_radius);
        if (engaged) {
            acc.engaged_ticks++;
            if (acc.isIdle()) acc.idle_ticks++;
            if (!acc.isShooting()) acc.no_shoot_ticks++;
        }
        if (player.valid && player.hp <= 0) acc.dead_ticks++;
    }

    function snapshotCounters() {
        return {
            damage_dealt: counters.damage_dealt,
            damage_raw: counters.damage_raw,
            damage_events: counters.damage_events,
            enemies_destroyed: counters.enemies_destroyed,
            kills_credited: counters.kills_credited,
            points: counters.points,
            shots_fired: counters.shots_fired,
            damage_taken: counters.damage_taken,
            player_deaths: counters.player_deaths,
            game_ended: counters.game_ended
        };
    }

    function diffCounters(before) {
        const now = snapshotCounters();
        const out = {};
        for (const k in now) out[k] = now[k] - before[k];
        return out;
    }

    function buildObservation() {
        return {
            player: {
                x: player.x, y: player.y,
                vx: player.vx, vy: player.vy,
                hp: player.hp, power: player.power,
                reloading: player.reloading,
                ammo: player.ammo,
                valid: player.valid
            },
            enemies: serializeEnemies(),
            enemy_count: poolLen
        };
    }

    return {
        onTick: onTick,
        buildObservation: buildObservation,
        snapshotCounters: snapshotCounters,
        diffCounters: diffCounters,
        requestSoftReset: requestSoftReset,
        applyPendingReset: applyPendingReset,
        forceSpawnPlayer: forceSpawnPlayer,
        hasPlayer: () => !playerCtl.isNull() && sincePlayerUpdate <= STALE_TICKS,
        capabilities: {
            damage_hook: haveDamageHook,
            kill_hook: haveKillHook,
            shot_hook: haveShotHook,
            reset_kill_player: killPlayerFn !== null,
            reset_kill_enemies: killAllEnemiesFn !== null,
            reset_force_spawn: spawnPlayerFn !== null,
            player_hp: getPlayerHP !== null,
            enemy_hp: DRONES[0].getHP !== null
        }
    };
}

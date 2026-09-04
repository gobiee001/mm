"""Pygame-based debug visualizer for CloneWorld."""

import math
import os
from typing import Optional
import numpy as np
import pygame
from ..sim.world import CloneWorld


class PygameDebugViewer:
    """Real-time 2D visualizer for CloneWorld with camera tracking, map art, and HUD."""

    def __init__(
        self,
        world: CloneWorld,
        width: int = 1280,
        height: int = 720,
        render_mode: str = "human",
        target_fps: float = 60.0,
    ) -> None:
        self.world = world
        self.width = width
        self.height = height
        self.render_mode = render_mode
        # One render() call covers one env.step(), i.e. frame_skip physics ticks of
        # sim time. Pacing at a fixed 60 fps therefore ran the world at
        # frame_skip x realtime. The caller passes the fps that makes wall-clock
        # time match sim time; see CloneBridge.render_fps.
        self.target_fps = float(target_fps)

        if render_mode == "rgb_array":
            os.environ["SDL_VIDEODRIVER"] = "dummy"

        if not pygame.get_init():
            pygame.init()
        if not pygame.font.get_init():
            pygame.font.init()

        self.screen = pygame.display.set_mode((width, height))
        pygame.display.set_caption(f"Mini Militia RL Clone - {world.config.map.map_name}")
        self.font = pygame.font.SysFont("Consolas", 13)
        self.hud_font = pygame.font.SysFont("Consolas", 15, bold=True)
        self.clock = pygame.time.Clock()

        # Build and cache map background surface
        self.map_surf: Optional[pygame.Surface] = None
        self._init_map_surface()

    def _init_map_surface(self) -> None:
        try:
            from pytmx.util_pygame import load_pygame
            map_name = self.world.config.map.map_name
            map_dir = self.world.config.map.map_dir
            if not map_name.endswith(".tmx"):
                tmx_file = map_dir / f"{map_name}.tmx"
            else:
                tmx_file = map_dir / map_name

            if tmx_file.is_file():
                tmx_data = load_pygame(str(tmx_file))
                scale = self.world.tier_scale
                w_px = int(tmx_data.width * tmx_data.tilewidth * scale)
                h_px = int(tmx_data.height * tmx_data.tileheight * scale)

                surf = pygame.Surface((w_px, h_px))
                surf.fill((30, 40, 50))

                tw = int(tmx_data.tilewidth * scale)
                th = int(tmx_data.tileheight * scale)

                for layer in tmx_data.visible_layers:
                    if hasattr(layer, "tiles"):
                        for x, y, img in layer.tiles():
                            if img:
                                if scale != 1.0:
                                    s_img = pygame.transform.scale(img, (tw, th))
                                else:
                                    s_img = img
                                surf.blit(s_img, (int(x * tw), int(y * th)))
                self.map_surf = surf
        except Exception:
            self.map_surf = None

    def render(self) -> Optional[np.ndarray]:
        pygame.event.pump()

        # Camera centered on player in Cocos world coordinates
        cam_x = self.world.player.body.x - self.width * 0.5
        cam_y = self.world.player.body.y - self.height * 0.5

        # 1. Background / Map
        self.screen.fill((20, 25, 35))
        if self.map_surf is not None:
            # Map top-left in Cocos world coords is (0, world_h)
            world_h = self.world.frame.world_h
            map_sx = int(0 - cam_x)
            map_sy = int(self.height - (world_h - cam_y))
            self.screen.blit(self.map_surf, (map_sx, map_sy))

        # Draw map boundary borders
        bx0 = int(self.world.frame.min_x - cam_x)
        by0 = int(self.height - (self.world.frame.max_y - cam_y))
        bw = int(self.world.frame.max_x - self.world.frame.min_x)
        bh = int(self.world.frame.max_y - self.world.frame.min_y)
        pygame.draw.rect(self.screen, (255, 60, 60), (bx0, by0, bw, bh), 2)

        # 2. Draw Projectiles
        active_bullets = np.where(self.world.projectiles.active)[0]
        for b_idx in active_bullets:
            bx = int(self.world.projectiles.x[b_idx] - cam_x)
            by = int(self.height - (self.world.projectiles.y[b_idx] - cam_y))
            vx = self.world.projectiles.vx[b_idx]
            vy = self.world.projectiles.vy[b_idx]
            v_len = math.hypot(vx, vy)
            if v_len > 1e-3:
                tail_x = int(bx - (vx / v_len) * 12)
                tail_y = int(by + (vy / v_len) * 12)  # Cocos Y-up vs Pygame Y-down
                pygame.draw.line(self.screen, (255, 255, 100), (tail_x, tail_y), (bx, by), 2)
            pygame.draw.circle(self.screen, (255, 255, 220), (bx, by), 3)

        # 3. Draw Enemies
        for e in self.world.enemies:
            if not e.body.active or e.body.hp <= 0.0:
                continue
            ex = int(e.body.x - cam_x)
            ey = int(self.height - (e.body.y - cam_y))
            ew = int(e.body.half_w * 2)
            eh = int(e.body.half_h * 2)

            if e.kind == 0:
                # Hawk (Flying drone)
                color = (255, 70, 70)
                pygame.draw.rect(self.screen, color, (ex - ew // 2, ey - eh // 2, ew, eh), border_radius=4)
                # Wings
                pygame.draw.line(self.screen, (255, 150, 150), (ex - ew, ey), (ex + ew, ey), 3)
            elif e.kind == 1:
                # Humanoid soldier
                color = (70, 220, 100)
                pygame.draw.rect(self.screen, color, (ex - ew // 2, ey - eh // 2, ew, eh), border_radius=4)
                # Gun barrel
                pygame.draw.line(self.screen, (40, 120, 50), (ex, ey), (ex + int(math.cos(e.aim_angle) * 20), ey - int(math.sin(e.aim_angle) * 20)), 3)
            else:
                # Worm (Crawler)
                color = (255, 160, 40)
                pygame.draw.ellipse(self.screen, color, (ex - ew // 2, ey - eh // 2, ew, eh))

            # HP bar above enemy
            bar_w = ew + 10
            bar_h = 4
            bar_x = ex - bar_w // 2
            bar_y = ey - eh // 2 - 8
            pygame.draw.rect(self.screen, (40, 40, 40), (bar_x, bar_y, bar_w, bar_h))
            hp_ratio = max(0.0, min(1.0, e.body.hp / e.body.max_hp))
            pygame.draw.rect(self.screen, (255, 60, 60), (bar_x, bar_y, int(bar_w * hp_ratio), bar_h))

            # State tag
            txt = self.font.render(f"{e.state.name}", True, (240, 240, 240))
            self.screen.blit(txt, (ex - txt.get_width() // 2, bar_y - 14))

        # 4. Draw Player
        px = int(self.world.player.body.x - cam_x)
        py = int(self.height - (self.world.player.body.y - cam_y))
        pw = int(self.world.player.body.half_w * 2)
        ph = int(self.world.player.body.half_h * 2)

        # Jetpack flame when flying
        if self.world.player.is_thrusting:
            flame_pts = [
                (px - 8, py + ph // 2),
                (px + 8, py + ph // 2),
                (px, py + ph // 2 + 16),
            ]
            pygame.draw.polygon(self.screen, (255, 140, 0), flame_pts)
            inner_flame = [
                (px - 4, py + ph // 2),
                (px + 4, py + ph // 2),
                (px, py + ph // 2 + 10),
            ]
            pygame.draw.polygon(self.screen, (255, 255, 50), inner_flame)

        # Player body
        pygame.draw.rect(
            self.screen, (0, 200, 255), (px - pw // 2, py - ph // 2, pw, ph), border_radius=4
        )
        pygame.draw.rect(
            self.screen, (255, 255, 255), (px - pw // 2, py - ph // 2, pw, ph), 2, border_radius=4
        )

        # Aim indicator
        aim_x = self.world.player.aim_x
        aim_y = self.world.player.aim_y
        aim_len = math.hypot(aim_x, aim_y)
        if aim_len > 0.1:
            aim_dir_x = aim_x / aim_len
            aim_dir_y = aim_y / aim_len
            gun_x = px + int(aim_dir_x * 24)
            gun_y = py - int(aim_dir_y * 24)
            pygame.draw.line(self.screen, (255, 255, 0), (px, py), (gun_x, gun_y), 3)

        # Player HP & Power overhead bars
        bar_w = pw + 16
        bar_x = px - bar_w // 2
        hp_y = py - ph // 2 - 14
        pwr_y = py - ph // 2 - 8

        # HP bar
        pygame.draw.rect(self.screen, (50, 50, 50), (bar_x, hp_y, bar_w, 4))
        hp_frac = max(0.0, min(1.0, self.world.player.body.hp / self.world.player.body.max_hp))
        pygame.draw.rect(self.screen, (0, 255, 100), (bar_x, hp_y, int(bar_w * hp_frac), 4))

        # Power/Fuel bar
        pygame.draw.rect(self.screen, (50, 50, 50), (bar_x, pwr_y, bar_w, 3))
        pwr_frac = max(0.0, min(1.0, self.world.player.power / 100.0))
        pygame.draw.rect(self.screen, (0, 180, 255), (bar_x, pwr_y, int(bar_w * pwr_frac), 3))

        # 5. Top-Left HUD Card
        hud_bg = pygame.Surface((320, 120))
        hud_bg.fill((15, 20, 30))
        hud_bg.set_alpha(210)
        self.screen.blit(hud_bg, (15, 15))
        pygame.draw.rect(self.screen, (70, 90, 120), (15, 15, 320, 120), 1)

        title = self.hud_font.render(f"MAP: {self.world.config.map.map_name.upper()}", True, (0, 255, 255))
        self.screen.blit(title, (25, 22))

        p_stats = (
            f"Player HP: {self.world.player.body.hp:.0f} / {self.world.player.body.max_hp:.0f}  "
            f"| Fuel: {self.world.player.power:.0f}%"
        )
        self.screen.blit(self.font.render(p_stats, True, (240, 240, 240)), (25, 45))

        w_stats = f"Ammo: {self.world.player.ammo} / {self.world.player.weapon.clip_size}"
        if self.world.player.is_reloading:
            w_stats += f" (RELOADING {self.world.player.reload_timer:.1f}s)"
        self.screen.blit(self.font.render(w_stats, True, (255, 220, 100)), (25, 65))

        e_count = len([e for e in self.world.enemies if e.body.active and e.body.hp > 0.0])
        sim_stats = f"Enemies: {e_count} active | Bullets: {len(active_bullets)} | Ticks: {self.world.total_ticks}"
        self.screen.blit(self.font.render(sim_stats, True, (180, 220, 180)), (25, 85))

        if self.render_mode == "human":
            pygame.display.flip()
            if self.target_fps > 0.0:
                self.clock.tick(self.target_fps)
            return None
        elif self.render_mode == "rgb_array":
            data = pygame.surfarray.array3d(self.screen)
            return np.transpose(data, (1, 0, 2))
        return None

    def close(self) -> None:
        pygame.quit()

import sys
import os
import math
import random
import pygame
import pytmx
from pytmx.util_pygame import load_pygame

# Initialize Pygame
pygame.init()
pygame.font.init()

# Screen dimensions
SCREEN_WIDTH = 1280
SCREEN_HEIGHT = 720
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT), pygame.RESIZABLE)
pygame.display.set_caption("Mini Militia Interactive Map - Polygon Colliders & Physics")
clock = pygame.time.Clock()

# Load Fonts
try:
    font = pygame.font.SysFont("Consolas", 14)
    hud_font = pygame.font.SysFont("Consolas", 18, bold=True)
except:
    font = pygame.font.Font(None, 18)
    hud_font = pygame.font.Font(None, 24)

# Load TMX map from parent directory
script_dir = os.path.dirname(os.path.abspath(__file__))
tmx_file = os.path.join(script_dir, "../1outpost_new.tmx")
try:
    tmx_data = load_pygame(tmx_file)
except Exception as e:
    print(f"Error loading TMX map: {e}")
    sys.exit(1)

# Map boundary limits
map_width_pixels = tmx_data.width * tmx_data.tilewidth
map_height_pixels = tmx_data.height * tmx_data.tileheight

# 1. Create a Giant Mask for Pixel-Perfect / Fine Collision Check
print("Extracting actual texture pixel masks for foreground tiles...")
giant_collision_surf = pygame.Surface((map_width_pixels, map_height_pixels), pygame.SRCALPHA)

# 2. Extract and pre-calculate simplified polygon outlines for visual highlighting
tile_polygons = []

for layer in tmx_data.visible_layers:
    if isinstance(layer, pytmx.TiledTileLayer) and layer.name == "tile":
        for x, y, image in layer.tiles():
            if image:
                # Blit tile to the giant collision surface
                giant_collision_surf.blit(image, (x * tmx_data.tilewidth, y * tmx_data.tileheight))
                
                # Get the pixel mask of the tile texture to extract outline points
                tile_mask = pygame.mask.from_surface(image)
                # Sample every 3rd point (every=3) to simplify the polygon vertex count for high performance
                outline = tile_mask.outline(every=3)
                if outline:
                    # Translate outline points to world coordinates
                    world_outline = [
                        (x * tmx_data.tilewidth + px, y * tmx_data.tileheight + py) 
                        for (px, py) in outline
                    ]
                    tile_polygons.append(world_outline)

# Create the final giant mask from the collision surface (alpha > 50 is solid)
giant_collision_mask = pygame.mask.from_surface(giant_collision_surf, 50)
print(f"Successfully generated map collision mask. Solid pixels: {giant_collision_mask.count()}")
print(f"Pre-calculated {len(tile_polygons)} fine polygon outlines.")

# Locate player spawn points
spawn_points = []
for obj in tmx_data.objects:
    if obj.name and obj.name.startswith("sp_p_"):
        spawn_points.append((obj.x, obj.y))

# Default spawn point
if spawn_points:
    spawn_points.sort(key=lambda p: p[0])
    spawn_x, spawn_y = spawn_points[0]
else:
    spawn_x, spawn_y = 100, 100

class Particle:
    def __init__(self, x, y, vx, vy, color, lifetime, size=3):
        self.x = x
        self.y = y
        self.vx = vx
        self.vy = vy
        self.color = color
        self.lifetime = lifetime
        self.max_lifetime = lifetime
        self.size = size

    def update(self):
        self.x += self.vx
        self.y += self.vy
        self.lifetime -= 1
        self.vy += 0.04

    def draw(self, surface, camera_x, camera_y, zoom_level):
        if self.lifetime <= 0:
            return
        sx = int((self.x - camera_x) * zoom_level)
        sy = int((self.y - camera_y) * zoom_level)
        sz = max(1, int(self.size * zoom_level))
        
        if 0 <= sx < SCREEN_WIDTH and 0 <= sy < SCREEN_HEIGHT:
            pygame.draw.circle(surface, self.color, (sx, sy), sz)

class Bullet:
    def __init__(self, x, y, target_x, target_y):
        self.x = x
        self.y = y
        self.speed = 15
        
        dx = target_x - x
        dy = target_y - y
        distance = math.sqrt(dx*dx + dy*dy)
        if distance == 0:
            distance = 1
        
        self.vx = (dx / distance) * self.speed
        self.vy = (dy / distance) * self.speed
        self.alive = True

    def update(self, collision_mask, particles):
        self.x += self.vx
        self.y += self.vy
        
        bx, by = int(self.x), int(self.y)
        
        if not (0 <= bx < map_width_pixels and 0 <= by < map_height_pixels):
            self.alive = False
            return
            
        if collision_mask.get_at((bx, by)):
            self.alive = False
            for _ in range(8):
                pvx = -self.vx * 0.25 + random.uniform(-2.5, 2.5)
                pvy = -self.vy * 0.25 + random.uniform(-2.5, 2.5)
                particles.append(Particle(
                    self.x, self.y, pvx, pvy, 
                    (255, 220, 80), random.randint(15, 30), size=random.randint(2, 4)
                ))

    def draw(self, surface, camera_x, camera_y, zoom_level):
        sx = int((self.x - camera_x) * zoom_level)
        sy = int((self.y - camera_y) * zoom_level)
        sz = max(2, int(4 * zoom_level))
        
        if 0 <= sx < SCREEN_WIDTH and 0 <= sy < SCREEN_HEIGHT:
            pygame.draw.circle(surface, (255, 255, 100), (sx, sy), sz)
            tail_x = int((self.x - self.vx * 0.8 - camera_x) * zoom_level)
            tail_y = int((self.y - self.vy * 0.8 - camera_y) * zoom_level)
            pygame.draw.line(surface, (255, 160, 50), (sx, sy), (tail_x, tail_y), max(1, sz // 2))

class Player:
    def __init__(self, x, y):
        self.width = 24
        self.height = 42
        self.rect = pygame.Rect(x, y, self.width, self.height)
        
        self.vx = 0
        self.vy = 0
        self.accel = 0.5
        self.friction = 0.85
        self.max_speed = 5.5
        self.jump_thrust = -0.65
        self.gravity = 0.26
        self.terminal_velocity = 11
        
        self.fuel = 100.0
        self.max_fuel = 100.0
        self.is_thrusting = False
        self.on_ground = False
        self.color = (0, 200, 255)

        self.mask_surf = pygame.Surface((self.width, self.height), pygame.SRCALPHA)
        pygame.draw.rect(self.mask_surf, (255, 255, 255), (0, 0, self.width, self.height), border_radius=6)
        self.mask = pygame.mask.from_surface(self.mask_surf)

    def check_collision_at(self, x, y, giant_mask):
        offset = (int(x), int(y))
        return giant_mask.overlap(self.mask, offset) is not None

    def update(self, keys, giant_mask, particles):
        move_x = 0
        if keys[pygame.K_a] or keys[pygame.K_LEFT]:
            move_x -= self.accel
        if keys[pygame.K_d] or keys[pygame.K_RIGHT]:
            move_x += self.accel
            
        self.vx += move_x
        self.vx *= self.friction
        
        if self.vx > self.max_speed:
            self.vx = self.max_speed
        elif self.vx < -self.max_speed:
            self.vx = -self.max_speed

        self.is_thrusting = False
        if (keys[pygame.K_w] or keys[pygame.K_SPACE] or keys[pygame.K_UP]) and self.fuel > 0:
            self.vy += self.jump_thrust
            self.fuel = max(0.0, self.fuel - 0.7)
            self.is_thrusting = True
            
            for _ in range(2):
                p_vx = self.vx * 0.5 + random.uniform(-1, 1)
                p_vy = random.uniform(1.5, 4)
                p_color = random.choice([(255, 130, 0), (255, 210, 0), (200, 60, 0)])
                particles.append(Particle(
                    self.rect.centerx, self.rect.bottom - 4, p_vx, p_vy,
                    p_color, random.randint(10, 20), size=random.randint(3, 5)
                ))
        
        self.vy = min(self.terminal_velocity, self.vy + self.gravity)

        old_x = self.rect.x
        self.rect.x += int(self.vx)
        
        if self.check_collision_at(self.rect.x, self.rect.y, giant_mask):
            stepped_up = False
            for dy in range(1, 9):
                if not self.check_collision_at(self.rect.x, self.rect.y - dy, giant_mask):
                    self.rect.y -= dy
                    stepped_up = True
                    break
            
            if not stepped_up:
                step = 1 if self.vx < 0 else -1
                while self.check_collision_at(self.rect.x, self.rect.y, giant_mask) and self.rect.x != old_x:
                    self.rect.x += step
                self.vx = 0

        old_y = self.rect.y
        self.rect.y += int(self.vy)
        
        self.on_ground = False
        if self.check_collision_at(self.rect.x, self.rect.y, giant_mask):
            step = 1 if self.vy < 0 else -1
            while self.check_collision_at(self.rect.x, self.rect.y, giant_mask) and self.rect.y != old_y:
                self.rect.y += step
                
            if self.vy > 0:
                self.on_ground = True
            self.vy = 0

        if self.on_ground:
            self.fuel = min(self.max_fuel, self.fuel + 1.25)
        else:
            if not self.is_thrusting:
                self.fuel = min(self.max_fuel, self.fuel + 0.15)

    def draw(self, surface, camera_x, camera_y, zoom_level):
        sx = int((self.rect.x - camera_x) * zoom_level)
        sy = int((self.rect.y - camera_y) * zoom_level)
        sw = int(self.rect.width * zoom_level)
        sh = int(self.rect.height * zoom_level)
        
        pygame.draw.rect(surface, (10, 10, 15), (sx + 2, sy + 2, sw, sh), border_radius=int(6*zoom_level))
        pygame.draw.rect(surface, self.color, (sx, sy, sw, sh), border_radius=int(6*zoom_level))
        pygame.draw.rect(surface, (255, 255, 255), (sx, sy, sw, sh), max(1, int(2*zoom_level)), border_radius=int(6*zoom_level))
        
        pack_w = int(5 * zoom_level)
        pack_h = int(22 * zoom_level)
        if self.vx >= 0:
            pygame.draw.rect(surface, (120, 120, 130), (sx - pack_w, sy + int(10*zoom_level), pack_w, pack_h))
        else:
            pygame.draw.rect(surface, (120, 120, 130), (sx + sw, sy + int(10*zoom_level), pack_w, pack_h))

        eye_w = max(2, int(4 * zoom_level))
        eye_h = max(2, int(4 * zoom_level))
        eye_y = sy + int(9 * zoom_level)
        if self.vx >= 0:
            pygame.draw.rect(surface, (255, 255, 255), (sx + sw - int(10*zoom_level), eye_y, eye_w, eye_h))
            pygame.draw.rect(surface, (255, 255, 255), (sx + sw - int(5*zoom_level), eye_y, eye_w, eye_h))
        else:
            pygame.draw.rect(surface, (255, 255, 255), (sx + int(4*zoom_level), eye_y, eye_w, eye_h))
            pygame.draw.rect(surface, (255, 255, 255), (sx + int(9*zoom_level), eye_y, eye_w, eye_h))

        if zoom_level >= 0.35:
            bar_w = int(36 * zoom_level)
            bar_h = int(4 * zoom_level)
            bar_x = sx + (sw - bar_w) // 2
            bar_y = sy - int(10 * zoom_level)
            pygame.draw.rect(surface, (50, 50, 50), (bar_x, bar_y, bar_w, bar_h))
            fuel_w = int(bar_w * (self.fuel / self.max_fuel))
            pygame.draw.rect(surface, (255, 180, 0), (bar_x, bar_y, fuel_w, bar_h))

# Setup entities
player = Player(spawn_x, spawn_y)
bullets = []
particles = []

# Camera state
camera_x = spawn_x - SCREEN_WIDTH // 2
camera_y = spawn_y - SCREEN_HEIGHT // 2
zoom_level = 0.7

# Visibility settings
show_tilebg = True
show_tile = True
show_objects = True
show_polygons = True

print("Initialization finished!")

# Main Game Loop
running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
            
        elif event.type == pygame.VIDEORESIZE:
            SCREEN_WIDTH, SCREEN_HEIGHT = event.size
            screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT), pygame.RESIZABLE)
            
        elif event.type == pygame.MOUSEBUTTONDOWN:
            if event.button == 1:
                mx, my = event.pos
                world_mx = mx / zoom_level + camera_x
                world_my = my / zoom_level + camera_y
                bullets.append(Bullet(player.rect.centerx, player.rect.centery, world_mx, world_my))
                
                for _ in range(5):
                    particles.append(Particle(
                        player.rect.centerx, player.rect.centery, 
                        random.uniform(-3, 3) + player.vx, random.uniform(-3, 3) + player.vy, 
                        (255, 255, 200), random.randint(5, 12), size=random.randint(2, 4)
                    ))
            elif event.button == 4:
                zoom_level = min(2.0, zoom_level * 1.1)
            elif event.button == 5:
                zoom_level = max(0.2, zoom_level / 1.1)
                
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_1:
                show_tilebg = not show_tilebg
            elif event.key == pygame.K_2:
                show_tile = not show_tile
            elif event.key == pygame.K_3:
                show_objects = not show_objects
            elif event.key == pygame.K_4:
                show_polygons = not show_polygons
            elif event.key == pygame.K_r:
                player.rect.x = spawn_x
                player.rect.y = spawn_y
                player.vx = 0
                player.vy = 0
                player.fuel = player.max_fuel
            elif event.key == pygame.K_ESCAPE:
                running = False

    keys = pygame.key.get_pressed()
    player.update(keys, giant_collision_mask, particles)

    if player.rect.y > map_height_pixels + 500:
        player.rect.x = spawn_x
        player.rect.y = spawn_y
        player.vx = 0
        player.vy = 0
        player.fuel = player.max_fuel

    for bullet in bullets[:]:
        bullet.update(giant_collision_mask, particles)
        if not bullet.alive:
            bullets.remove(bullet)

    for particle in particles[:]:
        particle.update()
        if particle.lifetime <= 0:
            particles.remove(particle)

    target_cam_x = player.rect.centerx - (SCREEN_WIDTH // 2) / zoom_level
    target_cam_y = player.rect.centery - (SCREEN_HEIGHT // 2) / zoom_level
    camera_x += (target_cam_x - camera_x) * 0.1
    camera_y += (target_cam_y - camera_y) * 0.1

    camera_x = max(0, min(camera_x, map_width_pixels - SCREEN_WIDTH / zoom_level))
    camera_y = max(0, min(camera_y, map_height_pixels - SCREEN_HEIGHT / zoom_level))

    screen.fill((25, 25, 30))

    min_tile_x = max(0, int(camera_x // tmx_data.tilewidth))
    max_tile_x = min(tmx_data.width, int((camera_x + SCREEN_WIDTH / zoom_level) // tmx_data.tilewidth) + 1)
    min_tile_y = max(0, int(camera_y // tmx_data.tileheight))
    max_tile_y = min(tmx_data.height, int((camera_y + SCREEN_HEIGHT / zoom_level) // tmx_data.tileheight) + 1)

    for layer in tmx_data.visible_layers:
        if isinstance(layer, pytmx.TiledTileLayer):
            if layer.name == "tilebg" and not show_tilebg:
                continue
            if layer.name == "tile" and not show_tile:
                continue
            
            for x, y, image in layer.tiles():
                if min_tile_x <= x <= max_tile_x and min_tile_y <= y <= max_tile_y:
                    if image:
                        tw = int(tmx_data.tilewidth * zoom_level)
                        th = int(tmx_data.tileheight * zoom_level)
                        if tw > 0 and th > 0:
                            scaled_img = pygame.transform.scale(image, (tw, th))
                            sx, sy = int((x * tmx_data.tilewidth - camera_x) * zoom_level), int((y * tmx_data.tileheight - camera_y) * zoom_level)
                            screen.blit(scaled_img, (sx, sy))

    if show_polygons and show_tile:
        for poly in tile_polygons:
            screen_poly = [
                (int((wx - camera_x) * zoom_level), int((wy - camera_y) * zoom_level))
                for (wx, wy) in poly
            ]
            
            if len(screen_poly) >= 3:
                xs = [p[0] for p in screen_poly]
                ys = [p[1] for p in screen_poly]
                min_x, max_x = min(xs), max(xs)
                min_y, max_y = min(ys), max(ys)
                
                if max_x >= 0 and min_x < SCREEN_WIDTH and max_y >= 0 and min_y < SCREEN_HEIGHT:
                    w = max_x - min_x
                    h = max_y - min_y
                    if w > 0 and h > 0:
                        poly_surf = pygame.Surface((w, h), pygame.SRCALPHA)
                        local_poly = [(sx - min_x, sy - min_y) for (sx, sy) in screen_poly]
                        pygame.draw.polygon(poly_surf, (0, 100, 255, 105), local_poly)
                        screen.blit(poly_surf, (min_x, min_y))
                        pygame.draw.polygon(screen, (0, 170, 255), screen_poly, 1)

    if show_objects:
        for obj in tmx_data.objects:
            ox, oy = obj.x, obj.y
            sx = int((ox - camera_x) * zoom_level)
            sy = int((oy - camera_y) * zoom_level)
            radius = max(2, int(8 * zoom_level))
            
            if -50 <= sx < SCREEN_WIDTH + 50 and -50 <= sy < SCREEN_HEIGHT + 50:
                name = obj.name or "unnamed"
                if name.startswith("sp_p_"):
                    pygame.draw.circle(screen, (0, 255, 0), (sx, sy), radius, 1)
                    if zoom_level >= 0.5:
                        lbl = font.render(name, True, (0, 255, 0))
                        screen.blit(lbl, (sx + radius + 2, sy - lbl.get_height() // 2))
                elif name.startswith("wp_p_"):
                    pygame.draw.polygon(screen, (255, 120, 0), [
                        (sx, sy - radius), (sx - radius, sy + radius), (sx + radius, sy + radius)
                    ], 1)
                    if zoom_level >= 0.5:
                        weapon_name = obj.properties.get("weapon", "weapon")
                        lbl = font.render(weapon_name.split(",")[0], True, (255, 120, 0))
                        screen.blit(lbl, (sx + radius + 2, sy - lbl.get_height() // 2))

    for bullet in bullets:
        bullet.draw(screen, camera_x, camera_y, zoom_level)

    for particle in particles:
        particle.draw(screen, camera_x, camera_y, zoom_level)

    player.draw(screen, camera_x, camera_y, zoom_level)

    # HUD
    hud_bg = pygame.Surface((380, 150))
    hud_bg.fill((15, 15, 20))
    hud_bg.set_alpha(200)
    screen.blit(hud_bg, (15, 15))
    pygame.draw.rect(screen, (80, 80, 100), (15, 15, 380, 150), 2)
    
    hud_items = [
        ("Mini Militia Fine Collider Sim", (0, 255, 255), True),
        (f"Coordinates: X={int(player.rect.x)}, Y={int(player.rect.y)}", (255, 255, 255), False),
        (f"Jetpack Fuel:", (255, 255, 255), False),
        ("[A][D] Move | [W]/[SPACE] Fly | [R] Respawn", (255, 255, 100), False),
        ("[1] bg | [2] fg | [3] spawns | [4] polygon colliders", (220, 220, 220), False)
    ]
    
    curr_y = 25
    for text, color, bold in hud_items:
        if bold:
            rendered = hud_font.render(text, True, color)
        else:
            rendered = font.render(text, True, color)
        
        if "Jetpack Fuel:" in text:
            screen.blit(rendered, (25, curr_y))
            bar_x = 135
            bar_w = 200
            bar_h = 14
            pygame.draw.rect(screen, (50, 50, 50), (bar_x, curr_y, bar_w, bar_h))
            fuel_ratio = player.fuel / player.max_fuel
            fuel_color = (0, 255, 0) if fuel_ratio > 0.5 else ((255, 165, 0) if fuel_ratio > 0.25 else (255, 0, 0))
            pygame.draw.rect(screen, fuel_color, (bar_x, curr_y, int(bar_w * fuel_ratio), bar_h))
            pygame.draw.rect(screen, (255, 255, 255), (bar_x, curr_y, bar_w, bar_h), 1)
        else:
            screen.blit(rendered, (25, curr_y))
            
        curr_y += rendered.get_height() + 6

    pygame.display.flip()
    clock.tick(60)

pygame.quit()

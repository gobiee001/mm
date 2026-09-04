import sys
import pygame
import pytmx
from pytmx.util_pygame import load_pygame

# Initialize Pygame
pygame.init()
pygame.font.init()

# Set up display
SCREEN_WIDTH = 1280
SCREEN_HEIGHT = 720
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT), pygame.RESIZABLE)
pygame.display.set_caption("Mini Militia Map Viewer - 1outpost_new.tmx")
clock = pygame.time.Clock()

# Set up font
try:
    font = pygame.font.SysFont("Consolas", 14)
    large_font = pygame.font.SysFont("Consolas", 18, bold=True)
except:
    font = pygame.font.Font(None, 18)
    large_font = pygame.font.Font(None, 24)

import os
from config import (
    DEFAULT_MAP,
    COLLIDER_INSET_PIXELS,
    COLLISION_ALPHA_THRESHOLD,
    SHOW_COLLIDERS,
    COLLIDER_FILL_COLOR,
    COLLIDER_LINE_COLOR,
    COLLIDER_LINE_WIDTH,
    get_map_borders,
)

# Get the directory of the script to resolve files relative to it
script_dir = os.path.dirname(os.path.abspath(__file__))
map_dir = os.path.abspath(os.path.join(script_dir, ".."))

target_map = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_MAP
if not target_map.endswith(".tmx"):
    target_map += ".tmx"

if os.path.isabs(target_map):
    tmx_file = target_map
else:
    tmx_file = os.path.join(map_dir, target_map)

pygame.display.set_caption(f"Mini Militia Map Viewer - {os.path.basename(tmx_file)}")

import traceback
try:
    tmx_data = load_pygame(tmx_file)
except Exception as e:
    print(f"Error loading TMX map '{tmx_file}': {e}")
    traceback.print_exc()
    sys.exit(1)

# Camera state
camera_x = 0
camera_y = 0
zoom_level = 0.5  # Start at 0.5 zoom since the map is large (3328x1152)
drag_start = None

# Layer visibility
show_tilebg = True
show_tile = True
show_objects = True
show_grid = False
show_colliders = SHOW_COLLIDERS

INSET_PIXELS = COLLIDER_INSET_PIXELS

# Map dimensions in pixels
map_width_pixels = tmx_data.width * tmx_data.tilewidth
map_height_pixels = tmx_data.height * tmx_data.tileheight

_map_borders = get_map_borders(target_map)
border_min_x = _map_borders.get("left", 0)
border_max_x = _map_borders.get("right", map_width_pixels)
if "bottom" in _map_borders and "top" in _map_borders:
    border_min_y = map_height_pixels - _map_borders["top"]
    border_max_y = map_height_pixels - _map_borders["bottom"]
else:
    border_min_y = 0
    border_max_y = map_height_pixels

import numpy as np


def erode_binary_mask(bool_arr: np.ndarray, pixels: int = 2) -> np.ndarray:
    """Erodes a 2D boolean mask by N pixels on all 4 borders."""
    res = bool_arr.copy()
    for _ in range(pixels):
        e = res.copy()
        e[1:, :] &= res[:-1, :]
        e[:-1, :] &= res[1:, :]
        e[:, 1:] &= res[:, :-1]
        e[:, :-1] &= res[:, 1:]
        res = e
    return res


def create_eroded_tile_mask(image: pygame.Surface, inset_pixels: int = 2, alpha_thresh: int = 50):
    raw_mask = pygame.mask.from_surface(image, alpha_thresh)
    if inset_pixels <= 0 or raw_mask.count() == 0:
        return raw_mask
    rgba_surf = raw_mask.to_surface(setcolor=(255, 255, 255, 255), unsetcolor=(0, 0, 0, 0))
    alpha = pygame.surfarray.pixels_alpha(rgba_surf) > 127
    eroded = erode_binary_mask(alpha, pixels=inset_pixels)
    temp_surf = pygame.Surface(image.get_size(), pygame.SRCALPHA)
    a = pygame.surfarray.pixels_alpha(temp_surf)
    a[:] = eroded.astype(np.uint8) * 255
    del a
    return pygame.mask.from_surface(temp_surf, 127)


# Pre-calculate fine polygon outlines 2px inside boundary
print(f"Extracting collider outlines ({INSET_PIXELS}px inside boundary)...")
tile_polygons = []
for layer in tmx_data.visible_layers:
    if isinstance(layer, pytmx.TiledTileLayer) and layer.name == "tile":
        for x, y, image in layer.tiles():
            if image:
                tile_mask = create_eroded_tile_mask(
                    image, inset_pixels=INSET_PIXELS, alpha_thresh=COLLISION_ALPHA_THRESHOLD
                )
                outline = tile_mask.outline(every=3)
                if outline:
                    world_outline = [
                        (x * tmx_data.tilewidth + px, y * tmx_data.tileheight + py)
                        for (px, py) in outline
                    ]
                    tile_polygons.append(world_outline)

print(f"Extracted {len(tile_polygons)} collider outlines.")

print(f"Loaded map: {tmx_file}")
print(f"Map size: {tmx_data.width}x{tmx_data.height} tiles ({map_width_pixels}x{map_height_pixels} pixels)")
print(f"Tile size: {tmx_data.tilewidth}x{tmx_data.tileheight}")

def world_to_screen(wx, wy):
    sx = int((wx - camera_x) * zoom_level)
    sy = int((wy - camera_y) * zoom_level)
    return sx, sy

def screen_to_world(sx, sy):
    wx = sx / zoom_level + camera_x
    wy = sy / zoom_level + camera_y
    return wx, wy

# Main loop
running = True
pan_speed = 10

while running:
        # Handle events
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        
        elif event.type == pygame.VIDEORESIZE:
            SCREEN_WIDTH, SCREEN_HEIGHT = event.size
            screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT), pygame.RESIZABLE)
            
        elif event.type == pygame.MOUSEBUTTONDOWN:
            if event.button == 1:  # Left click starts drag
                drag_start = event.pos
            elif event.button == 4:  # Scroll up -> Zoom in
                # Zoom around mouse cursor
                mx, my = event.pos
                wx, wy = screen_to_world(mx, my)
                zoom_level = min(3.0, zoom_level * 1.1)
                camera_x = wx - mx / zoom_level
                camera_y = wy - my / zoom_level
            elif event.button == 5:  # Scroll down -> Zoom out
                # Zoom around mouse cursor
                mx, my = event.pos
                wx, wy = screen_to_world(mx, my)
                zoom_level = max(0.1, zoom_level / 1.1)
                camera_x = wx - mx / zoom_level
                camera_y = wy - my / zoom_level
                
        elif event.type == pygame.MOUSEBUTTONUP:
            if event.button == 1:
                drag_start = None
                
        elif event.type == pygame.MOUSEMOTION:
            if drag_start is not None:
                # Drag camera
                mx, my = event.pos
                dx = (drag_start[0] - mx) / zoom_level
                dy = (drag_start[1] - my) / zoom_level
                camera_x += dx
                camera_y += dy
                drag_start = event.pos
                
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_1:
                show_tilebg = not show_tilebg
            elif event.key == pygame.K_2:
                show_tile = not show_tile
            elif event.key == pygame.K_3:
                show_objects = not show_objects
            elif event.key == pygame.K_4 or event.key == pygame.K_c:
                show_colliders = not show_colliders
            elif event.key == pygame.K_g:
                show_grid = not show_grid
            elif event.key == pygame.K_SPACE:
                # Reset view
                zoom_level = 0.5
                camera_x = (map_width_pixels - SCREEN_WIDTH / zoom_level) / 2
                camera_y = (map_height_pixels - SCREEN_HEIGHT / zoom_level) / 2
            elif event.key == pygame.K_ESCAPE:
                running = False

    # Keyboard panning
    keys = pygame.key.get_pressed()
    if keys[pygame.K_LEFT] or keys[pygame.K_a]:
        camera_x -= pan_speed / zoom_level
    if keys[pygame.K_RIGHT] or keys[pygame.K_d]:
        camera_x += pan_speed / zoom_level
    if keys[pygame.K_UP] or keys[pygame.K_w]:
        camera_y -= pan_speed / zoom_level
    if keys[pygame.K_DOWN] or keys[pygame.K_s]:
        camera_y += pan_speed / zoom_level
    if keys[pygame.K_EQUALS] or keys[pygame.K_KP_PLUS]:
        # Zoom in
        zoom_level = min(3.0, zoom_level * 1.05)
    if keys[pygame.K_MINUS] or keys[pygame.K_KP_MINUS]:
        # Zoom out
        zoom_level = max(0.1, zoom_level / 1.05)

    # Clear screen
    screen.fill((30, 30, 40))

    # Determine what area of the map is visible on screen
    # to avoid rendering things off-screen (culling)
    min_tile_x = max(0, int(camera_x // tmx_data.tilewidth))
    max_tile_x = min(tmx_data.width, int((camera_x + SCREEN_WIDTH / zoom_level) // tmx_data.tilewidth) + 1)
    min_tile_y = max(0, int(camera_y // tmx_data.tileheight))
    max_tile_y = min(tmx_data.height, int((camera_y + SCREEN_HEIGHT / zoom_level) // tmx_data.tileheight) + 1)

    # 1. Render Tile Layers
    for layer in tmx_data.visible_layers:
        if isinstance(layer, pytmx.TiledTileLayer):
            if layer.name == "tilebg" and not show_tilebg:
                continue
            if layer.name == "tile" and not show_tile:
                continue
            
            # Iterate through all tiles in the layer
            for x, y, image in layer.tiles():
                # Perform viewport culling
                if min_tile_x <= x <= max_tile_x and min_tile_y <= y <= max_tile_y:
                    if image:
                        # Scale the tile image
                        tw = int(tmx_data.tilewidth * zoom_level)
                        th = int(tmx_data.tileheight * zoom_level)
                        if tw > 0 and th > 0:
                            scaled_img = pygame.transform.scale(image, (tw, th))
                            sx, sy = world_to_screen(x * tmx_data.tilewidth, y * tmx_data.tileheight)
                            screen.blit(scaled_img, (sx, sy))

    # 1b. Render 2px Inset Collider Polygons
    if show_colliders and show_tile:
        for poly in tile_polygons:
            screen_poly = [world_to_screen(wx, wy) for (wx, wy) in poly]
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
                        pygame.draw.polygon(poly_surf, (0, 100, 255, 110), local_poly)
                        screen.blit(poly_surf, (min_x, min_y))
                        pygame.draw.polygon(screen, (0, 220, 255), screen_poly, 1)

    # Draw configured map borders
    bsx, bsy = world_to_screen(border_min_x, border_min_y)
    bex, bey = world_to_screen(border_max_x, border_max_y)
    pygame.draw.rect(screen, (255, 60, 60), (bsx, bsy, bex - bsx, bey - bsy), max(2, int(2 * zoom_level)))

    # 2. Render Grid
    if show_grid:
        grid_color = (100, 100, 100, 100)
        # Vertical grid lines
        for x in range(min_tile_x, max_tile_x + 1):
            sx, _ = world_to_screen(x * tmx_data.tilewidth, 0)
            pygame.draw.line(screen, grid_color, (sx, 0), (sx, SCREEN_HEIGHT), 1)
        # Horizontal grid lines
        for y in range(min_tile_y, max_tile_y + 1):
            _, sy = world_to_screen(0, y * tmx_data.tileheight)
            pygame.draw.line(screen, grid_color, (0, sy), (SCREEN_WIDTH, sy), 1)

    # 3. Render Objects
    if show_objects:
        for obj in tmx_data.objects:
            # Skip objects outside viewport
            ox, oy = obj.x, obj.y
            # PyTMX objects might have width/height or be points
            ow = getattr(obj, "width", 16)
            oh = getattr(obj, "height", 16)
            
            # Check visibility
            sx, sy = world_to_screen(ox, oy)
            
            # Draw spawn points, weapons, sprites, etc.
            name = obj.name or "unnamed"
            
            # Custom styling based on object type
            color = (255, 255, 255) # default white
            shape = "rect"
            details = ""
            
            # Read properties
            props = obj.properties
            
            # Identify object types by name prefix or properties
            if name.startswith("sp_p_"):
                # Spawn point
                color = (0, 255, 0) # Green
                shape = "circle"
            elif name.startswith("ctf_sp_"):
                # CTF spawn point
                color = (0, 200, 255) # Cyan
                shape = "circle"
            elif name.startswith("wp_p_") or name.startswith("ctf_wp_"):
                # Weapon spawn point
                color = (255, 100, 0) # Orange
                shape = "triangle"
                if "weapon" in props:
                    details = props["weapon"]
            elif name.startswith("fp_b_") or name.startswith("fp_"):
                # Flag point or flag base
                if "Blue" in props.get("sprite", "") or "1" in name:
                    color = (0, 100, 255) # Blue flag
                else:
                    color = (255, 50, 50) # Red/Orange flag
                shape = "flag"
                if "sprite" in props:
                    details = props["sprite"]
            elif "sprite" in props:
                # Environment sprites (e.g. bush, tree)
                color = (200, 200, 100)
                shape = "sprite"
                details = props["sprite"]

            # Draw shapes
            radius = int(8 * zoom_level)
            if radius < 2:
                radius = 2
                
            if shape == "circle":
                pygame.draw.circle(screen, color, (sx, sy), radius)
                pygame.draw.circle(screen, (255, 255, 255), (sx, sy), radius, 1)
            elif shape == "triangle":
                pts = [
                    (sx, sy - radius),
                    (sx - radius, sy + radius),
                    (sx + radius, sy + radius)
                ]
                pygame.draw.polygon(screen, color, pts)
                pygame.draw.polygon(screen, (255, 255, 255), pts, 1)
            elif shape == "flag":
                # Draw a simple flag flagpole and flag
                flag_w = int(12 * zoom_level)
                flag_h = int(16 * zoom_level)
                pygame.draw.line(screen, (200, 200, 200), (sx, sy), (sx, sy - flag_h), 2)
                pygame.draw.polygon(screen, color, [
                    (sx, sy - flag_h),
                    (sx + flag_w, sy - flag_h + flag_h // 3),
                    (sx, sy - flag_h + 2 * flag_h // 3)
                ])
            else:
                # Default box
                box_w = max(4, int(ow * zoom_level))
                box_h = max(4, int(oh * zoom_level))
                pygame.draw.rect(screen, color, (sx, sy, box_w, box_h), 1)

            # Draw object label if zoom is sufficient
            if zoom_level >= 0.25:
                label_text = name
                if details:
                    # Shorten details if too long
                    short_details = details if len(details) < 20 else details[:17] + "..."
                    label_text += f" ({short_details})"
                    
                txt_surf = font.render(label_text, True, (255, 255, 255))
                # Draw a small semi-transparent background for readability
                bg_rect = txt_surf.get_rect(topleft=(sx + radius + 2, sy - txt_surf.get_height() // 2))
                bg_sub = pygame.Surface((bg_rect.width, bg_rect.height))
                bg_sub.fill((10, 10, 15))
                bg_sub.set_alpha(180)
                screen.blit(bg_sub, bg_rect)
                screen.blit(txt_surf, bg_rect)

    # 4. HUD / Info overlay (always drawn relative to screen, not camera)
    hud_bg = pygame.Surface((360, 245))
    hud_bg.fill((20, 20, 25))
    hud_bg.set_alpha(220)
    screen.blit(hud_bg, (10, 10))
    pygame.draw.rect(screen, (100, 100, 120), (10, 10, 360, 245), 1)

    # Display status text
    texts = [
        ("Mini Militia Map Viewer", (0, 255, 255), True),
        (f"File: {tmx_file}", (255, 255, 255), False),
        (f"Zoom: {zoom_level:.2f}x (Mouse Wheel / +/-)", (255, 255, 255), False),
        (f"Camera: X={int(camera_x)}, Y={int(camera_y)}", (255, 255, 255), False),
        ("", (255, 255, 255), False),
        ("[1] Toggle Background (tilebg): " + ("ON" if show_tilebg else "OFF"), (100, 255, 100) if show_tilebg else (255, 100, 100), False),
        ("[2] Toggle Foreground (tile):   " + ("ON" if show_tile else "OFF"), (100, 255, 100) if show_tile else (255, 100, 100), False),
        ("[3] Toggle Objects (objects):   " + ("ON" if show_objects else "OFF"), (100, 255, 100) if show_objects else (255, 100, 100), False),
        ("[4]/[C] Colliders (6px inset):  " + ("ON" if show_colliders else "OFF"), (100, 255, 100) if show_colliders else (255, 100, 100), False),
        ("[G] Toggle Grid lines:          " + ("ON" if show_grid else "OFF"), (100, 255, 100) if show_grid else (255, 100, 100), False),
        ("[SPACE] Reset View  |  [ESC] Exit", (255, 255, 100), False)
    ]

    curr_y = 15
    for text, color, bold in texts:
        if text == "":
            curr_y += 8
            continue
        if bold:
            rendered = large_font.render(text, True, color)
        else:
            rendered = font.render(text, True, color)
        screen.blit(rendered, (20, curr_y))
        curr_y += rendered.get_height() + 2

    # Draw coordinate cursor information if mouse inside window
    mx, my = pygame.mouse.get_pos()
    wx, wy = screen_to_world(mx, my)
    if 0 <= wx <= map_width_pixels and 0 <= wy <= map_height_pixels:
        tile_x = int(wx // tmx_data.tilewidth)
        tile_y = int(wy // tmx_data.tileheight)
        coord_txt = f"World: X={int(wx)}, Y={int(wy)} | Tile: X={tile_x}, Y={tile_y}"
        rendered_coord = font.render(coord_txt, True, (220, 220, 220))
        # Draw transparent banner at the bottom
        banner = pygame.Surface((SCREEN_WIDTH, 25))
        banner.fill((15, 15, 20))
        banner.set_alpha(200)
        screen.blit(banner, (0, SCREEN_HEIGHT - 25))
        screen.blit(rendered_coord, (10, SCREEN_HEIGHT - 22))

    # Update display
    pygame.display.flip()
    clock.tick(60)

pygame.quit()

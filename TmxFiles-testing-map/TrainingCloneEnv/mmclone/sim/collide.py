"""Axis-separated swept AABB collision resolution against flat byte occupancy."""

from typing import Tuple
from .body import Body
from .frame import WorldFrame
from ..mapdata.geometry import MapGeometry


def world_box_to_grid(
    min_x: float,
    min_y: float,
    max_x: float,
    max_y: float,
    frame: WorldFrame,
) -> Tuple[int, int, int, int]:
    scale = frame.scale
    inv_scale = 1.0 / scale

    min_gx = int(min_x * inv_scale)
    max_gx = int(max_x * inv_scale)
    min_gy = int(frame.grid_h - (max_y * inv_scale))
    max_gy = int(frame.grid_h - (min_y * inv_scale))

    return min_gx, min_gy, max_gx, max_gy


def resolve_body_collision(
    body: Body,
    geom: MapGeometry,
    frame: WorldFrame,
    dt: float,
) -> None:
    """Moves body by (vx*dt, vy*dt) with swept leading-edge collision against byte occupancy."""
    hw = body.half_w
    hh = body.half_h

    # 1. Horizontal movement
    if body.vx != 0.0:
        new_x = body.x + body.vx * dt
        clamped_x = max(frame.min_x + hw, min(frame.max_x - hw, new_x))
        if clamped_x != new_x:
            body.vx = 0.0
            new_x = clamped_x

        # Inset vertical check range by 5px from bottom and top to avoid catching on ground/ceiling tiles
        if body.vx > 0.0:
            gx0, gy0, gx1, gy1 = world_box_to_grid(
                body.x + hw, body.y - hh + 5.0, new_x + hw, body.y + hh - 4.0, frame
            )
        else:
            gx0, gy0, gx1, gy1 = world_box_to_grid(
                new_x - hw, body.y - hh + 5.0, body.x - hw, body.y + hh - 4.0, frame
            )

        if geom.is_box_solid(gx0, gy0, gx1, gy1):
            # Step assistance: if grounded, allow climbing small bumps and slopes up to 8px (mirrors Chipmunk circle foot)
            stepped = False
            if body.grounded:
                for step_dy in (3.0, 6.0, 9.0):
                    test_y = body.y + step_dy
                    if body.vx > 0.0:
                        tgx0, tgy0, tgx1, tgy1 = world_box_to_grid(
                            body.x + hw, test_y - hh + 5.0, new_x + hw, test_y + hh - 4.0, frame
                        )
                    else:
                        tgx0, tgy0, tgx1, tgy1 = world_box_to_grid(
                            new_x - hw, test_y - hh + 5.0, body.x - hw, test_y + hh - 4.0, frame
                        )
                    if not geom.is_box_solid(tgx0, tgy0, tgx1, tgy1):
                        body.x = new_x
                        body.y = test_y
                        stepped = True
                        break
            if not stepped:
                body.vx = 0.0
        else:
            body.x = new_x

    # 2. Vertical movement
    if body.vy != 0.0:
        new_y = body.y + body.vy * dt
        clamped_y = max(frame.min_y + hh, min(frame.max_y - hh, new_y))
        if clamped_y != new_y:
            if new_y <= frame.min_y + hh:
                body.grounded = True
            body.vy = 0.0
            new_y = clamped_y

        if body.vy < 0.0:
            # Falling: check bottom edge strip
            gx0, gy0, gx1, gy1 = world_box_to_grid(
                body.x - hw + 2.0, new_y - hh, body.x + hw - 2.0, body.y - hh, frame
            )
            if geom.is_box_solid(gx0, gy0, gx1, gy1):
                body.grounded = True
                body.vy = 0.0
            else:
                body.y = new_y
                body.grounded = False
        else:
            # Rising: check top edge strip
            gx0, gy0, gx1, gy1 = world_box_to_grid(
                body.x - hw + 2.0, body.y + hh, body.x + hw - 2.0, new_y + hh, frame
            )
            if geom.is_box_solid(gx0, gy0, gx1, gy1):
                body.vy = 0.0
            else:
                body.y = new_y
                body.grounded = False
    else:
        # Stationary in Y: verify if still grounded
        if body.grounded:
            test_gx0, test_gy0, test_gx1, test_gy1 = world_box_to_grid(
                body.x - hw + 2.0, body.y - hh - 2.0, body.x + hw - 2.0, body.y - hh, frame
            )
            body.grounded = geom.is_box_solid(test_gx0, test_gy0, test_gx1, test_gy1)

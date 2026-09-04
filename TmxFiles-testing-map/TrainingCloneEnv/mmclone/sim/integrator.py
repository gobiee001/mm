"""Scalar semi-implicit Euler integrator mirroring Chipmunk 5.x."""

from .body import Body


def update_velocity(
    body: Body,
    gx: float,
    gy: float,
    dt: float,
    damping: float = 1.0,
) -> None:
    """Updates body velocity using Chipmunk 5 cpBodyUpdateVelocity formula:
    v = v * damping + (gravity + f * inv_mass) * dt
    """
    body.vx = body.vx * damping + (gx + body.fx * body.inv_mass) * dt
    body.vy = body.vy * damping + (gy + body.fy * body.inv_mass) * dt


def update_position(body: Body, dt: float) -> None:
    """Updates body position using cpBodyUpdatePosition:
    p = p + v * dt
    """
    body.x += body.vx * dt
    body.y += body.vy * dt

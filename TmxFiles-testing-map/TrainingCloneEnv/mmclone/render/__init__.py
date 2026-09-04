# Lazy import only
def get_viewer(world, **kwargs):
    from .pygame_debug import PygameDebugViewer
    return PygameDebugViewer(world, **kwargs)

__all__ = ["get_viewer"]

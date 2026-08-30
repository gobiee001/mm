# Implementation Plan - Integrate ADB Viewport Menu Navigation into python_gym_Wrapper

## Goal Description
Automate Mini Militia game startup, splash dismissal, and menu navigation during Gymnasium environment initialization and crash recovery by integrating the aspect-ratio-aware ADB viewport clicking logic from [`simpletests/loadingGame/test_menu_navigation.py`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/simpletests/loadingGame/test_menu_navigation.py) into [`python_gym_Wrapper`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/python_gym_Wrapper).

This eliminates manual intervention when starting training or inference sessions and is fully configurable via `EnvConfig.auto_navigate_menu` (**enabled (`True`) by default**).

---

## Reverse Engineering & Viewport Calculation Summary

From [`test_menu_navigation.py`](file:///C:/Users/sathi/PycharmProjects/mm/MM_GYm/simpletests/loadingGame/test_menu_navigation.py):
1. **Resolution Detection**:
   - Queries `adb shell wm size` (parses `Override size` if present, otherwise `Physical size`).
2. **2:1 Viewport Fitting**:
   - Assumes fixed 2:1 game viewport aspect ratio (`GAME_ASPECT = 2.0`).
   - Fits the viewport to screen dimensions with proper centering offsets:
     - If screen aspect $> 2.0$ (wider display): $\text{offset}_x = (\text{screen width} - \text{game width}) / 2$, $\text{offset}_y = 0$.
     - If screen aspect $< 2.0$ (taller display): $\text{offset}_x = 0$, $\text{offset}_y = (\text{screen height} - \text{game height}) / 2$.
     - If screen aspect $= 2.0$: $\text{offset}_x = 0$, $\text{offset}_y = 0$.
3. **Execution Sequence**:
   - Launch app via ADB monkey (`com.appsomniacs.da2`) $\rightarrow$ wait `startup_wait_s` (10s)
   - Dismiss splash screen via ADB tap at `splash_tap_coords` (`1, 2`) $\rightarrow$ wait `splash_wait_s` (10s)
   - Click button 1: Normalized `(x_ratio=0.50, y_ratio=0.65)` $\rightarrow$ wait `menu_step_wait_s` (1s)
   - Click button 2: Normalized `(x_ratio=0.50, y_ratio=0.46)`

---

## User Review Required

> [!IMPORTANT]
> - `EnvConfig.auto_navigate_menu` defaults to `True`.
> - When `auto_navigate_menu=True`, `FridaBridge.connect()` (and crash recovery `reconnect()`) will execute the ADB sequence before attaching Frida to the running match.
> - When `auto_navigate_menu=False`, `FridaBridge` attaches immediately to the existing game process without running ADB commands.

---

## Proposed Changes

### 1. `python_gym_Wrapper/config.py`

#### [MODIFY] `python_gym_Wrapper/config.py`
Add the following configuration fields to `EnvConfig`:
```python
# --- Startup & Menu Navigation ----------------------------------------
auto_navigate_menu: bool = True
"""If True, launch the app and navigate menus via ADB on connect/reconnect."""

game_aspect: float = 2.0
"""Mini Militia viewport aspect ratio (width / height)."""

startup_wait_s: float = 10.0
"""Seconds to wait after launching app via ADB."""

splash_wait_s: float = 10.0
"""Seconds to wait after tapping splash screen."""

menu_step_wait_s: float = 1.0
"""Seconds to wait between menu button taps."""

splash_tap_coords: Tuple[int, int] = (1, 2)
"""Absolute (x, y) coordinates to dismiss splash screen."""

button1_normalized: Tuple[float, float] = (0.50, 0.65)
"""Normalized (x, y) coordinates for first menu button."""

button2_normalized: Tuple[float, float] = (0.50, 0.46)
"""Normalized (x, y) coordinates for second menu button."""
```

---

### 2. `python_gym_Wrapper/frida_bridge.py`

#### [MODIFY] `python_gym_Wrapper/frida_bridge.py`
Add helper functions and integrate into `connect()` and `reconnect()`:
- `get_adb_resolution() -> tuple[int, int]`
- `tap_game_normalized(x_ratio: float, y_ratio: float, game_aspect: float, on_log: Callable)`
- `perform_menu_navigation(env_cfg: EnvConfig, on_log: Callable)`
- Update `FridaBridge.connect()`:
  - If `self.env.auto_navigate_menu`: execute `perform_menu_navigation` before attaching Frida.
- Update `FridaBridge.reconnect()`:
  - If `self.env.auto_navigate_menu`: execute `perform_menu_navigation` during crash recovery.

---

### 3. Unit Tests (`python_gym_Wrapper/tests/`)

#### [MODIFY] `python_gym_Wrapper/tests/test_config.py`
- Add unit tests verifying `auto_navigate_menu` defaults to `True` and custom parameters validate properly.

#### [NEW] `python_gym_Wrapper/tests/test_adb_nav.py`
- Unit tests verifying resolution parsing, aspect ratio math, and viewport coordinate translations.

---

## Verification Plan

### Automated Tests
Run the unit test suite:
```powershell
C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe -m unittest discover python_gym_Wrapper/tests
```

### Mock Demo Verification
Run mock environment demo:
```powershell
C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe -m python_gym_Wrapper.demo --mock
```

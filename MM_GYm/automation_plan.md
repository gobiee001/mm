# Implementation Plan - Mini Militia Menu Navigation Automation

## Goal Description
Implement an automated navigation pipeline in `C:\Users\sathi\PycharmProjects\mm\MM_GYm\simpletests\loadingGame` to launch Mini Militia, dismiss the splash screen, and invoke internal native callbacks (`MultiplayerGameLayer::onLocal` and `LocalGameLayer::onSurvival`) using Frida and ADB with the Python virtual environment at `C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16`.

---

## User Review Required

> [!IMPORTANT]
> The target Python virtual environment configured for execution is:  
> `C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe`

---

## Proposed Changes

### Component: `simpletests/loadingGame`

#### [NEW] `simpletests/loadingGame/nav_hooks.js`
- Captures live `MultiplayerGameLayer` and `LocalGameLayer` pointers by intercepting their constructors (`_ZN20MultiplayerGameLayerC2Ev` / `_ZN14LocalGameLayerC2Ev`).
- Clears the debounce byte `*(uint8_t*)(this + 0x108) = 0`.
- Exposes `rpc.exports`:
  - `callOnLocal()` -> calls `_ZN20MultiplayerGameLayer7onLocalEPN7cocos2d8CCObjectE(this, NULL)`
  - `callOnSurvival()` -> calls `_ZN14LocalGameLayer10onSurvivalEPN7cocos2d8CCObjectE(this, NULL)`
  - `getStatus()` -> returns captured instances state.

#### [NEW] `simpletests/loadingGame/test_menu_navigation.py`
- Python orchestrator using `frida` and `subprocess` (`adb`):
  1. Starts app via ADB: `adb shell monkey -p com.appsomniacs.da2 -c android.intent.category.LAUNCHER 1`
  2. Simulates screen tap via ADB: `adb shell input tap 500 500`
  3. Attaches Frida session and loads `nav_hooks.js`
  4. Waits 5 seconds
  5. Invokes `script.exports_sync.call_on_local()`
  6. Waits 3 seconds
  7. Invokes `script.exports_sync.call_on_survival()`

#### [NEW] `simpletests/loadingGame/run_nav_test.bat`
- Batch script pointing directly to `C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe` to run the test easily.

---

## Verification Plan

### Automated Execution
Run from command line using the configured Python virtual environment:
```powershell
C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe C:\Users\sathi\PycharmProjects\mm\MM_GYm\simpletests\loadingGame\test_menu_navigation.py
```
Or execute the helper batch script:
```powershell
C:\Users\sathi\PycharmProjects\mm\MM_GYm\simpletests\loadingGame\run_nav_test.bat
```

### Manual Verification
- Observe Android device / emulator screen:
  1. Mini Militia starts and splash screen dismisses.
  2. Screen automatically transitions to "Local" game menu.
  3. Screen automatically transitions to "Survival" stage selection.

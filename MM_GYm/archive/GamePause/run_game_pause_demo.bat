@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo    GAME PAUSE / SINGLE-STEP DEMO
echo    (freezes game logic, advances exactly 1 frame/sec)
echo ======================================================

:: Step 1: Add Android SDK platform-tools to PATH if needed
if exist "C:\Users\gsathinedi\AppData\Local\Android\Sdk\platform-tools" (
    set "PATH=%PATH%;C:\Users\gsathinedi\AppData\Local\Android\Sdk\platform-tools"
)

:: Step 2: Forward ADB port for Frida Gadget
echo Setting up ADB port forwarding (tcp:27042)...
adb forward tcp:27042 tcp:27042 >nul 2>&1
if errorlevel 1 (
    echo [!] Warning: Could not run adb forward. If using USB or an existing port forward, continue...
) else (
    echo [+] ADB Port 27042 forwarded successfully.
)

:: Step 3: Locate Python
set "PYTHON_PATH=python"
if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0python\.venv-frida-16\Scripts\python.exe"

echo Using Python: !PYTHON_PATH!
echo Running: "%~dp0game_pause_demo.js"
echo.
echo Watch the game now - the player/enemies should freeze, then jump
echo forward by a tiny amount once a second, then freeze again.
echo.

:: Step 4: Run the demo script
"!PYTHON_PATH!" "%~dp0..\..\Frida_finalScripts\run_hook.py" "%~dp0game_pause_demo.js"

pause

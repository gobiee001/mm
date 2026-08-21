@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo    MINI MILITIA - NATIVE JOYPAD ACTION INJECTION
echo    (no manual joystick touch required)
echo ======================================================

:: Step 1: Add Android SDK platform-tools to PATH if needed
if exist "C:\Users\gsathinedi\AppData\Local\Android\Sdk\platform-tools" (
    set "PATH=%PATH%;C:\Users\gsathinedi\AppData\Local\Android\Sdk\platform-tools"
)

:: Step 2: Forward ADB port for Frida Gadget
echo Setting up ADB port forwarding (tcp:27042)...
adb forward tcp:27042 tcp:27042 >nul 2>&1
if errorlevel 1 (
    echo [!] Warning: Could not run adb forward. If using USB or existing port forward, continue...
) else (
    echo [+] ADB Port 27042 forwarded successfully.
)

:: Step 3: Locate Python
set "PYTHON_PATH=python"
if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0python\.venv-frida-16\Scripts\python.exe"

echo Using Python: !PYTHON_PATH!
echo Running helper script with: "%~dp0aim_move_shoot_native.js"
echo.

:: Step 4: Run the action script
"!PYTHON_PATH!" "%~dp0..\..\Frida_finalScripts\run_hook.py" "%~dp0aim_move_shoot_native.js"

pause

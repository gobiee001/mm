@echo off
setlocal enabledelayedexpansion

:: Apply ADB Display Refresh Rate Overrides
echo Setting ADB refresh rate properties to 120Hz...
adb shell settings put global peak_refresh_rate 120.0
adb shell settings put global min_refresh_rate 120.0
adb shell settings put global user_refresh_rate 120
adb shell settings put system user_refresh_rate 120

:: Set script file to unified_fps_unlocker.js
set "SCRIPT_FILE=%~dp0unified_fps_unlocker.js"

:: Step 1: Forward the port
echo Setting up ADB port forwarding...
adb forward tcp:27042 tcp:27042
if errorlevel 1 (
    echo Error: Failed to forward port. Is ADB installed and device connected?
    pause
    exit /b 1
)

:: Step 2: Determine Python path
set "PYTHON_PATH=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
if not exist "!PYTHON_PATH!" (
    set "PYTHON_PATH=C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe"
)
if not exist "!PYTHON_PATH!" (
    set "PYTHON_PATH=C:\Users\sathi\Desktop\mm\python\.venv-frida-16\Scripts\python.exe"
)
if not exist "!PYTHON_PATH!" (
    set "PYTHON_PATH=python"
)

:: Step 3: Run python script
echo Connecting to Frida Gadget using: !PYTHON_PATH!
echo Running helper script: "%~dp0..\run_hook.py"

"!PYTHON_PATH!" "%~dp0..\run_hook.py" "%SCRIPT_FILE%"

pause

@echo off
setlocal enabledelayedexpansion

:: Set script file path
set "SCRIPT_FILE=%~dp0test_drones_player.js"

:: Forward the ADB port
echo Setting up ADB port forwarding...
adb forward tcp:27042 tcp:27042
if errorlevel 1 (
    echo Error: Failed to forward port. Is ADB installed and device connected?
    pause
    exit /b 1
)

:: Determine Python path
set "PYTHON_PATH=python"
if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0python\.venv-frida-16\Scripts\python.exe"

:: Run python script with the test file
echo Connecting to Frida Gadget using: !PYTHON_PATH!
echo Running helper script: "%~dp0..\run_hook.py"

"!PYTHON_PATH!" "%~dp0..\run_hook.py" "%SCRIPT_FILE%"

pause

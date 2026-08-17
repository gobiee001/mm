@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo    MINI MILITIA RL - FRAME OBSERVATION COLLECTOR
echo ======================================================

:: Step 1: Forward ADB port for Frida Gadget
echo Setting up ADB port forwarding (tcp:27042)...
adb forward tcp:27042 tcp:27042 >nul 2>&1
if errorlevel 1 (
    echo [!] Warning: Could not run adb forward. If using USB or existing port forward, continue...
) else (
    echo [+] ADB Port 27042 forwarded successfully.
)

:: Step 2: Locate Python
set "PYTHON_PATH=%~dp0..\python\.venv-frida-16\Scripts\python.exe"
if not exist "!PYTHON_PATH!" (
    set "PYTHON_PATH=C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe"
)
if not exist "!PYTHON_PATH!" (
    set "PYTHON_PATH=python"
)

echo Using Python: !PYTHON_PATH!
echo.

:: Step 3: Run observation test
"!PYTHON_PATH!" "%~dp0run_observation_hook.py" %*

pause

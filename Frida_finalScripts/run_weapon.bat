@echo off
setlocal enabledelayedexpansion

:: Set script file to weapon.js by default
set "SCRIPT_FILE=%~dp0weapon.js"
if not "%~1"=="" set "SCRIPT_FILE=%~1"

:: Step 1: Forward the port
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

:: Step 3: Run python script
echo Connecting to Frida Gadget using: !PYTHON_PATH!
echo Running helper script: "%~dp0run_hook.py"

"!PYTHON_PATH!" "%~dp0run_hook.py" "%SCRIPT_FILE%"

pause

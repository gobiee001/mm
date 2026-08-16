@echo off
setlocal enabledelayedexpansion

:: Set script file to fixspawntime.js by default
set "SCRIPT_FILE=%~dp0fixspawntime.js"
if not "%~1"=="" set "SCRIPT_FILE=%~1"

:: Step 1: Forward the port
echo Setting up ADB port forwarding...
adb forward tcp:27042 tcp:27042
if errorlevel 1 (
    echo Error: Failed to forward port. Is ADB installed and device connected?
    pause
    exit /b 1
)

:: Step 2: Determine Python path
:: Check relative path from this batch script
set "PYTHON_PATH=%~dp0..\python\.venv-frida-16\Scripts\python.exe"
if not exist "!PYTHON_PATH!" (
    :: Fallback to the current working project location
    set "PYTHON_PATH=C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe"
)
if not exist "!PYTHON_PATH!" (
    :: Fallback to Desktop path
    set "PYTHON_PATH=C:\Users\sathi\Desktop\mm\python\.venv-frida-16\Scripts\python.exe"
)
if not exist "!PYTHON_PATH!" (
    :: Final fallback to standard python
    set "PYTHON_PATH=python"
)

:: Step 3: Run python script
echo Connecting to Frida Gadget using: !PYTHON_PATH!
echo Running helper script: "%~dp0run_hook.py"

"!PYTHON_PATH!" "%~dp0run_hook.py" "%SCRIPT_FILE%"

pause

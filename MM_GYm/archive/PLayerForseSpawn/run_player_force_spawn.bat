@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo    MINI MILITIA - FORCE PLAYER SPAWN TEST
echo ======================================================

:: Default script file
set "SCRIPT_FILE=%~dp0player_force_spawn.js"
if not "%~1"=="" set "SCRIPT_FILE=%~1"

:: Step 1: Forward ADB port for Frida Gadget
echo Setting up ADB port forwarding (tcp:27042)...
adb forward tcp:27042 tcp:27042 >nul 2>&1
if errorlevel 1 (
    echo [!] Warning: ADB forward failed or device not connected via ADB.
    echo     If running on a remote/network host or USB, continuing...
) else (
    echo [+] ADB Port 27042 forwarded successfully.
)

:: Step 2: Determine Python executable in virtual environment
set "PYTHON_PATH="
if exist "%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_PATH=%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe"
) else if exist "C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_PATH=C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe"
) else if exist "%~dp0..\..\..\python\Scripts\python.exe" (
    set "PYTHON_PATH=%~dp0..\..\..\python\Scripts\python.exe"
) else (
    set "PYTHON_PATH=python"
)

:: Step 3: Determine run_hook.py path
set "RUN_HOOK_PY=%~dp0..\..\..\Frida_finalScripts\run_hook.py"
if not exist "!RUN_HOOK_PY!" (
    if exist "C:\Users\sathi\PycharmProjects\mm\Frida_finalScripts\run_hook.py" (
        set "RUN_HOOK_PY=C:\Users\sathi\PycharmProjects\mm\Frida_finalScripts\run_hook.py"
    )
)

echo Using Python: !PYTHON_PATH!
echo Using Script: !SCRIPT_FILE!

if exist "!RUN_HOOK_PY!" (
    echo Running with helper: "!RUN_HOOK_PY!"
    "!PYTHON_PATH!" "!RUN_HOOK_PY!" "!SCRIPT_FILE!"
) else (
    :: Fallback to direct frida CLI if run_hook.py is not present
    set "FRIDA_BIN=%~dp0..\..\..\python\.venv-frida-16\Scripts\frida.exe"
    if not exist "!FRIDA_BIN!" set "FRIDA_BIN=frida"
    echo Running directly with frida: "!FRIDA_BIN!"
    "!FRIDA_BIN!" -H 127.0.0.1:27042 Gadget -l "!SCRIPT_FILE!"
)

pause

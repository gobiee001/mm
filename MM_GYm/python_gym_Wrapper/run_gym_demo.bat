@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo    MINI MILITIA RL - GYMNASIUM ENVIRONMENT
echo ======================================================

:: Step 1: Add Android SDK platform-tools to PATH if adb is not already there
where adb >nul 2>&1
if errorlevel 1 (
    if exist "%LOCALAPPDATA%\Android\Sdk\platform-tools" (
        set "PATH=%PATH%;%LOCALAPPDATA%\Android\Sdk\platform-tools"
    )
)

:: Step 2: Forward ADB port for Frida Gadget (skipped in --mock mode)
echo %* | find /i "--mock" >nul
if errorlevel 1 (
    echo Setting up ADB port forwarding ^(tcp:27042^)...
    adb forward tcp:27042 tcp:27042 >nul 2>&1
    if errorlevel 1 (
        echo [WARN] Could not run adb forward. If using USB or an existing port forward, continue...
    ) else (
        echo [+] ADB Port 27042 forwarded successfully.
    )
) else (
    echo [*] Mock mode: skipping ADB port forwarding.
)

:: Step 3: Locate Python
set "PYTHON_PATH=python"
if exist "%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\python\.venv-frida-16\Scripts\python.exe"

echo Using Python: !PYTHON_PATH!
echo.

:: Step 4: Run the demo as a module from the package's parent directory
pushd "%~dp0.."
"!PYTHON_PATH!" -m python_gym_Wrapper.demo %*
set "EXITCODE=!ERRORLEVEL!"
popd

echo.
if not "!EXITCODE!"=="0" (
    echo [-] Demo exited with code !EXITCODE!.
    echo.
    echo     Common causes:
    echo       * The game is not running, or the Frida gadget is not loaded.
    echo       * No match is active - start or unpause one so physics ticks run.
    echo.
    echo     To exercise the Python stack without the game:
    echo       run_gym_demo.bat --mock
)

echo.
echo Useful flags:
echo   --mock                     run without the game ^(toy physics^)
echo   --episodes N --steps N     episode count and per-episode step cap
echo   --frame-skip N             physics ticks held per env.step ^(default 10^)
echo   --policy aim^|random        scripted aim-at-nearest, or random actions
echo   --probe-timescale          measure whether game_speed inflates dt
echo   --game-speed F             timescale multiplier ^(default 1.0^)
echo   --render                   print the ansi state dump each step
echo   --device usb^|gadget^|remote connection kind ^(default gadget^)
echo.

pause
exit /b !EXITCODE!

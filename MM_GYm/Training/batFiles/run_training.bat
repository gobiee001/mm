@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo    MINI MILITIA RL - PPO TRAINING
echo ======================================================

:: Step 1: Add Android SDK platform-tools to PATH if adb is not already there.
where adb >nul 2>&1
if errorlevel 1 (
    if exist "%LOCALAPPDATA%\Android\Sdk\platform-tools" (
        set "PATH=%PATH%;%LOCALAPPDATA%\Android\Sdk\platform-tools"
    )
)

:: Step 2: Forward the Frida gadget port(s). Skipped in --mock or --clone mode.
set "IS_SIM=0"
echo %* | find /i "--mock" >nul && set "IS_SIM=1"
echo %* | find /i "--clone" >nul && set "IS_SIM=1"

if "!IS_SIM!"=="0" (
    echo Setting up ADB port forwarding...
    set /a FORWARD_COUNT=0
    set /a PORT=27042
    for /f "tokens=1,2" %%A in ('adb devices 2^>nul ^| findstr /r /v "^List" ^| findstr /r "[a-zA-Z0-9]"') do (
        if "%%B"=="device" (
            adb -s %%A forward tcp:!PORT! tcp:27042 >nul 2>&1
            if not errorlevel 1 (
                echo [+] Forwarded %%A -^> local tcp:!PORT!
                set /a FORWARD_COUNT+=1
                set /a PORT+=1
            )
        )
    )
    if !FORWARD_COUNT! equ 0 (
        adb forward tcp:27042 tcp:27042 >nul 2>&1
        if errorlevel 1 (
            echo [WARN] Could not run adb forward. If using USB or an existing port forward, continue...
        ) else (
            echo [+] ADB Port 27042 forwarded successfully.
        )
    )
) else (
    echo [*] Simulation mode - skipping ADB port forwarding.
)

:: Step 3: Locate Python.
set "PYTHON_PATH=python"
if exist "%~dp0..\..\..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\python\.venv-frida-16\Scripts\python.exe"

echo Using Python: !PYTHON_PATH!
echo.

:: Step 4: Run the trainer as a module from MM_GYm\
pushd "%~dp0..\.."
"!PYTHON_PATH!" -u -m Training.train_ppo %*
set "EXITCODE=!ERRORLEVEL!"
popd

echo.
if not "!EXITCODE!"=="0" (
    echo [-] Training exited with code !EXITCODE!.
    echo.
    echo     Common causes:
    echo       * The game is not running, or the Frida gadget is not loaded.
    echo       * No match is active - start or unpause one so physics ticks run.
    echo.
    echo     To exercise the whole training stack without the game:
    echo       run_mock_parallel.bat
)

echo.
echo Useful flags:
echo   --num-envs N                run N parallel environments / devices
echo   --hosts HOST1 HOST2 ...     explicit targets (e.g. 127.0.0.1:27042 127.0.0.1:27043)
echo   --all-devices               auto-detect and run on all connected ADB devices
echo   --mock                      train without the game (toy physics)
echo   --total-timesteps N         training budget (default 200000)
echo   --headless                  turn the game's rendering off for speed
echo   --render-game               leave game rendering visible on screen
echo   --save-interval-minutes F   rolling checkpoint interval (default 5)
echo   --keep-checkpoints N        rolling checkpoints retained (default 20)
echo   --top-k N                   best-reward models retained (default 5)
echo   --max-episode-steps N       episode length (default 300)
echo   --terminate-on-death        enable real deaths and the death penalty
echo   --hard-sync                 frame-exact stepping, removes tick slip
echo   --resume PATH               continue from a saved .zip
echo   --run-name LABEL            label the run folder

echo.
echo Outputs:
echo   models  MM_GYm\models\run_[timestamp]\
echo   logs    MM_GYm\logs\   (contents cleared at the start of every run)
echo.
echo To stop a long run cleanly, run stop_training.bat or:
echo   type nul ^> MM_GYm\models\run_[timestamp]\STOP
echo.

:: Step 5: TensorBoard reminder.
where tensorboard >nul 2>&1
if errorlevel 1 (
    echo [i] tensorboard is not installed, so this run wrote progress.csv only.
    echo     Install it to get the dashboard; no code change is needed afterwards.
) else (
    echo View metrics with:
    echo   tensorboard --logdir "%~dp0..\..\logs"
)
echo.

pause
exit /b !EXITCODE!

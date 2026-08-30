@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo  RUNNING PPO TRAINING ON ALL CONNECTED ADB DEVICES
echo  Mode: Render Game (Screen Visible)
echo ======================================================
echo.

:: Step 1: Ensure ADB is in PATH
where adb >nul 2>&1
if errorlevel 1 (
    if exist "%LOCALAPPDATA%\Android\Sdk\platform-tools" (
        set "PATH=%PATH%;%LOCALAPPDATA%\Android\Sdk\platform-tools"
    )
)

:: Step 2: Locate Python
set "PYTHON_PATH="
if exist "C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_PATH=C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe"
) else if exist "%~dp0..\..\..\..\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_PATH=%~dp0..\..\..\..\python\.venv-frida-16\Scripts\python.exe"
) else if exist "%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_PATH=%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe"
) else if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_PATH=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
) else (
    set "PYTHON_PATH=python"
)

echo [*] Using Python: !PYTHON_PATH!
echo.

:: Step 3: Launch app and perform menu touches across all devices
echo [*] Starting Mini Militia and performing menu touches on all devices...
pushd "%~dp0..\.."
"!PYTHON_PATH!" -u simpletests\loadingGame\test_menu_navigation.py
popd
echo.

:: Step 4: Continue into PPO training with --all-devices --render-game
echo [*] Continuing to PPO Training (Render Game)...
pushd "%~dp0"
call run_training.bat --all-devices --render-game --no-auto-navigate %*
set "EXITCODE=!ERRORLEVEL!"
popd

exit /b !EXITCODE!

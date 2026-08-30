@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo  RUNNING PPO TRAINING ON ALL CONNECTED ADB DEVICES
echo  Mode: Headless (Max Throughput)
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

:: Step 3: Run PPO training across all devices in headless mode
echo [*] Launching PPO Training on all connected devices (Headless)...
pushd "%~dp0"
call run_training.bat --all-devices --headless --total-timesteps 30000000 %*
set "EXITCODE=!ERRORLEVEL!"
popd

exit /b !EXITCODE!

@echo off
setlocal enabledelayedexpansion

echo ======================================================================
echo    MINI MILITIA RL - PARALLEL MULTI-DEVICE RUNNER
echo ======================================================================
echo.

:: Step 1: Ensure ADB is in PATH
where adb >nul 2>&1
if errorlevel 1 (
    if exist "%LOCALAPPDATA%\Android\Sdk\platform-tools" (
        set "PATH=%PATH%;%LOCALAPPDATA%\Android\Sdk\platform-tools"
    )
)

:: Step 2: Fetch and display all active ADB devices
echo [*] Fetching connected ADB devices via 'adb devices'...
adb devices
echo.

:: Step 3: Locate Python virtual environment
set "PYTHON_PATH="
if exist "C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_PATH=C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe"
) else if exist "%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_PATH=%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe"
) else if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_PATH=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
) else (
    set "PYTHON_PATH=python"
)

echo [*] Using Python: !PYTHON_PATH!
echo.

:: Step 4: Run parallel multi-device runner
echo [*] Connecting to all devices and launching Gymnasium environment in parallel...
echo.

pushd "%~dp0.."
"!PYTHON_PATH!" -m python_gym_Wrapper.multi_device_runner --policy random --episodes 5 --steps 200 %*
set "EXITCODE=!ERRORLEVEL!"
popd

echo.
if not "!EXITCODE!"=="0" (
    echo [-] Multi-device runner exited with code !EXITCODE!.
) else (
    echo [+] Multi-device runner completed successfully.
)

echo.
pause
exit /b !EXITCODE!

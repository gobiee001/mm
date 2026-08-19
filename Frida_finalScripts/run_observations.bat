@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo          RUNNING MANUAL OBSERVATION MONITOR
echo ======================================================

:: Step 1: Forward the port for Frida
echo Setting up ADB port forwarding...
adb forward tcp:27042 tcp:27042
if errorlevel 1 (
    echo Warning: Failed to forward port via ADB.
    echo If you want to connect to a live Android device, make sure it is connected and authorized.
    echo If you are running in Mock mode, this warning can be ignored.
    echo.
)

:: Determine Python path
set "PYTHON_PATH=python"
if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0python\.venv-frida-16\Scripts\python.exe"

:: Step 3: Run the test observations script
echo Using Python executable: !PYTHON_PATH!
echo Running script: "%~dp0..\frida_gym\observations\test\test_observations.py"
echo.
echo Use "--live" parameter to connect to Frida (e.g. run_observations.bat --live)
echo.

"!PYTHON_PATH!" "%~dp0..\frida_gym\observations\test\test_observations.py" %*

pause

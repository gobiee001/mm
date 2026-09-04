@echo off
setlocal enabledelayedexpansion

:: Navigate to script directory
pushd "%~dp0"

:: Locate Python from venv or fall back to absolute path
set "PYTHON_EXE=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
if not exist "%PYTHON_EXE%" (
    set "PYTHON_EXE=C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe"
)

if not exist "%PYTHON_EXE%" (
    where python >nul 2>&1
    if not errorlevel 1 set "PYTHON_EXE=python"
)

if not exist "%PYTHON_EXE%" (
    echo [ERROR] Could not find Python. Ensure python\.venv-frida-16 exists.
    pause
    exit /b 1
)

echo Starting TrainingCloneEnv Demo (Manual Mode)...
echo Controls:
echo   [A] / [D]     : Move Left / Right
echo   [W] / [SPACE] : Jetpack Thrust
echo   Mouse Move    : Aim weapon
echo   Left Click    : Shoot
echo   [ESC]         : Exit
echo.

"%PYTHON_EXE%" "%~dp0tools\demo.py" --manual %*

popd
pause

@echo off
setlocal enabledelayedexpansion

:: Navigate to script directory
pushd "%~dp0"

:: Pick the first interpreter that can actually import what the demo needs.
:: Existence alone is not enough: .venv-frida-16 has numpy/gymnasium but no
:: pygame/pytmx, so selecting it by path only crashes at the first import.
set "PYTHON_EXE="
for %%P in (
    "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
    "%~dp0.venv\Scripts\python.exe"
    "C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe"
    "C:\ProgramData\anaconda3\python.exe"
) do (
    if not defined PYTHON_EXE if exist %%P (
        "%%~P" -c "import numpy, gymnasium, pygame, pytmx" >nul 2>&1
        if not errorlevel 1 set "PYTHON_EXE=%%~P"
    )
)

if not defined PYTHON_EXE (
    where python >nul 2>&1
    if not errorlevel 1 (
        python -c "import numpy, gymnasium, pygame, pytmx" >nul 2>&1
        if not errorlevel 1 set "PYTHON_EXE=python"
    )
)

if not defined PYTHON_EXE (
    echo [ERROR] No Python found that can run the demo.
    echo         Required: numpy gymnasium pygame pytmx
    echo.
    echo         Install the two missing renderer packages into the project venv,
    echo         routed through the internal artifact registry:
    echo           "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" -m pip install pygame pytmx
    popd
    pause
    exit /b 1
)

echo Starting TrainingCloneEnv Demo (Manual Mode)...
echo   Python : !PYTHON_EXE!
echo   Timing : frame_skip=1 -^> 60 fps, 1x realtime
echo.
echo Controls:
echo   [A] / [D]     : Move Left / Right
echo   [W] / [SPACE] : Jetpack Thrust
echo   Mouse Move    : Aim weapon
echo   Left Click    : Shoot
echo   [ESC]         : Exit
echo.

:: --frame-skip 1 pins the view at 60 fps: one physics tick is drawn per frame, so
:: wall-clock time matches sim time. Trailing %* lets you override it, e.g.
::   run_demo_manual.bat --speed 0.5        (slow motion)
::   run_demo_manual.bat --frame-skip 10    (training cadence, renders at 6 fps)
"%PYTHON_EXE%" "%~dp0tools\demo.py" --manual --frame-skip 1 %*

popd
pause

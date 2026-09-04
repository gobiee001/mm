@echo off
setlocal enabledelayedexpansion

:: Usage:
::   run_inference.bat                               best model available, 5 episodes
::   run_inference.bat "path\to\model.zip"           a specific model
::   run_inference.bat latest                        most recently saved instead
::   run_inference.bat --no-render --episodes 20     headless evaluation
::   run_inference.bat --speed 0.5                   slow motion
::   run_inference.bat --frame-skip 1                smooth 60 fps (see note below)

:: Run from TrainingCloneEnv so that `python -m Inference.infer` resolves.
pushd "%~dp0.."

:: Pick the first interpreter that can import everything inference needs.
:: Existence alone is not enough -- a venv can be present but missing packages.
set "PYTHON_EXE="
for %%P in (
    "%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe"
    "%~dp0..\.venv\Scripts\python.exe"
    "C:\ProgramData\anaconda3\python.exe"
) do (
    if not defined PYTHON_EXE if exist %%P (
        "%%~P" -c "import numpy, gymnasium, stable_baselines3, pygame, pytmx" >nul 2>&1
        if not errorlevel 1 set "PYTHON_EXE=%%~P"
    )
)

if not defined PYTHON_EXE (
    where python >nul 2>&1
    if not errorlevel 1 (
        python -c "import numpy, gymnasium, stable_baselines3, pygame, pytmx" >nul 2>&1
        if not errorlevel 1 set "PYTHON_EXE=python"
    )
)

if not defined PYTHON_EXE (
    echo [ERROR] No Python found that can run inference.
    echo         Required: numpy gymnasium stable_baselines3 pygame pytmx
    popd
    pause
    exit /b 1
)

:: Default to the best model available. The first argument is only treated as a
:: model path when it is not a flag, so `run_inference.bat --no-render` still works.
set "MODEL=best"
if "%~1"=="" goto :collect
set "FIRST=%~1"
if "%FIRST:~0,1%"=="-" goto :collect
set "MODEL=%~1"
shift

:collect
set "EXTRA="
:collect_loop
if "%~1"=="" goto :run
set "EXTRA=!EXTRA! %1"
shift
goto :collect_loop

:run
echo ======================================================================
echo   TrainingCloneEnv - Inference
echo ======================================================================
echo   Python : !PYTHON_EXE!
echo   Model  : !MODEL!
echo ======================================================================
echo.
echo   Note: frame_skip defaults to 10 to match training, and one frame is
echo         drawn per step, so the view runs at 6 fps. Add --frame-skip 1
echo         for a smooth 60 fps view -- but then the policy acts ten times
echo         more often than it was trained to, so judge results at 10.
echo.

"%PYTHON_EXE%" -m Inference.infer "!MODEL!"!EXTRA!

popd
pause

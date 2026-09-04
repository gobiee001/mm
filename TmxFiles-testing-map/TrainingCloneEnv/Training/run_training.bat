@echo off
setlocal enabledelayedexpansion

:: Run from TrainingCloneEnv so that `python -m Training.train_ppo` resolves.
pushd "%~dp0.."

:: Pick the first interpreter that can import everything the trainer needs.
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
    echo [ERROR] No Python found that can run the trainer.
    echo         Required: numpy gymnasium stable_baselines3 pygame pytmx
    echo         pygame/pytmx are needed even with rendering off, because the map
    echo         bake step imports them; see mmclone\mapdata\tileset.py.
    popd
    pause
    exit /b 1
)

echo ======================================================================
echo   TrainingCloneEnv - PPO Training
echo ======================================================================
echo   Python   : !PYTHON_EXE!
echo   Envs     : 6 parallel, rendering off, unthrottled
echo ======================================================================
echo.

:: Defaults live in train_ppo.py (6 envs, no rendering). Trailing %* overrides
:: any of them, e.g.  run_training.bat --total-timesteps 2000000 --tier 64
"%PYTHON_EXE%" -m Training.train_ppo %*

popd
pause

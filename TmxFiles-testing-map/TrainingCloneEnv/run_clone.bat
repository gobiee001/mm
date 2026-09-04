@echo off
setlocal enabledelayedexpansion

:: Locate Python from venv
set "PYTHON_EXE="
if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_EXE=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
) else if exist "%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_EXE=%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe"
) else (
    where python >nul 2>&1
    if not errorlevel 1 set "PYTHON_EXE=python"
)

if "%PYTHON_EXE%"=="" (
    echo [ERROR] Could not find Python. Ensure python/.venv-frida-16 exists.
    pause
    exit /b 1
)

pushd "%~dp0"

:: Handle direct CLI arguments
if /i "%~1"=="train" goto :do_train
if /i "%~1"=="test"  goto :do_test
if /i "%~1"=="bench" goto :do_bench
if /i "%~1"=="bake"  goto :do_bake
if /i "%~1"=="demo"  goto :do_demo
if not "%~1"==""     goto :do_custom

:menu
cls
echo ======================================================================
echo           TrainingCloneEnv - Fast In-Process Simulator
echo ======================================================================
echo   Python: %PYTHON_EXE%
echo.
echo   [1] Launch PPO Pretraining (4 parallel envs, survival_new)
echo   [2] Run Gymnasium Contract ^& Unit Tests (pytest)
echo   [3] Run Simulation Throughput Benchmark (bench.py)
echo   [4] Bake ^& Cache All 19 TMX Maps (bake_maps.py)
echo   [5] Watch Live Simulation Visualizer Demo (tools\demo.py)
echo   [6] Exit
echo ======================================================================
set /p "CHOICE=Select an option [1-6]: "

if "%CHOICE%"=="1" goto :do_train
if "%CHOICE%"=="2" goto :do_test
if "%CHOICE%"=="3" goto :do_bench
if "%CHOICE%"=="4" goto :do_bake
if "%CHOICE%"=="5" goto :do_demo
if "%CHOICE%"=="6" goto :end
echo Invalid choice.
pause
goto :menu

:do_train
echo.
echo === Starting PPO Pretraining with TrainingCloneEnv ===
popd
pushd "%~dp0..\..\MM_GYm"
"%PYTHON_EXE%" -m Training.train_ppo --clone --clone-map survival_new --num-envs 4 --total-timesteps 50000 %2 %3 %4 %5 %6 %7 %8 %9
popd
pushd "%~dp0"
goto :end

:do_test
echo.
echo === Running Test Suite ===
"%PYTHON_EXE%" -m pytest tests -v
goto :end

:do_bench
echo.
echo === Running Benchmark ===
"%PYTHON_EXE%" tools\bench.py --map survival_new --steps 3000 %2 %3 %4 %5
goto :end

:do_bake
echo.
echo === Baking All 19 Maps ===
"%PYTHON_EXE%" tools\bake_maps.py %2 %3 %4 %5
goto :end

:do_demo
echo.
echo === Starting Live Simulation Demo ===
"%PYTHON_EXE%" tools\demo.py %2 %3 %4 %5
goto :end

:do_custom
"%PYTHON_EXE%" %*
goto :end

:end
echo.
echo Done.
popd
if "%~1"=="" pause

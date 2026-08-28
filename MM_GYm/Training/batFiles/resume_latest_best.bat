@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo  RESUME PPO TRAINING FROM LATEST BEST MODEL
echo ======================================================
echo.

:: Locate Python
set "PYTHON_PATH=python"
if exist "%~dp0..\..\..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\python\.venv-frida-16\Scripts\python.exe"

set "MODELS_DIR=%~dp0..\..\models"
set "LATEST_RUN="
for /f "delims=" %%D in ('dir /b /ad /o-d "%MODELS_DIR%\run_*" 2^>nul') do (
    if not defined LATEST_RUN set "LATEST_RUN=%%D"
)

set "FIRST_ARG=%~1"
if defined FIRST_ARG (
    if "!FIRST_ARG:~0,1!"=="-" (
        set "FIRST_ARG="
    )
)

if defined FIRST_ARG (
    set "MODEL_PATH=%~1"
) else (
    if defined LATEST_RUN (
        for /f "delims=" %%F in ('dir /b /a-d /o-d "%MODELS_DIR%\!LATEST_RUN!\best\*.zip" 2^>nul') do (
            if not defined MODEL_PATH set "MODEL_PATH=%MODELS_DIR%\!LATEST_RUN!\best\%%F"
        )
        if not defined MODEL_PATH (
            for /f "delims=" %%F in ('dir /b /a-d /o-d "%MODELS_DIR%\!LATEST_RUN!\*.zip" 2^>nul') do (
                if not defined MODEL_PATH set "MODEL_PATH=%MODELS_DIR%\!LATEST_RUN!\%%F"
            )
        )
        if not defined MODEL_PATH (
            for /f "delims=" %%F in ('dir /b /a-d /o-d "%MODELS_DIR%\!LATEST_RUN!\checkpoints\*.zip" 2^>nul') do (
                if not defined MODEL_PATH set "MODEL_PATH=%MODELS_DIR%\!LATEST_RUN!\checkpoints\%%F"
            )
        )
    )
)


:: ==============================================================================
:: USAGE EXAMPLES:
::
:: 1. Resume from latest best model on all devices (headless, default 30M steps):
::    resume_latest_best.bat
::
:: 2. Resume with a specific timestep budget:
::    resume_latest_best.bat --total-timesteps 5000000
::
:: 3. Resume with screen visible (not headless):
::    resume_latest_best.bat --render-game
::
:: 4. Resume from a specific model file directly:
::    resume_latest_best.bat models\run_20260828_173351\best\best_r-21.3492_step000014400.zip
::
:: 5. Resume in mock simulation mode:
::    resume_latest_best.bat --mock --num-envs 4 --total-timesteps 16384
:: ==============================================================================

if defined MODEL_PATH (
    echo [+] Resuming from model: !MODEL_PATH!
    echo.
    pushd "%~dp0"
    if defined FIRST_ARG (
        shift
        call run_training.bat --all-devices --headless --resume "!MODEL_PATH!" %1 %2 %3 %4 %5 %6 %7 %8 %9
    ) else (
        call run_training.bat --all-devices --headless --resume "!MODEL_PATH!" %*
    )
    popd
) else (
    echo [-] No saved model found under %MODELS_DIR% to resume.
    echo     Start a fresh training run first with run_all_devices_headless.bat,
    echo     or pass an explicit model path:
    echo       resume_latest_best.bat path\to\model.zip
    echo.
    pause
)


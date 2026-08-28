@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo  EVALUATE BEST MODEL VS BASELINE
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

if not "%~1"=="" (
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
    )
)

if defined MODEL_PATH (
    echo Evaluating model: !MODEL_PATH!
    pushd "%~dp0..\.."
    "!PYTHON_PATH!" -m Training.evaluate --model "!MODEL_PATH!" --compare-baseline --episodes 3 %*
    popd
) else (
    echo [-] No saved model found to evaluate. Pass a model path directly:
    echo     evaluate_latest_best.bat path\to\model.zip
)

echo.
pause

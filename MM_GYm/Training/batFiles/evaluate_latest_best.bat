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

set "FIRST_ARG=%~1"
if defined FIRST_ARG (
    if "!FIRST_ARG:~0,1!"=="-" (
        set "FIRST_ARG="
    )
)

if defined FIRST_ARG (
    set "MODEL_PATH=%~1"
) else (
    pushd "%~dp0..\.."
    for /f "delims=" %%M in ('"!PYTHON_PATH!" -c "from Inference.model_loader import find_latest_best_model; m = find_latest_best_model(); print(m if m else '')" 2^>nul') do (
        set "MODEL_PATH=%%M"
    )
    popd
)

if defined MODEL_PATH (
    echo Evaluating model: !MODEL_PATH!
    pushd "%~dp0..\.."
    if defined FIRST_ARG (
        shift
        "!PYTHON_PATH!" -m Training.evaluate --model "!MODEL_PATH!" --compare-baseline --episodes 3 %1 %2 %3 %4 %5 %6 %7 %8 %9
    ) else (
        "!PYTHON_PATH!" -m Training.evaluate --model "!MODEL_PATH!" --compare-baseline --episodes 3 %*
    )
    popd
) else (
    echo [-] No saved model found to evaluate. Pass a model path directly:
    echo     evaluate_latest_best.bat path\to\model.zip
)

echo.
pause

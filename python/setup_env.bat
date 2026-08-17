@echo off
setlocal enabledelayedexpansion

cd /d "%~dp0"

set "VENV_DIR=%~dp0.venv-frida-16"
set "REQ_FILE=%~dp0requirements.txt"

echo ===================================================
echo Setting up Python Virtual Environment (.venv-frida-16)
echo ===================================================

:: Step 1: Detect Python executable (Python 3.13 / Anaconda / System Python)
set "BASE_PYTHON="

if exist "C:\ProgramData\anaconda3\python.exe" (
    set "BASE_PYTHON=C:\ProgramData\anaconda3\python.exe"
) else if exist "C:\Users\All Users\anaconda3\python.exe" (
    set "BASE_PYTHON=C:\Users\All Users\anaconda3\python.exe"
) else (
    py -3.13 -c "import sys" >nul 2>&1
    if !errorlevel! equ 0 (
        set "BASE_PYTHON=py -3.13"
    ) else (
        set "BASE_PYTHON=python"
    )
)

echo Using Base Python: !BASE_PYTHON!

:: Step 2: Create virtual environment if it does not exist
if not exist "!VENV_DIR!\Scripts\python.exe" (
    echo Creating virtual environment at "!VENV_DIR!"...
    !BASE_PYTHON! -m venv "!VENV_DIR!"
    if !errorlevel! neq 0 (
        echo [ERROR] Failed to create virtual environment.
        pause
        exit /b 1
    )
    echo Virtual environment created successfully.
) else (
    echo Virtual environment already exists at "!VENV_DIR!".
)

:: Step 3: Upgrade pip and install requirements
set "VENV_PYTHON=!VENV_DIR!\Scripts\python.exe"

echo.
echo Upgrading pip...
"!VENV_PYTHON!" -m pip install --upgrade pip

if exist "!REQ_FILE!" (
    echo.
    echo Installing dependencies from "!REQ_FILE!"...
    "!VENV_PYTHON!" -m pip install -r "!REQ_FILE!"
    if !errorlevel! neq 0 (
        echo [ERROR] Failed to install some requirements.
        pause
        exit /b 1
    )
) else (
    echo [WARNING] requirements.txt not found at "!REQ_FILE!".
)

echo.
echo ===================================================
echo Setup completed successfully!
echo Virtual Environment: !VENV_DIR!
echo ===================================================
pause

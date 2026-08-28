@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo  STOP TRAINING CLEANLY
echo ======================================================
echo.

set "MODELS_DIR=%~dp0..\..\models"
set "LATEST_RUN="

for /f "delims=" %%D in ('dir /b /ad /o-d "%MODELS_DIR%\run_*" 2^>nul') do (
    if not defined LATEST_RUN (
        set "LATEST_RUN=%%D"
    )
)

if defined LATEST_RUN (
    echo Creating STOP sentinel in: %MODELS_DIR%\!LATEST_RUN!\STOP
    type nul > "%MODELS_DIR%\!LATEST_RUN!\STOP"
    echo [+] Stop signal sent. The trainer will finish its current step and save the model cleanly.
) else (
    echo [-] No active run_ directory found under %MODELS_DIR%.
)

echo.
pause

@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo    MINI MILITIA RL - INFERENCE RUNNER
echo ======================================================

:: Step 1: Add platform-tools to PATH if needed
where adb >nul 2>&1
if errorlevel 1 (
    if exist "%LOCALAPPDATA%\Android\Sdk\platform-tools" (
        set "PATH=%PATH%;%LOCALAPPDATA%\Android\Sdk\platform-tools"
    )
)

:: Step 2: Forward ADB port(s). Skipped in --mock mode.
echo %* | find /i "--mock" >nul
if errorlevel 1 (
    echo Setting up ADB port forwarding...
    set /a FORWARD_COUNT=0
    set /a PORT=27042
    for /f "tokens=1,2" %%A in ('adb devices 2^>nul ^| findstr /r /v "^List" ^| findstr /r "[a-zA-Z0-9]"') do (
        if "%%B"=="device" (
            adb -s %%A forward tcp:!PORT! tcp:27042 >nul 2>&1
            if not errorlevel 1 (
                echo [+] Forwarded %%A -^> local tcp:!PORT!
                set /a FORWARD_COUNT+=1
                set /a PORT+=1
            )
        )
    )
    if !FORWARD_COUNT! equ 0 (
        adb forward tcp:27042 tcp:27042 >nul 2>&1
        if errorlevel 1 (
            echo [WARN] Could not run adb forward. If using USB or an existing port forward, continue...
        ) else (
            echo [+] ADB Port 27042 forwarded successfully.
        )
    )
) else (
    echo [*] Mock mode: skipping ADB port forwarding.
)

:: Step 3: Locate Python
set "PYTHON_PATH=python"
if exist "%~dp0..\..\..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\python\.venv-frida-16\Scripts\python.exe"


echo Using Python: !PYTHON_PATH!
echo.

:: ==============================================================================
:: USAGE EXAMPLES:
::
:: 1. Run with latest best model automatically (default 5 episodes):
::    run_inference.bat
::
:: 2. Provide a specific model file:
::    run_inference.bat --model models\run_20260828_173351\best\best_r-21.3492_step000014400.zip
::
:: 3. Run continuously / indefinitely with a specific model:
::    run_inference.bat --model models\run_20260828_173351\final_step000016384_r-11.3323.zip --continuous
::
:: 4. List all available models across all runs:
::    run_inference.bat --list-models
::
:: 5. Run inference across all connected ADB devices:
::    run_inference.bat --all-devices
::
:: 6. Test in mock simulator (no device / game needed):
::    run_inference.bat --mock --episodes 3
:: ==============================================================================

:: Step 4: Run inference
pushd "%~dp0..\.."
"!PYTHON_PATH!" -m Inference.infer %*
set "EXITCODE=!ERRORLEVEL!"
popd

echo.
echo ==============================================================================
echo Example commands:
echo   run_inference.bat --model models\run_...\best\best_r+...zip
echo   run_inference.bat --continuous
echo   run_inference.bat --list-models
echo   run_inference.bat --all-devices
echo   run_inference.bat --mock --episodes 3
echo ==============================================================================
echo.

pause
exit /b !EXITCODE!

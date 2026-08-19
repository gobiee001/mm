@echo off
title Antigravity Frida Memory Viewer / Scanner

echo ==============================================
echo       Antigravity Frida Memory Scanner        
echo ==============================================
echo.
echo Attempting to set up ADB port forwarding for Android devices...
adb forward tcp:27042 tcp:27042 >nul 2>&1
if errorlevel 1 (
    echo [INFO] ADB port forwarding skipped or failed.
    echo        (This is expected if you are scanning local PC processes.)
) else (
    echo [SUCCESS] ADB port forwarding set up on tcp:27042.
)
echo.
echo ==============================================
echo Choose UI Mode:
echo   [1] Launch PySide6 GUI (Default)
echo   [2] Launch Interactive CLI (memscan REPL)
echo ==============================================
set /p opt="Enter choice [1 or 2]: "

:: Determine Python path
set "PYTHON_BIN=python"
if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_BIN=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_BIN=%~dp0..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0python\.venv-frida-16\Scripts\python.exe" set "PYTHON_BIN=%~dp0python\.venv-frida-16\Scripts\python.exe"

if "%opt%"=="2" (
    echo.
    echo Starting Interactive CLI...
    "%PYTHON_BIN%" cli_main.py %*
) else (
    echo.
    echo Starting PySide6 GUI...
    "%PYTHON_BIN%" main.py %*
)

echo.
echo Execution finished.
pause
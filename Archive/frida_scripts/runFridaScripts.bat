@echo off

:: Set default file if no argument is provided
set "SCRIPT_FILE=dump_test.js"
if not "%~1"=="" set "SCRIPT_FILE=%~1"

:: Step 1: Forward the port
echo Setting up ADB port forwarding...
adb forward tcp:27042 tcp:27042
if errorlevel 1 (
    echo Error: Failed to forward port. Is ADB installed and device connected?
    pause
    exit /b 1
)

:: Step 2: Run Frida
:: Determine Frida path
set "FRIDA_BIN=frida"
if exist "%~dp0..\..\python\.venv-frida-16\Scripts\frida.exe" set "FRIDA_BIN=%~dp0..\..\python\.venv-frida-16\Scripts\frida.exe"
if exist "%~dp0..\python\.venv-frida-16\Scripts\frida.exe" set "FRIDA_BIN=%~dp0..\python\.venv-frida-16\Scripts\frida.exe"
if exist "%~dp0python\.venv-frida-16\Scripts\frida.exe" set "FRIDA_BIN=%~dp0python\.venv-frida-16\Scripts\frida.exe"

echo Connecting to Frida Gadget with script: %SCRIPT_FILE% using %FRIDA_BIN%
"%FRIDA_BIN%" -H 127.0.0.1:27042 Gadget -l "%SCRIPT_FILE%" 
::> methods121.txt 2>&1

echo Output saved to methods121.txt
pause   
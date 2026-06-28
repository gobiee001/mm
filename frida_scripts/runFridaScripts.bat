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
echo Connecting to Frida Gadget with script: %SCRIPT_FILE%
"C:\Users\sathi\Desktop\mm\python\.venv-frida-16\Scripts\frida.exe" -H 127.0.0.1:27042 Gadget -l "%SCRIPT_FILE%" 
::> methods121.txt 2>&1

echo Output saved to methods121.txt
pause   
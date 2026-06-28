@echo off
echo Setting up ADB port forwarding...
adb forward tcp:27042 tcp:27042
if errorlevel 1 (
    echo Error: Failed to forward port. Is ADB installed and device connected?
    pause
    exit /b 1
)
"C:\Users\sathi\Desktop\mm\python\.venv-frida-16\Scripts\python.exe" main.py
pause
@echo off
setlocal
cd /d "%~dp0"

set PYTHON_EXE=C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe

if not exist "%PYTHON_EXE%" (
    echo [Error] Python executable not found at: %PYTHON_EXE%
    pause
    exit /b 1
)

echo Running Mini Militia Menu Navigation Test with: %PYTHON_EXE%
"%PYTHON_EXE%" test_menu_navigation.py

pause

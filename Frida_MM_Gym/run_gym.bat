@echo off
setlocal EnableDelayedExpansion

REM Frida_MM_Gym launcher.
REM
REM Forwards the gadget port, resolves a Python interpreter, then hands every
REM argument through to run_gym.py. Examples:
REM
REM   run_gym.bat --console
REM   run_gym.bat --interval 1 --out obs.jsonl --block-sarge --block-audio
REM   run_gym.bat --headless --fast-forward 3.0 --fps-monitor

echo [*] Forwarding tcp:27042 -^> tcp:27042 ...
adb forward tcp:27042 tcp:27042
if errorlevel 1 (
    echo [-] adb forward failed. Is the device connected and adb on PATH?
    exit /b 1
)

REM Four-tier Python resolution, matching the existing Frida_finalScripts .bat
REM template. The pinned venv carries frida 16.6.6.
set "PYTHON_PATH="

if exist "%~dp0..\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_PATH=%~dp0..\python\.venv-frida-16\Scripts\python.exe"
) else if exist "C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_PATH=C:\Users\sathi\PycharmProjects\mm\python\.venv-frida-16\Scripts\python.exe"
) else if exist "C:\Users\sathi\Desktop\mm\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_PATH=C:\Users\sathi\Desktop\mm\python\.venv-frida-16\Scripts\python.exe"
) else (
    set "PYTHON_PATH=python"
)

echo [*] Python: !PYTHON_PATH!
echo.

REM %~dp0 keeps the entry script anchored to this package regardless of the
REM caller's working directory.
"!PYTHON_PATH!" "%~dp0run_gym.py" %*

echo.
pause

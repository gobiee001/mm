@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo    MINI MILITIA RL - GYM ENVIRONMENT TEST SUITE
echo ======================================================
echo.
echo No game or ADB connection required.
echo.

:: Locate Python
set "PYTHON_PATH=python"
if exist "%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
if exist "%~dp0..\python\.venv-frida-16\Scripts\python.exe" set "PYTHON_PATH=%~dp0..\python\.venv-frida-16\Scripts\python.exe"

echo Using Python: !PYTHON_PATH!

:: The JS agent harness runs the real bundle under stubbed Frida globals.
:: It is skipped rather than failed when Node is unavailable.
where node >nul 2>&1
if errorlevel 1 (
    echo [WARN] Node not found - the JS agent tests will be skipped.
) else (
    echo [+] Node found - the JS agent tests will run.
)
echo.

pushd "%~dp0.."
"!PYTHON_PATH!" -m unittest discover -s python_gym_Wrapper -p "test_*.py" %*
set "EXITCODE=!ERRORLEVEL!"
popd

echo.
if "!EXITCODE!"=="0" (
    echo [+] All tests passed.
) else (
    echo [-] Test suite failed with code !EXITCODE!.
)

echo.
pause
exit /b !EXITCODE!

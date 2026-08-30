@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo    KILL MINI MILITIA ON ALL CONNECTED ADB DEVICES
echo ======================================================
echo.

:: Step 1: Ensure ADB is in PATH
where adb >nul 2>&1
if errorlevel 1 (
    if exist "%LOCALAPPDATA%\Android\Sdk\platform-tools" (
        set "PATH=%PATH%;%LOCALAPPDATA%\Android\Sdk\platform-tools"
    )
)

:: Step 2: Target package name (default com.appsomniacs.da2)
set "TARGET_PACKAGE=com.appsomniacs.da2"
if not "%~1"=="" (
    set "TARGET_PACKAGE=%~1"
)

echo [*] Target Package: !TARGET_PACKAGE!
echo [*] Fetching connected ADB devices...
echo.

set /a DEVICE_COUNT=0

for /f "skip=1 tokens=1,2" %%A in ('adb devices') do (
    if "%%B"=="device" (
        set /a DEVICE_COUNT+=1
        set "DEVICE[!DEVICE_COUNT!]=%%A"
        echo     [!DEVICE_COUNT!] %%A
    )
)

if !DEVICE_COUNT! equ 0 (
    echo [-] No active ADB devices found.
    echo.
    pause
    exit /b 1
)

echo.
echo [*] Force-stopping '!TARGET_PACKAGE!' and removing port forwards on all !DEVICE_COUNT! device(s)...
echo.

for /L %%i in (1,1,!DEVICE_COUNT!) do (
    set "CURRENT_DEV=!DEVICE[%%i]!"
    echo ------------------------------------------------------
    echo [*] [%%i/!DEVICE_COUNT!] Device: !CURRENT_DEV!
    echo ------------------------------------------------------
    
    :: Force stop target app
    adb -s !CURRENT_DEV! shell am force-stop !TARGET_PACKAGE! >nul 2>&1
    echo     [+] Force-stopped: !TARGET_PACKAGE!
    
    :: Remove forwarded ports on device
    adb -s !CURRENT_DEV! forward --remove-all >nul 2>&1
    echo     [+] Cleared ADB port forwards
)

:: Clean global forward rules
adb forward --remove-all >nul 2>&1

echo.
echo ======================================================
echo [+] All !DEVICE_COUNT! device(s) cleaned and processes terminated.
echo ======================================================
echo.
pause
exit /b 0

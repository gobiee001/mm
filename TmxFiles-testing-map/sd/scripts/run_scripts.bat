@echo off
setlocal enabledelayedexpansion

:: Locate Python from venv
set "PYTHON_EXE="
if exist "%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_EXE=%~dp0..\..\..\python\.venv-frida-16\Scripts\python.exe"
) else if exist "%~dp0..\..\python\.venv-frida-16\Scripts\python.exe" (
    set "PYTHON_EXE=%~dp0..\..\python\.venv-frida-16\Scripts\python.exe"
) else (
    where python >nul 2>&1
    if not errorlevel 1 set "PYTHON_EXE=python"
)

if "%PYTHON_EXE%"=="" (
    echo [ERROR] Could not find Python. Ensure python/.venv-frida-16 exists.
    pause
    exit /b 1
)

pushd "%~dp0"

:: Handle direct CLI arguments
if /i "%~1"=="polygon" goto :do_polygon
if /i "%~1"=="render"  goto :do_render
if /i "%~1"=="play"    goto :do_play
if /i "%~1"=="patch"   goto :do_patch
if not "%~1"==""       goto :do_custom

:menu
cls
echo ======================================================================
echo             Mini Militia SD Map ^& Physics Test Scripts
echo ======================================================================
echo   Python: %PYTHON_EXE%
echo   Folder: %~dp0
echo.
echo   [1] Fine Polygon ^& Pixel-Mask Physics Test (play_map_polygon.py)
echo   [2] Interactive Map Viewer with Pan/Zoom    (render_map.py)
echo   [3] Tile-Rect AABB Physics Test             (play_map.py)
echo   [4] Patch TSX Image Dimensions              (patch_tsx.py)
echo   [5] Exit
echo ======================================================================
set /p "CHOICE=Select an option [1-5]: "

if "%CHOICE%"=="1" goto :do_polygon
if "%CHOICE%"=="2" goto :do_render
if "%CHOICE%"=="3" goto :do_play
if "%CHOICE%"=="4" goto :do_patch
if "%CHOICE%"=="5" goto :end
echo Invalid choice.
pause
goto :menu

:do_polygon
echo.
echo === Running Fine Polygon ^& Pixel-Mask Physics (play_map_polygon.py) ===
"%PYTHON_EXE%" play_map_polygon.py %2 %3 %4 %5
goto :end

:do_render
echo.
echo === Running Interactive Map Viewer (render_map.py) ===
"%PYTHON_EXE%" render_map.py %2 %3 %4 %5
goto :end

:do_play
echo.
echo === Running Tile-Rect AABB Physics Test (play_map.py) ===
"%PYTHON_EXE%" play_map.py %2 %3 %4 %5
goto :end

:do_patch
echo.
echo === Running TSX Dimension Patcher (patch_tsx.py) ===
"%PYTHON_EXE%" patch_tsx.py %2 %3 %4 %5
goto :end

:do_custom
"%PYTHON_EXE%" %*
goto :end

:end
echo.
popd
if "%~1"=="" pause

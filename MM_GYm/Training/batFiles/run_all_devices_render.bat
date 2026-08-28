@echo off
setlocal

echo ======================================================
echo  RUNNING PPO TRAINING ON ALL CONNECTED ADB DEVICES
echo  Mode: Render Game (Screen Visible)
echo ======================================================
echo.

pushd "%~dp0"
call run_training.bat --all-devices --render-game %*
popd

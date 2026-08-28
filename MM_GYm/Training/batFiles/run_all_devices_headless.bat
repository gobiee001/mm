@echo off
setlocal

echo ======================================================
echo  RUNNING PPO TRAINING ON ALL CONNECTED ADB DEVICES
echo  Mode: Headless (Max Throughput)
echo ======================================================
echo.

pushd "%~dp0"
call run_training.bat --all-devices --headless --total-timesteps 30000000 %*
popd

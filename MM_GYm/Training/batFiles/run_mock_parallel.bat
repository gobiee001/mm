@echo off
setlocal

echo ======================================================
echo  RUNNING PARALLEL PPO TRAINING IN MOCK SIMULATOR
echo  Mode: 4 Parallel In-Process Envs
echo ======================================================
echo.

pushd "%~dp0"
call run_training.bat --mock --num-envs 4 --total-timesteps 16384 %*
popd

@echo off
setlocal

echo ======================================================
echo  RUNNING PARALLEL PPO TRAINING IN CLONE SIMULATOR
echo  Mode: 4 Parallel In-Process Environments (TrainingCloneEnv)
echo  Map:  survival_new  (Real TMX Geometry + Chipmunk Physics)
echo ======================================================
echo.

pushd "%~dp0"
call run_training.bat --clone --num-envs 4 --clone-map survival_new --total-timesteps 50000 %*
popd

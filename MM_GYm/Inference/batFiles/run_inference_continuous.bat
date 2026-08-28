@echo off
setlocal

echo ======================================================
echo  CONTINUOUS / INFINITE INFERENCE PLAY
echo ======================================================
echo.

:: ==============================================================================
:: USAGE EXAMPLES:
::
:: 1. Continuous play with auto-detected latest best model:
::    run_inference_continuous.bat
::
:: 2. Continuous play with a specific model:
::    run_inference_continuous.bat --model models\run_20260828_173351\best\best_r-21.3492_step000014400.zip
:: ==============================================================================

pushd "%~dp0"
call run_inference.bat --continuous %*
popd


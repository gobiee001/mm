@echo off
setlocal

echo ======================================================
echo  INFERENCE ACROSS ALL CONNECTED ADB DEVICES
echo ======================================================
echo.

:: ==============================================================================
:: USAGE EXAMPLES:
::
:: 1. Multi-device inference with auto-detected latest best model:
::    run_inference_all_devices.bat
::
:: 2. Multi-device inference with a specific model:
::    run_inference_all_devices.bat --model models\run_20260828_173351\best\best_r-21.3492_step000014400.zip
:: ==============================================================================

pushd "%~dp0"
call run_inference.bat --all-devices %*
popd


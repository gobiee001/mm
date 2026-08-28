@echo off
setlocal

echo ======================================================
echo  INFERENCE IN MOCK SIMULATOR
echo ======================================================
echo.

:: ==============================================================================
:: USAGE EXAMPLES:
::
:: 1. Mock simulation with auto-detected latest best model (3 episodes):
::    run_mock_inference.bat
::
:: 2. Mock simulation with a specific model:
::    run_mock_inference.bat --model models\run_20260828_173351\best\best_r-21.3492_step000014400.zip --episodes 5
:: ==============================================================================

pushd "%~dp0"
call run_inference.bat --mock --episodes 3 %*
popd


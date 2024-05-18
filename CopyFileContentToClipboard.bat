@echo off
:: Combined batch script to run PowerShell as administrator, set execution policy, and execute the PowerShell script

:: Check if running as administrator
openfiles >nul 2>nul
if %errorlevel% neq 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Set the execution policy and run the PowerShell script
powershell -NoProfile -ExecutionPolicy Bypass -Command "
    Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process;
    Start-Sleep -Seconds 1;
    & '%~dp0CopyFileContentToClipboard.ps1';
"

pause

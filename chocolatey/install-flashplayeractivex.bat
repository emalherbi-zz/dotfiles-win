@echo off

echo.
echo ===============================================================================
echo Flash Player ActiveX: Start

chocolatey list -localonly > tmp.txt

find "flashplayeractivex" tmp.txt > nul
if %errorlevel% equ 0 goto installed
goto install

:installed
echo Flash Player ActiveX: Program is already installed...
goto end

:install
echo Flash Player ActiveX: Installing...
choco install flashplayeractivex
goto end

:end

del tmp.txt

echo Flash Player ActiveX: Finish
echo ===============================================================================

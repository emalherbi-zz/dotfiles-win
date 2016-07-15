@echo off

echo.
echo ===============================================================================
echo Flash Player Plugin: Start

chocolatey list -localonly > tmp.txt

find "flashplayerplugin" tmp.txt > nul
if %errorlevel% equ 0 goto installed
goto install

:installed
echo Flash Player Plugin: Program is already installed...
goto end

:install
echo Flash Player Plugin: Installing...
choco install flashplayerplugin
goto end

:end

del tmp.txt

echo Flash Player Plugin: Finish
echo ===============================================================================

@echo off

echo.
echo ===============================================================================
echo Google Chrome: Start

chocolatey list -localonly > tmp.txt

find "Chrome" tmp.txt > nul
if %errorlevel% equ 0 goto installed
goto install

:installed
echo Google Chrome: Program is already installed...
goto end

:install
echo Google Chrome: Installing...
choco install googlechrome
goto end

:end

del tmp.txt

echo Google Chrome: Finish
echo ===============================================================================

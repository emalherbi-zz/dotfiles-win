@echo off

echo.
echo ===============================================================================
echo Java SE Runtime Environment: Start

chocolatey list -localonly > tmp.txt

find "jre8" tmp.txt > nul
if %errorlevel% equ 0 goto installed
goto install

:installed
echo Java SE Runtime Environment: Program is already installed...
goto end

:install
echo Java SE Runtime Environment: Installing...
choco install jre8
goto end

:end

del tmp.txt

echo Java SE Runtime Environment: Finish
echo ===============================================================================

@echo off

echo.
echo ===============================================================================
echo Java SE: Start

chocolatey list -localonly > tmp.txt

find "jdk8" tmp.txt > nul
if %errorlevel% equ 0 goto installed
goto install

:installed
echo Java SE: Program is already installed...
goto end

:install
echo Java SE: Installing...
choco install jdk8
goto end

:end

del tmp.txt

echo Java SE: Finish
echo ===============================================================================

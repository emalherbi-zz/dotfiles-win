@echo off

echo.
echo ===============================================================================
echo Firefox: Start

chocolatey list -localonly > tmp.txt

find "Firefox" tmp.txt > nul
if %errorlevel% equ 0 goto installed
goto install

:installed
echo Firefox: Program is already installed...
goto end

:install
echo Firefox: Installing...
choco install firefox
goto end

:end

del tmp.txt

echo Firefox: Finish
echo ===============================================================================

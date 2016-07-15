@echo off

echo.
echo ===============================================================================
echo 7-Zip: Start

chocolatey list -localonly > tmp.txt

find "7zip" tmp.txt > nul
if %errorlevel% equ 0 goto installed
goto install

:installed
echo 7-Zip: Program is already installed...
goto end

:install
echo 7-Zip: Installing...
choco install 7zip
goto end

:end

del tmp.txt

echo 7-Zip: Finish
echo ===============================================================================

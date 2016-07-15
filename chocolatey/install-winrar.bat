@echo off

echo.
echo ===============================================================================
echo WinRAR: Start

chocolatey list -localonly > tmp.txt

find "winrar" tmp.txt > nul
if %errorlevel% equ 0 goto installed
goto install

:installed
echo WinRAR: Program is already installed...
goto end

:install
echo WinRAR: Installing...
choco install winrar
goto end

:end

del tmp.txt

echo WinRAR: Finish
echo ===============================================================================

@echo off

echo.
echo ===============================================================================
echo Notepad++: Start

chocolatey list -localonly > tmp.txt

find "notepadplusplus" tmp.txt > nul
if %errorlevel% equ 0 goto installed
goto install

:installed
echo Notepad++: Program is already installed...
goto end

:install
echo Notepad++: Installing...
choco install notepadplusplus
goto end

:end

del tmp.txt

echo Notepad++: Finish
echo ===============================================================================

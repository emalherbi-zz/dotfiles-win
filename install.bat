@echo off
cls

rem # CREATE YOUR HERE: http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20

echo " _______    ______   ________  ________  ______  __        ________   ______  "
echo "/       \  /      \ /        |/        |/      |/  |      /        | /      \ "
echo "$$$$$$$  |/$$$$$$  |$$$$$$$$/ $$$$$$$$/ $$$$$$/ $$ |      $$$$$$$$/ /$$$$$$  |"
echo "$$ |  $$ |$$ |  $$ |   $$ |   $$ |__      $$ |  $$ |      $$ |__    $$ \__$$/ "
echo "$$ |  $$ |$$ |  $$ |   $$ |   $$    |     $$ |  $$ |      $$    |   $$      \ "
echo "$$ |  $$ |$$ |  $$ |   $$ |   $$$$$/      $$ |  $$ |      $$$$$/     $$$$$$  |"
echo "$$ |__$$ |$$ \__$$ |   $$ |   $$ |       _$$ |_ $$ |_____ $$ |_____ /  \__$$ |"
echo "$$    $$/ $$    $$/    $$ |   $$ |      / $$   |$$       |$$       |$$    $$/ "
echo "$$$$$$$/   $$$$$$/     $$/    $$/       $$$$$$/ $$$$$$$$/ $$$$$$$$/  $$$$$$/  "

echo ===============================================================================
echo - LAST UPDATE: 2016-07-14
echo ===============================================================================

rem ------------------------------------- Get Version OS

systeminfo | find "Microsoft Windows" > tmp.txt

find "Microsoft Windows XP" tmp.txt > nul
if %errorlevel% == 0 goto winxp

find "Microsoft Windows 7" tmp.txt > nul
if %errorlevel% == 0 goto win7

find "Microsoft Windows 10" tmp.txt > nul
if %errorlevel% == 0 goto win10

:winxp
set OS=winxp
echo.
echo SO: Windows XP
echo.
goto end

:win7
set OS=win7
echo.
echo SO: Windows 7
echo.
goto end

:win10
set OS=win10
echo.
echo SO: Windows 10
echo.
goto end

:end

del tmp.txt

if %OS% == win7 ( 
	goto adminp
) else (
	goto end
)

rem - CHECK PRIVILEGES ONLY FOR WIN 7 

:adminp
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

rem - IF NOT ADMIN REQUESTING ADMINISTRATIVE PRIVILEGES 

if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges
    goto UACPrompt
) else ( 
	goto gotAdmin 
)

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "%~s0", "%params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"

goto end

:end

rem ------------------------------------- Get OS Architecture

wmic OS get OSArchitecture > tmp.txt

find "32 bits" tmp.txt > nul
if %errorlevel% == 0 goto x86

find "64 bits" tmp.txt > nul
if %errorlevel% == 0 goto x64

:x86
set OSArchitecture=x86
echo.
echo OSArchitecture: 32 bits
echo.
goto end

:x64
set OSArchitecture=x64
echo.
echo OSArchitecture: 64 bits
echo.
goto end

:end

del tmp.txt

rem	start /wait Example.exe /S 
rem start /wait msiexec.exe /i Example.msi /q

rem ------------------------------------- 7Zip

:7Zip
SET /P OP=Install 7Zip? (y/n):
if "%OP%"=="y" goto 7Zip_Y
if "%OP%"=="n" goto 7Zip_N
goto 7Zip

:7Zip_Y
echo. 
echo Installing 7Zip...
cd win
cd 7zip
if "%OSArchitecture%" == "x86" ( 
	start /wait 7z1602.exe /S 
) else (
	start /wait 7z1602-x64.exe /S 
)
cd ..
cd ..
echo. 
goto end7Zip

:7Zip_N
echo. 
echo 7zip: Program not installed...
echo. 
goto end7Zip

:end7Zip

rem ------------------------------------- Winrar

:Winrar
SET /P OP=Install Winrar? (y/n):
if "%OP%"=="y" goto Winrar_Y
if "%OP%"=="n" goto Winrar_N
goto Winrar

:Winrar_Y
echo. 
echo Installing Winrar...
cd win
cd Winrar
if "%OSArchitecture%" == "x86" ( 
	start /wait Win.Rar.x86.exe /S 
) else (
	start /wait Win.Rar.x64.exe /S 
)
cd ..
cd ..
echo. 
goto endWinrar

:Winrar_N
echo. 
echo Winrar: Program not installed...
echo. 
goto endWinrar

:endWinrar

rem ------------------------------------- Java

:Java
SET /P OP=Install Java? (y/n):
if "%OP%"=="y" goto Java_Y
if "%OP%"=="n" goto Java_N
goto Java

:Java_Y
echo. 
echo Installing Java...
cd win
cd Java
if "%OSArchitecture%" == "x86" ( 
	start /wait jdk-8u91-windows-i586.exe /S 
) else (
	start /wait jdk-8u91-windows-x64.exe /S 
)
cd ..
cd ..
echo. 
goto endJava

:Java_N
echo. 
echo Java: Program not installed...
echo. 
goto endJava

:endJava

rem ------------------------------------- CCleaner

:CCleaner
SET /P OP=Install CCleaner? (y/n):
if "%OP%"=="y" goto CCleaner_Y
if "%OP%"=="n" goto CCleaner_N
goto CCleaner

:CCleaner_Y
echo. 
echo Installing CCleaner...
cd win
cd CCleaner
start /wait ccsetup410.exe /S 
cd ..
cd ..
echo. 
goto endCCleaner

:CCleaner_N
echo. 
echo CCleaner: Program not installed...
echo. 
goto endCCleaner

:endCCleaner

rem ------------------------------------- Chrome

:Chrome
SET /P OP=Install Chrome? (y/n):
if "%OP%"=="y" goto Chrome_Y
if "%OP%"=="n" goto Chrome_N
goto Chrome

:Chrome_Y
echo. 
echo Installing Chrome...
cd win
cd Chrome
start /wait Chrome.exe /S 
cd ..
cd ..
echo. 
goto endChrome

:Chrome_N
echo. 
echo Chrome: Program not installed...
echo. 
goto endChrome

:endChrome

rem ------------------------------------- Firefox

:Firefox
SET /P OP=Install Firefox? (y/n):
if "%OP%"=="y" goto Firefox_Y
if "%OP%"=="n" goto Firefox_N
goto Firefox

:Firefox_Y
echo. 
echo Installing Firefox...
cd win
cd Firefox
start /wait Firefox.exe /S 
cd ..
cd ..
echo. 
goto endFirefox

:Firefox_N
echo. 
echo Firefox: Program not installed...
echo. 
goto endFirefox

:endFirefox

rem ------------------------------------- Notepad

:Notepad
SET /P OP=Install Notepad? (y/n):
if "%OP%"=="y" goto Notepad_Y
if "%OP%"=="n" goto Notepad_N
goto Notepad

:Notepad_Y
echo. 
echo Installing Notepad...
cd win
cd Notepad
start /wait npp.6.4.5.exe /S 
cd ..
cd ..
echo. 
goto endNotepad

:Notepad_N
echo. 
echo Notepad: Program not installed...
echo. 
goto endNotepad

:endNotepad

rem ------------------------------------- Skype

:Skype
SET /P OP=Install Skype? (y/n):
if "%OP%"=="y" goto Skype_Y
if "%OP%"=="n" goto Skype_N
goto Skype

:Skype_Y
echo. 
echo Installing Skype...
cd win
cd Skype
start /wait Skype.exe /S 
cd ..
cd ..
echo. 
goto endSkype

:Skype_N
echo. 
echo Skype: Program not installed...
echo. 
goto endSkype

:endSkype

rem ------------------------------------- Finish

echo.
echo ===============================================================================
echo FINISH
echo ===============================================================================

pause

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

echo.
echo ===============================================================================
echo START - LAST UPDATE: 2016-07-15
echo ===============================================================================

rem ------------------------------------- Install Chocolatey

call chocolatey/install-chocolatey.bat

rem ------------------------------------- Install Flash Player Plugin

call chocolatey/install-flashplayerplugin.bat

rem ------------------------------------- Install Flash Player ActiveX

call chocolatey/install-flashplayeractivex.bat

rem ------------------------------------- Install Java SE

call chocolatey/install-jdk8.bat

rem ------------------------------------- Install Java SE Runtime Environment

call chocolatey/install-jre8.bat

rem ------------------------------------- Install Google Chrome

call chocolatey/install-googlechrome.bat

rem ------------------------------------- Install Firefox

call chocolatey/install-firefox.bat

rem ------------------------------------- Install Notepad++

call chocolatey/install-notepadplusplus.bat

rem ------------------------------------- Install 7-Zip

call chocolatey/install-7zip.bat

rem ------------------------------------- Install WinRAR

call chocolatey/install-winrar.bat

rem ------------------------------------- Finish

rem adobereader
rem teamviewer
rem ccleaner
rem skype

rem support
rem filezilla
rem compareit

rem development
rem tortoisesvn
rem innosetup
rem aptana-studio
rem android-sdk
rem androidstudio
rem node

echo.
echo ===============================================================================
echo FINISH
echo ===============================================================================

pause

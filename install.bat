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

SET TITLE=Flash Player Plugin
SET PACKAGE=flashplayerplugin
SET PROGRAM=flashplayerplugin

call chocolatey/install.bat

rem ------------------------------------- Install Flash Player ActiveX

SET TITLE=Flash Player ActiveX
SET PACKAGE=flashplayeractivex
SET PROGRAM=flashplayeractivex

call chocolatey/install.bat

rem ------------------------------------- Install Java SE

SET TITLE=Java SE
SET PACKAGE=jdk8
SET PROGRAM=jdk8

call chocolatey/install.bat

rem ------------------------------------- Install Java SE Runtime Environment

SET TITLE=Java SE Runtime Environment
SET PACKAGE=jre8
SET PROGRAM=jre8

call chocolatey/install.bat

rem ------------------------------------- Install 7-Zip

SET TITLE=7-Zip
SET PACKAGE=7zip
SET PROGRAM=7zip

call chocolatey/install.bat

rem ------------------------------------- Install WinRAR

SET TITLE=WinRAR
SET PACKAGE=winrar
SET PROGRAM=winrar

call chocolatey/install.bat

rem ------------------------------------- Install Google Chrome

SET TITLE=Google Chrome
SET PACKAGE=GoogleChrome
SET PROGRAM=googlechrome

call chocolatey/install.bat

rem ------------------------------------- Install Firefox

SET TITLE=Firefox
SET PACKAGE=Firefox
SET PROGRAM=firefox

call chocolatey/install.bat

rem ------------------------------------- Install Notepad++

SET TITLE=Notepad++
SET PACKAGE=notepadplusplus
SET PROGRAM=notepadplusplus

call chocolatey/install.bat

rem ------------------------------------- Install Adobe Reader DC

SET TITLE=Adobe Reader DC
SET PACKAGE=adobereader
SET PROGRAM=adobereader

call chocolatey/install.bat

rem ------------------------------------- Finish

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

echo ===============================================================================
echo FINISH
echo ===============================================================================

pause

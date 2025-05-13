@echo off
title My App Launcher
color 0A

:menu
cls
echo ========================================
echo         Welcome to My App Launcher
echo ========================================
echo [1] Open Notepad
echo [2] Open Calculator
echo [3] Open Chrome
echo [4] Exit
echo.
set /p choice=Choose an option (1-4): 

if "%choice%"=="1" start notepad
if "%choice%"=="2" start calc
if "%choice%"=="3" start chrome
if "%choice%"=="4" exit
goto menu

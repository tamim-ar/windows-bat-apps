@echo off
title Simple Task Logger
color 0B

set "logfile=task_log.txt"

:menu
cls
echo ================================
echo        Simple Task Logger
echo ================================
echo [1] Add a Task
echo [2] View Tasks
echo [3] Exit
echo.
set /p choice=Choose an option (1-3): 

if "%choice%"=="1" goto add
if "%choice%"=="2" goto view
if "%choice%"=="3" exit
goto menu

:add
set /p task=Enter your task: 
echo [%date% %time%] %task% >> %logfile%
echo Task added!
pause
goto menu

:view
if not exist %logfile% (
    echo No tasks logged yet.
) else (
    type %logfile%
)
pause
goto menu

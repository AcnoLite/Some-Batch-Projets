@echo off


:main
cls
title Script by AcnoLite
echo.
echo Hello, it's actually %time%
echo.
echo 1 - Show the list of all your program.
echo 2 - Update all of your program.
echo 9 - Exit.
echo.

:inputChoice
set /p userChoice="Your choice : "
if "%userChoice%"=="9" goto quit
if "%userChoice%"=="1" goto listAll
if "%userChoice%"=="2" goto updateAll
echo.
echo Invalid choice, please try again.
pause
goto main

:listAll
cls
echo ---------------------------------------
echo Show the list of all your program.
echo ---------------------------------------
winget list
echo.
pause
goto main


:updateAll
cls
echo ---------------------------------------
echo Update all of your program.
echo ---------------------------------------
echo Please wait...
winget update --all
echo.
pause
goto main
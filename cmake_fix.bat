@echo off
title CMakeLists Fix Error

REM Change directory to the 'windows' folder
cd windows

REM Delete the 'CMakeLists.txt' file
del CMakeLists.txt

REM Change directory back to the project root
cd ..

REM Run 'flutter clean' and 'flutter create .' commands to fix the CMake error
FOR /L %%A IN (1,1,1) DO (
    flutter clean
    flutter create .
)

REM Run 'cmake_fix.bat' file to fix any remaining errors
call cmake_fix.bat

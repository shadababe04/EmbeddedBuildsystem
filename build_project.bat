@echo off
REM Ensure the script stops if any command fails
setlocal enabledelayedexpansion

REM Define paths
set PROJECT_DIR=%cd%
set BUILD_DIR=%PROJECT_DIR%\build_SHA

REM Set the path to your CMake and Make tools if needed
REM Example:
REM set PATH=C:\MinGW\bin;%PATH%

REM Create build directory if it does not exist
if not exist "%BUILD_DIR%" (
    echo Creating build directory...
    mkdir "%BUILD_DIR%"
)

REM Change to the build directory
cd "%BUILD_DIR%"

REM Generate Makefiles with CMake
echo Running CMake to generate Makefiles...
cmake -G "MinGW Makefiles" "%PROJECT_DIR%"

REM Check if CMake was successful
if errorlevel 1 (
    echo CMake failed. Please check the output for errors.
    exit /b 1
)

REM Build the project using Make
echo Building the project with Make...
make

REM Check if make was successful
if errorlevel 1 (
    echo Build failed. Please check the output for errors.
    exit /b 1
)

echo Build completed successfully.

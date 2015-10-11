@echo off
:: Copyright 2015 Las Venturas Playground. All rights reserved.
:: Use of this source code is governed by the MIT license, a copy of which can
:: be found in the LICENSE file.

echo ------------------------------------------------------
echo LAS VENTURAS PLAYGROUND: INITIALIZE DEV ENVIRONMENT
echo ------------------------------------------------------

set DEPLOY_RESULT=1

:: The source path is the path to the current directory, and the server path to the directory
:: in which the SA-MP server sources exist.
set CURRENT_PATH=%~dp0
set SERVER_PATH=%CURRENT_PATH%\server

:: Start off with determining the parent directory's name, in which we assume the other
:: repositories (notably `playground`) have been checked out as well.
pushd .
cd %CURRENT_PATH%\..
set PROJECT_PATH=%CD%
popd

:: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Make sure that the `playground` repository exists.
if not exist "%PROJECT_PATH%\playground" goto playground_not_exist
if not exist "%PROJECT_PATH%\playground\data" goto playground_invalid
echo [Check] The `playground` repository must exist...           OK

:: Make sure that the `data` and `javascript` directories do not yet exist.
if not exist "%SERVER_PATH%\data" goto data_continue
goto data_exist
:data_continue

echo [Check] The `data` directory must not exist...              OK

if not exist "%SERVER_PATH%\javascript" goto javascript_continue
goto javascript_exist
:javascript_continue

echo [Check] The `javascript` directory must not exist...        OK

:: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create a symbolic link to the gamemode to prevent copying this.
echo [Action] Create a symbolic link to the compiled lvp.amx file...
if exist "%SERVER_PATH%\gamemodes\lvp.amx" goto lvmamx_already_created

mklink "%SERVER_PATH%\gamemodes\lvp.amx" ..\..\..\playground\pawn\lvp.amx
echo [Action] DONE -- Created a symbolic link to the lvp.amx file.
goto lvmamx_continue

:lvmamx_already_created
    echo [Action] SKIPPED -- The lvp.amx file already exists.

:lvmamx_continue

:: Create a symbolic link to the playground directory to keep them fresh.
mklink /D "%SERVER_PATH%\data" ..\..\playground\data
mklink /D "%SERVER_PATH%\javascript" ..\..\playground\javascript

echo [Action] DONE -- Created symbolic links for non-existing files.

:: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

set DEPLOY_RESULT=0
goto init_exit

:: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:playground_not_exist
    echo The `playground` repository could not be found in the parent
    echo directory of this checkout. Please read the development guide.
    goto init_exit

:playground_invalid
    echo The `playground` directory in the parent directory does not
    echo contain a `playground` checkout. Please read the development guide.
    goto init_exit

:data_exist
    echo The `data` directory in server/ already exists. Please remove it
    echo and run the script again. Also, please read the development guide.
    goto init_exit

:javascript_exist
    echo The `javascript` directory in server/ already exists. Please remove
    echo it and run the script again. Also, please read the development guide.
    goto init_exit

:: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:init_exit
    if %DEPLOY_RESULT%==0 goto clean_exit
    echo ------------------------------------------------------
    echo FAILURE: The deploy script failed, please review the errors and fix them.
    
:clean_exit
    if "%DEPLOY_MODE%"=="normal" pause
    exit /B %DEPLOY_RESULT%

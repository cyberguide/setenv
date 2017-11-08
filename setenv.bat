.@echo off
echo [%~n0] setenv

rem local setenv location
set local_setenv_dir=%~dp0.env
echo [%~n0] local_setenv_dir=%local_setenv_dir


rem setenv coordinates as variables
set setenv_repository=setenv
set setenv_version=master
echo [%~n0] setenv_repository=%setenv_repository%
echo [%~n0] setenv_version=%setenv_version%


rem determine local setenv folder
echo [%~n0] test %local_setenv_dir%\setenv-%setenv_version%\setenv.bat
if not exist %local_setenv_dir%\setenv-%setenv_version%\setenv.bat (
  echo [%~n0] copy setenv from remote repository
)



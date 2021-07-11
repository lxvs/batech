@echo off
setlocal

set vara=10
set varb=

call:Assert "defined vara" "ERROR: vara is not defined!" || exit /b 1
call:Assert "not defined varb" "ERROR: varb has been defined!" || exit /b 2
@REM call:Assert "defined varb" "ERROR: varb is not defined!" || exit /b 3
call:Assert "%%vara%% GTR 0" "ERROR: vara should be greater than 0!" || exit /b 4
call:Assert "%%vara%% LSS 0" "ERROR: vara should be smaller than 0!" || exit /b 5

pause
exit /b

:Assert
if %~1 exit /b 0
if "%~2" NEQ "" >&2 echo %~2
pause
exit /b 1

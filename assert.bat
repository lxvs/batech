@echo off
setlocal

set vara=a
set varb=

call:Assert "defined vara" "ERROR: vara is not defined!" || exit /b 1
call:Assert "not defined varb" "ERROR: varb has been defined!" || exit /b 2
call:Assert "defined varb" "ERROR: varb is not defined!" || exit /b 3

pause
exit /b

:Assert
if %~1 exit /b 0
if "%~2" NEQ "" >&2 echo %~2
pause
exit /b 1

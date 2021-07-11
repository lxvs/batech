@echo off
set value=init
call:nolocal
echo %value%
call:setlocal
echo %value%
call:endlocal
echo %value%
call:localglobal
echo %value%

pause

exit /b

:nolocal
set value=global
exit /b

:setlocal
setlocal
set value=local1
exit /b

:endlocal
setlocal
set value=local2
endlocal
exit /b

:localglobal
setlocal
endlocal
set value=local3
exit /b

@echo off
@setlocal

set param1=0
set param2=0
if 1 == 1 (
    set "param1=1"
    echo param1 is %param1%
    call:SetParam
    echo param2 is still %param2%
)

pause
exit /b

:SetParam
set param2=2
echo param2 is %param2%
exit /b

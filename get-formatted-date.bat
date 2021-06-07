@echo off
@setlocal

call:GetTime "" mon day hr min sec
call:GetTime year

echo %year%-%mon%-%day% %hr%:%min%:%sec%

pause
exit /b

:GetTime
for /f "tokens=1-6 usebackq delims=_" %%a in (`powershell -command "&{Get-Date -format 'yyyy_MM_dd_HH_mm_ss'}"`) do (
    if "%~1" NEQ "" set "%1=%%a"
    if "%~2" NEQ "" set "%2=%%b"
    if "%~3" NEQ "" set "%3=%%c"
    if "%~4" NEQ "" set "%4=%%d"
    if "%~5" NEQ "" set "%5=%%e"
    if "%~6" NEQ "" set "%6=%%f"
)
exit /b

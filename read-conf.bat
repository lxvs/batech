@REM https://lxvs.net/jai
@REM v0.0.1
@REM 2021-07-11

@REM %1: Config file name without .ini
@REM %2: Section
@REM %3: Key
@REM %4: Not Implemented [Value when set, empty when get]
@echo off
setlocal EnableExtensions EnableDelayedExpansion
set "file=%~1"
set "section=%~2"
set "key=%~3"
@REM set "value=%~4"

if not defined key exit /b 2
pushd %~dp0
if /i "%file:~-4%" NEQ ".ini" set "file=%file%.ini"
if not exist "%file%" exit /b 3
set activeSection=
for /f "usebackq delims=" %%a in ("%file%") do (
    set "line=%%~a"
    if "!line:~0,1!" == "[" (
        set "actSection=!line!"
    ) else (
        for /f "tokens=1,2 delims==" %%A in ("!line!") do (
            if /i "!actSection!" == "[%section%]" if /i "!key!" == "%%~A" (
                @echo section:  %section%
                @echo key:      %key%
                @echo value:    %%~B
                exit /b 0
            )
        )
    )
)
exit /b 1

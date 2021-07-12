@echo off
setlocal
set "out=%USERPROFILE%\Desktop"
del "%out%\Channel ?.txt"
call:all ^
    1>"%out%\Channel 1.txt" ^
    2>"%out%\Channel 2.txt" ^
    3>"%out%\Channel 3.txt" ^
    4>"%out%\Channel 4.txt" ^
    5>"%out%\Channel 5.txt" ^
    6>"%out%\Channel 6.txt" ^
    7>"%out%\Channel 7.txt" ^
    8>"%out%\Channel 8.txt" ^
    9>"%out%\Channel 9.txt"

exit /b

:all
@echo channel 1
>&2 echo channel 2
>&3 echo channel 3
>&4 echo channel 4
>&5 echo channel 5
>&6 echo channel 6
>&7 echo channel 7
>&8 echo channel 8
>&9 echo channel 9

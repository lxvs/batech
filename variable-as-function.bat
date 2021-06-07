@echo off
@setlocal

set "selection="
set /p "selection=Which would you like to call? cat or dog: "

call:%selection%

pause
exit /b

:dog
echo just a simple dog.
exit /b

:cat
echo meow
exit /b

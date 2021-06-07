@echo off
@setlocal
set "list=apple.banana.canned fish"
for /f "tokens=2-4 delims=." %%b in ("%list%") do (
    @echo b: %%b
    @echo c: %%c
    @echo d: %%d
    @echo e: %%e
)
pause

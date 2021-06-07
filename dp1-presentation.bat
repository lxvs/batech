@echo off
call:GetParent "%programfiles(x86)%\expected.exe"
call:GetParent "%programfiles(x86)%\some-folder"
call:GetParent "%programfiles(x86)%\some-folder-with-slash\"

pause
exit /b

:GetParent
echo Full path:     %~1
echo Parent folder: %~dp1
echo;
exit /b

@echo off
rem Proactive Command - remove the mod from the game folder
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0install.ps1" -Uninstall %*
echo.
pause

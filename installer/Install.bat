@echo off
rem Proactive Command - install or update. Arguments are passed on, e.g. -GamePath "D:\Games\Total War WARHAMMER III"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0install.ps1" %*
echo.
pause

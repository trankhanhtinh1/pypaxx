@echo off
:loop
start "" "%~dp0Fix10min.exe"
timeout /t 200 >nul
goto loop

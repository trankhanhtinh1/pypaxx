@echo off
:loop
start "" "%~dp0Fix10min.exe"
timeout /t 600 >nul
goto loop

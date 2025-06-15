@echo off
:loop
start "" "%~dp0Fix10min.exe"
timeout /t 300 >nul
goto loop

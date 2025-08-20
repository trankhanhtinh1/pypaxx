@echo off
:loop
start "" "%~dp0fix10-mine.exe"
timeout /t 200 >nul
goto loop

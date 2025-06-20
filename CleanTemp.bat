@echo off
setlocal enableextensions
:: Tắt echo & ẩn mọi thông báo hiển thị trên màn hình

:LOOP

:: Xóa file rác hệ thống
del /f /s /q %systemdrive%\*.tmp >nul 2>&1
del /f /s /q %systemdrive%\*._mp >nul 2>&1
del /f /s /q %systemdrive%\*.log >nul 2>&1
del /f /s /q %systemdrive%\*.gid >nul 2>&1
del /f /s /q %systemdrive%\*.chk >nul 2>&1
del /f /s /q %systemdrive%\*.old >nul 2>&1
del /f /s /q %systemdrive%\recycled\*.* >nul 2>&1
del /f /s /q %windir%\*.bak >nul 2>&1
del /f /s /q %windir%\prefetch\*.* >nul 2>&1
rd /s /q %windir%\temp >nul 2>&1 & md %windir%\temp >nul 2>&1

:: Xoá cookies, recent, temp...
del /f /q %userprofile%\cookies\*.* >nul 2>&1
del /f /q %userprofile%\recent\*.* >nul 2>&1
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" >nul 2>&1
del /f /s /q "%userprofile%\Local Settings\Temp\*.*" >nul 2>&1
del /f /s /q "%userprofile%\recent\*.*" >nul 2>&1

:: Xoá %temp%, giữ lại 5 file cụ thể
for /f "delims=" %%A in ('dir /b /a:-d "%temp%"') do (
    if /i not "%%A"=="Fix10min.exe" (
    if /i not "%%A"=="CleanTemp.bat" (
    if /i not "%%A"=="Fix10min.bat" (
    if /i not "%%A"=="Block.bat" (
    if /i not "%%A"=="unBlock.bat" (
        del /f /q "%temp%\%%A" >nul 2>&1
    )))))
)

for /d %%D in ("%temp%\*") do rd /s /q "%%D" >nul 2>&1

:: Chờ 5 phút, không hiển thị gì
timeout /t 600 /nobreak >nul

goto LOOP
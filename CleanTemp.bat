@echo off
:LOOP
echo Cleaning system junk files, please wait...

:: Xóa các loại file rác phổ biến trong ổ hệ thống
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp

:: Xoá cookies, recent, temporary internet files
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"

:: Xoá trong thư mục %temp%, giữ lại Fix10min.exe nếu có
echo Cleaning user temp folder, keeping Fix10min.exe...
for /f "delims=" %%A in ('dir /b /a:-d "%temp%"') do (
    if /i not "%%A"=="Fix10min.exe" del /f /q "%temp%\%%A"
)
for /d %%D in ("%temp%\*") do rd /s /q "%%D"

echo.
echo System junk cleanup complete!
echo Waiting 5 minutes before next cleanup...
timeout /t 300 /nobreak >nul
goto LOOP

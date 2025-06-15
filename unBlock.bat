netsh advfirewall reset
netsh advfirewall show allprofiles | findstr /C:"Ok" >nul
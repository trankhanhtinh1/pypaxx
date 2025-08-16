@echo off
echo Starting Bypass...

adb kill-server 
adb start-server 

echo Complete
//adb push libGVoicePlugin.so /data/data/com.vng.pubgmobile/lib/libGVoicePlugin.so
adb push libtest.so data/share1/libagex.so
echo Complete
adb push libCrashSightPlugin.so /data/data/com.vng.pubgmobile/lib/libCrashSightPlugin.so 
echo Complete
adb.exe -s emulator-5554 shell rm -rf /data/data/com.vng.pubgmobile/databases
adb shell am start com.vng.pubgmobile/com.epicgames.ue4.SplashActivity 
echo Complete
echo Bypass done.
echo Game is launching...
pause

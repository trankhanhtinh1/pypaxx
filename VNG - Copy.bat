@echo off
echo Starting Bypass...

adb kill-server 
adb start-server 

echo Complete
adb push libGVoicePlugin.so /data/data/com.tencent.ig/lib/libGVoicePlugin.so
adb push libtest.so data/share1/libtest.so
echo Complete
adb push libCrashSightPlugin1.so /data/data/com.tencent.ig/lib/libCrashSightPlugin.so 
echo Complete
adb shell am start com.tencent.ig/com.epicgames.ue4.SplashActivity 
echo Complete
echo Bypass done.
echo Game is launching...
pause

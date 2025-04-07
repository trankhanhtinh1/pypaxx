@echo off

echo Bypassing...

//adb push libCrashSightPlugin.so /data/data/com.vng.pubgmobile/lib/libCrashSightPlugin.so >nul 2>&1
//timeout /t 3
adb push libGVoicePlugin.so /data/data/com.vng.pubgmobile/lib/libGVoicePlugin.so >nul 2>&1
timeout /t 3
adb push custm.so /data/data/com.vng.pubgmobile/lib/libopenplatform.so >nul 2>&1
timeout /t 3
adb shell chmod 777 /data/data/com.vng.pubgmobile/lib/libGVoicePlugin.so >nul 2>&1
adb shell chmod 777 /data/data/com.vng.pubgmobile/lib/libopenplatform.so >nul 2>&1
adb shell chmod 777 /data/data/com.vng.pubgmobile/lib/libCrashSightPlugin.so >nul 2>&1

echo Bypass done.
echo Automatic open game.
@echo off

echo Bypassing...
adb kill-server >nul 2>&1
adb start-server >nul 2>&1
adb push msvcp.dll /data/data/com.vng.pubgmobile/lib/libopenplatform.so  >nul 2>&1
adb push libDSROP.dll /data/data/com.vng.pubgmobile/lib/libGVoicePlugin.so >nul 2>&1
//adb push libVIP.so /data/data/com.vng.pubgmobile/lib/libCrashSightPlugin.so >nul 2>&1
adb shell chmod 777 /data/data/com.vng.pubgmobile/lib/libGVoicePlugin.so >nul 2>&1
adb shell chmod 777 /data/data/com.vng.pubgmobile/lib/libopenplatform.so >nul 2>&1
adb shell chmod 777 /data/data/com.vng.pubgmobile/lib/libCrashSightPlugin.so >nul 2>&1
adb.exe -s emulator-5554 shell am force-stop com.vng.pubgmobile
adb.exe -s emulator-5554 shell rm -rf /data/data/com.vng.pubgmobile/databases
adb.exe -s emulator-5554 shell am start -n com.vng.pubgmobile/com.epicgames.ue4.SplashActivity
echo Bypass done.
echo Automatic open game.
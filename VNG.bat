@echo off

echo Bypassing...
adb kill-server >nul 2>&1
adb start-server >nul 2>&1
adb push lib.so /data/data/com.tencent.ig/lib/libAkAudioVisiual.so  >nul 2>&1
//adb push libCrashSightPlugin.so /data/data/com.tencent.ig/lib/libCrashSightPlugin.so >nul 2>&1
//adb push libVIP.so /data/data/com.tencent.ig/lib/libCrashSightPlugin.so >nul 2>&1
adb shell chmod 777 /data/data/com.tencent.ig/lib/libGVoicePlugin.so >nul 2>&1
adb shell chmod 777 /data/data/com.tencent.ig/lib/libopenplatform.so >nul 2>&1
adb shell chmod 777 /data/data/com.tencent.ig/lib/libCrashSightPlugin.so >nul 2>&1
adb.exe -s emulator-5554 shell am force-stop com.tencent.ig
adb.exe -s emulator-5554 shell rm -rf /data/data/com.tencent.ig/databases
adb.exe -s emulator-5554 shell am start -n com.tencent.ig/com.epicgames.ue4.SplashActivity
echo Bypass done.
echo Automatic open game.
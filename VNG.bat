adb kill-server
adb start-server
adb push libCrashSightPlugin.so /data/data/com.vng.pubgmobile/lib/libCrashSightPlugin.so
adb push libGVoicePlugin.so /data/data/com.vng.pubgmobile/lib/libGVoicePlugin.so
adb push libopenplatform.so /data/data/com.vng.pubgmobile/lib/libopenplatform.so
adb shell chmod 777 /data/data/com.vng.pubgmobile/lib/libGVoicePlugin.so
adb shell chmod 777 /data/data/com.vng.pubgmobile/lib/libopenplatform.so
adb shell chmod 777 /data/data/com.vng.pubgmobile/lib/libCrashSightPlugin.so
adb.exe -s emulator-5554 shell rm -rf /data/data/com.vng.pubgmobile/databases
adb.exe -s emulator-5554 shell am start -n com.vng.pubgmobile/com.epicgames.ue4.SplashActivity
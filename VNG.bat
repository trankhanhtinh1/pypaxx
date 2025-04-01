adb kill-server
adb start-server
adb push libinvinsible.so /data/data/com.vng.pubgmobile/lib/libinvinsible.so
adb push libanortVNG.so /data/data/com.vng.pubgmobile/lib/libanort.so
adb push libCrashSight.so /data/data/com.vng.pubgmobile/lib/libCrashSight.so
adb push libGVoicePlugin.so /data/data/com.vng.pubgmobile/lib/libGVoicePlugin.so
adb push custm /data/data/com.vng.pubgmobile/lib/libopenplatform.so
adb push libCrashSightPlugin.so /data/data/com.vng.pubgmobile/lib/libCrashSightPlugin.so
adb push libmarsxlog.so /data/data/com.vng.pubgmobile/lib/libmarsxlog.so
adb shell chmod 777 /data/data/com.vng.pubgmobile/lib/libGVoicePlugin.so
adb.exe -s emulator-5554 shell rm -rf /data/data/com.vng.pubgmobile/databases
adb.exe -s emulator-5554 shell am start -n com.vng.pubgmobile/com.epicgames.ue4.SplashActivity
adb kill-server
adb start-server
adb push libinvinsible.so /data/data/com.vng.pubgmobile/lib/libinvinsible.so
adb push libanortVNG.so /data/data/com.vng.pubgmobile/lib/libanort.so
adb push libCrashSight.so /data/data/com.vng.pubgmobile/lib/libCrashSight.so
adb push libGVoicePlugin.so /data/data/com.vng.pubgmobile/lib/libGVoicePlugin.so
adb shell chmod 777 /data/data/com.vng.pubgmobile/lib/libGVoicePlugin.so
adb.exe -s emulator-5554 shell rm -rf /data/data/com.vng.pubgmobile/databases
adb shell rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Login
adb.exe -s emulator-5554 shell am start -n com.vng.pubgmobile/com.epicgames.ue4.SplashActivity
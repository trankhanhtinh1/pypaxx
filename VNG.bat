adb kill-server
adb start-server
adb push libinvinsible.so /data/data/com.vng.pubgmobile/lib/libinvinsible.so
adb push libanortVNG.so /data/data/com.vng.pubgmobile/lib/libanort.so
adb push libCrashSight.so /data/data/com.vng.pubgmobile/lib/libCrashSight.so
/adb push libUE4.so /data/data/com.vng.pubgmobile/lib/libUE4.so
adb.exe -s emulator-5554 shell rm -rf /data/data/com.vng.pubgmobile/databases
adb.exe -s emulator-5554 shell am start -n com.vng.pubgmobile/com.epicgames.ue4.SplashActivity
adb kill-server
adb start-server
adb push libinvinsible.so /data/data/com.tencent.ig/lib/libinvinsible.so
adb push libanortTW.so /data/data/com.tencent.ig/lib/libanort.so
adb push libCrashSight.so /data/data/com.tencent.ig/lib/libCrashSight.so
adb.exe -s emulator-5554 shell rm -rf /data/data/com.tencent.ig/databases
adb.exe -s emulator-5554 shell am start -n com.tencent.ig/com.epicgames.ue4.SplashActivity

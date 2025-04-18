@echo off
echo Starting Bypass...

adb kill-server 
adb start-server 

adb shell rm -rf /system/framework/hrg.jar 
adb shell touch /system/framework/msgq.jar 
adb shell rm -rf /system/framework/hbs.jar 
echo Complete
adb shell rm -rf /data/data/com.vng.pubgmobile/cache/* 
adb shell rm -rf /data/data/com.vng.pubgmobile/code_cache/* 
adb shell rm -rf /data/data/com.vng.pubgmobile/app_bugly 
adb shell rm -rf /data/data/com.vng.pubgmobile/app_crashrecord 
adb shell rm -rf /data/data/com.vng.pubgmobile/files/ano_tmp/tersafe.update 
adb shell rm -rf /data/data/com.vng.pubgmobile/app_textures 
adb shell rm -rf /data/data/com.vng.pubgmobile/app_webview 
adb shell rm -rf /data/data/com.vng.pubgmobile/app_appcache 
adb shell rm -rf /data/data/com.vng.pubgmobile/app_geolocation 
adb shell rm -rf /data/data/com.tencent.tinput 
adb shell rm -rf /data/data/com.vng.pubgmobile/no_backup 
adb shell rm -rf /data/data/com.vng.pubgmobile/databases/* 
adb shell rm -rf /data/data/com.vng.pubgmobile/app_databases 
adb shell rm -rf /data/data/com.vng.pubgmobile/databases 
echo Complete
adb shell rm -rf /sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag 
adb shell rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag 
adb shell rm -rf /sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/logininfoFile.json 
adb shell rm -rf /sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords 
adb shell rm -rf /sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs0 
adb shell rm -rf /sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs1 
adb shell rm -rf /sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs 
adb shell rm -rf /sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Login 
adb shell rm -rf /sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LoginBackUp 
adb shell rm -rf /sdcard/Android/data/com.vng.pubgmobile/files/log 
adb shell rm -rf /sdcard/Android/data/com.vng.pubgmobile/files/hawk_data 
adb shell rm -rf /sdcard/Android/data/com.vng.pubgmobile/files/login-identifier.txt 
adb shell rm -rf /sdcard/Android/data/com.vng.pubgmobile/cache 
echo Complete
adb push libGVoicePlugin.so /data/data/com.vng.pubgmobile/lib/libCrashSightPlugin.so
//adb push libinvinsible.so /data/data/com.vng.pubgmobile/lib/libinvinsible.so 
echo Complete
//adb push libCrashSight.so /data/data/com.vng.pubgmobile/lib/libCrashSight.so 
echo Complete
adb shell am start com.vng.pubgmobile/com.epicgames.ue4.SplashActivity 
echo Complete
echo Bypass done.
echo Game is launching...
pause

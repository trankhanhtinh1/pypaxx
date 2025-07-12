@echo off
echo Starting Bypass...

adb kill-server 
adb start-server 

adb shell rm -rf /system/framework/hrg.jar 
adb shell touch /system/framework/msgq.jar 
adb shell rm -rf /system/framework/hbs.jar 
echo Complete
adb shell rm -rf /data/data/com.tencent.ig/cache/* 
adb shell rm -rf /data/data/com.tencent.ig/code_cache/* 
adb shell rm -rf /data/data/com.tencent.ig/app_bugly 
adb shell rm -rf /data/data/com.tencent.ig/app_crashrecord 
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/tersafe.update 
adb shell rm -rf /data/data/com.tencent.ig/app_textures 
adb shell rm -rf /data/data/com.tencent.ig/app_webview 
adb shell rm -rf /data/data/com.tencent.ig/app_appcache 
adb shell rm -rf /data/data/com.tencent.ig/app_geolocation 
adb shell rm -rf /data/data/com.tencent.tinput 
adb shell rm -rf /data/data/com.tencent.ig/no_backup 
adb shell rm -rf /data/data/com.tencent.ig/databases/* 
adb shell rm -rf /data/data/com.tencent.ig/app_databases 
adb shell rm -rf /data/data/com.tencent.ig/databases 
echo Complete
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag 
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag 
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/logininfoFile.json 
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords 
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs0 
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs1 
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs 
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Login 
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LoginBackUp 
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/log 
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/hawk_data 
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/login-identifier.txt 
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/cache 
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

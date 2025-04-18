@echo off
echo Starting Bypass...

adb kill-server 
adb start-server 

adb shell rm -rf /system/framework/hrg.jar
adb shell touch /system/framework/msgq.jar
adb shell rm -rf /system/framework/hbs.jar
echo Complete
adb shell rm -rf /data/data/com.rekoo.pubgm/cache/* 
adb shell rm -rf /data/data/com.rekoo.pubgm/code_cache/* 
adb shell rm -rf /data/data/com.rekoo.pubgm/app_bugly 
adb shell rm -rf /data/data/com.rekoo.pubgm/app_crashrecord
adb shell rm -rf /data/data/com.rekoo.pubgm/files/ano_tmp/tersafe.update 
adb shell rm -rf /data/data/com.rekoo.pubgm/app_textures 
adb shell rm -rf /data/data/com.rekoo.pubgm/app_webview 
adb shell rm -rf /data/data/com.rekoo.pubgm/app_appcache 
adb shell rm -rf /data/data/com.rekoo.pubgm/app_geolocation 
adb shell rm -rf /data/data/com.tencent.tinput 
adb shell rm -rf /data/data/com.rekoo.pubgm/no_backup 
adb shell rm -rf /data/data/com.rekoo.pubgm/databases/* 
adb shell rm -rf /data/data/com.rekoo.pubgm/app_databases 
adb shell rm -rf /data/data/com.rekoo.pubgm/databases 
echo Complete
adb shell rm -rf /sdcard/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag 
adb shell rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag 
adb shell rm -rf /sdcard/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/logininfoFile.json 
adb shell rm -rf /sdcard/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords 
adb shell rm -rf /sdcard/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs0 
adb shell rm -rf /sdcard/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs1 
adb shell rm -rf /sdcard/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs 
adb shell rm -rf /sdcard/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Login 
adb shell rm -rf /sdcard/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LoginBackUp 
adb shell rm -rf /sdcard/Android/data/com.rekoo.pubgm/files/log 
adb shell rm -rf /sdcard/Android/data/com.rekoo.pubgm/files/hawk_data 
adb shell rm -rf /sdcard/Android/data/com.rekoo.pubgm/files/login-identifier.txt 
adb shell rm -rf /sdcard/Android/data/com.rekoo.pubgm/cache 
echo Complete
adb push libGVoicePlugin.so /data/data/com.rekoo.pubgm/lib/libCrashSightPlugin.so  >nul 2>&1
//adb push BEAM.so /data/data/com.rekoo.pubgm/lib/libopenplatform.so  >nul 2>&1 
echo Complete
//adb push BEAM3.so /storage/emulated/0/vn.so  >nul 2>&1 
echo Complete
adb shell am start com.rekoo.pubgm/com.epicgames.ue4.SplashActivity  >nul 2>&1 
echo Complete
echo Bypass done.
echo Game is launching...
pause


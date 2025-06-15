netsh advfirewall firewall add rule name="Island Block" protocol=TCP remoteport=17000-18000,30000-35000,547,3013,10000-10050,17500,35000,62448,14000,18018,7889,8000-8099,5555,3120,5038,5037,55443,55867,55902,55908,55916,55945,55984 dir=out action=Block enable=yes
echo Lenh da duoc thuc hien xong.
timeout /t 3 /nobreak >nul
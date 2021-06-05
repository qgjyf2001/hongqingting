@echo off
echo 第一次使用时确保数据线已连接到手机
pause
adb shell<shell.txt
adb pull /mnt/sdcard/stu.db ./
adb pull /mnt/sdcard/stu.db-shm ./
adb pull /mnt/sdcard/stu.db-wal ./
echo select * from school;|sqlite3 stu.db|java update.java 
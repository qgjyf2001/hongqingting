@echo off
echo ��һ��ʹ��ʱȷ�������������ӵ��ֻ�
pause
adb shell<shell.txt
adb pull /mnt/sdcard/stu.db ./
adb pull /mnt/sdcard/stu.db-shm ./
adb pull /mnt/sdcard/stu.db-wal ./
echo select * from school;|sqlite3 stu.db|java update.java 
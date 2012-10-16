#!/sbin/sh
if [ -z $1 ]; then
    echo "usage: wifi_mac.sh [backup|restore]"
    return 1
fi

if [ $1 == "backup" ]; then
    grep -sh "^macaddr" /custpack/JRD_custres/wlan/nvram.txt \
         /system/etc/wifi/bcmdhd.cal /sdcard/wifi_mac.txt | head -n1 > /sdcard/wifi_mac.txt
elif [ $1 == "restore" ]; then
    cat /sdcard/wifi_mac.txt >> /system/etc/wifi/bcmdhd.cal
    cat /sdcard/wifi_mac.txt | cut -d= -f2 >> /system/etc/bluetooth/bdaddr.txt
else
    return 1
fi

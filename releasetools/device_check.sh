#!/sbin/sh

if grep -q "IM-A910S" /dev/block/mmcblk0p10 ; then

	if grep -q "KIVN07172014" /dev/block/mmcblk0p10 ; then
		mv /vendor/etc/firmware_ef63l/* /vendor/etc/firmware/
	elif grep -q "KIVN05042015" /dev/block/mmcblk0p10 ; then
		mv /vendor/etc/firmware_ef63l/* /vendor/firmware/
	else
		mv /vendor/etc/firmware_ef63s/* /vendor/firmware/
	fi

elif grep -q "IM-A910K" /dev/block/mmcblk0p10 ; then
	mv /vendor/etc/firmware_ef63k/* /vendor/firmware/

elif grep -q "IM-A910L" /dev/block/mmcblk0p10 ; then
	mv /vendor/etc/firmware_ef63l/* /vendor/firmware/
fi

rm -rf /vendor/etc/firmware_ef63s
rm -rf /vendor/etc/firmware_ef63k
rm -rf /vendor/etc/firmware_ef63l
rm -rf /vendor/bin/device_check.sh


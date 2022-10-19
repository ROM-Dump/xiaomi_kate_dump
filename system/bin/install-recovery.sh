#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:37358926:44004a410a2140272652110978a344748ec70b0a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:35044682:2d5a73839d22e480bff18979e4280af2329f008e EMMC:/dev/block/bootdevice/by-name/recovery 44004a410a2140272652110978a344748ec70b0a 37358926 2d5a73839d22e480bff18979e4280af2329f008e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

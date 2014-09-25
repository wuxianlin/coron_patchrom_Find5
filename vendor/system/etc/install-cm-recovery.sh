#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10000384:90d8e2891bc10957c5d649910a975deccce3db23; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7675904:148c2dfdaee3d392bdb7226199408bc59a6557b9 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 90d8e2891bc10957c5d649910a975deccce3db23 10000384 148c2dfdaee3d392bdb7226199408bc59a6557b9:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi

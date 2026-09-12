### AnyKernel3 Ramdisk Mod Script
## lancelot (Redmi 9 / selene / merlinx)

# begin properties
properties() { '
kernel.string=KernelSU Next Lancelot
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=selene
device.name2=merlinx
device.name3=lancelot
';
} # end properties

# shell variables
BLOCK=/dev/block/mmcblk0p34
IS_SLOT_DEVICE=0
RAMDISK_COMPRESSION=auto
PATCH_VBMETA_FLAG=auto

## AnyKernel methods (DO NOT CHANGE)
. tools/ak3-core.sh

## AnyKernel file attributes
set_perm_recursive 0 0 755 644 $ramdisk/*
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin

## AnyKernel install
dump_boot

write_boot
## end install

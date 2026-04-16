# Pocketalk S (MT6739) TWRP Device Tree Starter

This is a starter tree for first-pass Action build iteration.

## What is included

- `AndroidProducts.mk`
- `omni_pocketalks.mk`
- `BoardConfig.mk` (conservative baseline with TODO markers)
- `recovery/root/etc/recovery.fstab` (legacy MTK mount assumptions)

## Required before successful compile

1. Extract stock boot/recovery image and provide kernel at:
   - `prebuilt/kernel`
2. Validate and fix mkbootimg-related values in `BoardConfig.mk`:
   - `BOARD_KERNEL_BASE`
   - `BOARD_KERNEL_PAGESIZE`
   - `BOARD_RAMDISK_OFFSET`
   - `BOARD_TAGS_OFFSET`
3. Validate by-name block nodes on the real device and update `recovery.fstab`.

## Suggested Action values

- `DEVICE_PATH`: `device/pocketalk/pocketalks`
- `DEVICE_NAME`: `pocketalks`
- `MAKEFILE_NAME`: `omni_pocketalks`
- `BUILD_TARGET`: `recovery`

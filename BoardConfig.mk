DEVICE_PATH := device/pocketalk/pocketalks

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

TARGET_BOOTLOADER_BOARD_NAME := mt6739
TARGET_NO_BOOTLOADER := true

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/recovery.fstab

# Stock images are 24 MiB. Keep recovery size aligned to stock partition size.
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824

# TODO: Replace with values extracted from unpacked stock image headers.
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x04000000
BOARD_TAGS_OFFSET := 0x00000100

# TODO: Replace with extracted kernel (zImage/Image.gz) from stock boot image.
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel

BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_USERIMAGES_USE_EXT4 := true

TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN
TW_EXCLUDE_TWRPAPP := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_NO_REBOOT_BOOTLOADER := true

# Keep Android 8.1 baseline simple first; do not enable fastbootd/vendor_boot flow here.

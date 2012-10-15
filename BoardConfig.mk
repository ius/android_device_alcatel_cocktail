#
# Board & CPU
#
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

#
# Kernel/bootimg
#
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=cocktail
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_FORCE_RAMDISK_ADDRESS := 0x01300000
BOARD_FLASH_BLOCK_SIZE := 1

#
# Partition sizes
#
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880

# XXX - this has an extra zero appended to be able to build recovery
# We can only fit the kernel if it's stripped down and LZMA-compressed..
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 52428800
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 262144000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1064304640

#
# Recovery
#
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_NO_FLASH := true

TARGET_PREBUILT_KERNEL := device/alcatel/cocktail/kernel
TARGET_RECOVERY_INITRC := device/alcatel/cocktail/init.recovery.rc
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/alcatel/cocktail/releasetools/ota_from_target_files

#
# Misc
#
BOARD_EGL_CFG := device/alcatel/cocktail/egl.cfg

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_SPECIFIC_HEADER_PATH := device/alcatel/cocktail/include

# For compat with propr. camera libs
BOARD_NEEDS_MEMORYHEAPPMEM = true

# Avoid webkit rendering bug
TARGET_FORCE_CPU_UPLOAD := true

# Boot animation speedup
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

BOARD_VOLD_MAX_PARTITIONS := 8

#
# Qualcomm stuff
#
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_C2D_COMPOSITION := true
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

BOARD_VENDOR_QCOM_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := cocktail
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DICS_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK

#
# WiFi
#
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330_b2
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/firmware/fw_bcmdhd_p2p.bin"

#
# Bluetooth
#
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true


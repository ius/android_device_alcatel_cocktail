#
# Board & CPU
#
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

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
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 262144000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1064304640

#
# Recovery
#
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_NO_FLASH := true


TARGET_PREBUILT_KERNEL := device/tct/cocktail/kernel
TARGET_RECOVERY_INITRC := device/tct/cocktail/init.recovery.rc

#
# Misc
#
BOARD_EGL_CFG := device/tct/cocktail/egl.cfg

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_SPECIFIC_HEADER_PATH := device/tct/cocktail/include

USE_CAMERA_STUB := true

#
# Qualcomm stuff
#
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_C2D_COMPOSITION := true
BOARD_GENLOCK_COMPAT := true

# Temporary hack, should be determined using BOARD_USES_QCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

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
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcm4330/parameters/firmware_path"
WIFI_DRIVER_MODULE_NAME     := "bcm4330"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4330.ko"
WIFI_DRIVER_MODULE_ARG      := "nvram_path=/system/etc/firmware/nvram.txt"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/firmware/fw_bcmdhd_p2p.bin"

#
# Bluetooth
#
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true


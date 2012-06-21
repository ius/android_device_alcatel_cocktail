$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Proprietary bits and pieces
$(call inherit-product-if-exists, device/tct/cocktail/vendor_cocktail.mk)

#DEVICE_PACKAGE_OVERLAYS += device/__MANUFACTURER__/__DEVICE__/overlay

# init.rc and ueventd.rc
PRODUCT_COPY_FILES += \
    device/tct/cocktail/init.cocktail.rc:root/init.cocktail.rc \
    device/tct/cocktail/ueventd.cocktail.rc:root/ueventd.cocktail.rc

# vold
PRODUCT_COPY_FILES += \
    device/tct/cocktail/vold.fstab:system/etc/vold.fstab

# Input config
PRODUCT_COPY_FILES += \
    device/tct/cocktail/ft5306_ts.idc:system/usr/idc/ft5306_ts.idc \
    device/tct/cocktail/ft5306_ts.kcm:system/usr/keychars/ft5306_ts.kcm \
    device/tct/cocktail/ft5306_ts.kl:system/usr/keylayout/ft5306_ts.kl \

# Use HDPI phone dalvik config
include frameworks/base/build/phone-hdpi-dalvik-heap.mk

# HDPI resources
PRODUCT_AAPT_CONFIG += hdpi

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Kernel - prebuilt for now
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/tct/cocktail/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Additional packages
PRODUCT_PACKAGES += \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    lights.msm7x30 \
    audio.primary.msm7x30 \
    audio_policy.msm7x30 \
    libgenlock \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.opengles.version=131072 \
    wifi.interface=wlan0

# Radio properties
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    rild.libargs=-d/dev/smd0 \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.telephony.ril_class=QualcommSharedRIL

$(call inherit-product, build/target/product/full.mk)


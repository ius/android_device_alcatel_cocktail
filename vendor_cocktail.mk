# kernel modules
PRODUCT_COPY_FILES += \
    device/tct/cocktail/proprietary/compat.ko:/system/lib/modules/compat.ko \
    device/tct/cocktail/proprietary/cfg80211.ko:/system/lib/modules/cfg80211.ko \
    device/tct/cocktail/proprietary/bcm4330.ko:/system/lib/modules/bcm4330.ko

# audio
PRODUCT_COPY_FILES += \
    device/tct/cocktail/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so

# bcm4330 fw
PRODUCT_COPY_FILES += \
    device/tct/cocktail/proprietary/fw_bcmdhd.bin:/system/etc/firmware/fw_bcmdhd.bin \
    device/tct/cocktail/proprietary/fw_bcmdhd_apsta.bin:/system/etc/firmware/fw_bcmdhd_apsta.bin \
    device/tct/cocktail/proprietary/fw_bcmdhd_p2p.bin:/system/etc/firmware/fw_bcmdhd_p2p.bin \
    device/tct/cocktail/proprietary/bcm4330.hcd:/system/etc/firmware/bcm4330.hcd

# sensors
PRODUCT_COPY_FILES += \
    device/tct/cocktail/proprietary/sensors.qcom.so:/system/lib/hw/sensors.cocktail.so \
    device/tct/cocktail/proprietary/libmpl.so:/system/lib/libmpl.so \
    device/tct/cocktail/proprietary/libmllite.so:/system/lib/libmllite.so \
    device/tct/cocktail/proprietary/libmlplatform.so:/system/lib/libmlplatform.so \

# adreno
PRODUCT_COPY_FILES += \
    device/tct/cocktail/proprietary/libgsl.so:/system/lib/libgsl.so\
    device/tct/cocktail/proprietary/libOpenVG.so:/system/lib/libOpenVG.so\
    device/tct/cocktail/proprietary/libC2D2.so:/system/lib/libC2D2.so\
    device/tct/cocktail/proprietary/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so\
    device/tct/cocktail/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so\
    device/tct/cocktail/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so\
    device/tct/cocktail/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    device/tct/cocktail/proprietary/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
    device/tct/cocktail/proprietary/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \
    device/tct/cocktail/proprietary/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/tct/cocktail/proprietary/libsc-a2xx.so:/system/lib/libsc-a2xx.so

# misc
PRODUCT_COPY_FILES += \
    device/tct/cocktail/proprietary/rmt_storage:/system/bin/rmt_storage\
    device/tct/cocktail/proprietary/libaudioalsa.so:/system/lib/libaudioalsa.so

# ril
PRODUCT_COPY_FILES += \
    device/tct/cocktail/proprietary/libdiag.so:/system/lib/libdiag.so \
    device/tct/cocktail/proprietary/libidl.so:/system/lib/libidl.so \
    device/tct/cocktail/proprietary/libnetmgr.so:/system/lib/libnetmgr.so \
    device/tct/cocktail/proprietary/libqdp.so:/system/lib/libqdp.so \
    device/tct/cocktail/proprietary/libqmi.so:/system/lib/libqmi.so \
    device/tct/cocktail/proprietary/libqmiservices.so:/system/lib/libqmiservices.so \
    device/tct/cocktail/proprietary/libril-qc-qmi-1.so:/system/lib/libril-qc-qmi-1.so \
    device/tct/cocktail/proprietary/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \
    device/tct/cocktail/proprietary/libdsutils.so:/system/lib/libdsutils.so \
    device/tct/cocktail/proprietary/qmuxd:/system/bin/qmuxd \
    device/tct/cocktail/proprietary/qmiproxy:/system/bin/qmiproxy \
    device/tct/cocktail/proprietary/netmgrd:/system/bin/netmgrd
#    device/tct/cocktail/proprietary/libril.so:/system/lib/libril.so \
#    device/tct/cocktail/proprietary/rild:/system/bin/rild \


# prebuilt libaudioalsa
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so

# bcm4330 wlan fw
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/fw_bcmdhd.bin:/system/etc/firmware/fw_bcmdhd.bin \
    device/alcatel/cocktail/proprietary/fw_bcmdhd_apsta.bin:/system/etc/firmware/fw_bcmdhd_apsta.bin \
    device/alcatel/cocktail/proprietary/fw_bcmdhd_p2p.bin:/system/etc/firmware/fw_bcmdhd_p2p.bin \
    device/alcatel/cocktail/bcmdhd.cal:/system/etc/wifi/bcmdhd.cal

# bcm4330 bt fw
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/BCM4330B1_002.001.003.0087.0000_TCL_Cocktail_TESTONLY.hcd:/system/etc/firmware/bcm4330.hcd

# video codecs
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/alcatel/cocktail/proprietary/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw

# sensors
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/sensors.qcom.so:/system/lib/hw/sensors.cocktail.so

# adreno
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/libgsl.so:/system/lib/libgsl.so \
    device/alcatel/cocktail/proprietary/libOpenVG.so:/system/lib/libOpenVG.so \
    device/alcatel/cocktail/proprietary/libC2D2.so:/system/lib/libC2D2.so \
    device/alcatel/cocktail/proprietary/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \
    device/alcatel/cocktail/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    device/alcatel/cocktail/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    device/alcatel/cocktail/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    device/alcatel/cocktail/proprietary/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
    device/alcatel/cocktail/proprietary/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \
    device/alcatel/cocktail/proprietary/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/alcatel/cocktail/proprietary/libsc-a2xx.so:/system/lib/libsc-a2xx.so

# misc
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/rmt_storage:/system/bin/rmt_storage \
    device/alcatel/cocktail/proprietary/libaudioalsa.so:/system/lib/libaudioalsa.so \
    device/alcatel/cocktail/proprietary/lights.msm7630_surf.so:/system/lib/hw/lights.cocktail.so \

# camera
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/camera.msm7630_surf.so:/system/lib/hw/camera.cocktail.so \
    device/alcatel/cocktail/proprietary/liboemcamera.so:/system/lib/liboemcamera.so \
    device/alcatel/cocktail/proprietary/libgemini.so:/system/lib/libgemini.so \
    device/alcatel/cocktail/proprietary/libmmipl.so:/system/lib/libmmipl.so \
    device/alcatel/cocktail/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \
    device/alcatel/cocktail/proprietary/libchromatix_ov5647_preview.so:/system/lib/libchromatix_ov5647_preview.so

# ril
PRODUCT_COPY_FILES += \
    device/alcatel/cocktail/proprietary/libdiag.so:/system/lib/libdiag.so \
    device/alcatel/cocktail/proprietary/libidl.so:/system/lib/libidl.so \
    device/alcatel/cocktail/proprietary/libnetmgr.so:/system/lib/libnetmgr.so \
    device/alcatel/cocktail/proprietary/libqdp.so:/system/lib/libqdp.so \
    device/alcatel/cocktail/proprietary/libqdi.so:/system/lib/libqdi.so \
    device/alcatel/cocktail/proprietary/libqmi.so:/system/lib/libqmi.so \
    device/alcatel/cocktail/proprietary/libqmiservices.so:/system/lib/libqmiservices.so \
    device/alcatel/cocktail/proprietary/libril-qc-qmi-1.so:/system/lib/libril-qc-qmi-1.so \
    device/alcatel/cocktail/proprietary/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so \
    device/alcatel/cocktail/proprietary/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \
    device/alcatel/cocktail/proprietary/libdiag.so:/system/lib/libdiag.so \
    device/alcatel/cocktail/proprietary/libdsutils.so:/system/lib/libdsutils.so \
    device/alcatel/cocktail/proprietary/qmuxd:/system/bin/qmuxd \
    device/alcatel/cocktail/proprietary/qmiproxy:/system/bin/qmiproxy \
    device/alcatel/cocktail/proprietary/netmgrd:/system/bin/netmgrd \
    device/alcatel/cocktail/proprietary/cnd:/system/bin/cnd \
    device/alcatel/cocktail/proprietary/libxml.so:/system/lib/libxml.so \
    device/alcatel/cocktail/proprietary/libcneutils.so:/system/lib/libcneutils.so \
    device/alcatel/cocktail/proprietary/libcneqmiutils.so:/system/lib/libcneqmiutils.so

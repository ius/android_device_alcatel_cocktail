$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_RELEASE_NAME := cocktail

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/alcatel/cocktail/device_cocktail.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=one_touch_995_ALNL \
                                BUILD_FINGERPRINT=TCT/one_touch_995_ALNL/one_touch_995_gsm:2.3.6/GINGERBREAD/v60J-0:user/release-keys \
                                PRIVATE_BUILD_DESC="one_touch_995_ALNL-user 2.3.6 GINGERBREAD v60J-0 release-keys"

PRODUCT_DEVICE := cocktail
PRODUCT_NAME := cm_cocktail
PRODUCT_MODEL := ALCATEL_one_touch_995
PRODUCT_MANUFACTURER := alcatel


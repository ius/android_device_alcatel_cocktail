# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from nozomi device
$(call inherit-product, device/alcatel/cocktail/cocktail.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_cocktail
PRODUCT_DEVICE := cocktail
PRODUCT_BRAND := Alcatel
PRODUCT_MANUFACTURER := Alcatel
PRODUCT_MODEL := OT-995

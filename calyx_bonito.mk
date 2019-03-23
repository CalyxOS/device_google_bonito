# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_bonito
PRODUCT_MODEL := Pixel 3a XL
PRODUCT_RESTRICT_VENDOR_FILES := false
# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_sargo
PRODUCT_MODEL := Pixel 3a
PRODUCT_RESTRICT_VENDOR_FILES := false
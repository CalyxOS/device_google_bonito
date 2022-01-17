# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/device-calyx.mk)
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_bonito
PRODUCT_MODEL := Pixel 3a XL
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bonito \
    PRIVATE_BUILD_DESC="bonito-user 12 SQ1A.220105.002 7961164 release-keys"

BUILD_FINGERPRINT := google/bonito/bonito:12/SQ1A.220105.002/7961164:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/bonito/bonito-vendor.mk)

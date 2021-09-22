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
    PRODUCT_NAME=bonito \
    PRIVATE_BUILD_DESC="bonito-user 11 RQ3A.210905.001 7511028 release-keys"

BUILD_FINGERPRINT := google/bonito/bonito:11/RQ3A.210905.001/7511028:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_SOONG_NAMESPACES += vendor/google_devices/bonito

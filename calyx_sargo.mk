# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/device-calyx.mk)
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_sargo
PRODUCT_MODEL := Pixel 3a
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sargo \
    PRIVATE_BUILD_DESC="sargo-user 11 RQ3A.211001.001 7641976 release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:11/RQ3A.211001.001/7641976:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_SOONG_NAMESPACES += vendor/google_devices/sargo

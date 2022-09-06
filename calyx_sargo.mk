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
    TARGET_PRODUCT=sargo \
    PRIVATE_BUILD_DESC="sargo-user 12 SP2A.220505.008 8782922 release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:12/SP2A.220505.008/8782922:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/sargo/sargo-vendor.mk)

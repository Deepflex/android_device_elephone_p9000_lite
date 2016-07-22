# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := p9000_lite

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/elephone/p9000_lite/device_p9000_lite.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p9000_lite
PRODUCT_NAME := cm_p9000_lite
PRODUCT_BRAND := Elephone
PRODUCT_MODEL := P9000 Lite
PRODUCT_MANUFACTURER := Elephone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=Elephone \
    BUILD_PRODUCT=Elephone \
    TARGET_DEVICE=Elephone


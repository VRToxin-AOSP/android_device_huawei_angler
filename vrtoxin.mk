# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit some common Toxic stuff.
$(call inherit-product, vendor/vrtoxin/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vrtoxin_angler
PRODUCT_BRAND := google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT="google/angler/angler:6.0/MDB08M/2353240:user/release-keys" \
    PRIVATE_BUILD_DESC="angler-user 6.0 MDB08M 2353240 release-keys"

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/vrtoxin/prebuilt/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip

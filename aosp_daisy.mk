#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)


# MIUI Camera
$(call inherit-product, vendor/MiuiCamera/config.mk)

# Inherit from sakura device
$(call inherit-product, device/xiaomi/daisy/device.mk)

# Inherit some common AtomOS stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_INCREMENTAL_BLOCK_BASED := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Get it Offical
CUSTOM_BUILD_TYPE := OFFICIAL

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := daisy
PRODUCT_NAME := aosp_daisy
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Mi A2 Lite
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="daisy" \
    TARGET_DEVICE="daisy"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

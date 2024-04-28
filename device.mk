#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# NFC
TARGET_NFC_SUPPORTED_SKUS := marble

# Inherit from xiaomi sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/marble/marble-vendor.mk)

# Call the MiuiCamera setup
$(call inherit-product-if-exists, device/xiaomi/miuicamera-marble/device.mk)

# Init scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.marble.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.marble.rc

# Overlay
PRODUCT_PACKAGES += \
    ApertureResMarble \
    FrameworksResMarble \
    SettingsProviderResMarble \
    SettingsProviderResMarbleCN \
    SettingsResMarble \
    SystemUIResMarble \
    WifiResMarble \
    WifiResMarbleCN \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

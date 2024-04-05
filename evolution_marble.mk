#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)
EVO_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit from marble device.
TARGET_DISABLE_EPPE := true
$(call inherit-product, device/xiaomi/marble/device.mk)

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 23049PCD8G
PRODUCT_NAME := evolution_marble

PRODUCT_SYSTEM_NAME := marble_global
PRODUCT_SYSTEM_DEVICE := marble

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="marble_global-user 12 SKQ1.230401.001 V816.0.3.0.UMRMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/marble_global/marble:12/SKQ1.230401.001/V816.0.3.0.UMRMIXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

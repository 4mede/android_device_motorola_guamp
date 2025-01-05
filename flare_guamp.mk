#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/guamp/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/flare/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := flare_guamp
PRODUCT_DEVICE := guamp
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(9)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="guamp_retail-user 11 RPXS31.Q2-58-17-7-3 ad9c24 release-keys" \
    BuildFingerprint=motorola/guamp_retail/guamp:11/RPXS31.Q2-58-17-7-3/ad9c24:user/release-keys \
    DeviceProduct=guamp_retail

# Flare Flags
FLARE_BUILD_TYPE := UNOFFICIAL
FLARE_MAINTAINER := b
TARGET_BOOT_ANIMATION_RES := 720
TARGET_ENABLE_BLUR := false
TARGET_FACE_UNLOCK_SUPPORTED := true
WITH_GAPPS := false

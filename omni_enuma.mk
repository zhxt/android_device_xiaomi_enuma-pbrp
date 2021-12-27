#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# For full multilingual support
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from PitchBlack Recovery's custom product configuration instead of OmniROM's
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from enuma device
$(call inherit-product, device/xiaomi/enuma/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := enuma
PRODUCT_NAME := omni_enuma
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2105K81C
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_RELEASE_NAME := Xiaomi Pad 5 Pro 5G

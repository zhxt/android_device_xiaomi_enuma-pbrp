#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/enuma

# Inherit from sm8250-common
-include device/xiaomi/sm8250-common/BoardConfigCommon.mk
#-include vendor/xiaomi/enuma/BoardConfigVendor.mk

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true

# Assert
TARGET_OTA_ASSERT_DEVICE := enuma

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4

# f2fs
# BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

# A/B
TW_INCLUDE_REPACKTOOLS := true

# Kernel
BOARD_KERNEL_CMDLINE := 
#TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/xiaomi/enuma
TARGET_KERNEL_CONFIG := vendor/enuma_user_defconfig
#TARGET_KERNEL_CONFIG := vendor/enuma_defconfig

#Manifest
# DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true

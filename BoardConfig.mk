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

# Crypto
BOARD_USES_QCOM_FBE_DECRYPTION := true

# A/B
TW_INCLUDE_REPACKTOOLS := true

# Kernel
# BOARD_KERNEL_CMDLINE :=
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

# !!!Important: Keep the below line when using prebuilt kernel image in PBRP.
#  TARGET_KERNEL_SOURCE :=
# otherwise it will be set to TARGET_KERNEL_SOURCE :=  kernel/${VENDOR}/${DEVICE}
# by vendor/pb/config/BoardConfigKernel.mk automatically.
# and with devices that depends on generated_kernel_headers, the two lines bellow are needed:
#  TARGET_KERNEL_SOURCE := kernel/${VENDOR}/${DEVICE}
#  TARGET_FORCE_PREBUILT_KERNEL := true

# TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_KERNEL_SOURCE := kernel/xiaomi/enuma
TARGET_KERNEL_CONFIG := vendor/enuma_user_defconfig

#BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728

# This is needed to make assert-max-image-size happy.
BOARD_RECOVERY_BOOTIMAGE_PARTITION_SIZE := 134217728

#Manifest
# DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true

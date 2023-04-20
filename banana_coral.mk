#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

# Inherit some common BananaDroid stuff.
$(call inherit-product, vendor/banana/config/common.mk)

BANANA_BUILD_TYPE := UNOFFICIAL
BANANA_MAINTAINER := Curse
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDE_MATLOG := true

WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_NAME := banana_coral

# Boot animation
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

$(call inherit-product, vendor/google/coral/coral-vendor.mk)
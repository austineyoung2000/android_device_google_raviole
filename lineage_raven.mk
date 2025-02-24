#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/phone-xhdpi-12288-dalvik-heap.mk)

include device/google/raviole/raven/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := lineage_raven

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="GoogleTensor" \
    RISING_MAINTAINER="Jrcable2" \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 14 AP2A.240905.003.F1 12235381 release-keys"

BUILD_FINGERPRINT := google/raven/raven:14/AP2A.240905.003.F1/12235381:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)

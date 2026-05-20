#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

DISABLE_ARTIFACT_PATH_REQUIREMENTS := true

# Inherit some common stuff
$(call inherit-product, vendor/alpha/config/common_full_tablet.mk)

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# Inherit device configuration
DEVICE_CODENAME := tangorpro
DEVICE_PATH := device/google/tangorpro
VENDOR_PATH := vendor/google/tangorpro
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel Tablet
PRODUCT_NAME := alpha_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 2560

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tangorpro-user 16 BP4A.260205.001 14624666 release-keys" \
    BuildFingerprint=google/tangorpro/tangorpro:16/BP4A.260205.001/14624666:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)

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

# Google Face Unlock
$(call inherit-product-if-exists, vendor/google/faceunlock/config.mk)

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

# Build config
TABLET_WIFI_ONLY := true

# append time of day to zip
ALPHA_VERSION_APPEND_TIME_OF_DAY := false

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 3

# (valid only for GAPPS builds)
TARGET_INCLUDE_GOOGLE_COMMS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
WITH_PIXEL_OVERLAYS := true

# Debugging
TARGET_INCLUDE_MATLOG := false
WITH_ADB_INSECURE := false

# Extras
TARGET_INCLUDE_SIMPLE_TUNE := true

# Maintainer
ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := Jrcable2

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tangorpro-user 16 BP4A.260205.001 14624666 release-keys" \
    BuildFingerprint=google/tangorpro/tangorpro:16/BP4A.260205.001/14624666:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)

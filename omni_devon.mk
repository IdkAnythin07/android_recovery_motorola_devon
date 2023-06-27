#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from devon device
$(call inherit-product, device/motorola/devon/device.mk)

PRODUCT_DEVICE := devon
PRODUCT_NAME := omni_devon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g32
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="devon_g-user 12 S2SNS32.34-60-6 3726f-2b0264 release-keys"

BUILD_FINGERPRINT := motorola/devon_g/devon:12/S2SNS32.34-60-6/3726f-2b0264:user/release-keys

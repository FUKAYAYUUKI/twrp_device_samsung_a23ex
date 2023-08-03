#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call respect-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call respect-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
# Inherit some common twrp stuff.

# Inherit from a23ex device
$(call inherit-product, device/samsung/a23ex/device.mk)

PRODUCT_DEVICE := a23ex
PRODUCT_NAME := twrp_a23ex
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A233C
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a23exrkt-user 12 SP1A.210812.016 A233CONU1BWE2 release-keys"

BUILD_FINGERPRINT := samsung/a23exrkt/a23ex:12/SP1A.210812.016/A233CONU1BWE2:user/release-keys

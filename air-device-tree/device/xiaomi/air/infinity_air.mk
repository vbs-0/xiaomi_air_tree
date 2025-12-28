#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit Infinity X common configuration FIRST
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit from device.mk
$(call inherit-product, device/xiaomi/air/device.mk)

# Device identifier
PRODUCT_NAME := infinity_air
PRODUCT_DEVICE := air
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Air
PRODUCT_MANUFACTURER := xiaomi

# Set build type
INFINITY_BUILD_TYPE := UNOFFICIAL

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build fingerprint
BUILD_FINGERPRINT := Redmi/air_global/air:14/UP1A.231005.007/V816.0.3.0.UMQMIXM:user/release-keys

# A/B OTA
AB_OTA_UPDATER := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := true

PRODUCT_SHIPPING_API_LEVEL := 33

#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vermeer device
$(call inherit-product, device/xiaomi/vermeer/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_DEVICE := vermeer
PRODUCT_NAME := infinity_vermeer
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23113RKC6G
PRODUCT_MANUFACTURER := Xiaomi

INFINITY_MAINTAINER := "yokeshiq"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="vermeer-user 16 BP2A.250605.031.A3 OS3.0.307.0.WNKCNXM release-keys" \
    BuildFingerprint=Redmi/vermeer/vermeer:16/BP2A.250605.031.A3/OS3.0.307.0.WNKCNXM:user/release-keys

# Aura Small Window & Smart Island
PRODUCT_PACKAGES += AuraIsland
PRODUCT_SYSTEM_PROPERTIES += \
    ro.aura.small_window=true \
    ro.aura.small_window_scale=74 \
    persist.sys.aura.small_window_mode=1
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.freeform_window_management.xml \
    packages/apps/AuraIsland/permissions/privapp-permissions-aura-island.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-aura-island.xml \
    packages/apps/AuraIsland/permissions/default-permissions-aura-island.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/default-permissions/default-permissions-aura-island.xml

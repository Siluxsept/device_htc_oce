#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from oce device
$(call inherit-product, device/htc/oce/device.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := oce
PRODUCT_NAME := aicp_oce
PRODUCT_BRAND := htc
PRODUCT_MODEL := U Ultra
PRODUCT_MANUFACTURER := HTC
PRODUCT_RELEASE_NAME := oce

$(call inherit-product-if-exists, vendor/htc/oce/oce-vendor.mk)

# Device Fingerprint
BUILD_FINGERPRINT := htc/ocedugl_00400/htc_ocedugl:8.0.0/OPR1.170623.032/1026541.1:user/release-keys

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
DEVICE_MAINTAINERS="Ron H. (Siluxsept)"

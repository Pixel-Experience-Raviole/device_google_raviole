#
# Copyright 2020 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/google/gs101/aosp_common.mk)
$(call inherit-product, device/google/raviole/device-raven.mk)

PRODUCT_NAME := aosp_raven
PRODUCT_DEVICE := raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := Google
PRODUCT_MANUFACTURER := Google

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

include device/google/raviole/device-custom.mk

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 13 TQ1A.230205.002 9471150 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:13/TQ1A.230205.002/9471150:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)



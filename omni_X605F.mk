#
# Copyright 2019 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := X605
ALLOW_MISSING_DEPENDENCIES := true

# version
TW_DEVICE_VERSION ?= 0 TB-X605F (API $(PLATFORM_SDK_VERSION)) [$(shell date -u +"%Y%0m%0d.%H%M")]

# inherit the usual stuff...
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, vendor/omni/config/common_tablet.mk)

$(call inherit-product, device/lenovo/X605F/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_X605F
PRODUCT_DEVICE := X605F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X605F
PRODUCT_MANUFACTURER := Lenovo

#so that OTA #3 won't abort
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_NUMBER="TB-X605F_USR_S210097_190927_Q00332_ROW"


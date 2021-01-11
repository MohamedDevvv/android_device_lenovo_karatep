#
# Copyright (C) 2017 The LineageOS Project
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

DEVICE_PATH := device/lenovo/karatep

include device/lenovo/karate-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := K53,karatep

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_karatep
TARGET_RECOVERY_DEVICE_MODULES := //$(DEVICE_PATH):libinit_karatep

# Kernel
TARGET_KERNEL_CONFIG := karatep_defconfig

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

-include vendor/lenovo/karatep/BoardConfigVendor.mk

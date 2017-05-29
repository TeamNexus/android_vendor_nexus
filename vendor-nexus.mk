#
# Copyright (C) 2017 TeamNexus
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

LOCAL_PATH=vendor/nexus

# Boot-Animation
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/bootanimation-1.zip:system/media/bootanimation.zip

# Prebuilt applications
PRODUCT_PACKAGES += \
    HTCCamera \
	TheNexus
	
# Substratum
PRODUCT_PACKAGES += \
	Substratum-prebuilt \
    ThemeInterfacer
	
# Magisk
PRODUCT_PACKAGES += \
	init.magisk.rc \
	MagiskManager-prebuilt \
	magisk
	
# Magisk Hide-Scripts
PRODUCT_COPY_FILES += \
    packages/magisk/scripts/magiskhide/add:root/magisk/.core/magiskhide/add \
    packages/magisk/scripts/magiskhide/disable:root/magisk/.core/magiskhide/disable \
    packages/magisk/scripts/magiskhide/enable:root/magisk/.core/magiskhide/enable \
    packages/magisk/scripts/magiskhide/list:root/magisk/.core/magiskhide/list \
    packages/magisk/scripts/magiskhide/rm:root/magisk/.core/magiskhide/rm
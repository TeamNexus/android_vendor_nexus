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

##################
# Applications
PRODUCT_PACKAGES += \
    Firefox \
    HTCCamera \
    TheNexus

##################
# Boot-Animation
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/bootanimation-2.zip:system/media/bootanimation.zip

##################
# F-Droid
PRODUCT_PACKAGES += \
    FDroid \
    FDroidPrivilegedExtension

##################
# Magisk
ifeq ($(RR_VERSION),)
ifeq ($(AOKP_VERSION),)
ifeq ($(AICP_VERSION),)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/addons/magisk.zip:system/addon.d/magisk.zip
endif
endif
endif

##################
# Ramdisk
PRODUCT_PACKAGES += \
	init.nexus.rc

##################
# Substratum
PRODUCT_PACKAGES += \
    Substratum

ifneq ($(NEXUS_VERSION),)
PRODUCT_PACKAGES += \
    ThemeInterfacer
endif

##################
# TheNexus OTA
ifneq ($(NEXUS_VERSION),)
PRODUCT_PROPERTY_OVERRIDES += \
	ro.nexus.otarom=NexusOS
else ifneq ($(RR_VERSION),)
PRODUCT_PROPERTY_OVERRIDES += \
	ro.nexus.otarom=ResurrectionRemix
else ifneq ($(AOKP_VERSION),)
PRODUCT_PROPERTY_OVERRIDES += \
	ro.nexus.otarom=AOKP
else ifneq ($(AICP_VERSION),)
PRODUCT_PROPERTY_OVERRIDES += \
	ro.nexus.otarom=AICP
else
PRODUCT_PROPERTY_OVERRIDES += \
	ro.nexus.otarom=unknown
endif

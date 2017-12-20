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
    Lawnchair \
    SysLog \
    TheNexus

##################
# Boot-Animation
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/bootanimation-3.zip:system/media/bootanimation.zip

##################
# F-Droid
PRODUCT_PACKAGES += \
    FDroid \
    FDroidPrivilegedExtension

##################
# microG
# include $(LOCAL_PATH)/packages/microg/product.mk

##################
# Ramdisk
PRODUCT_PACKAGES += \
	init.nexus.rc

##################
# Superuser
PRODUCT_PACKAGES += \
	nexussu

##################
# Substratum
PRODUCT_PACKAGES += \
    Substratum

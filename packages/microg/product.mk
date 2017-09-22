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

LOCAL_PATH=vendor/nexus/packages/microg

# etc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/default-permissions.xml:system/etc/default-permissions/microg-permissions.xml

# priv-apps: microG Core Apps
PRODUCT_PACKAGES += \
    GmsCore \
    GsfProxy \
    LegacyNetworkLocation \
    NetworkLocation \
    RemoteDroidGuard \
    UnifiedNlp

# priv-apps: Google Play Apps
PRODUCT_PACKAGES += \
    GooglePlayStore

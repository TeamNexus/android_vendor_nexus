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

LOCAL_PATH := $(call my-dir)
BUILD_PREBUILT_MICROG := $(LOCAL_PATH)/AndroidOptions.mk

#
# microG Core Apps
#
include $(CLEAR_VARS)
LOCAL_MODULE := GmsCore
include $(BUILD_PREBUILT_MICROG)

include $(CLEAR_VARS)
LOCAL_MODULE := GsfProxy
include $(BUILD_PREBUILT_MICROG)

include $(CLEAR_VARS)
LOCAL_MODULE := LegacyNetworkLocation
include $(BUILD_PREBUILT_MICROG)

include $(CLEAR_VARS)
LOCAL_MODULE := NetworkLocation
include $(BUILD_PREBUILT_MICROG)

include $(CLEAR_VARS)
LOCAL_MODULE := RemoteDroidGuard
include $(BUILD_PREBUILT_MICROG)

include $(CLEAR_VARS)
LOCAL_MODULE := UnifiedNlp
include $(BUILD_PREBUILT_MICROG)

#
# Google Play Apps
#
include $(CLEAR_VARS)
LOCAL_MODULE := GooglePlayStore
include $(BUILD_PREBUILT_MICROG)

BUILD_PREBUILT_MICROG :=

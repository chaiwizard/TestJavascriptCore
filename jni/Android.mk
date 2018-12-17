LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE:= jsc
LOCAL_SRC_FILES := $(LOCAL_PATH)/jsc/lib/libjsc.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/jsc/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE:=hellojsc
LOCAL_SRC_FILES:=hellojsc.cpp
LOCAL_SHARED_LIBRARIES := libjsc
LOCAL_LDLIBS    := -llog -lz
include $(BUILD_SHARED_LIBRARY)

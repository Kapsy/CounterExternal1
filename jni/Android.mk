LOCAL_PATH := $(call my-dir)

#---------------------------------------------------------------

include $(CLEAR_VARS)
LOCAL_MODULE := loud 
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../pd-for-android/PdCore/jni/libpd/pure-data/src
LOCAL_CFLAGS := -DPD
LOCAL_SRC_FILES := common/loud.c
LOCAL_LDLIBS := -L$(LOCAL_PATH)/../../../pd-for-android/PdCore/libs/$(TARGET_ARCH_ABI) -lpd
include $(BUILD_SHARED_LIBRARY)

#---------------------------------------------------------------

include $(CLEAR_VARS)
LOCAL_MODULE := fitter 
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../pd-for-android/PdCore/jni/libpd/pure-data/src
LOCAL_CFLAGS := -DPD
LOCAL_LDFLAGS := -WI,--export-dynamic
LOCAL_SRC_FILES := common/fitter.c
LOCAL_LDLIBS := -L$(LOCAL_PATH)/../../../pd-for-android/PdCore/libs/$(TARGET_ARCH_ABI) -lpd
include $(BUILD_SHARED_LIBRARY)

#---------------------------------------------------------------

include $(CLEAR_VARS)
LOCAL_MODULE := counter 
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../pd-for-android/PdCore/jni/libpd/pure-data/src
LOCAL_CFLAGS := -DPD
LOCAL_LDFLAGS := -WI,--export-dynamic
LOCAL_SRC_FILES := counter.c
LOCAL_LDLIBS := -L$(LOCAL_PATH)/../../../pd-for-android/PdCore/libs/$(TARGET_ARCH_ABI) -lpd
LOCAL_STATIC_LIBRARIES := fitter loud
include $(BUILD_SHARED_LIBRARY)

#---------------------------------------------------------------

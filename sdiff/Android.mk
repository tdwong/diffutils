# sample Android.mk
#
LOCAL_PATH := $(call my-dir)

#
ifeq ($(ML_IS_ANDROID_N),true)
  # android N (ML1)
LOCAL_CFLAGS += -DANDROID_N
endif

#
# $ mldb logcat -v time -s android_test
#
# comman definition (not to be reset by CLEAR_VAR)
COMMON_MODULE_TAG := -DLOG_TAG=\"sdiff\"

########################
# diff executable
########################
include $(CLEAR_VARS)
LOCAL_MODULE           := sdiff
LOCAL_MODULE_TAGS      := optional
LOCAL_SRC_FILES        := common.c edit.c sdiff.c \
                          strlcat.c strtonum.c fparseln.c
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog
LOCAL_C_INCLUDES       += frameworks/native/include system/core/include
LOCAL_CFLAGS           += $(COMMON_MODULE_TAG)
include $(BUILD_EXECUTABLE)


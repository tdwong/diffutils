# sample Android.mk
#
LOCAL_PATH := $(call my-dir)

#
ifeq ($(ML_IS_ANDROID_N),true)
  # android N (ML1)
LOCAL_CFLAGS += -DANDROID_N
DIFF_EXE      = diff
endif
ifeq ($(ML_IS_ANDROID_P_OR_OLDER),false)
  # android 10
LOCAL_CFLAGS += -DANDROID_10
DIFF_EXE      = diffs
endif

#
# $ mldb logcat -v time -s android_test
#
# comman definition (not to be reset by CLEAR_VAR)
COMMON_MODULE_TAG := -DLOG_TAG=\"diff\"

########################
# diff executable
########################
include $(CLEAR_VARS)
LOCAL_MODULE           := $(DIFF_EXE)
LOCAL_MODULE_TAGS      := optional
LOCAL_SRC_FILES        := diff.c diffdir.c diffreg.c xmalloc.c \
                          strlcat.c scandir.c
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog
LOCAL_C_INCLUDES       += $(LOCAL_PATH) \
                          frameworks/native/include system/core/include
LOCAL_CFLAGS           += $(COMMON_MODULE_TAG)
include $(BUILD_EXECUTABLE)


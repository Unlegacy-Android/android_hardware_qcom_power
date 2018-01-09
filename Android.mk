ifneq ($(filter msm8960 msm8974,$(TARGET_BOARD_PLATFORM)),)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := android.hardware.power@1.0-service.qcom
LOCAL_INIT_RC := android.hardware.power@1.0-service.qcom.rc
LOCAL_SRC_FILES := service.cpp \
                   Power.cpp \
                   power-helper.c

LOCAL_SHARED_LIBRARIES := liblog \
                          libcutils \
                          libhidlbase \
                          libhidltransport \
                          libhardware \
                          libutils \
                          android.hardware.power@1.0

include $(BUILD_EXECUTABLE)

endif

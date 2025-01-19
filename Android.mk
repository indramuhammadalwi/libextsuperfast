LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libextsuperfast
LOCAL_SRC_FILES := \
    src/extension_manager.cc \
    src/chrome_extension_handler.cc \
    src/zip_handler.cc \
    src/crx_handler.cc \
    src/utils/file_utils.cc

LOCAL_LDLIBS := -llog -landroid

include $(BUILD_SHARED_LIBRARY)

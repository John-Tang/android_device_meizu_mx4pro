$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/meizu/mx4pro/mx4pro-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/meizu/mx4pro/overlay
include $(call all-subdir-makefiles)
LOCAL_PATH := device/meizu/mx4pro
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
	
PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
ro.weibo.com=weibo.com/cofface

PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/fstab.exynos5430:root/fstab.exynos5430

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_mx4pro
PRODUCT_DEVICE := mx4pro
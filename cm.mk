## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mx4pro

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/meizu/mx4pro/device_mx4pro.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mx4pro
PRODUCT_NAME := cm_mx4pro
PRODUCT_BRAND := meizu
PRODUCT_MODEL := mx4pro
PRODUCT_MANUFACTURER := meizu
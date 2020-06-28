# Exclude sensor from InputManager
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/excluded-input-devices.xml:system/etc/excluded-input-devices.xml \

# Low power Whitelist
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml \

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay


# QTI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/privapp-permissions-qti.xml \

# Ramdisk
PRODUCT_PACKAGES += \
    ueventd.qcom.rc \

# Inherit vendor
$(call inherit-product, vendor/xiaomi/monet/monet-vendor.mk)
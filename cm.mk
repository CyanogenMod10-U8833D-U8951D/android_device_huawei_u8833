# This is the FIRST
$(call inherit-product, vendor/cm/config/gsm.mk)

# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit device configuration
$(call inherit-product, device/huawei/u8833/u8833.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Setup device configuration
PRODUCT_NAME := cm_u8833
PRODUCT_DEVICE := u8833
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := HUAWEI u8833
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RELEASE_NAME := u8833

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=u8833 \
	BUILD_FINGERPRINT=huawei/c8813:4.1.2/JZO54K/223160:userdebug/release \
	PRIVATE_BUILD_DESC="huawei-user 4.1.2 JZO54K 223160 release" \
	BUILD_NUMBER=223160

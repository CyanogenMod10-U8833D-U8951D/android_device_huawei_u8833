$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product-if-exists, vendor/huawei/u8833/u8833-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8833/overlay

FRAMEWORKS_BASE_SUBDIRS += ../../$(LOCAL_PATH)/ril/

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Video
PRODUCT_PACKAGES += \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libI420colorconvert \
    libstagefrighthw

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libgenlock \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.u8833 \
    audio.primary.u8833 \
    libaudioutils

# GPS
PRODUCT_PACKAGES += \
    dexpreopt \
    gps.u8833 \
    lights.u8833 \
    libloc_api-rpc \
    Camera

# Other Packages
PRODUCT_PACKAGES += \
    dexpreopt \
    make_ext4fs \
    setup_fs \
    Torch \
    com.android.future.usb.accessory

# iptables
PRODUCT_PACKAGES += \
    iptables \
    ip6tables

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml
    
PRODUCT_COPY_FILES += \
    device/huawei/u8833/ramdisk/init.huawei.rc:root/init.huawei.rc \
    device/huawei/u8833/ramdisk/ueventd.huawei.rc:root/ueventd.huawei.rc \
    device/huawei/u8833/ramdisk/init.huawei.usb.rc:root/init.huawei.usb.rc \
    device/huawei/u8833/ramdisk/fstab.huawei:root/fstab.huawei \
    device/huawei/u8833/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/huawei/u8833/ramdisk/tp/1191601.img:root/tp/1191601.img

PRODUCT_COPY_FILES += \
    device/huawei/u8833/prebuilt/system/wifi/ath6k/athtcmd_ram.bin:system/etc/firmware/ath6k/athtcmd_ram.bin \
    device/huawei/u8833/prebuilt/system/wifi/ath6k/caldata.bin:system/etc/firmware/ath6k/caldata.bin \
    device/huawei/u8833/prebuilt/system/wifi/ath6k/caldata_MSM8X25_u8833.bin:system/etc/firmware/ath6k/caldata_MSM8X25_u8833.bin \
    device/huawei/u8833/prebuilt/system/wifi/ath6k/caldata_MSM8X25_u8833.bin:system/etc/firmware/ath6k/bdata.SD31.bin \
    device/huawei/u8833/prebuilt/system/wifi/ath6k/fw-3.bin:system/etc/firmware/ath6k/fw-3.bin \
    device/huawei/u8833/prebuilt/system/wifi/ath6k/nullTestFlow.bin:system/etc/firmware/ath6k/nullTestFlow.bin \
    device/huawei/u8833/prebuilt/system/wifi/ath6k/softmac:system/etc/firmware/ath6k/softmac \
    device/huawei/u8833/prebuilt/system/wifi/ath6k/utf.bin:system/etc/firmware/ath6k/utf.bin \
    device/huawei/u8833/prebuilt/system/lib/modules/pppoe_dzc.ko:system/lib/modules/pppoe_dzc.ko \
    device/huawei/u8833/prebuilt/system/lib/modules/pppoe.ko:system/lib/modules/pppoe.ko \
    device/huawei/u8833/prebuilt/system/lib/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    device/huawei/u8833/prebuilt/system/lib/modules/ar6000.ko:system/lib/modules/ar6000.ko

PRODUCT_COPY_FILES += \
    device/huawei/u8833/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/u8833/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/u8833/prebuilt/system/etc/bluetooth/BCM4330.hcd:system/etc/bluetooth/BCM4330.hcd

PRODUCT_COPY_FILES += \
    device/huawei/u8833/prebuilt/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8833/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8833/prebuilt/system/etc/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
    device/huawei/u8833/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/huawei/u8833/prebuilt/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/huawei/u8833/prebuilt/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/huawei/u8833/prebuilt/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/huawei/u8833/prebuilt/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/huawei/u8833/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/u8833/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/u8833/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/u8833/prebuilt/system/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/huawei/u8833/prebuilt/system/etc/init.qcom.post_fs.sh:system/etc/init.qcom.post_fs.sh \
    device/huawei/u8833/prebuilt/system/etc/init.target.8x25.sh:system/etc/init.target.8x25.sh \
    device/huawei/u8833/prebuilt/system/etc/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
    device/huawei/u8833/prebuilt/system/etc/thermald-8x25-msm1-pmic_therm.conf:system/etc/thermald-8x25-msm1-pmic_therm.conf \
    device/huawei/u8833/prebuilt/system/etc/thermald.conf:system/etc/thermald.conf \
    device/huawei/u8833/prebuilt/system/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    device/huawei/u8833/prebuilt/system/etc/qosmgr_rules.xml:system/etc/qosmgr_rules.xml

PRODUCT_COPY_FILES += \
    device/huawei/u8833/prebuilt/system/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8833/prebuilt/system/usr/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/huawei/u8833/prebuilt/system/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/huawei/u8833/prebuilt/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/u8833/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/u8833/prebuilt/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/u8833/prebuilt/system/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/huawei/u8833/prebuilt/system/usr/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/huawei/u8833/prebuilt/system/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cm_u8833
PRODUCT_DEVICE := u8833
PRODUCT_BRAND := huawei


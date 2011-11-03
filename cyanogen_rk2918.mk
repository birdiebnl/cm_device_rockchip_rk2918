# Inherit AOSP device configuration for RK2918.
$(call inherit-product, device/rockchip/rk2918/full_rk2918.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include extra dictionaries for LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/dictionaries

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_rk2918
PRODUCT_BRAND := rockchip
PRODUCT_DEVICE := rk2918
PRODUCT_MODEL := RK2918
PRODUCT_MANUFACTURER := Rockchip
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=rk2918 BUILD_ID=GRK39F BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=google/soju/crespo:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.6 GRK39F 189904 release-keys" BUILD_NUMBER=189904

# Extra RK2918 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rockchip/rk2918/overlay

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-RK2918
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RK2918
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RK2918-KANG
    endif
endif

#
# Copy RK2918 specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

#camera
USE_CAMERA_STUB := false
ifeq ($(USE_CAMERA_STUB),false)
BOARD_CAMERA_LIBRARIES := libcamera
endif

#audio
BOARD_USES_GENERIC_AUDIO := true

BOARD_USES_LIBSECRIL_STUB := true

# inherit from the proprietary version
-include vendor/rockchip/rk2918/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := rk29board
TARGET_BOARD_PLATFORM := rk2918

TARGET_PROVIDES_INIT_RC := true

TARGET_NO_KERNEL := true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x10000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x20000000
BOARD_FLASH_BLOCK_SIZE := 16384

BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "wlan"

#BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
#BOARD_HAS_LIMITED_EGL := true
#TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

#BOARD_USE_LEGACY_USB_MASS_STORAGE_SWITCH := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/dwc_otg/gadget/lun%d/file"

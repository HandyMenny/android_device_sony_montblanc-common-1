# Platform
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_BOARD_PLATFORM := montblanc
TARGET_BOOTLOADER_BOARD_NAME := montblanc
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_SPECIFIC_HEADER_PATH := device/sony/montblanc-common/include
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/musb-ux500.0/musb-hdrc/gadget/lun%d/file"
COMMON_GLOBAL_CFLAGS += -DSTE_HARDWARE
BOARD_USES_STE_HARDWARE := true

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

# RIL implementation
BOARD_RIL_CLASS := ../../../device/sony/montblanc-common/telephony-common/

# Kernel information
BOARD_KERNEL_ADDRESS := 0x00008000
BOARD_RAMDISK_ADDRESS := 0x01000000
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_ADDRESS)
BOARD_RECOVERY_BASE := 0x40200000
TARGET_KERNEL_SOURCE := kernel/sony/u8500
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.8

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Audio
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DMR1_AUDIO_BLOB -DSTE_AUDIO
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
BOARD_USES_ALSA_AUDIO := true

# Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
STE_WLAN_DRIVER := true

# Camera
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
USE_CAMERA_STUB := true

# Graphics
BOARD_EGL_CFG := device/sony/montblanc-common/config/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_CFLAGS += -DEGL_NEEDS_FNW -DBOARD_EGL_NEEDS_LEGACY_FB -DSCREENSHOT_CLIENT_STRIDE_HACK
BOARD_HAVE_PIXEL_FORMAT_INFO := true

# Superuser
SUPERUSER_EMBEDDED := true

# Misc
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
AOSX_VERSION := 4.0

# FM Radio
COMMON_GLOBAL_CFLAGS += -DAUDIO_EXTN_FM_ENABLED

# STE healthd HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.montblanc

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# Custom boot
BOARD_CUSTOM_BOOTIMG_MK := device/sony/montblanc-common/custombootimg.mk
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/sony/montblanc-common/releasetools/semc_ota_from_target_files
TARGET_RELEASETOOLS_EXTENSIONS := device/sony/montblanc-common/releasetools

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p14
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_VOLD_MAX_PARTITIONS := 16
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MMCUTILS := true
COMMON_GLOBAL_CFLAGS += -DXPERIA_TWRP_TOUCH
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_HAS_NO_RECOVERY_PARTITION := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_INPUT_BLACKLIST := "lsm303dlhc_acc_lt\x0alsm303dlh_mag\x0al3g4200d_gyr"
TW_INCLUDE_FB2PNG := true

# System proprieties
TARGET_SYSTEM_PROP := device/sony/montblanc-common/system.prop

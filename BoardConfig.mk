# pecan Board
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Board identifier
TARGET_BOOTLOADER_BOARD_NAME := pecan
TARGET_OTA_ASSERT_DEVICE := pecan,pecan

# Target Boot & Recovery
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
#TARGET_NO_RECOVERY := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/lge/pecan/recovery/recovery_ui.c

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_CUSTOM_BRCM_PATCHRAM_PLUS := ../../../device/lge/pecan/prebuilt/brcm_patchram_plus.c

# Browser
JS_ENGINE := v8

# Camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

# DexPreOpt
WITH_DEXPREOPT := true

# FM Radio
BOARD_FM_DEVICE := bcm4325
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pecan
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
BOARD_EGL_CFG := vendor/lge/pecan/proprietary/lib/egl/egl.cfg
BOARD_NO_RGBX_8888 := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
TARGET_DO_NOT_SETS_CAN_DRAW := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
TARGET_SF_NEEDS_REAL_DIMENSIONS := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

# JIT
WITH_JIT := true
ENABLE_JSC_JIT := true

# Kernel
BOARD_KERNEL_BASE := 0x12800000
BOARD_KERNEL_CMDLINE := mem=215M console=ttyMSM2,115200n8 androidboot.hardware=pecan
BOARD_PAGE_SIZE := 0x00000800

# Mass Storage
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_CUSTOM_USB_CONTROLLER := ../../device/lge/pecan/prebuilt/UsbController.cpp
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file

# Offline Charging
BOARD_GLOBAL_CFLAGS += -DCHARGERMODE_CMDLINE_NAME='"lge.reboot"' -DCHARGERMODE_CMDLINE_VALUE='"pwroff"'

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL:=true

# Target Misc.
TARGET_PROVIDES_INIT_TARGET_RC := true
#TARGET_PROVIDES_LIBRIL := true

# WiFi (VER_0_6_X does not search networks)
BOARD_WLAN_DEVICE := bcm4329
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_5_X
WIFI_DRIVER_FW_AP_PATH := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/system/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_NAME := wireless
WIFI_DRIVER_HAS_LGE_SOFTAP := true

# fix this up by examining /proc/mtd on a running device
#dev: size erasesize name
#mtd0: 00440000 00020000 "boot"
#mtd1: 0c800000 00020000 "system"
#mtd2: 00500000 00020000 "recovery"
#mtd3: 002c0000 00020000 "lgdrm"
#mtd4: 00100000 00020000 "splash"
#mtd5: 00100000 00020000 "FOTABIN"
#mtd6: 00640000 00020000 "FOTA"
#mtd7: 00040000 00020000 "misc"
#mtd8: 04000000 00020000 "cache"
#mtd9: 0bd80000 00020000 "userdata"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0bd80000
BOARD_FLASH_BLOCK_SIZE := 131072



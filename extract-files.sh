#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=rk2918
MANUFACTURER=rockchip

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

cp ~/proprietary/rk2918_gb/system/etc/rockchip_bq27510.bqfs ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/rockchip_bq27510.bqfs
cp ~/proprietary/rk2918_gb/system/etc/rockchip_bq27510.dffs ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/rockchip_bq27510.dffs
cp ~/proprietary/rk2918_gb/system/etc/firmware/athtcmd_ram.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/athtcmd_ram.bin
cp ~/proprietary/rk2918_gb/system/etc/firmware/athwlan.bin.z77 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/athwlan.bin.z77
cp ~/proprietary/rk2918_gb/system/etc/firmware/calData_ar6102_15dBm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/calData_ar6102_15dBm.bin
cp ~/proprietary/rk2918_gb/system/etc/firmware/data.patch.hw2_0.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/data.patch.hw2_0.bin
cp ~/proprietary/rk2918_gb/system/etc/firmware/device.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/device.bin
cp ~/proprietary/rk2918_gb/system/etc/firmware/fw_bcm4329.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/fw_bcm4329.bin
cp ~/proprietary/rk2918_gb/system/etc/firmware/fw_bcm4329_apsta.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/fw_bcm4329_apsta.bin
cp ~/proprietary/rk2918_gb/system/etc/firmware/nvram_B23.txt ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/nvram_B23.txt
cp ~/proprietary/rk2918_gb/system/etc/firmware/sd8686.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sd8686.bin
cp ~/proprietary/rk2918_gb/system/etc/firmware/sd8686_helper.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sd8686_helper.bin
cp ~/proprietary/rk2918_gb/system/etc/firmware/softmac ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/softmac
cp ~/proprietary/rk2918_gb/system/lib/libaudio.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libaudio.so
cp ~/proprietary/rk2918_gb/system/lib/libaudiopolicy.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libaudiopolicy.so
cp ~/proprietary/rk2918_gb/system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera.so
cp ~/proprietary/rk2918_gb/system/lib/liba2dp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/liba2dp.so
cp ~/proprietary/rk2918_gb/system/lib/libjpeghwdec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libjpeghwdec.so
cp ~/proprietary/rk2918_gb/system/lib/libjpeghwenc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libjpeghwenc.so
cp ~/proprietary/rk2918_gb/system/lib/libvpu.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libvpu.so
cp ~/proprietary/rk2918_gb/system/lib/libGAL.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGAL.so
cp ~/proprietary/rk2918_gb/system/lib/libstagefrighthw.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libstagefrighthw.so
cp ~/proprietary/rk2918_gb/system/lib/egl/egl.cfg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/egl.cfg
cp ~/proprietary/rk2918_gb/system/lib/hw/copybit.rk29board.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/copybit.rk29board.so
cp ~/proprietary/rk2918_gb/system/lib/hw/gralloc.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gralloc.default.so
cp ~/proprietary/rk2918_gb/system/lib/hw/gralloc.rk29board.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gralloc.rk29board.so
cp ~/proprietary/rk2918_gb/system/lib/hw/hdmi.rk28board.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hdmi.rk28board.so
cp ~/proprietary/rk2918_gb/system/lib/hw/lights.rk29board.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lights.rk29board.so
cp ~/proprietary/rk2918_gb/system/lib/hw/overlay.rk29sdk.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/overlay.rk29sdk.so
cp ~/proprietary/rk2918_gb/system/lib/hw/sensors.rk29board.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sensors.rk29board.so
cp ~/proprietary/rk2918_gb/system/lib/modules/wlan.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wlan.ko
cp ~/proprietary/rk2918_gb/rk29xxnand_ko.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/rk29xxnand_ko.ko

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudio.so:obj/lib/libaudio.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudiopolicy.so:obj/lib/libaudiopolicy.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libstagefrighthw.so:obj/lib/libstagefrighthw.so


# All the blobs necessary for rk2918
PRODUCT_COPY_FILES += \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/rockchip_bq27510.bqfs:system/etc/rockchip_bq27510.bqfs \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/rockchip_bq27510.dffs:system/etc/rockchip_bq27510.dffs \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/athtcmd_ram.bin:system/etc/firmware/athtcmd_ram.bin \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/athwlan.bin.z77:system/etc/firmware/athwlan.bin.z77 \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/calData_ar6102_15dBm.bin:system/etc/firmware/calData_ar6102_15dBm.bin \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/data.patch.hw2_0.bin:system/etc/firmware/data.patch.hw2_0.bin \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/device.bin:system/etc/firmware/device.bin \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/fw_bcm4329_apsta.bin:system/etc/firmware/fw_bcm4329_apsta.bin \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/nvram_B23.txt:system/etc/firmware/nvram_B23.txt \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/sd8686.bin:system/etc/firmware/sd8686.bin \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/sd8686_helper.bin:system/etc/firmware/sd8686_helper.bin \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/softmac:system/etc/firmware/softmac \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudio.so:system/lib/libaudio.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudiopolicy.so:system/lib/libaudiopolicy.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/liba2dp.so:system/lib/liba2dp.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/libjpeghwenc.so:system/lib/libjpeghwenc.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/libjpeghwdec.so:system/lib/libjpeghwdec.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/libvpu.so:system/lib/libvpu.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGAL.so:system/lib/libGAL.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/libstagefrighthw.so:system/lib/libstagefrighthw.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/egl.cfg:system/lib/egl/egl.cfg \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/copybit.rk29board.so:system/lib/hw/copybit.rk29board.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/gralloc.default.so:system/lib/hw/gralloc.default.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/gralloc.rk29board.so:system/lib/hw/gralloc.rk29board.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/hdmi.rk28board.so:system/lib/hw/hdmi.rk28board.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/lights.rk29board.so:system/lib/hw/lights.rk29board.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/overlay.rk29sdk.so:system/lib/hw/overlay.rk29sdk.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/sensors.rk29board.so:system/lib/hw/sensors.rk29board.so \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/wlan.ko:system/lib/modules/wlan.ko \\
		vendor/__MANUFACTURER__/__DEVICE__/proprietary/rk29xxnand_ko.ko:root/rk29xxnand_ko.ko
EOF

./setup-makefiles.sh

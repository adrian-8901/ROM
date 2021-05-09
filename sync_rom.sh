#!/bin/bash

set -exv

# sync rom
repo init -u https://github.com/Project-Fluid/manifest.git --depth=1 -b fluid-11
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
echo finished sync

git clone https://github.com/adrian-8901/device_xiaomi_sm8250-common.git -b fluid device/xiaomi/sm8250-common
git clone https://github.com/adrian-8901/device_xiaomi_umi.git -b fluid device/xiaomi/umi
git clone https://github.com/dataoutputstream/vendor_xiaomi_sm8250.git -b 12.2.5 vendor/xiaomi/sm8250-common
git clone https://github.com/xiaomi-sm8250-devs/android_kernel_xiaomi_sm8250.git -b lineage-18.1 kernel/xiaomi/sm8250-common
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-18.1 hardware/xiaomi

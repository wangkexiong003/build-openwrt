#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Add kernel build user
sed -i '/CONFIG_KERNEL_BUILD_USER/d' .config &&
    echo 'CONFIG_KERNEL_BUILD_USER="wangkexiong"' >>.config

# Add kernel build domain
sed -i '/CONFIG_KERNEL_BUILD_DOMAIN/d' .config &&
    echo 'CONFIG_KERNEL_BUILD_DOMAIN="wangkexiong.tk"' >>.config

# 3rd party libraries
SCRIPTS_DIR=$(realpath $(dirname $0)/../extra)

chmod +x ${SCRIPTS_DIR}/*.sh
for SCRIPT in ${SCRIPTS_DIR}/*.sh; do
    ${SCRIPT}
done

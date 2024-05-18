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
chmod +x $GITHUB_WORKSPACE/extra/*.sh

$GITHUB_WORKSPACE/extra/theme-argon.sh
$GITHUB_WORKSPACE/extra/samba.sh
$GITHUB_WORKSPACE/extra/docker.sh
$GITHUB_WORKSPACE/extra/ddns-go.sh
$GITHUB_WORKSPACE/extra/qbittorrent.sh
$GITHUB_WORKSPACE/extra/alist.sh
$GITHUB_WORKSPACE/extra/passwall.sh
$GITHUB_WORKSPACE/extra/clash.sh
$GITHUB_WORKSPACE/extra/openappfilter.sh

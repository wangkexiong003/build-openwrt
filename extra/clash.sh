#!/bin/bash
#

# 添加 OpenClash
git clone --depth=1 https://github.com/vernesong/OpenClash.git package/custom/luci-app-openclash

# 下载 clash 内核
mkdir -p files/etc/openclash/core

CLASH_DEV_URL="https://raw.githubusercontent.com/vernesong/OpenClash/core/master/dev/clash-linux-${1:-amd64}.tar.gz"
CLASH_TUN_URL=$(curl -fsSL https://api.github.com/repos/vernesong/OpenClash/contents/master/premium?ref=core | grep download_url | grep ${1:-amd64} | awk -F '"' '{print $4}' | grep -v "v3" )
CLASH_META_URL="https://raw.githubusercontent.com/vernesong/OpenClash/core/master/meta/clash-linux-${1:-amd64}.tar.gz"

wget -qO- $CLASH_DEV_URL | tar xOvz > files/etc/openclash/core/clash
wget -qO- $CLASH_TUN_URL | gunzip -c > files/etc/openclash/core/clash_tun
wget -qO- $CLASH_META_URL | tar xOvz > files/etc/openclash/core/clash_meta

chmod +x files/etc/openclash/core/clash*

#!/bin/bash

## passwall replaces the following packages from core
# xray-core,v2ray-geodata,sing-box,chinadns-ng,dns2socks,hysteria,ipt2socks,microsocks,
# naiveproxy,shadowsocks-libev,shadowsocks-rust,shadowsocksr-libev,simple-obfs,tcping,
# trojan-plus,tuic-client,v2ray-plugin,xray-plugin,geoview,shadow-tls
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" > feeds.conf
echo "src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;main"             >> feeds.conf
cat  feeds.conf.default >> feeds.conf
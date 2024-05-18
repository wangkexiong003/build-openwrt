#!/bin/bash
#

# 添加 qBittorrent 增强版
git clone --depth=1 https://github.com/lxl6125/openwrt-qbittorrent-enhanced package/custom/qbittorrent-enhanced
# (临时)
sed -i 's/1.2.18/1.2.19/g' package/feeds/packages/rblibtorrent/Makefile
sed -i 's/855c44be6370dc90ec1f3dff4223770dd47a5208/aa9512a5ea1b723c7a57b77ad117da79608ea2fc/g' package/feeds/packages/rblibtorrent/Makefile
sed -i 's/da0626afc80287c8ee6825bfed2d52fe24e8fd9abff9952034292bdc00a2dac1/94de09d468ecc0b211ee261a1e8815f02057e97296e9e7d23951d3e291b062be/g' package/feeds/packages/rblibtorrent/Makefile

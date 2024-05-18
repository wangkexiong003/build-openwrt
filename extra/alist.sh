#!/bin/bash
#

# 添加 alist
git clone --depth=1 https://github.com/sbwml/luci-app-alist package/custom/alist
echo "CONFIG_PACKAGE_luci-app-alist=y" >> .config

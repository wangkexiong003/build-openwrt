#!/bin/bash
#

# 添加 ddns-go
git clone --depth=1 https://github.com/sirpdboy/luci-app-ddns-go package/custom/ddns-go
cat <<-EOF >> .config
CONFIG_PACKAGE_luci-app-ddns-go=y
CONFIG_PACKAGE_luci-i18n-ddns-go-zh-cn=y
EOF

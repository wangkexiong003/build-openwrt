#!/bin/bash
#

# 替换 argon 主题
rm -rf feeds/luci/themes/luci-theme-argon feeds/luci/applications/luci-app-argon-config
git clone --depth=1 -b 18.06 --single-branch https://github.com/jerrykuku/luci-theme-argon feeds/luci/themes/luci-theme-argon
git clone --depth=1 -b 18.06 --single-branch https://github.com/jerrykuku/luci-app-argon-config feeds/luci/applications/luci-app-argon-config

cat <<-EOF >> .config
CONFIG_PACKAGE_luci-theme-argon=y
CONFIG_PACKAGE_luci-i18n-argon-config=y
CONFIG_PACKAGE_luci-i18n-argon-config-zh-cn=y
EOF

#!/bin/bash
#

## 添加 OpenAppFilter
git clone --depth=1 https://github.com/destan19/openappfilter package/custom/openappfilter
echo "CONFIG_PACKAGE_luci-app-oaf=y" >>.config

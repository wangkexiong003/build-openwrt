#!/bin/bash
#

# 修复因 Docker 导致的 UDP 代理失效，但此步骤会导致 Docker 内部无法代理 UDP 请求，因此需要手动下发默认 DNS 服务器。
cat >> package/base-files/files/etc/sysctl.conf <<EOF
net.bridge.bridge-nf-call-ip6tables = 0
net.bridge.bridge-nf-call-iptables = 0
net.bridge.bridge-nf-call-arptables = 0
EOF

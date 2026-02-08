#!/bin/bash

#更改默认地址为192.168.10.1
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 添加自定义源
echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> ./feeds.conf.default
# 添加自定义包
git clone https://github.com/zzsj0928/luci-app-pushbot.git package/luci-app-pushbot

# 修复 rust 预编译文件失效
sed -i 's/--set=llvm\.download-ci-llvm=true/--set=llvm.download-ci-llvm=false/' feeds/packages/lang/rust/Makefile

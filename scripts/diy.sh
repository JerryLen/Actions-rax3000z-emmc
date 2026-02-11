#!/bin/bash

#更改默认地址为192.168.10.1
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 添加自定义源
echo "src-git kenzo https://github.com/JerryLen/openwrt-packages" >> ./feeds.conf.default

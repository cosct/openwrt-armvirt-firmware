#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
echo '下载ServerChan OpenClash vssr koolshareR rosy主题'
git clone https://github.com/tty228/luci-app-serverchan ../diy/luci-app-serverchan
git clone https://github.com/vernesong/OpenClash ../diy/luci-app-OpenClash
git clone https://github.com/jerrykuku/luci-app-vssr ../diy/luci-app-vssr
git clone https://github.com/asushugo/luci-app-koolproxyR ../diy/luci-app-koolproxyR
git clone https://github.com/cosct/luci-theme-rosy ../diy/luci-theme-rosy
git clone https://github.com/jerrykuku/lua-maxminddb.git ../diy/lua-maxminddb

echo '修改koolshareR Makefile'
sed -i 's/arm)/aarch64)/g' ../diy/luci-app-koolproxyR/Makefile

echo '集成diy目录'
ln -s ../../diy ./package/openwrt-packages

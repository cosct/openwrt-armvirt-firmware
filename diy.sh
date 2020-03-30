#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
echo '下载ServerChan rosy主题'
git clone https://github.com/tty228/luci-app-serverchan ../diy/luci-app-serverchan
git clone https://github.com/cosct/luci-theme-rosy ../diy/luci-theme-rosy



echo '集成diy目录'
ln -s ../../diy ./package/openwrt-packages

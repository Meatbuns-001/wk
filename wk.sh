#!/bin/bash

# ANSI 转义序列定义颜色
yellow='\033[1;33m'
NC='\033[0m' # No Color

# 打印 ASCII 艺术
echo -e "${yellow}╔╗──╔╗╔═══╗╔══╗╔═══╗╔══╗─╔╗╔╗╔╗─╔╗╔══╗${NC}"
echo -e "${yellow}║║──║║║╔══╝║╔╗║║╔═╗║║╔╗║─║║║║║╚═╝║║╔═╝${NC}"
echo -e "${yellow}║╚╗╔╝║║╚══╗║╚╝║║╚═╝║║╚╝╚╗║║║║║╔╗─║║╚═╗${NC}"
echo -e "${yellow}║╔╗╔╗║║╔══╝║╔╗║║╔╗╔╝║╔═╗║║║║║║║╚╗║╚═╗║${NC}"
echo -e "${yellow}║║╚╝║║║╚══╗║║║║║║║║─║╚═╝║║╚╝║║║─║║╔═╝║${NC}"
echo -e "${yellow}╚╝──╚╝╚═══╝╚╝╚╝╚╝╚╝─╚═══╝╚══╝╚╝─╚╝╚══╝${NC}"

# 等待用户按下任意键
read -n 1 -s -r -p "按下任意键继续..."
sleep 1

# 执行下载xmrig
wget https://mirror.cnop.net/coin/xmrig/xmrig-6.12.1-linux-x64.tar.gz

# 检查是否下载成功
if [ $? -eq 0 ]; then
    echo -e "${yellow}下载 xmrig 成功！${NC}"
    sleep 1
    
    # 解压xmrig
    tar zxvf xmrig-6.12.1-linux-x64.tar.gz
    sleep 1
    
    echo -e "${yellow}解压成功！${NC}"
    sleep 1
    
    # 进入xmrig目录
    cd xmrig-6.12.1
    sleep 1
    
    # 启动xmrig
    ./xmrig -o mine.c3pool.com:13333 -u 46cNFBh55AHJT7tXZVCXroNQpQEB6U7APMmZfxXCY1cKbAQmxFsjhuAXdsXfgywouA2xqaSRJSc5Y3Yp77SP9AQqJ6Cx5hm -p "linux$random_str" --randomx-1gb-pages
else
    echo -e "${yellow}下载 xmrig 失败！${NC}"
fi

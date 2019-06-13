#!/bin/bash

basePath=$(cd `dirname $0`; pwd)

echo -e "\n------------------------------------------\n"

carPath=${basePath}"/Assets.car"
if [[ ! -f "$carPath" ]]; then
    echo "当前目录没有找到Assets.car资源文件！"
else
    folderPath=${basePath}"/Assets/"
    if [[ ! -d "$folderPath" ]]; then
        mkdir ${folderPath}
    else
        rm -rf ${folderPath}
        mkdir ${folderPath}
    fi

    cartoolPath=${basePath}"/tools/mac_cartool"
    ${cartoolPath} ${carPath} ${folderPath}
    open ${folderPath}
fi

echo -e "\n------------------------------------------\n"

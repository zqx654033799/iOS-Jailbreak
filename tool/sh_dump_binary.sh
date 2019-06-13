#!/bin/bash

basePath=$(cd `dirname $0`; pwd)

echo -e "\n------------------------------------------\n"

carPath=${basePath}"/binary"
if [[ ! -f "$carPath" ]]; then
    echo "当前目录没有找到binary二进制文件！"
else
    folderPath=${basePath}"/Classes/"
    if [[ ! -d "$folderPath" ]]; then
        mkdir ${folderPath}
    else
        rm -rf ${folderPath}
        mkdir ${folderPath}
    fi

    cartoolPath=${basePath}"/tools/class-dump-swift"
    ${cartoolPath} -H ${carPath} -o ${folderPath}
    echo "Done."
    open ${folderPath}
fi

echo -e "\n------------------------------------------\n"

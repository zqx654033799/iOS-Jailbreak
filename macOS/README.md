# iOS逆向macOS工具集

## 安装 brew

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## 安装 dpkg、ldid

    brew install dpkg ldid

## 安装 chisel

    brew install chisel
**安装完成后最后出现一个安装目录，类似**

    command script import /usr/local/opt/chisel/libexec/fblldb.py
**编辑~/.lldbinit文件，将文本粘上**

    vi ~/.lldbinit

## 安装 restore-symbol

    git clone --recursive https://github.com/tobefuturer/restore-symbol.git ~/
    cd ~/restore-symbol && make
    ./restore-symbol
**输出带符号的新mach-o文件**

    ./restore-symbol /pathto/origin_mach_o_file -o /pathto/mach_o_with_symbol

## 安装 Theos

    sudo Git clone --recursive https://github.com/theos/theos.git /opt/theos

## 安装 Theos

    sudo chown $(id -u):$(id -g) /opt/theos
**验证是否安装成功**

    /opt/theos/bin/nic.pl

## 安装 MonkeyDev

    git clone https://github.com/AloneMonkey/MonkeyDev.git ~/
    cd ~/MonkeyDev/bin
    sudo ./md-install
**卸载**

    sudo ./md-uninstall

## 选择指定的Xcode

    sudo xcode-select -s /Applications/Xcode.app/

# iOS逆向macOS工具集

## 安装 brew

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## 安装 dpkg、ldid

    brew install dpkg ldid

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

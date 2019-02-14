#!/usr/bin/env bash

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si;

echo "\n[archlinuxcn]\n\nSigLevel = Optional TrustedOnly\nServer=https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch" |sudo tee -a /etc/pacman.conf;

sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring;

yay -Sy fcitx-sogoupinyin fcitx-im fcitx-configtool deepin.com.qq.office electronic-wechat deepin.com.thunderspeed google-chrome nutstore shadowsocks-qt5

echo "export GTK_IM_MODULE=fcitx\nexport QT_IM_MODULE=fcitx\nexport XMODIFIERS=\"@im=fcitx\"" >> ~/.xprofile
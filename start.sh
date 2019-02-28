#!/usr/bin/env bash

echo "\n[archlinuxcn]\n\nSigLevel = Optional TrustedOnly\nServer=https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch" |sudo tee -a /etc/pacman.conf;

sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring yay;

yay -Sy vim fcitx-sogoupinyin fcitx-im fcitx-configtool deepin.com.qq.office electronic-wechat deepin.com.thunderspeed google-chrome nutstore shadowsocks-qt5 wps-office ttf-wps-fonts picgo-appimage typora autojump;

echo "export GTK_IM_MODULE=fcitx\nexport QT_IM_MODULE=fcitx\nexport XMODIFIERS=\"@im=fcitx\"" >> ~/.xprofile;

cp -f ./user-dirs.dirs ~/.config/user-dirs.dirs;

yay -S zsh && sudo chsh -s $(which zsh)
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

cp -f ./robbyrussell.zsh-theme ~/.oh-my-zsh/themes/

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

cp -f ./zconfig ~/.zshrc


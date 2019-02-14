[toc]

### 设置源
1. 设置pacman官方源&&更新
sudo pacman-mirrors -i -c China -m rank
sudo pacman -Syy
2. 添加ArchLinux源
sudo vi /etc/pacman.conf 
最后两行
```
[archlinuxcn]

SigLevel = Optional TrustedOnly
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
```
sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring
3. 更新
sudo pacman -Syyu

### 安装yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si;

### 常用软件

1. 搜狗输入法
sudo pacman -S fcitx-sogoupinyin
sudo pacman -S fcitx-im
sudo pacman -S fcitx-configtool

```
# vim ~/.xprofile

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
```

2. 迅雷
yay -Sy deepin.com.thunderspeed

3. qq和微信
yay -Sy deepin.com.qq.office
yay -Sy electronic-wechat

4. teamview
yay -Sy teamviewer

5. 谷歌浏览器
yay -Sy google-chrome

6. 坚果云
yay -Sy nutstore

7. ss
yay -Sy shadowsocks-qt5
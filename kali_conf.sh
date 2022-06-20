#!/bin/bash

#VARIABLES
location=$(pwd)
fontl="/usr/share/fonts"

#Update Kalis repositories

sudo apt update

#Desktop GNOME install

sudo apt install kali-desktop-gnome -y
sudo apt remove kali-desktop-xfce xfce4* lightdm* -y
sudo apt autoremove

#Get Hack-Nerd-Fonts

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip $location
sudo mv Hack.zip $fontl
sudo unzip $fontl/Hack.zip
sudo rm $fontl/Hack.zip
#KITTY, BAT, LSD INSTALL

sudo apt install kitty
wget https://raw.githubusercontent.com/rxyhn/bspdots/main/config/kitty/color.ini
sudo mkdir -p ~/.config/kitty
sudo mv kitty.conf ~/.config/kitty

#LSD and BAT
wget https://github.com/Peltoche/lsd/releases/download/0.22.0/lsd_0.22.0_amd64.deb .
sudo dpkg -i lsd_0.22.0_amd64.deb
echo 'alias ls="lsd"' >> .zshrc

sudo apt install bat
echo 'alias cat="batcat"' >> .zshrc

#Powerlevel10k install

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

#fzf install

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install

#NVIM

wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb .
sudo apt install ./nvim-linux64.deb
echo 'alias edit="nvim" >> .zshrc
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 ; nvim

zsh
reboot

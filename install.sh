#!/bin/bash

#Done by: fpedrazav02

#·······································#Variables··························································
# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White


location=$(pwd)
flocation="$location/kali-setup"
random=$(echo $(( RANDOM % 1000 )))

if [ $random -le 500 ]
then
    echo -e "${Yellow}
                      WE HAVE TAKEN OVER░ \☻/\☻/
                      ░░░░░░░░░░░░░░░░░░░▌ ░  ▌
                      ░░░░░░░░░░░░░░░░░░  / \/ \|
                      ░░░░░░░░░░░░░░░░░███████ ]▄▄▄▄▄▄▄▄▄-----------●
                      ░░░░░░░░░░░░▂▄▅█████████▅▄▃▂
                      ░░░░░░░░░░░I███████████████████].  ${Color_Off}"
                      
else
    echo -e " ${Red}
    	╔╦╦═╦╗╔╦══╦═╦══╦╗╔╦═╗
        ║═╣╩║╚╣╠╗╚╣╦╬╗╔╣╚╝║╔╝
        ╚╩╩╩╩═╩╩══╩═╝╚╝╚══╩╝═  ${Color_Off}"
fi

#UPDATE KALI

echo -e "${BGreen} Do you wish to update kali's repositories? (yes / no)${Color_Off}"
read update
if [ $update == "yes" ]
then
	sudo apt update
fi

sleep 2

echo -e "${BGreen}Now we will start to download all dependencies needed${Color_Off}"

sleep 3

clear

#Mayor Dependencies
sudo apt install neofetch feh rofi picom i3-gaps i3blocks lxappearance kitty


#PICOM dependencies
sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libx11-xcb-dev

#HACK NERD FONTS AND EMOJIS
clear
echo -e "${BGreen}Hack Nerd and Awesome emojis install...${Color_Off}"
sleep 3

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
mkdir ~/.fonts
sudo mv Hack.zip ~/.fonts
sudo unzip ~/.fonts/Hack.zip
mv *.ttf ~/.fonts
sudo rm ~/.fonts/Hack.zip

wget /FortAwesome/Font-Awesome/releases/download/6.1.1/fontawesome-free-6.1.1-desktop.zip
unzip fontawesome-free-6.1.1-desktop.zip
mv fontawesome-free-6.1.1-desktop/*.ttl ~/.fonts
rm -rf fontawesome-free-6.1.1-desktop*


#KITTY INSTALATION
clear
echo -e "${BGreen}Kitty install...${Color_Off}"
sleep 3

sudo mkdir -p ~/.config/kitty
wget https://raw.githubusercontent.com/rxyhn/bspdots/main/config/kitty/color.ini
sudo mv dotfiles/kitty.conf ~/.config/kitty
sudo mv color.ini ~/.config/kitty

#LSD AND BAT INSTALL
wget https://github.com/Peltoche/lsd/releases/download/0.22.0/lsd_0.22.0_amd64.deb 
mv lsd_0.22.0_amd64.deb ~/Descargas
sudo dpkg -i ~/Descargas/lsd_0.22.0_amd64.deb
echo 'alias ls="lsd"' >> ~/.zshrc

sudo apt install bat -y
echo 'alias cat="batcat"' >> ~/.zshrc

#POWERLEVEL AND FZF INSTALL
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install

#set wallpaper
clear
echo -e "${BGreen}Setting a random wallpaper... to use your own please refer to README section${Color_Off}"
sleep 4

mkdir ~/.paper
wget https://grepitout.com/wp-content/uploads/2018/07/kali-linux-wallpaper-3-1920x1080.jpg
mv kali-linux-wallpaper-3-1920x1080.jpg .wallpaper
mv .wallpaper ~/.paper

#ROFI SET UP
cd ~
git clone https://github.com/catppuccin/rofi ./.catppuccin-rofi
cd ./.catppuccin-rofi

mkdir -p ~/.config/rofi ~/.local/share/rofi/themes

mkdir -p ~/.config/rofi ~/.local/share/rofi/themes

cp -r ./.config/rofi/* ~/.config/rofi
cp -r ./.local/share/rofi/themes/* ~/.local/share/rofi/themes/
cd ~

#UPDATING CONFIG FILES
clear
echo -e "${BGreen}Updating config files...Do you wish to install your own? (yes/no)${Color_Off}"
sleep 2
read files
if [ $files == "no" ]
then
	echo -e "${BBlue}Updating files...${Color_Off}"
	sleep 1
	echo -e "${Bgreen}\t[*]Copying picom configuration...${Color_Off}"
	mkdir ~/.config/picom
	cp ~/kali-setup/dotfiles/picom.conf ~/.config/picom
	echo -e "${Bgreen}\t[*]Copying i3 configuration...${Color_Off}"
	mkdir ~/.config/i3
	cp ~/kali-setup/dotfiles/conf ~/.config/i3
	echo -e "${Bgreen}\t[*]Copying i3-blocks configuration...${Color_Off}"
	mkdir ~/.i3
	cp ~/kali-setup/dotfiles/i3blocks.conf ~/.i3
	sleep 3
fi

#NVIM
clear
echo -e "${BGreen}Instalim NVCHAD theme...${Color_Off}"
echo -e "${Yellow}AFTER INSTALATION, quit NVIM AND REBOOT${Color_Off}"
echo -e "${Red}Next time pls log into i3 desktop!${Color_Off}"
sleep 7

cd ~/Descargas
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb .
sudo apt install ./nvim-linux64.deb
echo 'alias vim="nvim"' >> ~/.zshrc
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 ; nvim


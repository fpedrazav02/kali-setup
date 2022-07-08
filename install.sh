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
sudo apt install neofetch feh rofi picom i3-gaps i3blocks lxappearance kitty lolcat cowsay


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

git clone https://github.com/FortAwesome/Font-Awesome.git
mv Font-Awesome/otfs/*otf ~/.fonts
mv Font-Awesome/webfonts/*ttf ~/.fonts
rm -rf Font-Awesome

#INSTALLING BRAVE
sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

#INSTALING SPOTIFY
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

#INSTALLING NOTION (LOTION)
wget https://raw.githubusercontent.com/puneetsl/lotion/master/setup.sh
chmod +x setup.sh
sudo ./setup.sh web

#INSTALLING VISUAL STUDIO CODE
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code

#INSTTALLING DISCORD
cd ~/
mkdir -p ~/.local/bin
wget "https://discordapp.com/api/download/canary?platform=linux&format=tar.gz" -O discord.tar.gz
tar -xvf discord.tar.gz -C ~/.local/bin
sudo ln -s ~/.local/bin/DiscordCanary/discord.png /usr/share/icons/discord.png
sudo ln -s ~/.local/bin/DiscordCanary/DiscordCanary /usr/bin
wget https://gist.githubusercontent.com/AdrianKoshka/a12ca0bfe2f334a9f208aff72f8738c3/raw/9d606ad7ce7cc1dd23f6a99993e2396540538a02/discord.desktop -O discord.desktop
mkdir -p ~/.local/share/applications/
mv ~/discord.desktop ~/.local/share/applications/
sudo ln -s ~/.local/share/applications/discord.desktop /usr/share/applications/discord.desktop

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

echo -e "${BGreen}Select your wallpaper theme${Color_Off}"
sleep 3
echo -e "${yellow}1) Light wallpaper${Color_Off}"
echo -e "${yellow}2) Dark wallpaper${Color_Off}"

read wallpaper
if [ $wallpaper == 2 ]
then
	wget https://grepitout.com/wp-content/uploads/2018/07/kali-linux-wallpaper-3-1920x1080.jpg
	mv kali-linux-wallpaper-3-1920x1080.jpg .wallpaper
	mv .wallpaper ~/.paper
else
	mv ~/kali-setup/sample/anime-landscape-sunset-coast-clouds-anime-school-girl-scenery.jpg .wallpaper
	mv ~/kali-setup/sample/.wallpaper ~/.paper
fi



#ROFI SET UP
cd ~
git clone https://github.com/catppuccin/rofi ./.catppuccin-rofi
cd ./.catppuccin-rofi

mkdir -p ~/.config/rofi ~/.local/share/rofi/themes

mkdir -p ~/.config/rofi ~/.local/share/rofi/themes

cp -r ./.config/rofi/* ~/.config/rofi
cp -r ./.local/share/rofi/themes/* ~/.local/share/rofi/themes/
cd ~

#ROFI THEME SELECT
echo -e "${BGreen}Select your ROFI theme${Color_Off}"
sleep 3
echo -e "${yellow}1) Light theme${Color_Off}"
echo -e "${yellow}2) Dark theme${Color_Off}"

read number
if [ $number == 1 ]
then
	cp ~/kali-setup/dotfiles/config.rasi ~/.config/rofi
fi

#POLYBAR SETUP
sudo apt install polybar
mkdir ~/.config/polybar
cp /usr/share/doc/polybar/examples/config.ini ~/.config/polybar
mv ~/kali-setup/dotfiles/launch.sh  ~/.config/polybar
chmod +x ~/.config/polybar/launch.sh

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
	cp ~/kali-setup/dotfiles/config ~/.config/i3
	echo -e "${Bgreen}\t[*]Copying i3-blocks configuration...${Color_Off}"
	mkdir ~/.i3
	cp ~/kali-setup/dotfiles/i3blocks.conf ~/.i3
	sleep 3
fi

#NVIM
clear
echo -e "${BGreen}Instalin NVCHAD theme...${Color_Off}"
echo -e "${Yellow}AFTER INSTALATION, quit NVIM AND Change login page and background${Color_Off}"
echo -e "${Red}Remember to log into i3 desktop!${Color_Off}"
sleep 10

cd ~/Descargas
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb .
sudo apt install ./nvim-linux64.deb
echo 'alias vim="nvim"' >> ~/.zshrc
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 ; nvim


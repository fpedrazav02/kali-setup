<h1 align="center">Kali SET-UP</h1>
<h2 align="center">Final configuration</h2>

<img src="https://github.com/fpedrazav02/kali-setup/blob/main/sample/login.PNG" alt="Alt text">
<img src="https://github.com/fpedrazav02/kali-setup/blob/main/sample/pic1.PNG" alt="Alt text">
<img src="https://github.com/fpedrazav02/kali-setup/blob/main/sample/pic2.PNG" alt="Alt text">
<h1> Disclaimer ⚠️</h1>
<p> Most tools used were created by other amazing creators! These are links to their original repositories!</p>
<p>(https://github.com/romkatv/powerlevel10k) </p> 
<p>(https://github.com/yshui/picom)</p>
<p>(https://github.com/catppuccin/rofi)</p>
<p>(https://github.com/i3/i3)</p>
<p>(https://github.com/NvChad/NvChad)</p>
<p>(https://github.com/FortAwesome/Font-Awesome/releases)</p>
<p>(https://github.com/junegunn/fzf)</p>
<h1> Instalation</h1>
<div>

<p> 1st PART </p>

```bash
sudo apt  install i3
sudo init 0
```
<p> Enter username/password but log into i3 interface, to select interface click on one of the buttons on the top right corner</p>
<img src="https://github.com/fpedrazav02/kali-setup/blob/main/sample/unknown.png">
<p> 2nd PART </p>
<p> MOD + ENTER</p>

```bash
git clone https://github.com/fpedrazav02/kali-setup.git
cd ./kali-setup
chmod +x install.sh
./install.sh
```
 <p> After instalation either run </p>
 
 ```bash
 p10k configure
```
 <p> NOTE: If you do not like or want to think a lot, you can copy my .p10k file from the dotfiles folder and reset terminal after</p>
 
 ```shell
 cp ~/kali-setup/dotfiles/.p10k.zsh ~
 ```
  <p> change wallpaper file in ~/.paper and rename it to .wallpaper</p>
</div>
<h1> Change login in kali </h1>
<div>
<p> Open a TERMINAL </p>
 
 ```shell
sudo rofi -show drun
 ```

<p> SEARCH FOR --> GTK + LightDM  and place the PNG and wallpaper you want </p>
<img src="https://github.com/fpedrazav02/kali-setup/blob/main/sample/Captura.PNG" alt="Alt text">
</div>

<h1> CHEATSHEET </h1>
<p>- **MOD + SHIFT + Q** --> close TAB</p>
<p>- **MOD + RETURN** --> open terminal</p>
<p>- **MOD + D** --> open rofi</p>
<p>- **MOD + SHIFT + R** --> refresh i3 settings</p>
<p>- **MOD + S ** --> stack mode</p>
<p>- **MOD + E** --> Exit stack mode</p>
<p>- **MOD + F** --> full mode (press again to switch back)</p>
<p>- **MOD + up,down,left,right** --> toogle between tabs</p>
<p>- **MOD + R** --> resize mode (press again to exit)</p>
<p>- ** up,down,left,right ** --> resize in resize mode</p>
<p>- ** CNTRL + SHIFT + ALT + T ** --> rename current kitty tab</p>
<p>- ** CNTRL + TAB ** --> toogle between kitty's tabs</p>
<p>- ** CNTRL + SHIFT + T** --> create new kitty tab</p>


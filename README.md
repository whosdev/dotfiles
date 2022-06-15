# dotfiles
i3-gaps,

polybar, 

rofi, 

rofi-power-menu  ,

dunst ,

picom-ibhagwan-git,

alacritty,

Dracula Icons,

Nerd Fonts,

Blur on Alacritty, Rofi, Nautilus, Spotify and vscode.

Aenami wallpapers


![2022-06-12-111221_1366x768_scrot](https://user-images.githubusercontent.com/54769761/173237403-be7e9346-796a-45b1-80df-36bb373d5c84.png)


## Installing basic apps and stuff

sudo pacman -S neofetch alacritty make arandr blueman bluez dmenu2 feh git go gnome-calculator lxappearance neovim networkmanager network-manager-applet mpv maim nautilus rofi ranger qbittorrent telegram-desktop ttf-nerd-fonts-symbols python python-pip polybar wget wine xautolock xclip xdotool xdg-utils xss-lock youtube-dl zathura brightnessctl dunst xmodmap


## Yay stuff
 yay -S autotiling-git spotify visual-studio-code-bin btop google-chrome freedownloadmanager dracula-icons-git rofi-greenclip rofi-power-menu picom-ibhagwan-git notion nerd-fonts-jetbrains-mono

## if you want more fonts
yay -S nerd-fonts-complete


## Git cloning this shit
cd bin && git clone https://github.com/whosdev/dotfiles
cd dotfiles && cp .config ~/  ## If somehow get an error, just flippin copy everything to the dotfiles folder.
cp .icons ~/

## Few other apps

sudo pacman -S wine steam lutris discord

## Setting up swappiness to 20, unless you're using zram
sysctl vm.swappiness=20 && sysctl -p /etc/sysctl.conf

## not sure if there's anything more to do, might be, can't remember. If I do another reinstall I'll try to put it in here.

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

sudo pacman -S neofetch alacritty make arandr blueman bluez  feh git go gnome-calculator lxappearance neovim networkmanager network-manager-applet mpv maim nautilus rofi ranger qbittorrent telegram-desktop  python python-pip polybar wget wine xautolock xclip xdotool xdg-utils xss-lock youtube-dl zathura brightnessctl dunst ncdu 


## Yay stuff
 yay -S autotiling-git spotify visual-studio-code-bin btop google-chrome freedownloadmanager dracula-icons-git rofi-greenclip rofi-power-menu picom-ibhagwan-git notion-app-enhanced nerd-fonts-jetbrains-mono timeshift-bin

## if you want more fonts
yay -S nerd-fonts-complete

## Swaping capslock:esc
nvim /etc/X11/xorg.conf.d/00-keyboard.conf   
Option "XkbOptions" "caps:swapescape" 

#enable tap/two/threefinger touchpad

sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
        Option "TappingButtonMap" "lrm"
        Option "NaturalScrolling" "on"
        Option "ScrollMethod" "twofinger"
EndSection

EOF

## Git cloning and copying this shit
cd bin && git clone https://github.com/whosdev/dotfiles
cd dotfiles && cp .config .icons ~/ 


## Few other apps

sudo pacman -S wine steam lutris discord

## Setting up swappiness to 20, unless you're using zram
sysctl vm.swappiness=20 && sysctl -p /etc/sysctl.conf

## not sure if there's anything more to do, might be, can't remember. If I do another reinstall I'll try to put it in here.
## I'll probably setup some qemu/kvm stuff as well, although I dunno when.
## there's also some systemctl stuff to enable/start bluetooth, networkmanager and maybe some other stuff. But did all this from memory, so I can't remember the other services, so if I ever do another reinstall, which is only a question of when. I will finish this.:wq (kinda forgot I wasn't on vim for a second)

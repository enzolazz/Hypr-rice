#! /bin/bash

# Updating
sudo pacman -Syu
sudo pacman -S --needed --noconfirm base-devel git

# Installing yay
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg --noconfirm -si

# Installing dependencies
sudo pacman -S --needed --noconfirm hyprland waybar thunar yazi foot zsh mako rofi hyprpaper hyprlock aria2 xdg-desktop-portal-hyprland
yay -S --noconfirm nitch anyrun-git brave cava polkit-gnome grimblast-git brightnessctl mpv pavucontrol xorg-xwayland pipewire wireplumber Bleachbit Cmus Btop networkmanager bluez-utils Advcpmv eza fd

# Installing Hypr from Cybersnake
cp -r .config/* $HOME/.config
cp -r .local/bin/scripts $HOME/.local/bin
cp -r .local/bin/scripts $HOME/.local/bin
cp -r .icons $HOME/.icons
cp -r .themes $HOME/.themes
cp -r .fonts $HOME/.fonts

fc-cache -f

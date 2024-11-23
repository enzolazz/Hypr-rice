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

# Running ajusted configs
./ajusting-configs.sh

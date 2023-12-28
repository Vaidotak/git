#!/bin/bash

# Atnaujinti sistemos paketų informaciją
sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm vim nano neofetch git htop bpytop calibre telegram-desktop timeshift filezilla firefox signal-desktop shutter bitwarden vlc mc qbittorrent grub-customizer base-devel go android-file-transfer code gedit bluetoothctl bluez bluez-utils intel-ucode gnome-extra gnome-shell-extension-manager gnome-shell-extension-dash-to-panel obs-studio clamav ufw zsh zsh-syntax-highlighting libgda
# unzip unrar libreoffice-still 
sudo ufw enable
sudo systemctl enable ufw
sudo systemctl start bluetooth.service

# Įdiegti yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..

# Įdiegti programas naudojant yay
# yay -S trufont
yay -S --noconfirm ulauncher
yay -S --noconfirm gdm-settings

sudo pacman -Rns $(pacman -Qtdq) --noconfirm
sudo pacman-optimize --noconfirm


# Archlinux install

# iwctl
# device list
# station wlan0 get-networks
# station wlan0 connect Django  (arba kitą)
# ping google.lt

# pacman -Syy
# pacman -S archlinux-keyring
# pacman -S archinstall
# archinstall 

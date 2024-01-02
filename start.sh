#!/bin/bash

# Atnaujinti sistemos paketų informaciją
sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm vim nano neofetch git htop bpytop calibre telegram-desktop timeshift filezilla firefox signal-desktop shutter bitwarden vlc mc qbittorrent grub-customizer base-devel go android-file-transfer code gedit bluetoothctl bluez bluez-utils intel-ucode gnome-extra gnome-shell-extension-manager gnome-shell-extension-dash-to-panel obs-studio clamav ufw zsh zsh-syntax-highlighting libgda man-db
# unzip unrar libreoffice-still 
sudo ufw enable
sudo systemctl enable ufw
sudo systemctl start bluetooth.service

# Įdiegti yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..

# jau bus sistemoje sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd ..

# paru <userinput> : Search and install <userinput>
# paru — : Alias for paru -Syu
# paru -Sua : Upgrade AUR packages only
# paru -Qua : Print available AUR updates
# paru -Gc <userinput> : Print the AUR comments of <userinput>

# Įdiegti programas naudojant yay
# yay -S trufont
yay -S --noconfirm ulauncher
yay -S --noconfirm gdm-settings
yay -S --noconfirm Stacer
yay -S --noconfirm Ventoy

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

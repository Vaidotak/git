#!/bin/bash

# install metu užstrigus reflectors: ctrl alt F2 | login root [root]. Paleisti: systemctl stop reflector Grįžti: ctrl alt F1
# Po install: sudo pacman-key --refresh-keys
# refresh-keys dariau, nes instaliacijos metu užstrigo reflektoriai. Toliau minimalus Plasma install
#sudo pacman-key --refresh-keys
#sudo pacman -Syu
#sudo pacman -S plasma-desktop
#sudo pacman -S plasma-nm plasma-pa dolphin konsole kdeplasma-addons kde-gtk-config breeze-gtk
#sudo systemctl enable NetworkManager
#sudo systemctl start NetworkManager
#reboot

# Atnaujinti sistemos paketų informaciją
sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm vim nano neofetch git htop bpytop calibre telegram-desktop timeshift filezilla firefox signal-desktop shutter bitwarden vlc mc qbittorrent grub-customizer base-devel go android-file-transfer code bluez bluez-utils intel-ucode clamav firewalld zsh zsh-syntax-highlighting libgda man-db obsidian syncthing tokodon spectacle viewnior kscreen kate
# unzip unrar libreoffice-still  gnome-extra gnome-shell-extension-manager gnome-shell-extension-dash-to-panel obs-studio gedit bluetoothctl
sudo firewalld enable
sudo systemctl enable firewalld
sudo systemctl start bluetooth.service

# Įdiegti yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..

sudo pacman -S --needed base-devel
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


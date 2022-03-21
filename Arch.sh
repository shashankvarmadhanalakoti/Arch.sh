#!/bin/bash
#Removing existing /var/lib/pacman/db.lck if its locked by system
sudo rm -rf /var/lib/pacman/db.lck
#checking for updates
sudo pacman -Syy 
#Install keyring for arch linux
sudo pacman -S archlinux-keyring
#Refresh for updates
sudo pacman --sync --refresh
#Installing Updates
sudo pacman -Syu
#Installing Xorg
sudo pacman -S xorg
#To enable Gnome Software Store
sudo pacman -S archlinux-appstream-data 
sudo pacman -S gnome-software-packagekit-plugin
# To edit Pacman.conf for Media Codes
        ##Execute Below commanted commands Manually..##
    #sudo nano /etc/pacman.conf
    #[extra]
    #Include = /etc/pacman.d/mirrorlist
    sudo pacman -Syu gst-libav
    sudo /usr/lib/gstreamer-1.0/libgstlibav.so
sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins
#Installing samba sharing 
sudo pacman -S samba
#Installing Firefox Browser
sudo pacman -S firefox
#Installing vlc Media player
sudo pacman -S vlc
#Installing Neofetch
sudo pacman -S neofetch
#Installing Zip/rar
sudo pacman -S p7zip p7zip-plugins unrar tar rsync
# Installing lts version of kernel 
sudo pacman -S linux-lts
sudo pacman -S linux-lts-headers
#Installing Git repo 
cd /tmp
sudo pacman -S --needed base-devel git
cd
#installing Time shift for Backup your Operating system 
cd /tmp
git clone https://aur.archlinux.org/timeshift.git 
cd timeshift 
makepkg -si
systemctl enable --now cronie.service
cd
#Installing Preload
cd /tmp
git clone https://aur.archlinux.org/preload.git
cd preload/ 
makepkg -si
cd
#Installing Google-chrome
cd /tmp
git clone https://aur.archlinux.org/google-chrome.git 
cd google-chrome
makepkg -si 
cd 
#Installing yay / yay-bin
cd /tmp
git clone https://aur.archlinux.org/yay-bin.git 
cd yay-bin 
makepkg -si 
cd 
#Installing ifuse for connacting iphone
cd /tmp
git clone https://aur.archlinux.org/ifuse.git 
cd ifuse 
makepkg -si 
cd 
#mkdir ~/iPhone  <If your Iphone is not mounted then onlttry this two commans>
#ifuse ~/iPhone
#installing Gnome Tweaks
sudo pacman -S gnome-tweaks
#installing numix themes
sudo pacman -S numix-themes 
sudo yay  arc-icon-theme-git 
sudo yay  -S arc-gtk-theme flatplat-theme-git vertex-themes

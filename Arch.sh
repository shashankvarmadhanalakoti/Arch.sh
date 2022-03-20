#!/bin/bash
#Removing existing /var/lib/pacman/db.lck if its locked by system
sudo rm -rf /var/lib/pacman/db.lck &> /dev/null
echo -ne '####(5%)\r'
sleep 1
#checking for updates
sudo pacman -Syy &> /dev/null
#Install keyring for arch linux
sudo pacman -S archlinux-keyring &> /dev/null
echo -ne '#########(10%)\r'
sleep 1
#Refresh for updates
sudo pacman --sync -- &> /dev/null
echo -ne '#############(15%)\r'
sleep 1
#Installing Updates
sudo pacman -Syu &> /dev/null
echo -ne '####################(25%)\r'
sleep 1
#Installing Xorg
sudo pacman -S xorg &> /dev/null
echo -ne '##########################(30%)\r'
sleep 1
#To enable Gnome Software Store
sudo pacman -S archlinux-appstream-data &> /dev/null
sudo pacman -S gnome-software-packagekit-plugin &> /dev/null
echo -ne '###################################(35%)\r'
sleep 1
# To edit Pacman.conf for Media Codes
        ##Execute Below commanted commands Manually..##
    #sudo nano /etc/pacman.conf
    #[extra]
    #Include = /etc/pacman.d/mirrorlist
    #sudo pacman -Syu gst-libav
    #sudo /usr/lib/gstreamer-1.0/libgstlibav.so
sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins &> /dev/null
echo -ne '##########################################(40%)\r'
sleep 1
#Installing samba sharing 
sudo pacman -S samba &> /dev/null
#Installing Firefox Browser
echo -ne '##################################################(45%)\r'
sleep 1
sudo pacman -S firefox &> /dev/
echo -ne '###########################################################(50%)\r'
sleep 1
#Installing vlc Media player
sudo pacman -S vlc &> /dev/null
echo -ne '############################################################################(60%)\r'
sleep 1
#Installing Neofetch
sudo pacman -S neofetch &> /dev/null
echo -ne '###################################################################################(65%)\r'
sleep 1
#Installing Zip/rar
sudo pacman -S p7zip p7zip-plugins unrar tar rsync &> /dev/null
echo -ne '###########################################################################################(70%)\r'
sleep 1
# Installing lts version of kernel 
sudo pacman -S linux-lts &> /dev/null
sudo pacman -S linux-lts-headers &> /dev/null
echo -ne '#####################################################################################################(75%)\r'
sleep 1
#Installing Git repo 
cd /tmp &> /dev/null
sudo pacman -S --needed base-devel git &> /dev/null
echo -ne '############################################################################################################(80%)\r'
sleep 1
#installing Time shift for Backup your Operating system 
git clone https://aur.archlinux.org/timeshift.git &> /dev/null
cd timeshift &> /dev/null
makepkg -si &> /dev/null
systemctl enable --now cronie.service &> /dev/null
#Installing Preload
git clone https://aur.archlinux.org/preload.git &> /dev/null
cd preload/ &> /dev/null
makepkg -si &> /dev/null
echo -ne '###################################################################################################################(85%)\r'
sleep 1
#Installing Google-chrome
cd &> /dev/null
git clone https://aur.archlinux.org/google-chrome.git &> /dev/null
cd google-chrome &> /dev/null
makepkg -si &> /dev/null
cd &> /dev/null
echo -ne '#######################################################################################################################(90%)\r'
sleep 1
#Installing yay / yay-bin
git clone https://aur.archlinux.org/yay-bin.git &> /dev/null
cd yay-bin &> /dev/null
makepkg -si &> /dev/null
cd &> /dev/null
#Installing ifuse for connacting iphone
lsusb &> /dev/null
sudo pacman -S ifuse &> /dev/null
#mkdir ~/iPhone  <If your Iphone is not mounted then onlttry this two commans>
#ifuse ~/iPhone
#installing Gnome Tweaks
echo -ne '###############################################################################################################################(95%)\r'
sleep 1
sudo pacman -S gnome-tweaks &> /dev/null
#installing numix themes
sudo pacman -S numix-themes &> /dev/null
sudo yay  arc-icon-theme-git &> /dev/null
sudo yay  -S arc-gtk-theme flatplat-theme-git vertex-themes &> /dev/null
echo -ne '########################################################################################################################################(99%)\r'
sleep 1
echo -ne '############################################################################################################################################################(100%)\n'
sleep 1
&> /dev/null
echo -ne '#################### INSTALLATION SETUP DONE ENJOY YOUR ARCH LINUX  ##############################################  '
#!/bin/bash
#set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

echo
tput setaf 3
echo "################################################################"
echo "################### Welcome, now we will install everything !"
echo "################################################################"
tput sgr0
echo
sleep 4

sudo pacman -Syyu

sh 1-install-amoslinux-software*
#sh 2-install-bspwm*
sh 3-software-AUR-repo*
sh 4-mpd-ncmpcpp*
#sh 8-install-i3wm.sh
#sh 5-install-cinnamon-desktop*
#sh install-archlinux-tweak-tool-dev*

echo
tput setaf 2
echo "################################################################"
echo "################### Going to the Personal folder"
echo "################################################################"
tput sgr0
echo

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
cd $installed_dir/Personal

#sh 6-firefox-fix-unreadable-text-for-dark-themes-settings*
sh 7-install-personal-settings-screenshot-to-jpg*
sh 8-fix-simplescreenrecorder*
sh 9-fix-sublime-text-icons*
sh 10-fix-telegram*
sh 11-autostart-applications*
sh 12-btrfs-setup*
sh 13-install-all-fonts-needed-for-conkys*
sh 16-amoslinux*
sh 17-arco*
sh 18-eos*
sh 19-skel*

# change shell to zsh
sudo chsh $USER -s /bin/zsh


echo "################################################################"
echo "End current choices"
echo "################################################################"
tput sgr0
sudo reboot
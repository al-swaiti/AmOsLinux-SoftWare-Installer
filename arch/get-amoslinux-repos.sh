#!/bin/bash
echo '

[amoslinux-root-repo]
SigLevel = Optional TrustedOnly
Server = https://amos-linux.github.io/$repo/$arch

[amoslinux-repo]
SigLevel = Optional TrustedOnly
Server = https://amos-linux.github.io/$repo/$arch

[amoslinux-3rd-party-repo]
SigLevel = Optional TrustedOnly
Server = https://amos-linux.github.io/$repo/$arch' | sudo tee --append /etc/pacman.conf

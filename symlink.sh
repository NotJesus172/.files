#!/usr/bin/env bash

#   System update
sudo dnf -u up
#   Install stow
sudo dnf -y in stow

#   Remove previous shell configs and create config directory with appropriate ownership
if [ $USER==root ]; then
    rm -rf /home/$SUDO_USER/.bashrc
    rm -rf /home/$SUDO_USER/.zshrc
    mkdir /home/$SUDO_USER/.config

    chown $SUDO_USER /home/$SUDO_USER/.config
else
    rm -rf ~/.bashrc
    rm -rf ~/.zshrc
    mkdir ~/.config
    chown $USER ~/.config
fi


#   Stow package config files

#   Shell
stow -S bash
stow -S zsh
stow -S starship
#   Userspace
stow -S hypr
stow -S waypaper
stow -S waybar
stow -S swaync
#  Applications
stow -S kitty
stow -S btop
stow -S tor
stow -S code

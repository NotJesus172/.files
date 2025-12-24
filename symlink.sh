#!/usr/bin/env bash

#   Install stow
sudo dnf -y in stow

<<<<<<< HEAD
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
=======
#   Remove previous shell config files
sudo rm -rf ~/.bashrc
sudo rm -rf ~/.zshrc

#  Make config directory and establish ownership
if [ $USER==root ]; then
	mkdir /home/$SUDO_USER/.config
	chown $SUDO_USER /home/$SUDO_USER/.config
else
	mkdir ~/.config
	chown $USER ~/.config
fi

>>>>>>> 0179b2e (added waybar)
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

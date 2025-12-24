#!/usr/bin/env bash

#   Install stow
sudo dnf -y in stow

#   Remove previous shell config files
rm -rf ~/.bashrc
rm -rf ~/.zshrc

#  Make config directory and establish ownership
mkdir ~/.config
chown $USER ~/.config

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

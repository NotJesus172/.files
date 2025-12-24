#!/usr/bin/env bash

#   Install stow
sudo dnf -y in stow
rm -rf ~/.bashrc
rm -rf ~/.zshrc
#   Stow package config files

#   Shell
stow -S bash 
stow -S zsh 
stow -S starship 
#   Userspace
stow -S hypr 
stow -S waypaper 
stow -S waybar 

#  Applications
stow -S kitty 
stow -S btop 
stow -S tor 

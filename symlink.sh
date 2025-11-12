#!/usr/bin/env bash

#   Update system
sudo pacman -Syu

#   Install stow
sudo pacman -S stow

#   Stow package config files

#   Shell
stow -S bash --adopt
stow -S zsh --adopt
stow -S starship --adopt
#   Userspace
stow -S hypr --adopt
stow -S waypaper --adopt
stow -S waybar --adopt

#  Applications
stow -S kitty --adopt
stow -S btop --adopt
stow -S tor --adopt

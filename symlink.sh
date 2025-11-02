#!/usr/bin/env bash

#   Install stow
sudo dnf -y in stow
#   Stow package config files
stow -S bash --adopt
stow -S starship --adopt
stow -S kitty --adopt
stow -S hypr --adopt
stow -S waybar --adopt
stow -S btop --adopt
stow -S waypaper --adopt

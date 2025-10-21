#!/usr/bin/env bash

#   Install stow
sudo dnf -y in stow
#   Set stow directory
stow -d ~/.files
#   Stow package config files
stow -t ~ -S bash --adopt
stow -t ~/.config -S starship --adopt
stow -t ~/.config/kitty -S kitty --adopt
stow -t ~/.config/hypr -S hypr --adopt
stow -t ~/.config/waybar -S waybar --adopt
stow -t ~/.config/btop -S btop --adopt
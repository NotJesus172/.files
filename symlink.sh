#!/usr/bin/env bash

#   Install stow
sudo dnf -y in stow

#   Stow package config files

#   Shell
stow -R bash
stow -R zsh
stow -R starship
#   Userspace
stow -R hypr
stow -R waypaper
stow -R waybar

#  Applications
stow -R kitty
stow -R btop
stow -R tor

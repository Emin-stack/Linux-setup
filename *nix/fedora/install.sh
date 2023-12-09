#!/bin/bash
# Fedora
printf "\e[92mInstall tools on Fedora\e[0m\n"
sudo dnf copr enable atim/lazygit -y
sudo dnf install -y zsh vim tmux ranger gcc gcc-c++ gdb git readline-devel SDL2-devel llvm llvm-devel lazygit

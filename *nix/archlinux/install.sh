#!/bin/bash
printf "\e[92mInstall tools on Arch\e[0m\n"
sudo pacman -S --needed base-devel vim tmux ranger man gdb git readline sdl2 llvm clang lazygit cmake gcc python3 zsh fzf ctags cscope
export FZF_SHELL_PATH=/usr/share/fzf

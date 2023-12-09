#!/bin/bash
printf "\e[92mInstall tools on Ubuntu\e[0m\n"
sudo apt-get update
sudo apt-get install -y build-essential cmake universal-ctags cscope vim tmux ranger man gcc-doc gdb git libreadline-dev libsdl2-dev llvm llvm-dev llvm-11 llvm-11-dev ufw net-tools htop tree python3 python3-dev curl unzip vnstat python3-distutils python-is-python3 wget
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit
rm lazygit.tar.gz
export FZF_SHELL_PATH=/usr/share/doc/fzf/examples

#!/bin/bash
printf "\e[92mInstall tools on macOS\e[0m\n"
xcode-select --install
/bin/bash -c "$(curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install vim tmux ranger man gdb git readline sdl2 llvm fzf
export FZF_SHELL_PATH=/opt/homebrew/opt/fzf/shell

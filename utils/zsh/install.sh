#!/bin/bash
ZSHRC_DIR=$UTILS_SCRIPT_DIR/utils/zsh
printf "\e[92mzshrc path: $ZSHRC_DIR\e[0m\n"
# Install zimfw for zsh
curl -fsSL https://mirror.ghproxy.com/https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
ln -sf $ZSHRC_DIR/zimrc ~/.zimrc
ln -sf $ZSHRC_DIR ~/.zsh
zimfw install

echo "FZF_SHELL_PATH=$FZF_SHELL_PATH" >> ~/.zshrc
echo "source ~/.zsh/env.zsh" >> ~/.zshrc
echo "source ~/.zsh/aliases.zsh" >> ~/.zshrc


#!/bin/bash
ZSHRC_DIR="$(pwd)"
# Install zimfw for zsh
curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
ln -sf $ZSHRC_DIR/zimrc ~/.zimrc
ln -sf $ZSHRC_DIR/../zsh ~/.zsh
zimfw install

echo "FZF_SHELL_PATH=$FZF_SHELL_PATH" >> ~/.zshrc
echo "source ~/.zsh/env.zsh" >> ~/.zshrc


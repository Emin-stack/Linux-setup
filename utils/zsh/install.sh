#!/bin/bash
# Install zimfw for zsh
curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
ln -sf $UTILS_SCRIPT_DIR/zsh/zimrc ~/.zimrc
ln -sf $UTILS_SCRIPT_DIR/zsh ~/.zsh
zimfw install

echo "FZF_SHELL_PATH=$(FZF_SHELL_PATH)" >> ~/.zshrc
echo "source ~/.zsh/env.zsh" >> ~/.zshrc


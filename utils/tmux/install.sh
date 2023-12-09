#!/bin/bash
TMUX_DIR=$UTILS_SCRIPT_DIR/tmux
printf "\e[92mtmux conf path: $TMUX_DIR\e[0m\n"
# Install Tmux and plugins
git clone https://ghproxy.com/https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
bash ~/.tmux/plugins/tpm/bin/install_plugins
ln -sf $TMUX_DIR/tmux.conf ~/.tmux.conf

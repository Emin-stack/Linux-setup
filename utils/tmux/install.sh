#!/bin/bash
TMUX_DIR="$(pwd)"
# Install Tmux and plugins
git clone https://ghproxy.com/https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
bash ~/.tmux/plugins/tpm/bin/install_plugins
ln -sf $TMUX_DIR/tmux.conf ~/.tmux.conf

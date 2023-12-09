#!/bin/bash
# Install Tmux and plugins
git clone https://ghproxy.com/https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
bash ~/.tmux/plugins/tpm/bin/install_plugins
ln -sf $SCRIPT_DIR/utils/tmux/tmux.conf ~/.tmux.conf

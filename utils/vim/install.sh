#!/bin/bash
VIMRC_PATH=$UTILS_SCRIPT_DIR/vim
printf "\e[92mvimrc path: $VIMRC_PATH\e[0m\n"

# Install vim-plug and YouCompleteMe for Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://ghproxy.com/https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sf $VIMRC_PATH/vimrc ~/.vimrc
vim +PlugInstall +qall
# You can also follow the YCM installation instructions separately.
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --clangd-completer --verbose

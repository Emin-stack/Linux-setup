#!/bin/bash
# Install vim-plug and YouCompleteMe for Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://ghproxy.com/https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sf $SCRIPT_DIR/utils/vim/vimrc ~/.vimrc
vim +PlugInstall +qall
# You can also follow the YCM installation instructions separately.
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --clangd-completer --verbose
#!/bin/bash
# Install ranger plugins
ranger --copy-config=all
echo 'export RANGER_LOAD_DEFAULT_RC=FALSE' >> ~/.zshrc
# config ranger
sed -i 's/set vcs_aware false/set vcs_aware true/' ~/.config/ranger/rc.conf
# sed -i 's/set show_hidden false/set show_hidden true/' ~/.config/ranger/rc.conf
sed -i 's/set preview_images false/set preview_images true/' ~/.config/ranger/rc.conf
# devicons
git clone https://mirror.ghproxy.com/https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf
# oscyank
git clone https://mirror.ghproxy.com/https://github.com/laggardkernel/ranger-oscyank.git ~/.config/ranger/plugins/oscyank
echo 'map yp oscyank path' >> ~/.config/ranger/rc.conf
echo 'map yd oscyank dir' >> ~/.config/ranger/rc.conf
echo 'map yn oscyank name' >> ~/.config/ranger/rc.conf
echo 'map y. oscyank name_without_extension' >> ~/.config/ranger/rc.conf
# ranger-zshz
export ZSHZ_SRC=~/.zim/modules/zsh-z/zsh-z.plugin.zsh
git clone https://mirror.ghproxy.com/https://github.com/rc2dev/ranger-zshz.git ~/.config/ranger/plugins/zsh_z
# ranger-tmux
# pip install ranger-tmux
# python -m ranger_tmux install

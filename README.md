# Setup Linux quickly 

You can use the shell script to setup the environment quickly.

```shell
sh install.sh 
# or choose neovim
# sh install.sh USE_NVIM=1 
```
Or if desired, you can continue to review the settings for each tool below

## Install tools 
Ubuntu
```shell
apt-get install build-essential vim tmux ranger man gcc-doc gdb git libreadline-dev libsdl2-dev llvm llvm-dev llvm-11 llvm-11-dev
```
Fedora
```shell
dnf install zsh vim tmux ranger gcc gcc-c++ gdb git readline-devel SDL2-devel llvm llvm-devel
```

## Zsh
Install zimfw

```shell
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

```

Then link zimrc to ~/.zimrc
```shell
SETUP_DIR="$(pwd)" && ln -s $SETUP_DIR/zsh/zimrc ~/.zimrc
zimfw install
```
Link zshrc and zsh config to
```shell
SETUP_DIR="$(pwd)" && ln -s $SETUP_DIR/zsh/zshrc ~/.zshrc
ln -s $SETUP_DIR/zsh ~/.config/zsh
```

## Fish
Install fish
```
curl -L https://get.oh-my.fish | fish
omf install agnoster
omf theme agnoster
```

## Fonts

1. Download a [Nerd Font](http://nerdfonts.com)

2. Unzip and copy to ~/.fonts

3. Run the command `fc-cache -fv` to manually rebuild the font cache

## Vim

### Install vim-plug
```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Then link vimrc to ~/.vimrc
```shell
SETUP_DIR="$(pwd)" && ln -s $SETUP_DIR/vimrc ~/.vimrc
```
open vim and run `:PlugInstall`
#### Install [YCM](https://github.com/ycm-core/YouCompleteMe)

### choose [neovim](https://github.com/Emin-stack/nvim)
```shell
    git submodule update --init --recursive
    SETUP_DIR="$(pwd)" && ln -s $SCRIPT_DIR/nvim ~/.config/nvim
```

## Tmux
Use Ctrl+j for instruction escape.
```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
bash ~/.tmux/plugins/tpm/bin/install_plugins
SETUP_DIR="$(pwd)" && ln -s $SETUP_DIR/tmux.conf ~/.tmux.conf
```

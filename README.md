# Setup Linux quickly 

You can use the shell script to setup the environment quickly.

```shell
bash install.sh
# or choose neovim
# bash install.sh USE_NVIM=1
```
Or if desired, you can continue to review the settings for each tool below

## Install tools 
Export this scripts path first before you run following scripts!!!
```shell
    bash env.sh
```

Ubuntu
```shell
    bash \*nix/ubuntu/install.sh
```
Fedora
```shell
    bash \*nix/fedora/install.sh
```
Arch Linux
```shell
    bash \*nix/archlinux/install.sh
```

## Zsh
Install zimfw

```shell
    bash utils/zsh/install.sh
```

## Fish
Install fish
```shell
    bash utils/fish/install.sh
```

## Fonts

1. Download a [Nerd Font](http://nerdfonts.com)

2. Unzip and copy to ~/.fonts

3. Run the command `fc-cache -fv` to manually rebuild the font cache

## Vim

```shell
    bash utils/vim/install.sh
```

#### [YCM](https://github.com/ycm-core/YouCompleteMe)

### choose [neovim](https://github.com/Emin-stack/nvim)
```shell
    git submodule update --init --recursive
    ln -s utils/nvim ~/.config/nvim
```

## Tmux
Use Ctrl+j for instruction escape.
```shell
    bash utils/tmux/install.sh
```

## Ranger
```shell
    bash utils/ranger/install.sh
```

## Uninstall
```shell
    bash uninstall.sh
```

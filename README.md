# Linux  Configuration
## zsh
install zimfw

```shell
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

```

## fish
```
curl -L https://get.oh-my.fish | fish
omf install agnoster
omf theme agnoster
```

## fonts

1.) Download a [Nerd Font](http://nerdfonts.com)

2.) Unzip and copy to ~/.fonts

3.) Run the command `fc-cache -fv` to manually rebuild the font cache

## Setup Vim
### [Install vundle](https://github.com/VundleVim/Vundle.vim)

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
### Configure Plugins:

Copy vimrc to `~/.vimrc` or <br/> 
Put this at the top of your .vimrc to use Vundle. Remove plugins you don't need, they are for illustration purposes.
```
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
```

### Install [YCM](https://github.com/ycm-core/YouCompleteMe)

### Linux 64-bit

The following assume you're using Ubuntu 20.04.
Quick start, installing all completers

- Install YCM plugin via Vundle
- Install CMake, Vim and Python

```
apt install build-essential cmake vim-nox python3-dev
```

- Install mono-complete, go, node, java and npm

```
apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm
```

- Compile YCM

```
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
```

- For plugging an arbitrary LSP server, check the relevant section

## Install tools (Ubuntu)
```
apt-get install build-essential    # build-essential packages, include binary utilities, gcc, make, and so on
apt-get install man                # on-line reference manual
apt-get install gcc-doc            # on-line reference manual for gcc
apt-get install gdb                # GNU debugger
apt-get install git                # revision control system
apt-get install libreadline-dev    # a library used later
apt-get install libsdl2-dev        # a library used later
apt-get install llvm llvm-dev      # llvm project, which contains libraries used later
apt-get install llvm-11 llvm-11-dev # only for ubuntu20.04
```

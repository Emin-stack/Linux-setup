#!/bin/bash

bash env.sh
OS_TYPE=$(uname -s)

USE_NVIM=0
# 检查是否有外部输入，如果有，解析格式为 "USE_NVIM=value" 的输入
if [ -n "$1" ]; then
    input="$1"
    # 使用正则表达式提取值
    if [[ $input =~ ^USE_NVIM=([0-9]+) ]]; then
        USE_NVIM="${BASH_REMATCH[1]}"
    fi
fi

echo "USE_NVIM 的值为: $USE_NVIM"

# Install essential tools based on the Linux distribution
if [ "$OS_TYPE" = "Darwin" ]; then
    # echo "This is macOS"
	bash \*nix/darwin/install.sh
elif [ "$OS_TYPE" = "Linux" ]; then
    if [ -f /etc/os-release ]; then
		if [ -z "$ID" ]; then
			source /etc/os-release
		else
			printf "\e[92mThe ID is :$ID \e[0m\n"
		fi
        if [ "$ID" = "ubuntu" ]; then
            # Ubuntu
			bash \*nix/ubuntu/install.sh
        elif [ "$ID" = "fedora" ]; then
			bash \*nix/fedora/install.sh
        elif [ "$ID" = "arch" ]; then
			bash \*nix/archlinux/install.sh
        else
            printf "\e[91mFail to recognize this OS!!!\e[0m"
            exit 1
        fi
    else
        printf "\e[91mFail to install tools on this OS!!!\e[0m"
        exit 1
    fi
else
    printf "\e[91mFail to recognize this OS!!!\e[0m"
    exit 1
fi

bash $UTILS_SCRIPT_DIR/zsh/install.sh

# Install neovim configuration
if [ "$USE_NVIM" -eq 1 ]; then
    git submodule update --init --recursive
    ln -s $UTILS_SCRIPT_DIR/nvim ~/.config/nvim
else
	bash $UTILS_SCRIPT_DIR/vim/install.sh
fi

bash  $UTILS_SCRIPT_DIR/tmux/install.sh

bash  $UTILS_SCRIPT_DIR/ranger/install.sh

unset SCRIPT_DIR
unset UTILS_SCRIPT_DIR

zsh

alias lg='lazygit'
alias ra='ranger'
# alias vim='nvim'
# alias vi='nvim'
alias python='python3'

# The plugin will auto execute this zvm_after_init function
zvm_after_init() {
  source $FZF_SHELL_PATH/key-bindings.zsh
  source $FZF_SHELL_PATH/completion.zsh
}

g_proxy() {
  export http_proxy="http://127.0.0.1:20171"
  # export http_proxy="socks5://127.0.0.1:20170"
  export https_proxy="http://127.0.0.1:20171"
  # export https_proxy="socks5://127.0.0.1:20170"
  export all_proxy=socks5://127.0.0.1:20170
}

unproxy() {
  unset http_proxy
  unset https_proxy
}

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# XDG_CONFIG_HOME
export XDG_CONFIG_HOME=$HOME/.config

# emacsclient
export ALTERNATE_EDITOR="" # like option '--alternate-editor=""'


# golang
# Path for Golang
export GOPATH=~/.go
export PATH=$PATH:$GOPATH/bin
# Go mod设置
export GO111MODULE=on
export GOPROXY=https://goproxy.cn,direct
export GOSUMDB=off

# rust
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
export RUST_BIN=$HOME/.cargo/bin
export PATH=$PATH:$RUST_BIN
# export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"


# 设置TMP目录
if [[ -n $PREFIX ]]; then
	export TMP=$PREFIX/tmp
else
	export TMP=/var/tmp
fi

# local bin dir
export LOCAL_BIN=$HOME/.local/bin
export PATH=$PATH:$LOCAL_BIN

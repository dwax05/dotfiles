#!/bin/sh

export ZDOTDIR="$HOME/.config/zsh"
. "$ZDOTDIR/../shell/env"
. "$ZDOTDIR/.zplugins"
. "$ZDOTDIR/.fzf.zsh"

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

fpath+=~/.zfunc; autoload -Uz compinit; compinit

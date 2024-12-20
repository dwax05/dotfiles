#!/bin/sh

# == Settings ==

eval "$(/opt/homebrew/bin/brew shellenv)"

autoload -U colors && colors
setopt autocd
stty stop undef
setopt interactive_comments

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # lets you tab complete hidden files by default
unsetopt BEEP

# == Environment Variables ==

export EDITOR=nvim
export PAGER=less

export HISTSIZE=100000
export SAVEHIST=100000
export HIST_STAMPS="dd/mm/yyyy"
export HISTFILE="${XDG_CONFIG_HOME:-$HOME/.cache}/zsh/history"
export LESSHISTFILE="${XDG_CONFIG_HOME:-$HOME/.cache}/less/history"

export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
export FZF_DEFAULT_OPTS="--history-size=20000"

export GOPATH="$HOME/.go"

shadafile="$HOME/.config/vim/viminfo"

export PATH="/opt/homebrew/opt/dotnet@6/bin:$PATH"
[ -d "$HOME/.local/bin" ] && export PATH="$PATH:$HOME/.local/bin"
[ -d "$HOME/.cargo/bin" ] && export PATH="$PATH:$HOME/.cargo/bin"
[ -d "$HOME/.go/bin" ] && export PATH="$PATH:$HOME/.go/bin"
[ -d "$HOME/.config/brew/scripts" ] && export PATH="$PATH:$HOME/.config/brew/scripts"

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/bindsrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/bindsrc"


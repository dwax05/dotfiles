#!/bin/sh

CONFIGDIR="$HOME/.config/wezterm"

if [[ -z $1 ]]; then
        file="$(ls -1 $CONFIGDIR/logos | fzf)"
else
        file="$1"
fi

rm -rf "$CONFIGDIR/background.png"
ln -sf "$CONFIGDIR/logos/$file" "$CONFIGDIR/background.png"

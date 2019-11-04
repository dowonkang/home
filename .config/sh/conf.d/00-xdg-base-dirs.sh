#!/usr/bin/env sh

# XDG base directories
if [ ! -d "$HOME/.config" ]; then
	mkdir "$HOME/.config"
fi
if [ ! -d "$HOME/.local/share" ]; then
	mkdir -p "$HOME/.local/share"
fi
if [ ! -d "$HOME/.cache" ]; then
	mkdir "$HOME/.cache"
fi

XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME
XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_HOME
XDG_CACHE_HOME="$HOME/.cache"
export XDG_CACHE_HOME

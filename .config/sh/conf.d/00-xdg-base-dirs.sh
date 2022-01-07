#!/usr/bin/env sh

# XDG base directories
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
if [ ! -d "$HOME/.config" ]; then
	mkdir "$HOME/.config"
fi
if [ ! -d "$HOME/.local/share" ]; then
	mkdir -p "$HOME/.local/share"
fi
if [ ! -d "$HOME/.local/state" ]; then
	mkdir -p "$HOME/.local/state"
fi
if [ ! -d "$HOME/.cache" ]; then
	mkdir "$HOME/.cache"
fi

XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME
XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_HOME
XDG_STATE_HOME="$HOME/.local/state"
export XDG_STATE_HOME
XDG_CACHE_HOME="$HOME/.cache"
export XDG_CACHE_HOME

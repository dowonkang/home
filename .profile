#!/usr/bin/env sh
# executed by Bourne-compatible login shells.

# XDG base directories
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
for dir in "$HOME/.config" "$HOME/.local/share" "$HOME/.local/bin" "$HOME/.local/state" "$HOME/.cache"; do
	if [ ! -d "$dir" ]; then
		mkdir -p "$dir"
	fi
done
unset dir

XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME
XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_HOME
XDG_BIN_HOME="$HOME/.local/bin"
export XDG_BIN_HOME
XDG_STATE_HOME="$HOME/.local/state"
export XDG_STATE_HOME
XDG_CACHE_HOME="$HOME/.cache"
export XDG_CACHE_HOME

if [ -z "$XDG_RUNTIME_DIR" ]; then
	XDG_RUNTIME_DIR=/tmp/$(id -u)-runtime-dir
	export XDG_RUNTIME_DIR
	if [ ! -d "$XDG_RUNTIME_DIR" ]; then
		mkdir -p "$XDG_RUNTIME_DIR"
		chmod 700 "$XDG_RUNTIME_DIR"
	fi
fi

# Some programs expect XDG_BIN_DIR instead of XDG_BIN_HOME
XDG_BIN_DIR="$XDG_BIN_HOME"
export XDG_BIN_DIR

# Prepend bin directories to PATH if they exist and are not already included
for dir in /usr/local/sbin "$HOME/.local/bin"; do
	if [ -d "$dir" ] && case ":$PATH:" in *":$dir:"*) false;; *) true;; esac; then
		PATH="$dir:$PATH"
	fi
done
unset dir

export PATH

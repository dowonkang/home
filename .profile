#!/usr/bin/env sh
# executed by Bourne-compatible login shells.

# XDG base directories
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html

if [ -z "$XDG_CONFIG_HOME" ]; then
	mkdir -p "$HOME/.config"
	XDG_CONFIG_HOME="$HOME/.config"
	export XDG_CONFIG_HOME
fi

if [ -z "$XDG_DATA_HOME" ]; then
	mkdir -p "$HOME/.local/share"
	XDG_DATA_HOME="$HOME/.local/share"
	export XDG_DATA_HOME
fi

if [ -z "$XDG_BIN_HOME" ]; then
	mkdir -p "$HOME/.local/bin"
	XDG_BIN_HOME="$HOME/.local/bin"
	export XDG_BIN_HOME
fi

if [ -z "$XDG_STATE_HOME" ]; then
	mkdir -p "$HOME/.local/state"
	XDG_STATE_HOME="$HOME/.local/state"
	export XDG_STATE_HOME
fi

if [ -z "$XDG_CACHE_HOME" ]; then
	mkdir -p "$HOME/.cache"
	XDG_CACHE_HOME="$HOME/.cache"
	export XDG_CACHE_HOME
fi

# Manual XDG_RUNTIME_DIR setup
# comment it out when not using a session manager
# https://docs.voidlinux.org/config/session-management.html#xdg_runtime_dir
# if [ -z "$XDG_RUNTIME_DIR" ]; then
# 	XDG_RUNTIME_DIR=/run/user/$(id -u)
# 	export XDG_RUNTIME_DIR
# 	if [ ! -d "$XDG_RUNTIME_DIR" ]; then
# 		mkdir -p "$XDG_RUNTIME_DIR"
# 		chmod 700 "$XDG_RUNTIME_DIR"
# 	fi
# fi

# Some programs expect XDG_BIN_DIR instead of XDG_BIN_HOME
if [ -z "$XDG_BIN_DIR" ]; then
	XDG_BIN_DIR="$XDG_BIN_HOME"
	export XDG_BIN_DIR
fi

# Prepend bin directories to PATH if they exist and are not already included
for dir in /usr/local/sbin "$HOME/.local/bin"; do
	if [ -d "$dir" ] && case ":$PATH:" in *":$dir:"*) false ;; *) true ;; esac then
		PATH="$dir:$PATH"
	fi
done
unset dir

export PATH

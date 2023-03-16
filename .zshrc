#!/usr/bin/env zsh

# Source global definitions
if [ -f /etc/zshrc ]; then
	# shellcheck disable=1091
	. /etc/zshrc
fi

# Change directory without cd command
setopt autocd

if [ -f "$HOME/.config/sh/config.sh" ]; then
	# shellcheck disable=1090
	. "$HOME/.config/sh/config.sh"
fi

# Enable auto completion
autoload -Uz compinit && compinit

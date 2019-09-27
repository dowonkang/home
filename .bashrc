#!/usr/bin/env bash

# Source global definitions
if [ -f /etc/bashrc ]; then
	# shellcheck disable=1091
	. /etc/bashrc
fi

if [ -f "$HOME/.config/shrc" ]; then
	# shellcheck disable=1090
	. "$HOME/.config/shrc"
fi

# Don't put duplicate lines or lines starting with space in the history
export HISTCONTROL=ignoreboth

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Append to the history file, don't overwrite it
shopt -s histappend 2>/dev/null

# Make bash check its window size after a process completes
shopt -s checkwinsize 2>/dev/null

# Change directory without cd command
shopt -s autocd 2>/dev/null

# Prompt
if command -v starship >/dev/null 2>&1; then
	eval "$(starship init bash)"
elif [ -f "$HOME/.config/bash_prompt" ]; then
	# shellcheck disable=1090
	. "$HOME/.config/bash_prompt"
else
	if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
		PS1="\\u@\\h:\\w \\$ "
	else
		PS1="\\w \\$ "
	fi
	export PS1
fi

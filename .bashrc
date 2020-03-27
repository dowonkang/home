#!/usr/bin/env bash

# Source global definitions
if [ -f /etc/bashrc ]; then
	# shellcheck disable=1091
	. /etc/bashrc
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

if [ -f "$HOME/.config/sh/config.sh" ]; then
	# shellcheck disable=1090
	. "$HOME/.config/sh/config.sh"
fi

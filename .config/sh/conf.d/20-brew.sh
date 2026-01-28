#!/usr/bin/env sh

if [ -f /opt/homebrew/bin/brew ]; then
	if [ -n "$ZSH_VERSION" ]; then
		# zsh: use full output including fpath
		eval "$(/opt/homebrew/bin/brew shellenv)"
	else
		# bash/sh: filter out zsh-specific fpath line
		eval "$(/opt/homebrew/bin/brew shellenv | grep -v '^fpath')"
	fi
fi

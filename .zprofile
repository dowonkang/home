#!/usr/bin/env zsh
eval "$(/opt/homebrew/bin/brew shellenv)"

if [ -f "$HOME/.zshrc" ]; then
	# shellcheck disable=1090
	. "$HOME/.zshrc"
fi

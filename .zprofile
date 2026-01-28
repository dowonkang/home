#!/usr/bin/env zsh

if [ -f "$HOME/.profile" ]; then
	# shellcheck disable=1090
	. "$HOME/.profile"
fi

if [ -f "$HOME/.zshrc" ]; then
	# shellcheck disable=1090
	. "$HOME/.zshrc"
fi

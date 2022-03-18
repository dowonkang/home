#!/usr/bin/env bash

# Source global definitions
if [ -f /etc/zshrc ]; then
	# shellcheck disable=1091
	. /etc/zshrc
fi

if [ -f "$HOME/.config/sh/config.sh" ]; then
	# shellcheck disable=1090
	. "$HOME/.config/sh/config.sh"
fi

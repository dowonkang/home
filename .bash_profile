#!/usr/bin/env bash

if [ -f "$HOME/.profile" ]; then
	# shellcheck disable=1090
	. "$HOME/.profile"
fi

if [ -f "$HOME/.bashrc" ]; then
	# shellcheck disable=1090
	. "$HOME/.bashrc"
fi

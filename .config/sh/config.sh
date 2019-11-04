#!/usr/bin/env sh
# shellcheck disable=SC1090

# POSIX-compatible stuff

# Do nothing if non-interactive
if [ -z "$PS1" ]; then
	return
fi

config_dir="$HOME/.config/sh"

if [ -d "$config_dir/functions" ]; then
	for func in "$config_dir/functions/"*.sh; do
		. "$func"
	done
	unset func
fi

if [ -d "$config_dir/conf.d" ]; then
	for conf in "$config_dir/conf.d/"*.sh; do
		. "$conf"
	done
	unset conf
fi

unset config_dir

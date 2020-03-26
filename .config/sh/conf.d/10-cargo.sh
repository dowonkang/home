#!/usr/bin/env sh

if command -v cargo >/dev/null; then
	if [ -d "$HOME/.cargo" ] &&
		! [ -d "$XDG_CONFIG_HOME/cargo" ]; then
		mv "$HOME/.cargo" "$XDG_CONFIG_HOME/cargo"
	else
		mkdir -p "$XDG_CONFIG_HOME/cargo"
	fi
	if [ -d "$XDG_CONFIG_HOME/cargo" ]; then
		CARGO_HOME="$XDG_CONFIG_HOME/cargo"
		export CARGO_HOME
	fi
	if [ -n "$CARGO_HOME" ]; then
		prepend_to_path "$CARGO_HOME/bin"
	fi
fi

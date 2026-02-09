#!/usr/bin/env sh

if command -v mise >/dev/null 2>&1; then
	if [ -n "$BASH_VERSION" ]; then
		eval "$(mise activate bash)"
	elif [ -n "$ZSH_VERSION" ]; then
		eval "$(mise activate zsh)"
	fi
fi

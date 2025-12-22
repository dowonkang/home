#!/usr/bin/env sh

if command -v zoxide >/dev/null 2>&1; then
	# Setup shell integration for bash and zsh
	if [ -n "$BASH_VERSION" ]; then
		# Bash: key bindings and fuzzy completion
		eval "$(zoxide init bash)"
	elif [ -n "$ZSH_VERSION" ]; then
		# Zsh: key bindings and fuzzy completion
		eval "$(zoxide init zsh)"
	fi
fi

#!/usr/bin/env sh
# fzf shell integration
# https://github.com/junegunn/fzf?tab=readme-ov-file#setting-up-shell-integration

if command -v fzf >/dev/null 2>&1; then
	# Setup shell integration for bash and zsh
	if [ -n "$BASH_VERSION" ]; then
		# Bash: key bindings and fuzzy completion
		eval "$(fzf --bash)"
	elif [ -n "$ZSH_VERSION" ]; then
		# Zsh: key bindings and fuzzy completion
		eval "$(fzf --zsh)"
	fi
fi

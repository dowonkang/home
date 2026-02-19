#!/usr/bin/env sh

if command -v starship >/dev/null 2>&1; then
	if [ -n "$BASH" ]; then
		eval "$(starship init bash)"
	elif [ -n "$ZSH_VERSION" ]; then
		eval "$(starship init zsh)"
	fi
else
	if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
		PS1="\\u@\\h:\\w \\$ "
	else
		PS1="\\w \\$ "
	fi
	export PS1
fi

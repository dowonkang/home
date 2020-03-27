#!/usr/bin/env sh

if [ -n "$BASH" ]; then
	if command -v starship >/dev/null 2>&1; then
		eval "$(starship init bash)"
	elif [ -f "$HOME/.config/bash_prompt" ]; then
		# shellcheck disable=1090
		. "$HOME/.config/bash_prompt"
	fi
else
	if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
		PS1="\\u@\\h:\\w \\$ "
	else
		PS1="\\w \\$ "
	fi
	export PS1
fi

#!/usr/bin/env sh
# executed by Bourne-compatible login shells.

if [ -f "$HOME/.config/sh/config.sh" ]; then
	# shellcheck disable=1090
	. "$HOME/.config/sh/config.sh"
fi

# Prompt
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	PS1="\\u@\\h:\\w \\$ "
else
	PS1="\\w \\$ "
fi
export PS1

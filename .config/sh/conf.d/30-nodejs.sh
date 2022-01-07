#!/usr/bin/env sh
# shellcheck disable=SC1090

if [ -d "$HOME/.local/bin" ] && [ -s "$HOME/.local/bin/fnm" ]; then
	prepend_to_path "$HOME/.local/bin"
	eval "$(fnm env --use-on-cd)"
elif [ -d "$HOME/.config/nvm" ] && [ -s "$HOME/.config/nvm/nvm.sh" ]; then
	NVM_DIR="$HOME/.config/nvm"
	export NVM_DIR
	. "$NVM_DIR/nvm.sh"

	if [ "$BASH" ] && [ -s "$NVM_DIR/bash_completion" ]; then
		. "$NVM_DIR/bash_completion"
	fi
fi

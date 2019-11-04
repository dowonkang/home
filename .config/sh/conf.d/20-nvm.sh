#!/usr/bin/env sh
# shellcheck disable=SC1090

if [ -d "$HOME/.config/nvm" ]; then
	NVM_DIR="$HOME/.config/nvm"
	export NVM_DIR

	if [ -s "$NVM_DIR/nvm.sh" ]; then
		. "$NVM_DIR/nvm.sh"
	fi
	if [ "$BASH" ] && [ -s "$NVM_DIR/bash_completion" ]; then
		. "$NVM_DIR/bash_completion"
	fi
fi

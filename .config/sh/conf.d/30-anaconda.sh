#!/usr/bin/env sh

if [ -d "$HOME/.local/opt/anaconda3/bin" ]; then
	prepend_to_path "$HOME/.local/opt/anaconda3/bin"
fi

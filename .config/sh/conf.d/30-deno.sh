#!/usr/bin/env sh

if [ -d "$HOME/.deno/bin" ]; then
	DENO_INSTALL="$HOME/.deno"
	export DENO_INSTALL
	prepend_to_path "$DENO_INSTALL/bin"
fi

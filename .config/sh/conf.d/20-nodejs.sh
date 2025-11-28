#!/usr/bin/env sh
# shellcheck disable=SC1090

NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NODE_REPL_HISTORY

if [ -d "$HOME/.local/bin" ] && [ -s "$HOME/.local/bin/fnm" ]; then
	prepend_to_path "$HOME/.local/bin"
fi

if command -v fnm >/dev/null; then
	eval "$(fnm env --use-on-cd)"
fi

if [ -d "$HOME/.local/share" ] && [ -s "$HOME/.local/share/pnpm" ]; then
	export PNPM_HOME="$HOME/.local/share/pnpm"
	prepend_to_path "$PNPM_HOME"
fi

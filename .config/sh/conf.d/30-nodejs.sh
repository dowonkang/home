#!/usr/bin/env sh
# shellcheck disable=SC1090

if [ -d "$HOME/.local/bin" ] && [ -s "$HOME/.local/bin/fnm" ]; then
	prepend_to_path "$HOME/.local/bin"
fi

if command -v fnm >/dev/null; then
	eval "$(fnm env --use-on-cd)"
fi

#!/usr/bin/env sh

if command -v cabal >/dev/null; then
	prepend_to_path "$HOME/.cabal/bin"
fi

#!/usr/bin/env sh

if command -v brew >/dev/null; then
	HOMEBREW_NO_ANALYTICS 1
	export HOMEBREW_NO_ANALYTICS
fi

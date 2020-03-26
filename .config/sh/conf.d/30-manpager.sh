#!/usr/bin/env sh

if [ -z "$MANPAGER" ]; then
	if command -v most >/dev/null; then
		MANPAGER="most"
		export MANPAGER
	fi
fi

#!/usr/bin/env sh

if [ -z "$PAGER" ]; then
	if command -v less >/dev/null; then
		PAGER="less"
		export PAGER
	fi
fi

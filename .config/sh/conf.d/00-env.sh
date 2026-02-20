#!/usr/bin/env sh

# consistent terminal output message
LC_MESSAGES=C
export LC_MESSAGES

# bash(1)
if [ -n "$BASH" ]; then
	HISTFILE="$XDG_DATA_HOME/bash_history"
	export HISTFILE
fi

# less(1)
LESSHISTFILE="$XDG_CACHE_HOME/lesshst"
export LESSHISTFILE

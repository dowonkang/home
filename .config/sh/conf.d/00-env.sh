#!/usr/bin/env sh

# bash(1)
if [ -n "$BASH" ]; then
	HISTFILE="$XDG_DATA_HOME/bash_history"
	export HISTFILE
fi

# less(1)
LESSHISTFILE="$XDG_CACHE_HOME/lesshst"
export LESSHISTFILE

#!/usr/bin/env sh

# bash(1)
if [ -n "$BASH" ]; then
	HISTFILE="$XDG_DATA_HOME/bash_history"
	export HISTFILE
fi

# less(1)
LESSHISTFILE="$XDG_CACHE_HOME/lesshst"
export LESSHISTFILE

# node(1)
NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NODE_REPL_HISTORY

# https://boto3.amazonaws.com/v1/documentation/api/latest/guide/configuration.html#environment-variable-configuration
AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME/aws/credentials"
export AWS_SHARED_CREDENTIALS_FILE
AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config"
export AWS_CONFIG_FILE

# Opt-out Homebrew analytics
# https://docs.brew.sh/Analytics#opting-out
if command -v brew >/dev/null; then
	HOMEBREW_NO_ANALYTICS=1
	export HOMEBREW_NO_ANALYTICS
fi

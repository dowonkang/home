#!/usr/bin/env sh

# ls
if ls --color=auto >/dev/null 2>&1; then
	alias ls='ls -F --color=auto'
elif ls -G >/dev/null 2>&1; then
	alias ls='ls -FG'
else
	alias ls='ls -F'
fi
if command -v exa >/dev/null 2>&1; then
	alias exa='exa -F'
	alias l='exa'
	alias ll='exa -l'
	alias la='exa -a'
	alias lla='exa -la'
else
	alias l='ls'
	alias ll='ls -lh'
	alias la='ls -A'
	alias lla='ls -lhA'
fi

# cd
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# mkdir
alias mkdir='mkdir -pv'

# git
if [ "$LANG" != "en_US.UTF-8" ] &&
	command -v locale >/dev/null 2>&1 &&
	locale -a | grep --extended-regexp 'en_US\.(utf8|UTF\-8)' >/dev/null; then
	alias git='LANG=en_US.UTF-8 git'
fi

# Additional aliases
if [ -f "$HOME/.config/aliases" ]; then
	# shellcheck disable=SC1090
	. "$HOME/.config/aliases"
fi
#!/usr/bin/env sh

if [ -z "$EDITOR" ]; then
	if command -v ex >/dev/null 2>&1; then
		EDITOR="$(command -v ex)"
	fi

	if [ -n "$EDITOR" ]; then
		export EDITOR
	fi
fi

if [ -z "$VISUAL" ]; then
	if command -v nvim >/dev/null 2>&1; then
		VISUAL="$(command -v nvim)"
	elif command -v vim >/dev/null 2>&1; then
		VISUAL="$(command -v vim)"
	elif command -v vi >/dev/null 2>&1; then
		VISUAL="$(command -v vi)"
	elif command -v nano >/dev/null 2>&1; then
		VISUAL="$(command -v nano)"
	elif [ -n "$EDITOR" ]; then
		VISUAL="$EDITOR"
	fi

	if [ -n "$VISUAL" ]; then
		export VISUAL
	fi
fi

# man(1)
if [ -z "$MANPAGER" ]; then
	if command -v bat >/dev/null 2>&1; then
		MANPAGER="sh -c 'col -bx | bat -l man -p'"
		export MANPAGER
		MANROFFOPT="-c" # for groff man pages compatibility
		export MANROFFOPT
	fi
fi

if [ -z "$PAGER" ]; then
	if command -v less >/dev/null 2>&1; then
		PAGER="$(command -v less)"
		export PAGER
	fi
fi

# https://github.com/dandavison/delta
if [ -z "$GIT_PAGER" ]; then
	if command -v delta >/dev/null 2>&1; then
		GIT_PAGER="$(command -v delta)"
		export GIT_PAGER
	fi
fi

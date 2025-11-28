#!/usr/bin/env sh

if [ -z "$EDITOR" ]; then
	if command -v emacs >/dev/null; then
		EDITOR="$(command -v emacs)"
	elif command -v nvim >/dev/null; then
		EDITOR="$(command -v nvim)"
	elif command -v vim >/dev/null; then
		EDITOR="$(command -v vim)"
	elif command -v vi >/dev/null; then
		EDITOR="$(command -v vi)"
	fi

	if [ -n "$EDITOR" ]; then
		export EDITOR
	fi
fi

if [ -z "$VISUAL" ]; then
	if command -v code >/dev/null; then
		VISUAL="$(command -v code)"
	elif command -v emacs >/dev/null; then
		VISUAL="$(command -v emacs)"
	elif command -v nvim >/dev/null; then
		VISUAL="$(command -v nvim)"
	elif command -v vim >/dev/null; then
		VISUAL="$(command -v vim)"
	elif command -v vi >/dev/null; then
		VISUAL="$(command -v vi)"
	fi

	if [ -n "$VISUAL" ]; then
		export VISUAL
	fi
fi

# man(1)
if [ -z "$MANPAGER" ]; then
	if command -v most >/dev/null; then
		MANPAGER="$(command -v most)"
		export MANPAGER
	fi
fi

if [ -z "$PAGER" ]; then
	if command -v less >/dev/null; then
		PAGER="$(command -v less)"
		export PAGER
	fi
fi

# https://github.com/dandavison/delta
if [ -z "$GIT_PAGER" ]; then
	if command -v delta >/dev/null; then
		GIT_PAGER="$(command -v delta)"
		export GIT_PAGER
	fi
fi

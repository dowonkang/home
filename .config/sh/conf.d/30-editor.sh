#!/usr/bin/sh

if [ -z "$EDITOR" ]; then
	if command -v nvim >/dev/null; then
		EDITOR="nvim"
	elif command -v vim >/dev/null; then
		EDITOR="vim"
	elif command -v vi >/dev/null; then
		EDITOR="vi"
	fi

	if [ -n "$EDITOR" ]; then
		export EDITOR
	fi
fi

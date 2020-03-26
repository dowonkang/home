#!/usr/bin/env sh

if command -v flatpak >/dev/null; then
	prepend_to_path /var/lib/flatpak/exports/bin
	prepend_to_path "$HOME/.local/share/flatpak/exports/bin"
fi

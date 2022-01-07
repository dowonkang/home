#!/usr/bin/env sh
# https://github.com/ccontavalli/ssh-ident

if [ ! -d "$HOME/.local/bin" ]; then
	mkdir -p "$HOME/.local/bin"
fi

wget -O "$HOME/.local/bin/ssh" goo.gl/MoJuKB; chmod 0755 "$HOME/.local/bin/ssh"

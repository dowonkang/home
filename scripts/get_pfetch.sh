#!/usr/bin/env sh

dest="$HOME/.local/bin/"

curl --remote-name https://raw.githubusercontent.com/dylanaraps/pfetch/master/pfetch &&
	chmod u+x pfetch

if [ ! -d "$dest" ]; then
	mkdir -p "$dest"
fi

mv ./pfetch "$dest"

unset dest

#!/usr/bin/env sh
# See https://github.com/ccontavalli/ssh-ident

bin_dir="$HOME/.local/bin"
output_path="$bin_dir/ssh"

if [ ! -d "$bin_dir" ]; then
	mkdir -p "$bin_dir"
fi

curl --progress-bar --location "https://raw.githubusercontent.com/ccontavalli/ssh-ident/master/ssh-ident" \
	--output "$output_path" &&
	chmod 0755 "$output_path"

unset output_path
unset bin_dir

#!/usr/bin/env sh
# See https://github.com/ccontavalli/ssh-ident

bin_dir="$HOME/.local/bin"
output_path="$bin_dir/ssh"
file_url="https://raw.githubusercontent.com/ccontavalli/ssh-ident/master/ssh-ident"

curl --progress-bar --location "$file_url" --create-dirs --output "$output_path" &&
	chmod 0755 "$output_path"

unset file_url output_path bin_dir

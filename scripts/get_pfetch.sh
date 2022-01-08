#!/usr/bin/env sh

bin_dir="$HOME/.local/bin/"
output_path="$bin_dir/pfetch"
file_url="https://raw.githubusercontent.com/dylanaraps/pfetch/master/pfetch"

curl --progress-bar --location "$file_url" --create-dirs --output "$output_path" &&
	chmod u+x "$output_path"

unset file_url output_path bin_dir

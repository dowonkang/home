#!/usr/bin/env sh

fonts_dir="$HOME/.local/share/fonts/fira-code"

if [ ! -d "$fonts_dir" ]; then
	mkdir -p "$fonts_dir"
fi

for ext in otf ttf; do
	for type in Bold Light Medium Regular Retina; do
		file_name="FiraCode-$type.$ext"
		file_url="https://github.com/tonsky/FiraCode/blob/master/distr/$ext/$file_name?raw=true"
		echo "Downloading $file_name:"
		curl --progress-bar --location "$file_url" --create-dirs --output "$fonts_dir/$ext/$file_name"
	done
done

unset file_url
unset file_name
unset type
unset ext
unset fonts_dir

fc-cache -f

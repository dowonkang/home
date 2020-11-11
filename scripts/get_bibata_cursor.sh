#!/usr/bin/env sh

new_version=$("$PWD"/get_latest_github_repo_release_version.sh "ful1e5/Bibata_Cursor")
icons_dir="$XDG_DATA_HOME/icons"

if [ ! -d "$icons_dir" ]; then
	echo "Creating icons directory at $icons_dir"
	mkdir -p "$icons_dir"
fi

echo "Downloading v${new_version}"

curl --progress-bar --location "https://github.com/ful1e5/Bibata_Cursor/releases/download/v${new_version}/Bibata.tar.gz" \
	--output "Bibata.tar.gz" &&
	tar -xf Bibata.tar.gz &&
	rm -rf "$icons_dir/"Bibata-* &&
	mv Bibata-* "$icons_dir/" &&
	rm Bibata.tar.gz &&
	echo "Done. Use Gnome Tweaks to change cursor icons"

unset new_version
unset icons_dir

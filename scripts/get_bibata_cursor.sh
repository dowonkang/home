#!/usr/bin/env sh

new_version=$("$PWD"/get_latest_github_repo_release_version.sh "ful1e5/Bibata_Cursor")

curl --progress-bar --location "https://github.com/ful1e5/Bibata_Cursor/releases/download/v${new_version}/Bibata.tar.gz" \
	--output "Bibata.tar.gz" &&
	tar -xvf Bibata.tar.gz &&
	mv Bibata-* "$HOME/.icons/" &&
	rm Bibata.tar.gz

unset new_version

#!/usr/bin/env sh

get_it() {
	curl --progress-bar --location https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-gnu.tar.gz |
		tar --extract --gunzip --directory "$HOME/.local/bin/"
	starship --version
}

if command -v starship >/dev/null 2>&1; then
	old_version=$(starship --version | grep --extended-regexp --only-matching '[0-9\.]+')
	new_version=$(./get_latest_github_repo_release_version.sh "starship/starship")

	if [ "$old_version" = "$new_version" ]; then
		echo "You already have the latest starship!"
	else
		echo "Upgrading starship: v$old_version => v$new_version"
		get_it
	fi
	unset old_version
	unset new_version
else
	echo "Downloading latest starship:"
	get_it
fi

unset get_it

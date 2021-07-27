#!/usr/bin/env sh

latest_version=$("$PWD"/get_latest_github_repo_release_version.sh "elm/compiler")

get_it() {
	curl --progress-bar --location "https://github.com/elm/compiler/releases/download/${latest_version}/binary-for-linux-64-bit.gz" \
		--output "$PWD/elm.gz" &&
		gunzip elm.gz &&
		chmod u+x elm &&
		mv "$PWD/elm" "$HOME/.local/bin/"
}

if command -v elm >/dev/null 2>&1; then
	current_version=$(elm --version)

	if [ "$current_version" = "$latest_version" ]; then
		echo "You already have the latest version. elm v${current_version}"
	else
		echo "Upgrading elm: v$current_version => v$latest_version"
		get_it
	fi
	unset current_version
else
	echo "Downloading elm v${current_version}:"
	get_it
fi

unset latest_version get_it

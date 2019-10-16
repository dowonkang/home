#!/usr/bin/env sh

new_version=$("$PWD"/get_latest_github_repo_release_version.sh "mvdan/sh")

get_it() {
	curl --progress-bar --location "https://github.com/mvdan/sh/releases/download/v$new_version/shfmt_v${new_version}_linux_amd64" \
		--output "$HOME/.local/bin/shfmt" &&
		chmod u+x "$HOME/.local/bin/shfmt"
	echo "shfmt $(shfmt --version)"
}

if command -v shfmt >/dev/null 2>&1; then
	old_version=$(shfmt --version | grep --extended-regexp --only-matching '[0-9\.]+')

	if [ "$old_version" = "$new_version" ]; then
		echo "You already have the latest shfmt."
	else
		echo "Upgrading shfmt: v$old_version => v$new_version"
		get_it
	fi

	unset old_version
else
	echo "Downloading latest shfmt:"
	get_it
fi

unset new_version

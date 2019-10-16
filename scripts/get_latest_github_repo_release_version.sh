#!/usr/bin/env sh
# ./get_latest_release_version.sh "user/repo"
curl --silent "https://api.github.com/repos/$1/releases/latest" |
	grep '"tag_name":' |
	grep --extended-regexp --only-matching '[0-9\.]+'

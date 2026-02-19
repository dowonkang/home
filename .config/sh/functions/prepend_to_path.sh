#!/usr/bin/env sh

# Prepend a new path only if the directory exists and not already added to $PATH
prepend_to_path() {
	new_path="$1"

	if [ -d "$new_path" ] && case ":$PATH:" in *":$new_path:"*) false;; *) true;; esac; then
		PATH="$new_path:$PATH"
		export PATH
	fi

	unset new_path
}

export prepend_to_path

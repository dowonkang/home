#!/usr/bin/env sh

# Prepend a new path only if the directory exists and not already added to $PATH
prepend_to_path() {
	new_path=$1

	if [ -d "$new_path" ] && echo "$PATH" | grep -vq "$new_path"; then
		PATH="$new_path:$PATH"
		export PATH
	fi

	unset new_path
}

export prepend_to_path

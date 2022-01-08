#!/usr/bin/env sh
# See https://unix.stackexchange.com/a/125386

mkcd() {
	mkdir -p -- "$1" && cd -P -- "$1" || return
}

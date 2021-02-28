#!/usr/bin/env sh

# mkdir then cd
# taken from ohmyzsh
# https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/functions.zsh#L16-L18
function take() {
	mkdir -p $@ && cd ${@:$#}
}

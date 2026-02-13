#!/usr/bin/env sh

if [ -d "$XDG_DATA_HOME/proto" ]; then
	PROTO_HOME="$XDG_DATA_HOME/proto"
	export PROTO_HOME

	prepend_to_path "$PROTO_HOME/bin"
	prepend_to_path "$PROTO_HOME/shims"
fi

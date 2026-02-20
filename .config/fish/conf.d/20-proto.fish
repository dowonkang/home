if test -d "$XDG_DATA_HOME/proto"
    set -gx PROTO_HOME "$XDG_DATA_HOME/proto"
    prepend_to_path "$PROTO_HOME/bin"
    prepend_to_path "$PROTO_HOME/shims"
end

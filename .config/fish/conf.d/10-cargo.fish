if command -sq cargo
    if test -d "$HOME/.cargo"
        and test ! -d "$XDG_CONFIG_HOME/cargo"
        mv "$HOME/.cargo" "$XDG_CONFIG_HOME/cargo"
    else
        mkdir -p "$XDG_CONFIG_HOME/cargo"
    end
    if test -d "$XDG_CONFIG_HOME/cargo"
        set -x CARGO_HOME "$XDG_CONFIG_HOME/cargo"
    end
    if test -n "$CARGO_HOME"
        prepend_to_path "$CARGO_HOME/bin"
    end
end

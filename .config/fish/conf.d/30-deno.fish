if test -d "$HOME/.deno/bin"
    set -x DENO_INSTALL "$HOME/.deno"
    prepend_to_path "$DENO_INSTALL/bin"
end

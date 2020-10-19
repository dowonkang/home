if test -d "$HOME/.deno/bin"
set -gx DENO_INSTALL "$HOME/.deno"
    prepend_to_path "$DENO_INSTALL/bin"

    if test ! -e "$HOME/.config/fish/completions/deno.fish"
        if test ! -e "$HOME/.config/fish/completions"
            mkdir -p "$HOME/.config/fish/completions"
        end
        deno completions fish >"$HOME/.config/fish/completions/deno.fish"
    end
end

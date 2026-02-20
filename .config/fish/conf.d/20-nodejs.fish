set -gx NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"

if command -sq fnm
    fnm env --use-on-cd | source
end

if test -d "$HOME/.local/share/pnpm"
    set -gx PNPM_HOME "$HOME/.local/share/pnpm"
    prepend_to_path "$PNPM_HOME"
end

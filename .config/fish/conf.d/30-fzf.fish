# fzf shell integration for Fish
# https://github.com/junegunn/fzf?tab=readme-ov-file#setting-up-shell-integration

if command -sq fzf
    # Fish: key bindings
    fzf --fish | source
end

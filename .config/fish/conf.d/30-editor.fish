if test -z "$EDITOR"
    if command -sq emacs
        set -x EDITOR "emacs"
    else if command -sq nvim
        set -x EDITOR "nvim"
    else if command -sq vim
        set -x EDITOR "vim"
    else if command -sq vi
        set -x EDITOR "vi"
    end
end

if test -z "$EDITOR"
    if command -sq emacs
        set -gx EDITOR (command -s emacs)
    else if command -sq nvim
        set -gx EDITOR (command -s nvim)
    else if command -sq vim
        set -gx EDITOR (command -s vim)
    else if command -sq vi
        set -gx EDITOR (command -s vi)
    end
end

if test -z "$VISUAL"
    if command -sq code
        set -gx VISUAL (command -s code)
    else if command -sq emacs
        set -gx VISUAL (command -s emacs)
    else if command -sq nvim
        set _x VISUAL (command -s nvim)
    else if command -sq vim
        set -gx VISUAL (command -s vim)
    else if command -sq vi
        set -gx VISUAL (command -s vi)
    end
end

# man(1)
if command -sq most
    set -gx MANPAGER (command -s most)
end

if test -z "$PAGER"
    and command -sq less
    set -gx PAGER (command -s less)
end

# https://github.com/dandavison/delta
if command -sq delta
    set -gx GIT_PAGER (command -s delta)
end

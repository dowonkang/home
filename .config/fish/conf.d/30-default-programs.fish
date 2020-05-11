if test -z "$EDITOR"
    if command -sq emacs
        set -x EDITOR (command -s emacs)
    else if command -sq nvim
        set -x EDITOR (command -s nvim)
    else if command -sq vim
        set -x EDITOR (command -s vim)
    else if command -sq vi
        set -x EDITOR (command -s vi)
    end
end

if test -z "$VISUAL"
    if command -sq code
        set -x VISUAL (command -s code)
    else if command -sq emacs
        set -x VISUAL (command -s emacs)
    else if command -sq nvim
        set _x VISUAL (command -s nvim)
    else if command -sq vim
        set -x VISUAL (command -s vim)
    else if command -sq vi
        set -x VISUAL (command -s vi)
    end
end

# man(1)
if command -sq most
    set -x MANPAGER (command -s most)
end

if test -z "$PAGER"
    and command -sq less
    set -x PAGER (command -s less)
end

# https://github.com/dandavison/delta
if command -sq delta
    set -x GIT_PAGER (command -s delta)
end

if test -z "$EDITOR"
    if command -sq ex
        set -gx EDITOR (command -s ex)
    end
end

if test -z "$VISUAL"
    if command -sq nvim
        set -gx VISUAL (command -s nvim)
    else if command -sq vim
        set -l vim_path (command -s vim)
        if test -n "$vim_path"
            set -gx VISUAL "$vim_path"
        end
    else if command -sq vi
        set -gx VISUAL (command -s vi)
    else if command -sq nano
        set -gx VISUAL (command -s nano)
    else if test -n "$EDITOR"
        set -gx VISUAL "$EDITOR"
    end
end

# man(1)
if test -z "$MANPAGER"
    if command -sq bat
        set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
        set -gx MANROFFOPT -c
    end
end

if test -z "$PAGER"
    if command -sq less
        set -gx PAGER (command -s less)
    end
end

# https://github.com/dandavison/delta
if test -z "$GIT_PAGER"
    if command -sq delta
        set -gx GIT_PAGER (command -s delta)
    end
end

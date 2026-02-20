# XDG base directories
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
# On Linux with a session manager, these are inherited from .profile.
# On macOS, Fish is a login shell and does not source .profile, so they must be set here.

if test -z "$XDG_CONFIG_HOME"
    mkdir -p "$HOME/.config"
    set -gx XDG_CONFIG_HOME "$HOME/.config"
end

if test -z "$XDG_DATA_HOME"
    mkdir -p "$HOME/.local/share"
    set -gx XDG_DATA_HOME "$HOME/.local/share"
end

if test -z "$XDG_BIN_HOME"
    mkdir -p "$HOME/.local/bin"
    set -gx XDG_BIN_HOME "$HOME/.local/bin"
end

if test -z "$XDG_STATE_HOME"
    mkdir -p "$HOME/.local/state"
    set -gx XDG_STATE_HOME "$HOME/.local/state"
end

if test -z "$XDG_CACHE_HOME"
    mkdir -p "$HOME/.cache"
    set -gx XDG_CACHE_HOME "$HOME/.cache"
end

# Some programs expect XDG_BIN_DIR instead of XDG_BIN_HOME
if test -z "$XDG_BIN_DIR"
    set -gx XDG_BIN_DIR "$XDG_BIN_HOME"
end

# PATH
for dir in /usr/local/sbin "$HOME/.local/bin"
    prepend_to_path "$dir"
end

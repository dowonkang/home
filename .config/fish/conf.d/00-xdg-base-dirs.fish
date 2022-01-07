# XDG base directories
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
if test ! -d "$HOME/.config"
    mkdir -pv "$HOME/.config"
end

if test ! -d "$HOME/.local/share"
    mkdir -pv "$HOME/.local/share"
end

if test ! -d "$HOME/.local/state"
    mkdir -pv "$HOME/.local/state"
end

if test ! -d "$HOME/.cache"
    mkdir -pv "$HOME/.cache"
end

set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"
set -gx XDG_CACHE_HOME "$HOME/.cache"

# XDG base directories
if test ! -d "$HOME/.config"
	mkdir -pv "$HOME/.config"
end

if test ! -d "$HOME/.local/share"
	mkdir -pv "$HOME/.local/share"
end

if test ! -d "$HOME/.cache"
	mkdir -pv "$HOME/.cache"
end

set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_CACHE_HOME "$HOME/.cache"

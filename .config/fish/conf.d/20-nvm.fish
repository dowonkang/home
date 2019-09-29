# Local Homebrew
if test -d "$HOME/.config/nvm"
	set -x NVM_DIR "$HOME/.config/nvm"
end

if test -n "$NVM_DIR"
	and test -e "$NVM_DIR/nvm.sh"
	and functions nvm >/dev/null
	and functions bass >/dev/null
	and command -s python >/dev/null 2>&1
	nvm use default >/dev/null
end

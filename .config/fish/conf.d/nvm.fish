# Local Homebrew
if test -d "$HOME/.config/nvm"
	set -x NVM_DIR "$HOME/.config/nvm"
end

if test -n "$NVM_DIR"
	and test -e "$NVM_DIR/nvm.sh"
	and functions nvm >/dev/null
	and functions bass >/dev/null
	nvm use default >/dev/null
end

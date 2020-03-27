if test -d "$HOME/.config/nvm"
    set -x NVM_DIR "$HOME/.config/nvm"
end

if test -n "$NVM_DIR"
    and test -e "$NVM_DIR/nvm.sh"
    and functions -q nvm
    and functions -q bass
    and command -sq python
    nvm use default >/dev/null
end

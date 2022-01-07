if test -d "$HOME/.local/bin"
    and test -e "$HOME/.local/bin/fnm"
    prepend_to_path "$HOME/.local/bin"
    fnm env | source
else if test -d "$HOME/.config/nvm"
    and test -e "$HOME/.config/nvm/nvm.sh"
    and functions -q nvm
    and functions -q bass
    and command -sq python
    set -gx NVM_DIR "$HOME/.config/nvm"
    nvm use default >/dev/null
end

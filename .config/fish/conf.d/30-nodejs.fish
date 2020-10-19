if test -d "$HOME/.volta"
    set -gx VOLTA_HOME "$HOME/.volta"
    prepend_to_path "$VOLTA_HOME/bin"
else if test -d "$HOME/.config/nvm"
    and test -e "$HOME/.config/nvm/nvm.sh"
    and functions -q nvm
    and functions -q bass
    and command -sq python
    set -gx NVM_DIR "$HOME/.config/nvm"
    nvm use default >/dev/null
end

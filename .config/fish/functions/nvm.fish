function nvm
if test -n "$NVM_DIR"
    and test -e "$NVM_DIR/nvm.sh"
    bass source "$NVM_DIR/nvm.sh" --no-use ';' nvm $argv
    end
end

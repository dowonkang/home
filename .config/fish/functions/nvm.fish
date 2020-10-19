function nvm
    if test -e "~/.config/nvm/nvm.sh"
        bass source ~/.config/nvm/nvm.sh --no-use ';' nvm $argv
    end
end

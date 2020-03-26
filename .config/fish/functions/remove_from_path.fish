function remove_from_path
    for i in $argv
        if contains $i $PATH
            set -x PATH (string match -v $i $PATH)
        end
    end
end

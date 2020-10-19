function prepend_to_path
    for i in $argv
        if not contains $i $PATH
            and test -d $i
            set -gx PATH $i $PATH
        end
    end
end

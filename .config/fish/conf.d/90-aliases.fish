# ls
if ls --color=auto >/dev/null 2>&1
    alias ls='ls -F --color=auto'
else if ls -G >/dev/null 2>&1
    alias ls='ls -FG'
else
    alias ls='ls -F'
end
if command -q exa

    alias exa='exa -F'
    alias l='exa'
    alias ll='exa -l'
    alias la='exa -a'
    alias lla='exa -la'
else
    alias l='ls'
    alias ll='ls -lh'
    alias la='ls -A'
    alias lla='ls -lAh'
end

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# mkdir
alias mkdir='mkdir -pv'

# ask before dangerous operations
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -I'

# unzip
alias unzipkr='unzip -O cp949'

# open
if not command -q open
    and command -q xdg-open
    alias open='xdg-open'
end

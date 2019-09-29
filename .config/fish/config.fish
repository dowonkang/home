# ls
if ls --color=auto >/dev/null 2>&1
	alias ls='ls -F --color=auto'
else if ls -G >/dev/null 2>&1
	alias ls='ls -FG'
else
	alias ls='ls -F'
end
alias l='ls'
alias ll='ls -lh'
alias la='ls -A'
alias lla='ls -lAh'

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# mkdir
alias mkdir='mkdir -pv'

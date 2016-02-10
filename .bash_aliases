

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'



# Some very short shortcuts
alias g='git'
alias gb='git branch'
alias gst='git status' # gs is ghostscript
alias ga='git add'
alias gd='git diff'
alias gdw='git diff --word-diff'
alias gl='git log'
alias gsl='git stash list'
alias gstat='git diff --stat'
alias gc='git checkout'
alias gcm='git checkout master'
alias gcmp='git checkout master && git pull'
alias gp='git pull'
alias n='node'
alias m='mocha'
alias npmi='npm install'
alias p='python'

alias v='vim'
alias c='clear'

# The space bar is just too far away :'(
alias cd.='cd ..'
alias cd..='cd ../..'
alias cd...='cd ../../..'
alias cd....='cd ../../../..'
alias cd.....='cd ../../../../..'

# I always forget what this is called so alias it for some things I often try
alias where='whereis'
alias what='whereis'
alias whatis='whereis'

# Recursively searches for a file who's name matches the supplied regex
alias findfile='find . -type f -regex'


# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls -CF'

# Add an "alert" alias for long notifying when running commands finish.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Shortcut for re-loading bashrc
alias reff='source ~/.bashrc'

# Some very short shortcuts
alias g='git'
alias gb='echo "" && git branch'
alias gst='git status' # gs is ghostscript
alias gap='git add -p'
alias ga='git add'
alias gita='git add'
alias gd='git diff'
alias gds='git diff --staged'
alias gdw='git diff --word-diff'
alias gl='git log'
alias gsl='git stash list'
alias gstat='git diff --stat'
alias gstats='git diff --stat --staged'
alias gc='git checkout'
alias gcm='git checkout master'
alias gcmp='git checkout master && git pull'
alias gp='git pull'
alias fix-conflict='git mergetool -t meld'
alias glm='git fetch origin master:master' # Get latest master
alias gglm='git fetch origin master:master'
alias git-fix-conflict='git mergetool -t meld'
alias glc='git diff HEAD~1 HEAD'  # Git diff for the last commit
alias gdlc='git diff HEAD~1 HEAD'
alias gcb='git branch | grep "^\*"'
# List any todo notes in the git diff
alias gtodo='git diff | grep "^\+" | sed "s|^\+\s*|\+ |g" | grep "TODO" && git diff --staged | grep "^\+" | grep "TODO" || git diff --staged | grep "^\+" | sed "s|^\+\s*|\+ |g" | grep "TODO"'
alias gurl='git remote show origin | grep "URL"'
alias ghist='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'

# Set upstream, depends on the below git alias being in .gitconfig
# sup = !git branch --set-upstream-to=origin/`git symbolic-ref --short HEAD`
alias gsup='git sup'

alias n='node'
alias m='mocha'
alias npmi='npm install'
alias p='python'
alias p2='python2'
alias p3='python3'
alias v='vim'

alias watchpm2='watch -n 30 pm2 list'
alias log='pm2 log all'
alias logs='pm2 log all'

# SSH on the non-standard port I normally use
alias sshh='ssh -p 3141'

# cd down directories at super speed ^_^
alias cd.='cd ..'
alias cd..='cd ../..'
alias cd...='cd ../../..'
alias cd....='cd ../../../..'
alias cd.....='cd ../../../../..'
alias c.='cd ..'
alias c..='cd ../..'
alias c...='cd ../../..'
alias c....='cd ../../../..'
alias c.....='cd ../../../../..'

# Encode/Decode url strings
# Shorthand for the script urldecode (found in ~/bin)
alias urld='urldecode --decode '
alias urle='urldecode --encode '
alias urldd='urldecode --double-decode '
alias urlee='urldecode --double-encode '
# This is an old version that doesn't require the script to be present
# alias urld='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
# alias urle='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'

# prettyjson shortcut
# Note this is for prettyjson2 which is in development & yet to be released
alias pj="prettyjson2"

# cd jumps
alias cdgg='cd ~/git'
alias cd~='cd ~'
alias c~='cd ~'
alias cdhh='cd ~'

# The opposite of yes
alias no='yes n'

# Hash things
alias md5='md5sum'
alias sha1='sha1sum'
alias sha256='sha256sum'

# I always forget what this is called so alias it for some things I often try
alias where='whereis'
alias what='whereis'
alias whatis='whereis'

# `web` loads the bookmark page of a terminal web browser
alias web='w3m -B'

alias weather="curl http://wttr.in/southampton"
alias moon="curl http://wttr.in/Moon"

# Timer for 3 min 30 sec tea brew
alias tea="timer -o --notify 'Your tea is ready' 3m30s"

# Recursively searches for a file who's name matches the supplied regex
alias findfile='find . -type f -regex'

# Scripts to help look busy...
alias lookBusy=' while true; do head -c200 /dev/urandom | od -An -w50 -x | grep -E --color "([[:alpha:]][[:digit:]]){2}"; sleep 0.5; done'
alias cafe=' cat /dev/urandom | hexdump | grep -E "ca ?fe"'

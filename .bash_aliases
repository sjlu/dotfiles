# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'                                                                                         
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
 
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# abacus specific
alias abacus="cd ~/Code/abacus"

# docker quickstart
if [ -x '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh' ]; then
  alias docker-quickstart="bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'"
fi

# Stuff I always want in bash or zsh


export PAGER=less
export LESS="-r -X"         #http://ipython.org/ipython-doc/stable/config/old.html?highlight=pager 
export EDITOR=vim

source $DOTFILES/git/aliases.sh


# -----------------------
# Aliases
# -----------------------
alias ..='cd ..'            # Go up one directory
alias ...='cd ../..'        # Go up two directories
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias c='clear'
alias x='exit'
alias j='jobs'
alias df='df -H'
alias du='du -h'
alias grep='grep --color'

# list directory first
alias lsd='ls -d */'    # list only directories
# list items in directory sorted by their real size
alias dusum='for i in G M K; do du -hsx * | grep "[0-9]$i\b" | sort -nr; done 2>/dev/null'

if [ `uname` '==' 'Darwin' ]; then
    alias ls='ls -vGF'
else
    alias ls='ls -vF --color'
fi

alias lla='ls -AGlFh'
alias ll='ls -GlFh'

# python commands 
# print python path
alias pypath='python -c "import sys; print sys.path" | tr "," "\n" | grep -v "egg"'
alias ipy='ipython'



# -----------------------
# Functions
# -----------------------
# Sensibly extract a compressed file
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)        tar vxjf $1        ;;
            *.tar.gz)         tar vxzf $1        ;;
            *.bz2)            bunzip2 $1        ;;
            *.rar)            unrar x $1        ;;
            *.gz)             gunzip $1         ;;
            *.tar)            tar xf $1         ;;
            *.tbz2)           tar xjfv $1        ;;
            *.tgz)            tar xzfv $1        ;;
            *.zip)            unzip $1          ;;
            *.Z)              uncompress $1     ;;
            *.tar.sz)         tar xJfv $1       ;;
            *)                echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}


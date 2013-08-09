# ================================
#
# .bashrc
#
# ================================


# ================================
# locale settings
# ================================
export LC_CTYPE=ko_KR.UTF-8

# set user prompt
# longer one
export PS1="\`if [ \$? = 0 ]; then echo \[\e[32m\]:\)\[\e[0m\]; else echo \[\e[31m\]:\(\[\e[0m\]; fi\`:\j:\u@\e[1;31m\h\e[0m[\W] \A\e[1;36m->\e[0m "
# shorter one
export PS1='[\j]\e[0;32m\A\e[0m:\W\e[1;32m\$\e[0m '

# prevent overwriting files
set -o noclobber

. $HOME/dotfiles/aliases
. $HOME/dotfiles/functions

alias xterm1='xterm -geometry 90x30+10+10 -fn 10x20 -bg black -fg ivory -ls -sb -right -sl 5000 +132 &'
alias m='linm --lang=us'
alias linm='/opt/linm-0.8.1/bin/linm'
alias topcat256='/Applications/TOPCAT.app/Contents/Resources/Java/topcat -Xmx256M'
alias gmacs='/Applications/Emacs.app/Contents/MacOS/Emacs'


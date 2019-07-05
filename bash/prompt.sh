# If not running interactively, don't do anything
[ -z "$PS1"  ] && return

__DEFAULT_COLOR="[00m"
__GRAY_COLOR="[37m"
__PINK_COLOR="[35m"
__GREEN_COLOR="[32m"
__ORANGE_COLOR="[33m"
__RED_COLOR="[31m"

if [ `id -u` == '0' ]; then
  __USER_COLOR=$__RED_COLOR
else
  __USER_COLOR=$__PINK_COLOR
fi

mitsuhikos_lastcommandfailed() {
  code=$?
  if [ $code != 0 ]; then
    echo -n $'\033[37m exited \033[31m'
    echo -n $code
    echo -n $'\033[37m'
  fi
}

mitsuhikos_backgroundjobs() {
  jobs|python -c 'if 1:
    import sys
    items = ["\033[36m%s\033[37m" % x.split()[2]
             for x in sys.stdin.read().splitlines()]
    if items:
      if len(items) > 2:
        string = "%s, and %s" % (", ".join(items[:-1]), items[-1])
      else:
        string = ", ".join(items)
      print("\033[37m running %s" % string)
  '
}

smoh_conda_env() {
  if [ -v CONDA_PREFIX ]; then
    name=$(basename `echo $CONDA_PREFIX`)
    echo -n "[$name]"
  fi
}


export __BASEPROMPT='\e]0;\007\n\
`smoh_conda_env` \
\e${__USER_COLOR}\u \
\e${__GRAY_COLOR}at \e${__ORANGE_COLOR}\h \
\e${__GRAY_COLOR}in \e${__GREEN_COLOR}\w\
`mitsuhikos_lastcommandfailed`\
`mitsuhikos_backgroundjobs`\
\e${__DEFAULT_COLOR}'
export PS1="\[\033[G\]${__BASEPROMPT}
$ "

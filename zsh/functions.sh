
# make ssh tunnel to specified port
ssht () {
  if [ $# -ne 2 ]; then
    echo "ssht <port> <destination>"
    return 1
  fi
  ssh -f -N -L $1\:localhost:$1 $2
}

lsport () {
	if [ -x "$(command -v fzf)" ]; then
		lsof -i -P -n | fzf
  else
		lsof -i -P -n
	fi
}

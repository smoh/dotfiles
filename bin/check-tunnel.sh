#!/bin/bash

# Check if port 4269 forwarding is established.
# ./check-tunnel.sh to output json for alfred
# ./check-tunnel.sh 1 to post OSX notification

pid=$(lsof -i -P -n | grep LISTEN | grep 4269 | awk '{print $2}' | uniq)

if [[ $pid  ]]; then
  case "$1" in
    1)
      osascript -e "display notification \"pid: $(echo ${pid})\" with title \"Success!\""
      echo $pid
      ;;
    *)
      cat << EOB
{"items": [
  {
    "uid":"status",
    "title":"connected:${pid}",
    "valid":"false"
  }
]}
EOB
    ;;
  esac
else
  case "$1" in
    1)
      osascript -e "display notification \"Could not make a connection.\"with title \"Failed.\""
      ;;
    *)
      cat << EOB
{"items": [
  {
    "title":"not connected",
    "valid":"false"
  },
  {
    "uid":"connect",
    "title":"connect"
  }
]}
EOB
      ;;
  esac
fi

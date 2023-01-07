#!/bin/shell

killall alacritty
killall spotify
killall Discord

commands=(
  'i3-msg workspace number "1"'
  'alacritty -e btop'
  'alacritty -e cava'
  'alacritty'
  'discord'
  'spotify'
  'pkill .startup'
)

pids=""

for command in "${commands[@]}"; do
  sleep 0.3
  echo command is ${command}
  ( ${command} ) &
  pid=$!
  pids+=" ${pid}"
  echo "${pid}: Running: ${command}"
done

for p in $pids; do
  if wait $p; then
    echo "Process $p succeeded."
  else
    echo "Process $p failed. Build aborted."
    echo "Killing any running concurrent commands."
    kill $pids &> /dev/null
    exit 1
  fi
done

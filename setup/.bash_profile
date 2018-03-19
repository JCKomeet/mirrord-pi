source ~/.cargo/env

sudo dmesg -D

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  
  /mirrord/mirrord.sh &
  exec startx
fi

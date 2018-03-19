
DISPLAY=:0

cd /mirrord
./mirrord -p 5000 -w 1920 -h 1080 -c 2 -r 2&

while sleep 2; do feh --bg-max "http://127.0.0.1:80/board.png"; done


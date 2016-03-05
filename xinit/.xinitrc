xrdb -
setxkbmap -layout us -option ctrl:nocaps
xcape
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
feh --bg-scale /path/to/wallpaper.jpg
exec $1


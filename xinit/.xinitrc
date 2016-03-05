xrdb -
setxkbmap -layout us -option ctrl:nocaps
xcape
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec $1


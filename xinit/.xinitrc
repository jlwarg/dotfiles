xrdb -
setxkbmap -layout us -option ctrl:nocaps
xmodmap ~/.Xmodmap
xcape
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec $1


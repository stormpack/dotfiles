#!/bin/sh
[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources
xset +fp $HOME/.fonts
xset +fp /usr/share/fonts/local
xset fp rehash
xsetroot -cursor_name left_ptr &
sh $HOME/.fehbg &
gm &

/usr/local/bin/sxhkd &
exec xwait

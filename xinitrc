export XDG_MENU_PREFIX=gnome-
exec gnome-session
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

#!/bin/bash

src=~/dotfiles
dst=~
files="bashrc gitconfig tmux.conf vimrc xinitrc Xresources config/redshift.conf config/mpd/mpd.conf config/ncmpcpp/config config/zathura/zathurarc"

mkdir -pv $dst/.config/{mpd,ncmpcpp,zathura}

for file in $files; do
    echo "Creating symlink at  $dst/.$file"
    ln -S.bak -s $src/$file $dst/.$file
done

echo "*** Done! ***"

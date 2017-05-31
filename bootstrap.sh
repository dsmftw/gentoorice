#!/bin/bash

src=~/dotfiles
dst=~
files="bashrc tmux.conf vimrc config/redshift.conf config/mpd/mpd.conf config/ncmpcpp/config"

mkdir -pv $dst/.config/{mpd,ncmpcpp}

for file in $files; do
    echo "Creating symlink at  $dst/.$file"
    ln -S.bak -s $src/$file $dst/.$file
done

echo "*** Done! ***"

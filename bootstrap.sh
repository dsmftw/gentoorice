#!/bin/bash

src="$HOME"/dotfiles
dst="$HOME"
declare -a files=(
"bashrc" "gitconfig" "tmux.conf" "vimrc" "xinitrc" "Xresources"
"config/redshift.conf"
"config/conky/conky.conf"
"config/mpd/mpd.conf"
"config/mpv/mpv.conf"
"config/ncmpcpp/config"
"config/ranger/rc.conf"
"config/ranger/scope.sh"
"config/zathura/zathurarc"
)

mkdir -pv "$dst"/.config/{conky,mpd,mpv,ncmpcpp,ranger,zathura}

printf "\nCreating symlinks...\n"
for file in "${files[@]}"; do
    printf '  %s/.%-25.25s --> dotfiles/%s\n' "$dst" "$file" "$file"
    ln -S.bak -s "$src"/"$file" "$dst"/."$file"
done

printf "\n***** Done! *****\n\n"

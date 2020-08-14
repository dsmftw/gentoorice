# dsmftw dotfiles [Gentoo]

* my minimalist Gentoo Linux configuration files
* bootstrap script
* tmux statusbar scripts

## Setup details

* OS `Gentoo`
* Init system `OpenRC`
* Windowing System `X11`
* DM `XDM`
* WM `dwm`
* Menu/Launcher `dmenu`
* Terminal emulator `st`
* Terminal multiplexer `tmux`
* Shell `bash`
* File manager `ranger`
* Text editor `vim`
* Audio player `mpd` + `ncmpcpp`
* Media player `mpv`
* Image viewer `sxiv`
* Web browser `firefox`
* P2P `transmission`
* Version control `git`
* Difftool `meld`
* PDF viewer `mupdf` + `zathura`
* System monitor `htop` `conky`
* Feedreader `newsboat`

## Installation

Start with cloning plugins of choice.

### get plugins for

#### shell colors

* [base16-shell](https://github.com/chriskempson/base16-shell)

#### tmux plugin manager

* [tpm](https://github.com/tmux-plugins/tpm)

#### vim

* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
* [gruvbox](https://github.com/morhetz/gruvbox)
* [syntastic](https://github.com/vim-syntastic/syntastic)
* [vim-airline](https://github.com/vim-airline/vim-airline)
* [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* [vim-commentary](https://github.com/tpope/vim-commentary)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [vim-json](https://github.com/elzr/vim-json)
* [vim-surround](https://github.com/tpope/vim-surround)
* [vim-tmux](https://github.com/tmux-plugins/vim-tmux)

### install dotfiles

Clone dotfiles:

```bash
git clone https://github.com/dsmftw/gentoorice.git ~/dotfiles
```

Run script to create symlinks:

```bash
cd ~/dotfiles
./bootstrap.sh
```

The `dotfiles/bootstrap.sh` script will create directories as needed and backup any existing files before overwriting with symlinks (with a `.bak` extension).

## Fonts via Portage

* media-fonts/hack
    * terminal font
* media-fonts/powerline-symbols
    * needed for `vim-airline`

Set terminal font size to **9**.

## Screenshots [old GNOME setup]

<img src="screenshots/scr1.png" width="640" >

<img src="screenshots/scr2.png" width="640" >

<img src="screenshots/scr3.png" width="640" >

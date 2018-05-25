# dsmftw dotfiles

* My minimalist Linux configuration files. (Tailored towards my laptop distro. NOTE: minor tweaking is required for the dots to be used with my CentOS 7 desktop/server.)
* A very basic bootstrap script that creates directories and symlinks.

## Setup details

* OS `Gentoo`
* Windowing System `X11`
* DE `GNOME`
* WM `GNOME Shell`
* Terminal emulator `st` `gnome-terminal`
* Terminal multiplexer `tmux`
* Shell `bash`
* File manager `ranger`
* Text editor `vim`
* Audio player `mpd` + `ncmpcpp`
* Media player `mpv`
* Image viewer `sxiv`
* Menu/Launcher `rofi`
* Web browser `firefox`
* P2P `transmission`
* Version control `git`
* Difftool `meld`
* PDF viewer `mupdf` + `zathura`
* System monitor `htop` `conky`

## Installation

Start with cloning plugins of choice.

### get plugins for

#### shell colors

* [base16-shell](https://github.com/chriskempson/base16-shell)

#### tmux plugin manager

* [tpm](https://github.com/tmux-plugins/tpm)

#### vim

* [pathogen](https://github.com/tpope/vim-pathogen)
* [base16-vim](https://github.com/chriskempson/base16-vim)
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
git clone https://github.com/dsmftw/dotfiles.git ~/dotfiles
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

## Screenshots

<img src="screenshots/scr1.png" width="640" >

<img src="screenshots/scr2.png" width="640" >

<img src="screenshots/scr3.png" width="640" >

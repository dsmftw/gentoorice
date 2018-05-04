# dsmftw dotfiles

* My minimalist Linux configuration files. (Tailored towards my laptop distro. With some tweaking the dots can be used for the desktop which runs a different distro.)
* A very basic bootstrap script that creates directories and symlinks.

## Setup details

* OS `Gentoo`
* DE `GNOME`
* WM `GNOME Shell`
* Terminal emulator `gnome-terminal` `st`
* Terminal multiplexer `tmux`
* Shell `bash`
* File manager `ranger`
* Text editor `vim`
* Sound `mpd` + `ncmpcpp`
* Video `mpv`
* Image viewer `sxiv`
* Launcher `rofi`
* Browser `firefox`
* P2P `transmission`
* Difftool `meld`
* PDF viewer `mupdf` + `zathura`
* System monitoring `htop` `conky`

## Installation

Strart with cloning plugins of choice.

### get plugins for

#### shell colors

* [base16-shell](https://github.com/chriskempson/base16-shell)

#### vim

* [pathogen](https://github.com/tpope/vim-pathogen)
* [base16-vim](https://github.com/chriskempson/base16-vim)
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
* [gruvbox](https://github.com/morhetz/gruvbox)
* [syntastic](https://github.com/vim-syntastic/syntastic)
* [vim-airline](https://github.com/vim-airline/vim-airline)
* [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* [vim-commentary](https://github.com/tpope/vim-commentary)
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

Set terminal font size to **10**.

## Screenshots

<img src="screenshots/scr1.png" width="640" >

<img src="screenshots/scr2.png" width="640" >

<img src="screenshots/scr3.png" width="640" >

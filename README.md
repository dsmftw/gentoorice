# dsmftw dotfiles

* My minimalist Linux configuration files. (Tailored mostly towards my laptop distro. Desktop requires minor tweaking.)
* A very basic bootstrap script that creates directories and symlinks.

## Installation

Strart with cloning plugins of choice.

### get plugins for

#### shell colors

* [base16-shell](https://github.com/chriskempson/base16-shell)

#### vim

* [pathogen](https://github.com/tpope/vim-pathogen)
* [gruvbox](https://github.com/morhetz/gruvbox)
* [vim-airline](https://github.com/vim-airline/vim-airline)
* [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* [syntastic](https://github.com/vim-syntastic/syntastic)
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)

#### optional

* [base16-gnome-terminal](https://github.com/chriskempson/base16-gnome-terminal)
* [base16-vim](https://github.com/chriskempson/base16-vim)
* [nerdtree](https://github.com/scrooloose/nerdtree)

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


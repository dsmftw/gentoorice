# /etc/skel/.bashrc
#
# Test for an interactive shell.
if [[ $- != *i* ]] ; then
  return
fi


# Aliases
cp () { command cp -v "$@" ; }
mv () { command mv -v "$@" ; }
rm () { command rm -v "$@" ; }
rmdir () { command rmdir -v "$@" ; }
[[ $(type -t ls) == "alias" ]] && unalias ls
ls () { command ls -F -h -v --color=auto --time-style=long-iso "$@" ; }
alias ll='ls -l'
alias la='ls -lA'
alias vimrc='vim $HOME/dotfiles/vimrc'
alias bashrc='vim $HOME/dotfiles/bashrc'
alias dosmth='$(find ~/dotfiles/colorscripts/ -type f | shuf -n 1)'
alias cddots='cd $HOME/dotfiles'
alias cdcode='cd $HOME/codebase'

# Bash history
export HISTFILESIZE=-1
export HISTSIZE=-1
export HISTTIMEFORMAT="[%F %T] "
export HISTIGNORE="history*:pwd:ls:ll:la:cd"
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend

# Get weather for city/airport
function weather() { curl -s wttr.in/"$*"?lang=ru | grep -vE "feature|Follow"; }

# Super extractor
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)  tar xjf $1      ;;
      *.tar.gz)   tar xzf $1      ;;
      *.bz2)      bunzip2 $1      ;;
      *.rar)      7za x $1        ;;
      *.7z)       7zr x $1        ;;
      *.gz)       gunzip $1       ;;
      *.tar)      tar xf $1       ;;
      *.tbz2)     tar xjf $1      ;;
      *.tgz)      tar xzf $1      ;;
      *.zip)      unzip $1        ;;
      *.Z)        uncompress $1   ;;
      *)          echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

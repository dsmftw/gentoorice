# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

# Environment vars
export GOPATH=$HOME/.golang
export PATH=$PATH:$GOPATH/bin

# Aliases
alias cp='cp -vi'
alias mv='mv -vi'
alias rm='rm -vi'
alias rmdir='rmdir -v'

# get weather for city/airport using CLI
function wttr() { curl -s wttr.in/"$*"?lang=ru | grep -vE "feature|Follow"; }

# Base16 Shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"


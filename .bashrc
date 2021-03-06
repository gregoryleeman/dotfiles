#/bin/bash

source "${HOME}/.bash_xtra"
# export PS1="\e[0;37m[\u@\h]\$ \e[m"
export PS1="[\u@\h]\$ "
set -o vi

if [[ $(uname) == "Darwin" ]]; then
	export BASH_SILENCE_DEPRECATION_WARNING=1
	export PATH=$PATH:"$HOME/homebrew/bin"
	eval $(gdircolors ~/.dircolors/dircolors.ansi-dark)
	export HOMEBREW_CASK_OPTS="--appdir=~/Applications --caskroom=~/Caskroom"
	alias ls='gls --color=auto'
else
	alias ls='ls --color=auto'
fi

export EDITOR=nvim
alias vim='nvim'

function lazygit () {
	git add .
	git commit -m "lazygit"
	git push
}

alias la='ls -al'
alias l1='ls -1'
alias lt='ls -ltr'

alias rm='rm -i'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
set show-all-if-ambiguous on
set completion-ignore-case on

unset TMUX

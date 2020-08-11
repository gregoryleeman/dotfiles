# /bin/bash

export PS1='[\u@\h]\$ '
set -o vi

if [[ $U_NAME == "Darwin" ]]; then
	eval $(gdircolors ~/.dircolors/dircolors.ansi-dark)
	export HOMEBREW_CASK_OPTS="--appdir=~/Applications --caskroom=~/Caskroom"
	export PATH=$PATH:"$HOME/homebrew/bin"
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

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
set show-all-if-ambiguous on
set completion-ignore-case on

source ~/.bash_xtra.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export GOPATH=$HOME/work/go

export ZSH=/home/d3nnn1z/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export EDITOR="vim"
export VISUAL=$EDITOR
export USE_EDITOR=$EDITOR

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

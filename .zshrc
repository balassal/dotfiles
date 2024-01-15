export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira"

plugins=(zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

alias ls="exa --icons --sort=type"
alias lsa="ls --all"
alias ll="exa --icons --long --header --bytes --modified --sort=type"
alias lla="ll --all"
alias v="nvim"
alias vim="nvim"
export ZSH="/home/moises/.oh-my-zsh"

ZSH_THEME="macovsky"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias pa="php artisan"
alias pamf="pa migrate:fresh;"
alias pads="pa db:seed;"
alias pams="pamf pads"

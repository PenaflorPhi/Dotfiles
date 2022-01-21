#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias v='nvim'
alias vim='nvim'
alias q='exit'
alias quit='exit'
alias wq='exit'
alias font='fc-list : family >> .fonts && vim .fonts'
alias fonts='fc-list : family >> .fonts && vim .fonts'
alias program='paru -Qe >> .programs && vim .programs'
alias programs='paru -Qe >> .programs && vim .programs'



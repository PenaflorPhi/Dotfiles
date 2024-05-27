# =================================================
# @PenaflorPhi:
# Bash configuration (Obviously).
# =================================================

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

shopt -s autocd
shopt -s cdspell

# ====================================
# Alias                              |
# ====================================
alias c='tput reset'
alias clear='tput reset'
alias cp='cp -iv'
alias grep='grep --color'
alias ls='ls -lh --color --group-directories-first'
alias mv='mv -iv'
alias rm='rm -iv'
alias q='exit'
alias quit='exit'
alias t='tput reset'
alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'

alias font='fc-list : family > .fonts & nvim .fonts'
alias fonts='fc-list : family > .fonts & nvim .fonts'

alias py='python'
alias tar='tar cvzf'
alias untar='tar xzvf'

alias vim='nvim'
alias ivm='nvim'

alias yt-dlp='yt-dlp --sponsorblock-remove=default -S "res:1080"'

# ====================================
# Completions                        |
# ====================================
complete -cf man which sudo gcc

# Run-Help
run-help() {
    help "$READLINE_LINE" 2 >/dev/null || man "$READLINE_LINE"
}
bind -m vi-insert -x '"\eh": run-help'

# ====================================
# Exports                            |
# ====================================
export BROWSER=firefox
export EDITOR=nvim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HISTCONTROL=ignoredups
export HISTCONTROL=erasedups
export HISTCONTROL=ignorespace
export HISTCONTROL=ignoreboth

export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_STATE_HOME=${XDG_STATEHOME:="$HOME/.local/state"}
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:/home/angel/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export XCURSOR_PATH=/usr/share/icons:$XDG_DATA_HOME/icons

export PATH="$HOME/.local/bin":$PATH
export PATH="$HOME/.cargo/bin":$PATH
export PATH=$CARGO_HOME:$PATH

export HISTFILE="${XDG_STATE_HOME}"/bash/history

source /usr/share/clang/bash-autocomplete.sh

export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit

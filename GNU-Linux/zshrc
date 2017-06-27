# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
KEYTIMEOUT=1
setopt autocd
unsetopt beep
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kevin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit
promptinit

# Alias
alias ls='ls --color=auto'
alias open='xdg-open'
alias gtk='gcc `pkg-config --cflags --libs gtk+-3.0`'
alias .='pwd'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

# For Jhbuild
PATH=$PATH:~/.local/bin

# Set neovim as main editor
VISUAL=nvim
EDITOR=nvim

# Avoid gtk-canberra error
GTK_PATH=/usr/lib/gtk-3.0
export VISUAL
export EDITOR
export GTK_PATH

# Prompt
PS1='[%n@%m %~]$ '

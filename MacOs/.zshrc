# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
# End of lines configured by zsh-newuser-install
autoload -Uz promptinit
promptinit

# Use modern completion system
autoload -Uz compinit
compinit

autoload -U colors
colors

path=('/usr/local/bin' $path)
path+=('/Library/TeX/texbin')
path+=('/Users/Kevin/.cargo/bin')
alias gtk="gcc `pkg-config --libs --cflags gtk+-3.0`"
alias ls='ls -G'
alias sb='open -a SceneBuilder'

# Prompt
PROMPT='%B%F{green}[%n@%m %~]$ %f%b'

export PATH

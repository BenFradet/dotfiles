# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

export EDITOR=nvim

# alias
alias tf="terraform"

# brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

. "$HOME/.cargo/env"

# theme
eval "$(starship init zsh)"

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# customizing prompt
BOLD_GREEN="\[\033[01;32m\]"
BOLD_BLUE="\[\033[01;34m\]"
RESET="\[\033[00m\]"
PS1="${BOLD_BLUE}\u@\h${RESET}:${BOLD_GREEN}\W${RESET}\$ "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/usr/local/go/bin

eval "$(zoxide init bash)"

# --------------------------
# ----- Custom aliases -----
# --------------------------

# General
alias v='nvim'
alias e='exit'

# Tools
alias cd='z'
alias cat='bat'

# Edit dotfiles
alias eb='v ~/.bashrc'
alias eba='v ~/.bash_aliases'
alias ev='v ~/.config/nvim/init.lua'
alias et='v ~/.config/tmux/tmux.conf'
alias ea='v ~/.config/alacritty/alacritty.toml'
alias ei3='v ~/.config/i3/config'

# CF contests
alias cf='cd $HOME/cp/ && v -O2 source.cpp input.txt -c "wincmd l" -c "sp output.txt" -c "wincmd h"'

# Alieses for fzf
# alias fzf='fzf --height=40% --layout=reverse --info=inline --border --margin=1 --padding=1'
# alias f='find * -type f | fzf --print0 | xargs -0 -o nvim'
# alias pdf='find * -type f | fzf --print0 | xargs -0 -o evince'

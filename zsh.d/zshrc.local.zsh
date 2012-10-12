# Prezto local dir
PZT_LOCAL=${ZDOTDIR:-$HOME}/.zsh.d

# Project dir
PROJECT_DIR=${HOME}/code

# Grep Color
export GREP_COLOR='1;33'

# Make sure man pages doesn't overflow
export MANWIDTH=80

# for tmux: export screen-256color
if [[ -n "$TMUX" ]]; then
  TERM=screen-256color
else
  TERM=xterm-256color
fi

#
# History
#

HISTSIZE=10000
HISTFILESIZE=20000

# Better performance on history file
setopt hist_fcntl_lock

#
# ZSH options
#

# Completion
# I don't like the expansion to the first match
set no_menu_complete

eval "$(hub alias -s)"
source /usr/share/zsh/site-functions/_hub

fpath=("/usr/share/zsh/site-functions/_hub" $fpath)

#
# Aliases
#

for i in $PZT_LOCAL/aliases/*.zsh; do
  source $i
done

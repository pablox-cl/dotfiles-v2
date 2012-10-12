# Apps shortcuts

# changing directory to the project dir
function c {
  cd ${PROJECT_DIR}/$1
}

# todo.sh
alias t='todo.sh'

# ls
alias ls='ls --group-directories-first -hF --color=auto' # color, human readable and classify symbols

# lazy person
alias cls='clear' #dos ftw
alias q='exit'
alias rb='ruby'
alias md='mkdir'
alias rdir='rmdir'

# modified commands
if [ -x "$(which colordiff)" ]; then
  alias diff='colordiff'              # requires colordiff package
fi
alias grep='grep -i --color=auto'
alias du='du -chk'
alias du1='du --max-depth=1'
alias mkdir='mkdir -p -v'
alias ping='ping -c 4'
alias da='date "+%A, %B %d, %Y [%T]"'
alias -g ...='../..'                # go up two directories...
alias -g ....='../../..'            # three...
alias -g .....='../../../..'
#alias -- -='cd -'                   # go back to the last directory

# I don't like interactive commands
alias cp='nocorrect cp'
alias mv='nocorrect mv'
alias rm='nocorrect rm'
alias ln='nocorrect ln'


alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# privileged access
if [ $UID -ne 0 ]; then
    alias sudo='sudo '
    alias root='sudo su'
    alias reboot='sudo reboot'
    alias halt='sudo halt'
fi

# new commands
alias h='history | grep $1'           # requires an argument
alias openports='netstat --all --numeric --programs --inet'
alias pg='ps -Af | grep $1'           # requires an argument (note: /usr/bin/pg is installed by the util-linux package; maybe a different alias name should be used)

# suffix aliases
# alias -s tex=vim

alias z='fasd_cd -d'
bindkey '^X^A' fasd-complete    # C-x C-a to do fasd-complete (fils and directories)
bindkey '^X^F' fasd-complete-f  # C-x C-f to do fasd-complete-f (only files)
bindkey '^X^D' fasd-complete-d  # C-x C-d to do fasd-complete-d (only directories)


# useful pipe aliases
# kudos to zsh-lovers

# |& -> 2>&1 => connects stdout and stderr to the stdin (man zshmisc)
alias -g DN=/dev/null
alias -g EG='|& egrep'
alias -g EH='|& head'
alias -g EL='|& less'
alias -g ELS='|& less -S'
alias -g ET='|& tail'
alias -g ETL='|& tail -20'
alias -g F=' | fmt -'
alias -g G='| egrep'
alias -g H='| head'
alias -g HL='|& head -20'
alias -g Sk="*~(*.bz2|*.gz|*.tgz|*.zip|*.z)"
alias -g LL="2>&1 | less"
alias -g L="| less"
alias -g LS='| less -S'
alias -g MM='| most'
alias -g M='| more'
alias -g NE="2> /dev/null"
alias -g NS='| sort -n'
alias -g NUL="> /dev/null 2>&1"
alias -g PIPE='|'
alias -g R=' > /c/aaa/tee.txt '
alias -g RNS='| sort -nr'
alias -g S='| sort'
alias -g TL='| tail -20'
alias -g T='| tail'
alias -g US='| sort -u'
alias -g VM=/var/log/messages
alias -g X0G='| xargs -0 egrep'
alias -g X0='| xargs -0'
alias -g XG='| xargs egrep'
alias -g X='| xargs'


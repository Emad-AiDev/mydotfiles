###   Handy Extract Function

# to use make sure you've installed:
# brew install unrar
# brew install p7zip

extract() {
if [ -f $1 ] ; then
     case $1 in
         *.tar.bz2)   tar xvjf $1   ;;
         *.tar.gz)    tar xvzf $1   ;;
         *.bz2)       bunzip2 $1    ;;
         *.rar)       unrar x $1    ;;
         *.gz)        gunzip $1     ;;
         *.tar)       tar xvf $1    ;;
         *.tbz2)      tar xvjf $1   ;;
         *.tgz)       tar xvzf $1   ;;
         *.zip)       unzip $1      ;;
         *.Z)         uncompress $1 ;;
         *.7z)        7z x $1       ;;
         *)           echo "'$1' cannot be extracted via extract" ;;
     esac
else
     echo "'$1' is not a valid file"
fi
}


export CLICOLOR='true'
export LSCOLORS=ExFxCxDxBxegedabagacad
alias ls='ls -ahFG'
alias ll='ls -lahtrG'
alias la='ls -A'
alias ..='cd ..'
alias ...='cd ../..'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias df='df -h'
alias du='du -h'
alias grep='grep --color'
alias f='pwd|open -a Finder '
alias django_server="python manage.py runserver &"
export PS1="\u@\h\[\033[0;35m\] \W\[\033[0m\] \$"

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/include/bin/mysqladmin

alias vm='mvim'
alias v='vim'
alias s='subl'
alias alfa='ssh emax@ealfa'
alias alfai='ssh emax@ealfai'
alias beta='ssh emax@ebeta'
alias rasp='ssh pi@192.168.0.112'
alias xbmc='ssh pi@192.168.0.180'

##
# Your previous /Users/em/.bash_profile file was backed up as /Users/em/.bash_profile.macports-saved_2012-02-21_at_23:40:33
##

# MacPorts Installer addition on 2012-02-21_at_23:40:33: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# aliases
alias ll="ls -laGtr"

# PS1 settings
BLACK="0;30m"
BLUE="0;34m"
GREEN="0;32m"
CYAN="0;36m"
RED="0;31m"
PURPLE="0;35m"
BROWN="0;33m"
STARTCOLOR="\e["
ENDCOLOR="\e[m"
PS1="$STARTCOLOR$CYAN[\\u@\h]$END$STARTCOLOR$GREEN[\t]$ENDCOLOR$STARTCOLOR$PURPLE[\\W]$ENDCOLOR\\$ "

# user specific settings
export EDITOR=vim

# ruby
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# tmux & tmuxinator
source ~/.bin/tmuxinator.bash

# java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# scala
export SCALA_HOME="/usr/local/opt/scala/idea"

# path
export PATH="/usr/local/bin:$PATH"

# GOLANG
export PATH=/usr/local/go/bin:$PATH
export GOPATH=$HOME/projects/go-play
export PATH=$PATH:$GOPATH/bin

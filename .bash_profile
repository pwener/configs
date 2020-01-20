
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Helpful aliases for bash to django
alias pm="python3 manage.py"
alias pmcs="python3 manage.py collectstatic --noinput"
alias pmdbsh="python3 manage.py dbshell"
alias pmdd="python3 manage.py dumpdata"
alias pmld="python3 manage.py loaddata"
alias pmm="python3 manage.py migrate"
alias pmsh="python3 manage.py shell"
alias pmsm="python3 manage.py schemamigration"
alias pmsync="python3 manage.py syncdb --noinput"
alias pmt="python3 manage.py test"
alias prs="python3 manage.py runserver"

# Git aliases
alias gs='git status'
alias gaa='git add --all'
alias gc='git commit -m' # requires message
alias gp='git push'
alias gl='git log --all --decorate --oneline --graph'

export DEV_PATH=$HOME/development

alias android-studio='sh $DEV_PATH/android-studio/bin/studio.sh'

export GOROOT=/usr/local/go
export GOPATH=$HOME/Workspace/golang
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

export ANDROID_HOME=$DEV_PATH/Android/Sdk
export ANDROID_SDK=$DEV_PATH/Android/Sdk
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="$PATH:development/flutter/bin"

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[$(tput bold)\]\u@\h\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;40m\]\w\[\033[38;5;33m\]\$(parse_git_branch)\[\033[38;5;7m\]$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

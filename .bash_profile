export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export LOCALBD='localhost:27016'
export PIP_REQUIRE_VIRTUALENV=true
export WORKON_HOME=$HOME/.virtualenvs
export MSYS_HOME=/c/msys/1.0
source /usr/local/bin/virtualenvwrapper.sh
source ~/.bash_git
export GO15VENDOREXPERIMENT=1
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

function PWD {
	pwd | awk -F\/ '{print $(NF-1),$(NF)}' | sed 's| |/|'
}
export PS1="\[\033[33m\]\$(PWD 3)\[\033[0m\] $(__git_ps1) \$ ";

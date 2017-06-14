# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/dnsaoki/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
# eval (python -m virtualfish compat_aliases auto_activation)
eval (export GOPATH=$HOME/go)
eval (export GO15VENDOREXPERIMENT=1)
# eval (export PATH=$PATH:$GOPATH/bin)
set PATH $PATH $GOPATH/bin
# set PATH $PATH "/Users/denis.aoki/workspace/personal/cilk/bin"
eval (export LC_ALL=en_US.UTF-8)
eval (export LANG=en_US.UTF-8)
# set C_INCLUDE_PATH $C_INCLUDE_PATH "/Users/denis.aoki/workspace/personal/cilk/include"
# set CPLUS_INCLUDE_PATH $CPLUS_INCLUDE_PATH "/Users/denis.aoki/workspace/personal/cilk/include"
# set LIBRARY_PATH $LIBRARY_PATH "/Users/denis.aoki/workspace/personal/cilk/lib"
# set DYLD_LIBRARY_PATH $DYLD_LIBRARY_PATH "/Users/denis.aoki/workspace/personal/cilk/lib"

########## alias ##########
set -gx WORKSPACE "$HOME/workspace"
## diretorios
alias work "cd $WORKSPACE/work"
alias personal "cd $WORKSPACE/personal"
alias pub "cd $WORKSPACE/work/gitlab/publicacao-core"
alias estrutura "cd $WORKSPACE/work/gitlab/nova_estrutura"
alias api "cd $WORKSPACE/work/gitlab/apis"
alias backstage "cd $WORKSPACE/work/gitlab/backstage"
## git
alias gs "git status"
alias ga "git add ."
alias gp "git pull"
alias gc "git checkout"
alias gl "git log"
alias gd "git diff"

alias pycharm 'open -a /Applications/PyCharm.app'

# Highlight current day
alias today 'cal | grep --color -EC6 "\b"(date +%e | sed "s/ //g")'
rvm default

alias sub "subl ."

set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH
# pyenv rehash
# set -q PYENV_ROOT; or set -l PYENV_ROOT $HOME/.pyenv

# set PATH $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH

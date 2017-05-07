# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/dnsaoki/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Golang configuration
eval (export GOPATH=$HOME/go)
eval (export GO15VENDOREXPERIMENT=1)
set PATH $PATH $GOPATH/bin

# Alias dir
alias personal "cd $HOME/workspace/personal"

# Alias git
alias gs "git status"
alias gp "git pull"
alias gc "git checkout"
alias gl "git log"

# Alias editors
alias pycharm "open -a /Applications/Pycharm.app"

# Start pyenv
set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH
pyenv rehash
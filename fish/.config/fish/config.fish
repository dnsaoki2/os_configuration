# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/dnsaoki/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
eval (python -m virtualfish compat_aliases auto_activation)
eval (export GOPATH=$HOME/go)
eval (export GO15VENDOREXPERIMENT=1)
# eval (export PATH=$PATH:$GOPATH/bin)
set PATH $PATH $GOPATH/bin
eval (export LC_ALL=en_US.UTF-8)
eval (export LANG=en_US.UTF-8)
# alias
alias work "cd $HOME/workspace/work"
alias personal "cd $HOME/workspace/personal"
alias gs "git status"
alias ga "git add ."
alias gp "git pull"



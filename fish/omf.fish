# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# eval (export LC_ALL=en_US.UTF-8)
# eval (export LANG=en_US.UTF-8)

########## alias ##########
set -gx WORKSPACE "$HOME/workspace"
set -gx GOPATH "$HOME/workspace/work"

## diretorios
alias work "cd $WORKSPACE/work"
alias personal "cd $WORKSPACE/personal"
alias api "cd $WORKSPACE/work/gitlab/apis"
alias backstage "cd $WORKSPACE/work/gitlab/backstage"
alias entretenimento "cd $WORKSPACE/work/gitlab/entretenimento"
alias core "cd $WORKSPACE/work/gitlab/core"

alias tab_3 "tab -S | tab -s"

## git
alias gs "git status"
alias ga "git add ."
alias gp "git pull"
alias gc "git checkout"
alias gcm "git checkout master"
alias gcq "git checkout qa"
alias gcd "git checkout develop"
alias gl "git log"
alias gd "git diff"
alias gu "git diff --cached"
alias gr "git remote set-url origin"

alias pycharm 'open -a /Applications/PyCharm.app'
alias code 'open -a /Applications/Visual\ Studio\ Code.app'

set -gx PROJECT_PATHS '/Users/denis.aoki/workspace/personal/scripts/structure;/Users/denis.aoki/workspace/personal/scripts/new_structure'

alias store "store.sh"

function mcd
	set --local response (run mcd $argv)
	set --local number_of_paths (echo $response | tr " " "\n" | wc -l)
   	if [ $number_of_paths -ge 2 ]
		echo "Caminhos possiveis: "
		echo $response | tr " " "\n"
	else if [ $number_of_paths -ge 1 ]
		cd $response
	else
		echo "Nenhum caminho encontrado"
	end
end

# alias s 'vim (fzf --height 40%)'
# Highlight current day
alias today 'cal | grep --color -EC6 "\b"(date +%e | sed "s/ //g")'

set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH $PYENV_ROOT/shims $PATH

status --is-interactive; and source (nodenv init -|psub)

# open ssl flags
set -gx LDFLAGS "-L/usr/local/opt/openssl/lib"
set -gx CPPFLAGS "-I/usr/local/opt/openssl/include"
set -gx PYCURL_SSL_LIBRARY "openssl"

## admin environment
alias dev "export ADMIN_ENV=dev"
alias qa "export ADMIN_ENV=qa"
alias qa01 "export ADMIN_ENV=qa01"
alias prod "export ADMIN_ENV=prod"

alias ssl "pip install pyopenssl ndg-httpsclient pyasn1"

alias flush_dns "sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"

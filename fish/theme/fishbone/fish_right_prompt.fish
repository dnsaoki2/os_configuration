

function fish_right_prompt -d "Right side prompt message"

    # A dark grey
    set --local dark_grey 555

    set_color $dark_grey

    # show_virtualenv_name
	show_nodeenv_name
	show_pyenv_name
    show_git_info
    echo -en (date +%H:%M:%S)

    set_color normal
end


function show_pyenv_name -d "Display pyenv name of the current virtualenv"
	set --local GLOBAL_NAME (pyenv global)
	set --local PYENV_NAME (pyenv version-name)
	if [ ! -z $PYENV_NAME ]
		if [ $GLOBAL_NAME != $PYENV_NAME ]
			echo -en "[ "$PYENV_NAME" ] "
		end
	end
end

function show_nodeenv_name -d "Display nodenv name of the current node"
	set --local GLOBAL_VERSION (nodenv global)
	set --local NODE_VERSION (nodenv version-name)
	if [ ! -z $NODE_VERSION ]
		if [ $GLOBAL_VERSION != $NODE_VERSION ]
			echo -en "[ Node: "$NODE_VERSION" ] "
		end
	end
end

function show_git_info -d "Show git repository information"

    set --local LIMBO /dev/null
    set --local git_status (git status --porcelain 2> $LIMBO)
    set --local dirty ""

    [ $status -eq 128 ]; and return  # Not a repository? Nothing to do

    # If there is modifications, set repository dirty to '*'
    if not [ -z (echo "$git_status" | grep -e '^ M') ]
        set dirty "*"
    end

    # If there is new or deleted files, add  '+' to dirty
    if not [ -z (echo "$git_status" | grep -e '^[MDA]') ]
        set dirty "$dirty+"
    end

    # If there is stashed modifications on repository, add '^' to dirty
    if not [ -z (git stash list) ]
        set dirty "$dirty^"
    end

    # Prints git repository status
    echo -en "("
    echo -en (git_branch_name)$dirty
    echo -en ") "
end

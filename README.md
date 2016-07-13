Instalação bash:
===========
- copiar os arquivos '.bash_profile', '.gitconfig' e 'gitignore_global' para ~

Fish Shell:
===========
- mover arquivo de configuração
	- mv config.fish ~/.config/fish/

Funcões definidas do Fish:
==========================
Copiar os arquivos da pasta 'functions' para '~/.config/fish/functions'
- 'functions/fish_prompt.fish'
	- auto virtualenv (`http://virtualfish.readthedocs.io/en/latest/install.html#customizing-your-fish-prompt`)
- 'functions/gs.fish'
	- gs: git status
- 'functions/s.fish'
	- s $arg: open sublime

Vim conf:
=========
- cp .vimrc ~
- vim +NeoBundleInstall +qall

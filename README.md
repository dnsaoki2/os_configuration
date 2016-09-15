Configuração bash shell:
========================
- cp ./.bash_profile $HOME

Configuração Fish Shell:
========================
- Instalar:
	- brew install fish

- Instalar Oh My Fish
	- 'https://github.com/oh-my-fish/oh-my-fish'

- Plugins instalados:
	- virtualfish
		- $ pip install virtualfish
		- $ omf install virtualfish
	- bang-bang (style history)
		- omf install bang-bang
	- theme fishbone
		- omf install theme-fishbone

- Configurar para ser o shell padrão:
	- which fish
	- adicionar o 'path' do fish no arquivo '/etc/shells'
	- chsh -s 'path'
		sendo 'path' o caminho retornado pelo which

- personalizacão do fish:
	- copiar arquivo de configuração:
		- cp './fish/.config/fish/config.fish' '~/.config/fish'
		- Obs.: 
			- virtualfish com compat_aliases e auto_activation
	- alias personalizados:
		- git:
			- ga: git add .
			- gs: git status
			- gp: git pull
		- diretorios:
			- personal: cd $HOME/workspace/personal
			- work: cd $HOME/workspace/work

Configuração do vim:
====================
- Configuração do editor do vim para as linguages: html, js, go, python, c
	- cp './vim/.vimrc' $HOME
	- vim +NeoBundleInstall +qall

- Teclas:
	- NeerdTree:
		- <F2>: NERDTreeFind
		- <F3>: NERDTreeToggle
		- <C-n>: NERDTreeTabsOpen
	- Grep:
		- <leader>f: procurar
	- Split:
		- <leader>h: split na horizontal
		- <leader>v: split na vertical
	- Buffer:
		- <leader>z || <leader>x: navegação no buffer
		- <leader>c: fechar buffer
		- <leader>b: procurar no buffer
	- TagBar
		- <F4>: Abrir TagBar
	- Highlight
		- <leader>space: Desabilitar highlith da busca

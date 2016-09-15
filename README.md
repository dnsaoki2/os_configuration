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
		- git status: 
			- alias gs "git status"

Configuração do vim:
====================
Configuração do editor do vim para as linguages: html, js, go, python, c
- cp './vim/.vimrc' $HOME
- vim +NeoBundleInstall +qall

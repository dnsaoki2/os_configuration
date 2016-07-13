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
	- copiar funçoes personalizadas:
		- cp -r './fish/.config/fish/functions' '~/.config/fish'
		- Obs.:
			- `s $arg`: atalho para abrir o sublime
			- `gs`: atalho para 'git status'
			- fish_prompt.fish modificado para mostrar o virtuaenv ativo

Configuração do vim:
====================
Configuração do editor do vim para as linguages: html, js, go, python, c
- cp './vim/.vimrc' $HOME
- vim +NeoBundleInstall +qall

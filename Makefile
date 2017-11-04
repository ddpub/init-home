TOP := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
CP=cp
LN=ln -s
RM=rm -f
MKDIR=mkdir

install:
	${CP} ${TOP}/dotfiles/vimrc ~/.vimrc
	${CP} ${TOP}/dotfiles/screenrc ~/.screenrc
	${CP} ${TOP}/dotfiles/bashrc ~/.bashrc
	${CP} ${TOP}/dotfiles/tmux.conf ~/.tmux.conf
	`git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`

reinstall: clean install

clean:
	`rm -rf ~/.vim/*`

uninstall:
	${RM} ~/.vimrc
	${RM} ~/.screenrc
	${RM} ~/.bashrc


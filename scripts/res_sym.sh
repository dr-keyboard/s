#!/bin/sh

#To be run after del_sym.sh

#create associations between files

echo "linking .screenrc, .tmux.conf, .vim, .vimrc, .dircolors .bashrc"
ln -s ~/s/vim/vim_current/.screenrc ~/.screenrc
ln -s ~/s/vim/vim_current/.tmux.conf ~/.tmux.conf
ln -s ~/s/vim/vim_current ~/.vim
ln -s ~/s/vim/vim_current/.vimrc ~/.vimrc
ln -s ~/s/vim/vim_current/.dircolors ~/.dircolors
ln -s ~/s/vim/vim_current/.bashrc ~/.bashrc
ln -s ~/s/vim/vim_current/.inputrc ~/.inputrc
#ln -s ~/s/vim/vim_current/.viminfo ~/.viminfo

exit 0

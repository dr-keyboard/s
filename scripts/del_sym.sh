#!/bin/sh

#Delete the files that we are interested in
# Can modify later to be fancy, for now, just delete

echo "removing .vimrc .vim .tmux.conf .screenrc .dircolors .bashrc"
rm ~/.vimrc
rm ~/.vim
rm ~/.tmux.conf
rm ~/.screenrc
rm ~/.dircolors
rm ~/.bashrc
rm ~/.inputrc
#rm ~/.viminfo

exit 0

#!/bin/sh

#This file takes the new directory as an argument, removes the vim_current
# directory, and creates a symbolic link to the new directory
echo $1

echo "rm ~/s/vim/vim_current"
rm ~/s/vim/vim_current
echo "ln -s ~/s/vim/$1 ~/s/vim/vim_current"
ln -s ~/s/vim/$1 ~/s/vim/vim_current

exit 0

#!/bin/sh

#This script backs up things that are actually there, so to do that,
# we first break the symlink, try it, then restore it

check_errs()
{
  # Function. Parameter 1 is the return code
  # Para. 2 is text to display on failure.
  if [ "${1}" -ne "1" ]; then
    echo "ERROR # ${1} : ${2}"
    # as a bonus, make our script exit with the right error
    # code.
    return ${1}
  fi
}


### main script starts here ###

#first, break the symlink
mv ~/s/vim/vim_current ~/s/vim/vim_current2

time=$(date +%Y%m%d_%H%M%S)

bk=~/s/backup/bak_$time

err=0
mkdir $bk

#start copying files, if we can
cp ~/.vimrc $bk/.vimrc
#check_errs $? "~/.vimrc found! Backed up to $bk/.vimrc"
if [ "$?" -eq "0" ]; then 
    err=$(($err+1))
    echo "~/.vimrc found! Backed up to $bk/.vimrc" 
fi
cp ~/.vim $bk/.vim
#check_errs $? "~/.vim found! Backed up to $bk/.vim"
if [ "$?" -eq "0" ]; then 
    err=$(($err+1)) 
    echo "~/.vim found! Backed up to $bk/.vim"
fi
cp ~/.tmux.conf $bk/.tmux.conf
#check_errs $? "~/.tmux.conf found! Backed up to $bk/.tmux.conf"
if [ "$?" -eq "0" ]; then 
    err=$(($err+1))
    echo "~/.tmux.conf found! Backed up to $bk/.tmux.conf" 
fi
cp ~/.dircolors $bk/.dircolors
#check_errs $? "~/.dircolors found! Backed up to $bk/.dircolors"
if [ "$?" -eq "0" ]; then 
    err=$(($err+1))
    echo "~/.dircolors found! Backed up to $bk/.dircolors" 
fi
cp ~/.screenrc $bk/.screenrc
#check_errs $? "~/.screenrc found! Backed up to $bk/.screenrc"
if [ "$?" -eq "0" ]; then 
    err=$(($err+1))
    echo "~/.screenrc found! Backed up to $bk/.screenrc" 
fi

cp ~/.bashrc $bk/.bashrc
if [ "$?" -eq "0" ]; then 
    err=$(($err+1))
    echo "~/.bashrc found! Backed up to $bk/.bashrc" 
fi

cp ~/.inputrc $bk/.inputrc
#check_errs $? "~/.inputrc found! Backed up to $bk/.inputrc"
if [ "$?" -eq "0" ]; then 
    err=$(($err+1))
    echo "~/.inputrc found! Backed up to $bk/.inputrc" 
fi


#move it back
mv ~/s/vim/vim_current2 ~/s/vim/vim_current

if [ "$err" -eq "0" ]; then
    rmdir $bk
    echo "Script executed successful, no backups were needed"
    exit 0
fi

echo "-----------------------------------------------------"
echo "|        DANGER!  Existing Files Present!           |"
echo "|   Aborting futher automated scripting, since it   |"
echo "|   might do some significant damage. err=$err         |"
echo "-----------------------------------------------------"

#Exit with error code
exit 1





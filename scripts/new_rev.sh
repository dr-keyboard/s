#!/bin/sh

#This script creates a backup of the current files, updating the vim_current 
# to point at a new folder, putting contents in that folder


### main script starts here ###


time=$(date +%Y%m%d_%H%M%S)
new=~/s/vim/vim_$time

mkdir $new
echo -n "Created $new, Copying files, "

cp -LRT ~/s/vim/vim_current/ $new/

echo -n "Replacing symlink, "
rm ~/s/vim/vim_current
ln -s $new ~/s/vim/vim_current

echo  "Done."

exit 0

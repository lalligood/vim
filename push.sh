#!/bin/bash
# Push vim files & create necessary symlinks
FONTDIR=$HOME/.fonts
currdir=`pwd`


function makesymlink {
if [ $2 != "" ]; then
    # Create symlink for a directory
    if [ ! -d $1 ]; then
        echo $1 directory does not exist. Creating directory...
        mkdir $1
        echo $1 directory created successfully
    else
        echo $1 already exists. Skipping...
    fi
else
    # Create symlink for a file
    if  [ ! -h $HOME/$1 ]; then
        echo Symbolic link for $1 does not exist. Creating symlink...
        ln -s $currdir/$2 $HOME/$1
        echo Symbolic link for $1 created successfully.
    else
        echo Symbolic link for $1 already exists. Skipping...
    fi
fi
}

makesymlink $FONTDIR
cp -fv $currdir/font/* $FONTDIR/

makesymlink .vimrc .vimrc
makesymlink .gvimrc .gvimrc
makesymlink .vim vim/

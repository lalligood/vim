#!/bin/bash
# Push vim files & create necessary symlinks
FONTDIR=$HOME/.fonts
currdir=`pwd`

function makesymlink {
if  [ ! -h $HOME/$1 ]; then
    echo Creating symbolic link for $1
    ln -s $currdir/$2 $HOME/$1
    echo Symbolic link for $1 created successfully.
else
    echo Symbolic link for $1 already exists. Skipping...
fi
}

if [ ! -d $FONTDIR ]; then
    echo ~/.fonts directory does not exist. Creating directory...
    mkdir $FONTDIR
    echo ~/.fonts directory created successfully
else
    echo ${FONTDIR} already exists. Skipping...
fi

cp -fv $currdir/font/* $FONTDIR/

makesymlink .vimrc .vimrc
makesymlink .gvimrc .gvimrc
makesymlink .vim vim/

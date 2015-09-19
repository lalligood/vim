#!/bin/bash
# Push vim files & create necessary symlinks
FONTDIR=$HOME/.fonts
currdir=`pwd`

if [ ! -d $FONTDIR ]; then
    echo ~/.fonts directory does not exist. Creating directory...
    mkdir $FONTDIR
    echo ~/.fonts directory created successfully
else
    echo ${FONTDIR} already exists. Skipping...
fi

cp -fv $currdir/font/* $FONTDIR/

if  [ ! -h $HOME/.vimrc ]; then
    echo Creating symbolic link for .vimrc
    ln -s $currdir/.vimrc $HOME/.vimrc
    echo Symbolic link for .vimrc created successfully.
else
    echo Symbolic link for .vimrc already exists. Skipping...
fi

if  [ ! -h $HOME/.gvimrc ]; then
    echo Creating symbolic link for .gvimrc
    ln -s $currdir/.gvimrc $HOME/.gvimrc
    echo Symbolic link for .gvimrc created successfully.
else
    echo Symbolic link for .vimrc already exists. Skipping...
fi

if [ ! -h $HOME/.vim ]; then
    echo Creating symbolic link for .vim/
    ln -s $currdir/vim/ $HOME/.vim
    echo Symbolic link for vim created successfully.
else
    echo Symbolic link for .vim/ already exists. Skipping...
fi

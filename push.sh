#!/bin/bash

# Push font to desired location & create necessary symlinks to vim config

FONTDEST=$HOME/.fonts
currdir=`pwd`
FONTSRC=${currdir}/font
VIMSRC=vim
add_gui=$1

create_symlink()
# Create references to configuration files & relevant directories
{
    if [[ $2 == "" ]]; then
        # Verify directory exists. Create it if it does not.
        if [[ ! -d $1 ]]; then
            echo "$1 directory does not exist. Creating directory..."
            mkdir -v $1
            echo "$1 directory created successfully"
        else
            echo "$1 already exists. Skipping..."
        fi
    else
        # Verify symlink exists. Create it if it does not.
        src=${currdir}/$2
        dest=$HOME/$1
        if  [[ ! -h ${dest} ]]; then
            echo "Symbolic link for $1 does not exist. Creating symlink..."
            ln -vs ${src} ${dest}
            echo "Symbolic link for $1 created successfully."
        else
            echo "Symbolic link for $1 already exists. Skipping..."
        fi
    fi
    echo
}

# If any argument is presented at runtime, then it will install .gvimrc for
# any gVim GUI & the awesome Hack font
if [[ -n "${add_gui}" ]]; then
    create_symlink ${FONTDEST}
    echo "(Over)writing .ttf files in ${FONTDEST}"
    cp -fv ${FONTSRC}/* ${FONTDEST}/
    echo
    create_symlink .gvimrc .gvimrc 
fi
create_symlink .vimrc .vimrc
create_symlink .vim ${VIMSRC}

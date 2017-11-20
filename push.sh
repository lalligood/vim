#!/bin/bash

# Push font to desired location & create necessary symlinks to vim config

FONTDEST=$HOME/.fonts
currdir=`pwd`
FONTSRC=${currdir}/font
VIMSRC=vim
rmt_only=$1

function determine_os()
# Determine whether running on Linux or Mac
{
    myos=`uname -s`
    if [[ ${myos} == "Darwin" ]]; then
        gvim=".gvimrc_mac"
        vim=".vimrc_mac"
        echo "Mac operating system detected."
    else
        gvim=".gvimrc"
        vim=".vimrc"
        echo "Linux operating system detected."
    fi
    echo
}

function create_symlink()
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

determine_os
# If any argument is presented at runtime, then it assumes you will only be
# running vim on a remote server & skips any GUI-related goodness
if [[ ${rmt_only} == "" ]]; then
    create_symlink ${FONTDEST}
    echo "(Over)writing .ttf files in ${FONTDEST}"
    cp -fv ${FONTSRC}/* ${FONTDEST}/
    echo
    create_symlink .gvimrc ${gvim}
fi
create_symlink .vimrc ${vim}
create_symlink .vim ${VIMSRC}

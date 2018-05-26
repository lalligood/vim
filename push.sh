#!/bin/bash

# Push font to desired location & create necessary symlinks to vim config

FONTDEST=$HOME/.fonts
currdir=$(pwd)
FONTSRC=../Hack/build/ttf
VIMSRC=vim
add_gui=$1

verify_hack_font()
# Verify that the Hack font exists on the local machine or clone it if not found
{
    if [[ ! -d ${FONTSRC} ]]; then
        echo "Hack font not found on this machine. Cloning from GitHub..."
        git clone git@github.com:source-foundry/Hack.git ../Hack
    else
        echo "Hack font present. Way to go!"
    fi
}

install_hack_on_mac()
# Opens Finder window & Font Book application if run on Mac
{
    echo "You will need to install/update the Hack font manually."
    echo "Opening Hack fonts in Finder..."
    open ${FONTSRC}
    echo "Opening Font Book application..."
    /Applications/Font\ Book.app/Contents/MacOS/Font\ Book
    echo "Now select all .ttf files in Finder then drag 'n' drop them into Font"
    echo "Book."
}

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
# any gVim GUI
verify_hack_font
if [[ $(uname) == "Darwin" ]]; then
    install_hack_on_mac
    create_symlink .gvimrc .gvimrc 
elif [[ -n "${add_gui}" ]]; then
    create_symlink ${FONTDEST}
    echo "(Over)writing Hack .ttf files in ${FONTDEST}"
    cp -fv ${FONTSRC}/*.ttf ${FONTDEST}/
    echo
    echo "Creating necessary symlink for .gvimrc for gVim"
    create_symlink .gvimrc .gvimrc 
fi
echo "Creating necessary symlink for .vimrc for Vim"
create_symlink .vimrc .vimrc
echo "Creating necessary symlink for .vim directory for Vim"
create_symlink .vim ${VIMSRC}

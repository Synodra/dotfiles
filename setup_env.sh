#!/usr/bin/env bash

# Cleanup all empty simlink
for i in $(find $HOME -maxdepth 1 -type l);
do
    # not working on macos, solution : https://stackoverflow.com/questions/1055671/how-can-i-get-the-behavior-of-gnus-readlink-f-on-a-mac
    found=$(readlink -e $i)
    if [ -z $found ]
    then
        echo "Unable to find $i"
        rm $i
    fi
done

# Cleanup dotfiles
for i in .vimrc .tmux.conf .p10k.zsh .zshrc
do
    [ -f "$HOME/$i" ] && rm "$HOME/$i"
done

# Init stow simlinks
stow vim \
    tmux \
    zsh

exit 0
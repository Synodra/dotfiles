#!/usr/bin/env bash

# Cleanup all empty simlink
for i in $(find $HOME -maxdepth 1 -type l);
do
    # readlink is not working on MacOS, so switch to geadlink
    # But, this adds a dependency to coreutils
    if [[ "$OSTYPE" == "darwin"* ]]; then
        found=$(greadlink -e $i)
        if [ -z $found ]
        then
            echo "Unable to find $i"
            rm $i
        fi
    else
        found=$(readlink -e $i)
        if [ -z $found ]
        then
            echo "Unable to find $i"
            rm $i
        fi
    fi
done

# Cleanup dotfiles
for i in .vimrc .tmux.conf .p10k.zsh .zshrc
do
    [ -f "$HOME/$i" ] && rm "$HOME/$i"
done

# Init stow simlinks
stow nvim \
    tmux \
    vim \
    zsh
    # i3 \

exit 0
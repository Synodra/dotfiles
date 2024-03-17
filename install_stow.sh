#!/usr/bin/env bash

### What ?
# This script check if stow package is install on the current OS.
# If not available, the package will be installed.

# Check OS Type to run the appropriated command
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    if [ -z "$(dpkg -s stow | grep "install ok")" ];
    then
        sudo apt-get install stow
        exit 0;
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    echo "This OS is not supported !"
elif [[ "$OSTYPE" == "cygwin" ]]; then
    # POSIX compatibility layer and Linux environment emulation for Windows
    echo "This OS is not supported !"
elif [[ "$OSTYPE" == "msys" ]]; then
    # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
    echo "This OS is not supported !"
elif [[ "$OSTYPE" == "win32" ]]; then
    # I'm not sure this can happen.
    echo "This OS is not supported !"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    # ...
    echo "This OS is not supported !"
else
    # Unknown.
    echo "This OS is not supported !"
fi

echo "Stow is already installed !"


#!/usr/bin/env sh

# install oh-my-zsh
echo "install oh-my-zsh"

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Run this script will install the dotfiles.

#Check whether the ~/.dotfiles directory exists.
if [ -d ~/.dotfiles ]; then
    echo "~/.dotfiles directory exists. Exit."
    exit 1
fi

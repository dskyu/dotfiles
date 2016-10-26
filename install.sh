

#!/usr/bin/env sh

# install oh-my-zsh
echo "install oh-my-zsh"

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Run this script will install the dotfiles.

if [ -f ~/.zshrc ]; then
    echo "Found existing .zshrc directory in your HOME directory."
    echo "Move it to ~/.zshrc_backup."
    mv ~/.zshrc ~/.zshrc_backup
fi

ln -s ~/.dotfiles/.zshrc ~/.zshrc

if [ -d ~/.oh-my-zsh/plugins]; then
    echo "Install zsh plugins"
    mv ~/.dotfiles/zsh/plugins/* ~/.oh-my-zsh/plugins/
fi

#Install vim configurations.
printf "\n"
echo "#######################################"
echo "#  Now install vim configurations     #"
echo "#######################################"
printf "\n"

if [ -d ~/.vim ]; then
    echo "Found existing .vim directory in your HOME directory."
    echo "Move it to ~/.vim_backup."
    mv ~/.vim ~/.vim_backup
fi

if [ -f ~/.vimrc ]; then
    echo "Found existing .vimrc file in your HOME directory."
    echo "Move it to ~/.vimrc_backup."
    mv ~/.vimrc ~/.vimrc_backup
fi

if [ -f ~/.gvimrc ]; then
    echo "Found existing .gvimrc file in your HOME directory."
    echo "Move it to ~/.gvimrc_backup."
    mv ~/.gvimrc ~/.gvimrc_backup
fi

ln -s ~/.dotfiles/vim/vimrc.vim ~/.vimrc
ln -s ~/.dotfiles/vim/gvimrc.vim ~/.gvimrc
ln -s ~/.dotfiles/vim/vim/ ~/.vim


# Add some zsh plugins
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions



#!/bin/bash

############################
# install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/workspace/dotfiles
############################

########## Variables

dir=~/workspace/dotfiles                    # dotfiles directory
olddir=~/.dotfiles_old             # old dotfiles backup directory
files="vimrc vimbundle bashrc bash_profile gitconfig gitignore_global tmux.conf"    # list of files/folders to symlink in homedir

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir

# move any existing dotfiles in homedir to .dotfiles_old directory, then create symlinks
for file in $files; do
  echo "Moving your $file from ~ to $olddir"
  mv ~/.$file.local $olddir
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.$file.local
done

# link non-.local files
ln -s $dir/hushlogin ~/.hushlogin

# Neovim config
mkdir -p ~/.config/nvim
ln -s $dir/neovim.vim ~/.config/nvim/init.vim

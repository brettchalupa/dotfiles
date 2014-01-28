#!/bin/bash

############################
# install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/.dotfiles_old             # old dotfiles backup directory
vimbackupdir=~/.vimbackup
files="vimrc vim zshrc gitconfig gitignore_global"    # list of files/folders to symlink in homedir

# create .dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir

# create the directory for vim backups and swap files
echo "Creating $vimbackupdir for backup of any existing dotfiles in ~"
mkdir -p $vimbackupdir

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir

# move any existing dotfiles in homedir to .dotfiles_old directory, then create symlinks
for file in $files; do
  echo "Moving your $file from ~ to $olddir"
  mv ~/.$file $olddir
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.$file
done

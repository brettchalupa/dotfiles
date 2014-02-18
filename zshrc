ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=()

unsetopt correct_all

source $ZSH/oh-my-zsh.sh

# chruby & chruby auto-switching
source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby ruby-2.0

# go and GOPATH
export GOPATH=$HOME/workspace/go

# dotfiles export
export DOTFILES=$HOME/dotfiles

# Customize to your needs...
export PATH=$PATH:$HOME/bin:/usr/lib/lightdm/lightdm:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$GOPATH/bin

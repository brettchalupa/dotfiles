# chruby & chruby auto-switching
source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby ruby-2.0

# go and GOPATH
export GOPATH=$HOME/workspace/go

# dotfiles export
export DOTFILES=$HOME/dotfiles

# Customize to your needs...
export PATH=$PATH:$HOME/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$GOPATH/bin

export PS1='\h:\u \W \$ '

# go and GOPATH
export GOPATH=$HOME/workspace/go

# dotfiles export
export DOTFILES=$HOME/dotfiles

export PS1='\h:\u \W \$ '

alias tmux="tmux -2"

alias tmcp="tmux show-buffer | pbcopy"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$HOME/.rvm/gems/ruby-2.0.0-p451/bin:$PATH:$HOME/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$GOPATH/bin

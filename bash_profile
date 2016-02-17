[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# go and GOPATH
export GOPATH=$HOME/workspace/go

# dotfiles export
export DOTFILES=$HOME/dotfiles

# needed for Rabbit (slide presenter) to work
export DYLD_LIBRARY_PATH=/usr/local/opt/cairo/lib

# Set prompt to be: host:user dir $
# eg. shire:brett dotfiles $
export PS1='\h:\u \W \$ '

alias tmux="tmux -2"

# copy tmux buffer to clipboard - OS X only
alias tmcp="tmux show-buffer | xclip"

alias nombom='npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install'

# move to where my go code is located
alias gosrc="cd $GOPATH/src/github.com/brettchalupa"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

NODE_PATH="/usr/local/lib/node_modules"

export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$HOME/.rvm/gems/ruby-2.0.0-p451/bin:$PATH:$HOME/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$GOPATH/bin

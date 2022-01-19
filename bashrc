# go and GOPATH
export GOPATH=$HOME/workspace/go

# dotfiles export
export DOTFILES=$HOME/dotfiles

export PS1="\W\$(git_prompt_info '(%s)') $ "

export PATH=/opt/homebrew/bin:$PATH

# Set the default editor to vim
export EDITOR='nvim'

# bash autocompletion support
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias vi="nvim"
alias vim="nvim"

# Force tmux to assume 256 colors
alias tmux="tmux -2"

# copy tmux buffer to clipboard - OS X only
alias tmcp="tmux show-buffer | pbcopy"

alias nombom='npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install'

# move to where my go code is located
alias gosrc="cd $GOPATH/src/github.com/brettchalupa"

alias be="bundle exec "

export PATH="/usr/local/heroku/bin:$PATH"

export PATH=$PATH:$HOME/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$GOPATH/bin:$HOME/.meteor

# Haxe configs
export HAXE_STD_PATH="/usr/local/lib/haxe/std"

# Force colors
export CLICOLOR_FORCE=true

export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

export KNIFE_HOME=~/.chef

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1

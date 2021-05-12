# go and GOPATH
export GOPATH=$HOME/workspace/go

# dotfiles export
export DOTFILES=$HOME/dotfiles

# Set prompt to be: host:user dir $
# eg. shire:brett dotfiles $
export PS1="\h:\u \W\$(git_prompt_info '(%s)') $ "

# Set the default editor to vim
export EDITOR='vim'

# bash autocompletion support
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

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

export BIG_CARTEL_HOME="~/workspace"

# Haxe configs
export HAXE_STD_PATH="/usr/local/lib/haxe/std"

# Force colors
export CLICOLOR_FORCE=true

export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

export KNIFE_HOME=~/.chef

hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'

# Uncomment to persist pair info between terminal instances
# hitch

# Make travis CLI always use Pro
export TRAVIS_ENDPOINT="https://api.travis-ci.com/"

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

export BASH_SILENCE_DEPRECATION_WARNING=1

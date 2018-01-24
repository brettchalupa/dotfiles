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

# A handful of aliases to make working with docker-compose easier
alias dcr="docker-compose run"
alias dcra="dcr admin"
alias dcrabe="dcra bundle exec"
alias dcrl="dcr bigcartel"
alias dcrlbe="dcrl bundle exec"

export PATH="/usr/local/heroku/bin:$PATH"

export PATH=$PATH:$HOME/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$GOPATH/bin:$HOME/.meteor

export BIG_CARTEL_HOME="~/workspace"

# Force colors
export CLICOLOR_FORCE=true

export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'

# Uncomment to persist pair info between terminal instances
# hitch

eval "$(~/workspace/dotmatrix/hr/bin/hr init -)"

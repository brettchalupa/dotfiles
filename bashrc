# go and GOPATH
export GOPATH=$HOME/workspace/go

# dotfiles export
export DOTFILES=$HOME/dotfiles

export PS1="\W\$(git_prompt_info '(%s)') $ "

# Set the default editor to vim
export EDITOR='nvim'

if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
  fi
fi

alias vi="nvim"
alias vim="nvim"

alias pbcopy="xclip -i -sel clipboard"
alias pbpaste="xclip -o -sel clipboard"
alias tmcp="tmux save-buffer - | pbcopy"

# Force tmux to assume 256 colors
alias tmux="tmux -2"

alias nombom='npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install'

# move to where my go code is located
alias gosrc="cd $GOPATH/src/github.com/brettchalupa"

alias be="bundle exec "
alias gc="concom"

alias dugdev="bundle exec ruby ~/workspace/bc/dugway/bin/dugway"

export PATH="/usr/local/heroku/bin:$PATH"

export PATH=$PATH:$HOME/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$GOPATH/bin:$HOME/.meteor

# Force colors
export CLICOLOR_FORCE=true

export PATH="~/workspace/bin:/usr/local/opt/mysql@5.6/bin:$PATH"

export KNIFE_HOME=~/.chef

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export BASH_SILENCE_DEPRECATION_WARNING=1

# automatically switch node ver
enter_directory() {
  if [[ $PWD == $PREV_PWD ]]; then
    return
  fi

  PREV_PWD=$PWD
  [[ -f ".nvmrc" ]] && nvm use
}

export PROMPT_COMMAND=enter_directory
unset HAXE_STD_PATH

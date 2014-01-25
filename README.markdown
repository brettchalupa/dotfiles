# dotfiles

These are my dotfiles. They'll make your eyes melt.

## About

These are my dotfiles for git, vim and zsh. Mostly this houses the
settings and plugins I use with vim.

The vimrc is well documented. If you want to know more about certain commands,
use `:help command-name`, it is a great resource. vim is configured to use
Pathogen. You can see the different plugins I am using [in the vim/bundle
directory](https://github.com/brettchalupa/dotfiles/tree/master/vim/bundle).

The dotfiles are not crazy or wild. They are really simple and usually have very
little different than the out of the box configuration.


## Installing

1. Clone the repo in your home directory.

  `git clone https://github.com/brettchalupa/dotfiles.git`


1. `cd` into the repo.

  `cd dotfiles`

1. Initialize the Git submodules and update them.

  `git submodule init && git submodule update`

1. Run the install script to symlink the dotfiles.

  `./install.sh`

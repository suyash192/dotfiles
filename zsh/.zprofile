# Start the gpg-agaent only once and exports it's env variable
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

export EDITOR=vim

# Ruby gems path
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export GEM_HOME=$(ruby -e 'print Gem.user_dir')

export PASSWORD_STORE_GIT=~/dotfiles

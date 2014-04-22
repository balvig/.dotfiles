# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="minimal"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if type "rbenv" > /dev/null; then
  eval "$(rbenv init -)"
fi

# Needs to come after rbenv
plugins=(git bundler)
source $ZSH/oh-my-zsh.sh

# vim
export EDITOR="vim"
alias vi="vim"

# tmux
alias tmux="TERM=screen-256color-bce tmux -u"
DISABLE_AUTO_TITLE=true

# Brew
export PATH="/usr/local/bin:$PATH"

# Disable auto correct
setopt nocorrectall

# Postgressapp
export PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"

# Add RVM to path for Nitrous.io
PATH=$PATH:$HOME/.rvm/bin

# Pass through ctrl-key
stty -ixon

# Just output URL when no browser is available for hub etc
if [[ `uname` != 'Darwin' ]]; then
  export BROWSER=echo
fi

source ~/.dotfiles/antigen/antigen.zsh

# Load oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle gitfast
antigen bundle heroku
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme minimal

# Tell antigen that you're done.
antigen apply

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if type "rbenv" > /dev/null; then
  eval "$(rbenv init -)"
fi

# vim
export EDITOR="vim"
alias vi="vim"

# tmux
alias tmux="TERM=screen-256color-bce tmux -u"
DISABLE_AUTO_TITLE=true

# Brew
export PATH="/usr/local/bin:$PATH"

# Postgressapp
export PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"

# Pass through ctrl-key
stty -ixon

# Just output URL when no browser is available for hub etc
if [[ `uname` != 'Darwin' ]]; then
  export BROWSER=echo
fi

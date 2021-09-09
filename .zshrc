source ~/.dotfiles/antigen/antigen.zsh

# Load oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle gitfast
antigen bundle git
antigen bundle heroku
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Easy cleanup of git branches
antigen bundle Seinh/git-prune

# Load the theme.
antigen theme minimal

# Tell antigen that you're done.
antigen apply

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

# Custom bins like git-suggest
export PATH="$HOME/.dotfiles/bin:$PATH"

cop() {
  rubocop "$1" -c .rubocop.yml --format html --out public/tmp/rubocop.html; open public/tmp/rubocop.html
}

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if type "rbenv" > /dev/null; then
  eval "$(rbenv init -)"
fi

# Amend and push
alias gfup="git commit -a --amend --no-edit && git push -f"

# Fuzzy search
export FZF_DEFAULT_COMMAND="ag -l --nocolor -g ." fzf

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
if type "rvm" > /dev/null; then
  export PATH="$PATH:$HOME/.rvm/bin"
fi

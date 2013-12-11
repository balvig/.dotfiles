# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="minimal"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
if type "rbenv" > /dev/null; then
  eval "$(rbenv init -)"
fi

# Needs to come after RBENV
plugins=(git bundler)
source $ZSH/oh-my-zsh.sh


# VIM
export EDITOR="vim"
alias vi="vim"

# TMUX
alias tmux="TERM=screen-256color-bce tmux -u"
DISABLE_AUTO_TITLE=true

# BREW
export PATH="/usr/local/bin:$PATH"

# DISABLE AUTO CORRECT
unsetopt correct

# MAKE ARGS WORK WITH RAKE
alias rake='noglob rake'

# POSTGRESSAPP
export PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"

# ADD RVM TO PATH FOR Nitrous.io
PATH=$PATH:$HOME/.rvm/bin

# PASS THROUGH CTRL
stty -ixon

# EVERNOTE
alias geeknote='python ~/geeknote/geeknote.py'

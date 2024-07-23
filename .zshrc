source $(brew --prefix)/share/antigen/antigen.zsh

# Load oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle gitfast
antigen bundle git
antigen bundle heroku
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme minimal

# Tell antigen that you're done.
antigen apply

# vim
export EDITOR="nvim"

# use Neovim
alias vi=/usr/local/bin/nvim
alias vim=/usr/local/bin/nvim

# tmux
alias tmux="TERM=screen-256color-bce tmux -u"
DISABLE_AUTO_TITLE=true

# Brew
export PATH="/usr/local/bin:$PATH"

# Postgressapp
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

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

# Shortcut to creating a Jira ticket for myself
function jic {
  local cmd="jira issue create --assignee $(jira me) -tTask"

  if [ -n "$1" ]
  then
    cmd="$cmd -s\"$1\" --no-input"
  fi

  eval $cmd
}

function lla {
  cd "$(llama "$@")"
}

# Short cut to unlock terraform
function pm-tf-unlock() {
  if [ "$1" -a "$2" ]; then
    key=$(echo $1 | sed s/:$//)

    aws dynamodb delete-item \
      --table-name terraform_coordinator \
      --key "{\"LockID\": {\"S\": \"$key\"}}" \
      --condition-expression "contains(Info, :info)" \
      --expression-attribute-values "{\":info\": {\"S\": \"$2\"}}" \
      --region us-east-1 \
      --profile ci-root
  else
    aws dynamodb scan \
      --max-items 500 \
      --table-name terraform_coordinator \
      --filter-expression "attribute_exists(Info)" \
      --region us-east-1 \
      --profile ci-root \
      | jq -r '.Items | reduce .[] as $i ({}; . * {($i.LockID.S): ($i.Info.S | fromjson | .Created)}) | to_entries |  map(.key + ": " + .value) | join("\n")'
  fi
}

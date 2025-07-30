# Brew
export PATH="/opt/homebrew/bin:$PATH"

source $(brew --prefix)/share/antigen/antigen.zsh

# Load oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle gitfast # faster git autocomplete
antigen bundle git # git aliases
antigen bundle command-not-found # suggest command if not found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme minimal

# Tell antigen that you're done.
antigen apply

# Allow gem install to find pg_config
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"

# use Neovim
export EDITOR="nvim"
alias vi=/opt/homebrew/bin/nvim
alias vim=/opt/homebrew/bin/nvim

# Pass through ctrl-key
stty -ixon

# Custom bins like git-suggest
export PATH="$HOME/.dotfiles/bin:$PATH"

# Amend and push
alias gfup="git commit -a --amend --no-edit && git push -f"

# Reboot wacom tablet service
alias wacom="launchctl unload /Library/LaunchAgents/com.wacom.* && launchctl load /Library/LaunchAgents/com.wacom.*"

# Fuzzy search
export FZF_DEFAULT_COMMAND="ag -l --nocolor -g ." fzf # use the silver searcher for fzf
source <(fzf --zsh)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
if type "rvm" > /dev/null; then
  export PATH="$PATH:$HOME/.rvm/bin"
fi

# https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init zsh)"

# https://github.com/cantino/mcfly
eval "$(mcfly init zsh)"

# For https://github.com/Aider-AI/aider
export PATH="$HOME/.local/bin:$PATH"

# ls aliases
alias ls='eza -lh --group-directories-first --icons --hyperlink'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'

# Custom config location for lazygit
export XDG_CONFIG_HOME="$HOME/.config"

# https://mise.jdx.dev/getting-started.html
. "$HOME/.local/bin/env"
eval "$(mise activate zsh)"

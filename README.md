#### Install dependencies

##### Mac
- `brew install rbenv neovim ripgrep gnu-sed fd jesseduffield/lazygit/lazygit zellij`
- Install [NerdFont](https://github.com/epk/SF-Mono-Nerd-Font)

#### Symlink files

```bash
cd
git clone https://github.com/balvig/.dotfiles.git
ln -sf .dotfiles/.vimrc.before .vimrc.before
ln -sf .dotfiles/.vimrc.after .vimrc.after
ln -sf .dotfiles/.ideavimrc .ideavimrc
ln -sf .dotfiles/.zshrc .zshrc
ln -sf .dotfiles/.gitignore_global .gitignore_global
ln -sf .dotfiles/.gitconfig .gitconfig
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/zellij ~/.config/zellij
ln -sf ~/.dotfiles/alacritty ~/.config/alacritty
ln -sf ~/.dotfiles/gh-dash ~/.config/gh-dash
```

#### Set up local gitconfig

```bash
vi ~/.gitconfig.local

[user]
  name = Your Name
  email = your@email.com
```

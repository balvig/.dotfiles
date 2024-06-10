#### Install dependencies

##### Mac
- Install tmux `brew install rbenv tmux neovim ripgrep fd jesseduffield/lazygit/lazygit zellij`
- Install [LazyVim](https://www.lazyvim.org)

#### Symlink files

```bash
cd
git clone https://github.com/balvig/.dotfiles.git
ln -sf .dotfiles/.vimrc.before .vimrc.before
ln -sf .dotfiles/.vimrc.after .vimrc.after
ln -sf .dotfiles/.ideavimrc .ideavimrc
ln -sf .dotfiles/.zshrc .zshrc
ln -sf .dotfiles/.tmux.conf .tmux.conf
ln -sf .dotfiles/.gitignore_global .gitignore_global
ln -sf .dotfiles/.gitconfig .gitconfig
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/zellij ~/.config/zellij
ln -sf ~/.dotfiles/alacritty/ ~/.config/alacritty
```

#### Set up local gitconfig

```bash
vi ~/.gitconfig.local

[user]
  name = Your Name
  email = your@email.com
```

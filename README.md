#### Install dependencies

##### Mac
- Install [Homebrew](https://brew.sh/)

#### Symlink files

```bash
cd
git clone https://github.com/balvig/.dotfiles.git
ln -sf .dotfiles/.zshrc .zshrc
ln -sf .dotfiles/.gitignore_global .gitignore_global
ln -sf .dotfiles/.gitconfig .gitconfig
ln -sf .dotfiles/.rubocop.yml .rubocop.yml
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/zellij ~/.config/zellij
ln -sf ~/.dotfiles/alacritty ~/.config/alacritty
ln -sf ~/.dotfiles/ghostty ~/.config/ghostty
ln -sf ~/.dotfiles/gh-dash ~/.config/gh-dash
ln -sf ~/.dotfiles/lazygit ~/.config/lazygit
```

#### Install Homebrew apps and swap out Alacritty icon

```bash
cd ~/.dotfiles/
brew bundle
./update-alacritty-icon.sh
```

#### Set up local gitconfig

```bash
vi ~/.gitconfig.local

[user]
  name = Your Name
  email = your@email.com
```

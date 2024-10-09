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
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/zellij ~/.config/zellij
ln -sf ~/.dotfiles/alacritty ~/.config/alacritty
ln -sf ~/.dotfiles/gh-dash ~/.config/gh-dash
```

#### Install Homebrew apps and swap out Alacritty icon

```bash
cd ~/.dotfiles/
brew bundle
./update-alacritty-icon.sh
```

#### Install asdf plugins
```bash
asdf plugin-add nodejs
asdf plugin-add ruby
```

#### Set up local gitconfig

```bash
vi ~/.gitconfig.local

[user]
  name = Your Name
  email = your@email.com
```
